// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract learStrucks {
    struct Movie {
        string title;
        string ctegory;
        uint movieId;
    }

    Movie[] movies;

    function setMovie(
        string memory _title,
        string memory _category,
        uint _movieId
    ) public {
        movies.push(Movie(_title, _category, _movieId));
    }

    function getMovie(uint _index) public view returns(string memory) {
        return movies[_index].title;
    }
}