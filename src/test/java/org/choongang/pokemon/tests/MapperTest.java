package org.choongang.pokemon.tests;

import org.choongang.global.config.DBConn;
import org.choongang.pokemon.entities.PokemonDetail;
import org.choongang.pokemon.mappers.PokemonMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;
import java.util.stream.LongStream;

public class MapperTest {

    private PokemonMapper mapper;

    @BeforeEach
    void init() {
        mapper = DBConn.getSession().getMapper(PokemonMapper.class);
    }

    @Test
    void registerTest() {
        LongStream.rangeClosed(1, 10).forEach(i -> mapper.registerMyPokemon(1, i));
    }

    @Test
    void getMyPokemonsTest() {
        List<PokemonDetail> items = mapper.getMyPokemons(1L);
        items.forEach(System.out::println);
    }

    @Test
    void deleteMyPokemon() {
        int result = mapper.deleteMyPokemon(1L, 1L);
        System.out.println(result);
    }

    @Test
    void deleteAllMyPokemon() {
        int result = mapper.deleteAllMyPokemon(1L);
        System.out.println(result);
    }
}