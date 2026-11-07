.class public abstract Lgov/nist/javax/sip/parser/Parser;
.super Lgov/nist/core/ParserCore;
.source "Parser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    return-void
.end method

.method public static final greylist checkToken(Ljava/lang/String;)V
    .registers 4
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 114
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_25

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 120
    :cond_1c
    new-instance v1, Ljava/text/ParseException;

    const-string v2, "Invalid character(s) in string (not allowed in \'token\')"

    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 124
    .end local v0    # "i":I
    :cond_24
    return-void

    .line 115
    :cond_25
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "null or empty token"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method


# virtual methods
.method protected greylist createParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .registers 5
    .param p1, "exceptionString"    # Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    .line 46
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    .line 47
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 45
    return-object v0
.end method

.method protected greylist getLexer()Lgov/nist/javax/sip/parser/Lexer;
    .registers 2

    .line 51
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    check-cast v0, Lgov/nist/javax/sip/parser/Lexer;

    return-object v0
.end method

.method protected greylist method()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 78
    const-string v0, "method"

    :try_start_2
    sget-boolean v1, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    if-eqz v1, :cond_9

    .line 79
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->dbg_enter(Ljava/lang/String;)V

    .line 80
    :cond_9
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    move-result-object v1

    .line 81
    .local v1, "tokens":[Lgov/nist/core/Token;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 82
    .local v2, "token":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x805

    if-eq v3, v4, :cond_73

    .line 83
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x806

    if-eq v3, v4, :cond_73

    .line 84
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x808

    if-eq v3, v4, :cond_73

    .line 85
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x807

    if-eq v3, v4, :cond_73

    .line 86
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x804

    if-eq v3, v4, :cond_73

    .line 87
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x809

    if-eq v3, v4, :cond_73

    .line 88
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x835

    if-eq v3, v4, :cond_73

    .line 89
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x836

    if-eq v3, v4, :cond_73

    .line 90
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x843

    if-eq v3, v4, :cond_73

    .line 91
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0x846

    if-eq v3, v4, :cond_73

    .line 92
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenType()I

    move-result v3

    const/16 v4, 0xfff

    if-ne v3, v4, :cond_6c

    goto :goto_73

    .line 96
    :cond_6c
    const-string v3, "Invalid Method"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v3

    .end local p0    # "this":Lgov/nist/javax/sip/parser/Parser;
    throw v3

    .line 93
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/Parser;
    :cond_73
    :goto_73
    iget-object v3, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->consume()V

    .line 94
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v3
    :try_end_7c
    .catchall {:try_start_2 .. :try_end_7c} :catchall_84

    .line 99
    sget-boolean v4, Lgov/nist/core/Debug;->debug:Z

    if-eqz v4, :cond_83

    .line 100
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    .line 94
    :cond_83
    return-object v3

    .line 99
    .end local v1    # "tokens":[Lgov/nist/core/Token;
    .end local v2    # "token":Lgov/nist/core/Token;
    :catchall_84
    move-exception v1

    sget-boolean v2, Lgov/nist/core/Debug;->debug:Z

    if-eqz v2, :cond_8c

    .line 100
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    .line 101
    :cond_8c
    throw v1
.end method

.method protected greylist sipVersion()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 55
    sget-boolean v0, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    const-string v1, "sipVersion"

    if-eqz v0, :cond_9

    .line 56
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->dbg_enter(Ljava/lang/String;)V

    .line 58
    :cond_9
    :try_start_9
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0x803

    invoke-virtual {v0, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-result-object v0

    .line 59
    .local v0, "tok":Lgov/nist/core/Token;
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 60
    const-string v2, "Expecting SIP"

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 61
    :cond_22
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 62
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v3, 0xfff

    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    move-result-object v2

    .line 63
    .end local v0    # "tok":Lgov/nist/core/Token;
    .local v2, "tok":Lgov/nist/core/Token;
    invoke-virtual {v2}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2.0"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 64
    const-string v0, "Expecting SIP/2.0"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    .line 66
    :cond_42
    const-string v0, "SIP/2.0"
    :try_end_44
    .catchall {:try_start_9 .. :try_end_44} :catchall_4c

    .line 68
    sget-boolean v3, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    if-eqz v3, :cond_4b

    .line 69
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    .line 66
    :cond_4b
    return-object v0

    .line 68
    .end local v2    # "tok":Lgov/nist/core/Token;
    :catchall_4c
    move-exception v0

    sget-boolean v2, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    if-eqz v2, :cond_54

    .line 69
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    .line 70
    :cond_54
    throw v0
.end method
