const std = @import("std");

pub const TokenTag = enum {
    illegal,
    eof,

    // Identifiers + literals
    ident, // add, foobar, x, y, ...
    int, // 1343456
    stringLiteral,
    //
    // Operators
    assign,
    plus,
    minus,
    bang,
    asterisk,
    slash,
    equal,
    notEqual,
    lt,
    gt,

    // Delimiters
    comma,
    semicolon,
    colon,
    lparen,
    rparen,
    lbrace,
    rbrace,
    lbracket,
    rbracket,

    // Keywords
    function,
    let,
    true_,
    false_,
    if_,
    else_,
    return_,
    macro,
};

pub const Token = union(TokenTag) {
    illegal: u8,
    eof: void,

    // an identifier, a literal
    ident: []const u8,
    int: []const u8,
    stringLiteral: []const u8,

    // operators
    assign: void,
    plus: void,
    minus: void,
    bang: void,
    asterisk: void,
    slash: void,
    equal: void,
    notEqual: void,
    lt: void,
    gt: void,

    // delimiters
    comma: void,
    semicolon: void,
    colon: void,
    lparen: void,
    rparen: void,
    lbrace: void,
    rbrace: void,
    lbracket: void,
    rbracket: void,

    // keywords
    function: void,
    let: void,
    true_: void,
    false_: void,
    if_: void,
    else_: void,
    return_: void,
    macro: void,
};
