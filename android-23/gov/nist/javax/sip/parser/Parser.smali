.class public abstract Lgov/nist/javax/sip/parser/Parser;
.super Lgov/nist/core/ParserCore;
.source "Parser.java"

# interfaces
.implements Lgov/nist/javax/sip/parser/TokenTypes;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Lgov/nist/core/ParserCore;-><init>()V

    #@3
    return-void
.end method

.method public static final checkToken(Ljava/lang/String;)V
    .locals 4
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_1

    #@8
    .line 115
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    #@a
    const-string/jumbo v2, "null or empty token"

    #@d
    const/4 v3, -0x1

    #@e
    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@11
    throw v1

    #@12
    .line 118
    :cond_1
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@16
    move-result v1

    #@17
    if-ge v0, v1, :cond_3

    #@19
    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v1

    #@1d
    invoke-static {v1}, Lgov/nist/core/LexerCore;->isTokenChar(C)Z

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_2

    #@23
    .line 120
    new-instance v1, Ljava/text/ParseException;

    #@25
    const-string/jumbo v2, "Invalid character(s) in string (not allowed in \'token\')"

    #@28
    invoke-direct {v1, v2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@2b
    throw v1

    #@2c
    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 112
    :cond_3
    return-void
.end method


# virtual methods
.method protected createParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3
    .param p1, "exceptionString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    new-instance v0, Ljava/text/ParseException;

    #@2
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    #@9
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getBuffer()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, ":"

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 47
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    #@22
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->getPtr()I

    #@25
    move-result v2

    #@26
    .line 45
    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@29
    return-object v0
.end method

.method protected getLexer()Lgov/nist/javax/sip/parser/Lexer;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    #@2
    check-cast v0, Lgov/nist/javax/sip/parser/Lexer;

    #@4
    return-object v0
.end method

.method protected method()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    :try_start_0
    sget-boolean v2, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 79
    const-string/jumbo v2, "method"

    #@7
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/Parser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 80
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/4 v3, 0x1

    #@d
    invoke-virtual {v2, v3}, Lgov/nist/core/LexerCore;->peekNextToken(I)[Lgov/nist/core/Token;

    #@10
    move-result-object v1

    #@11
    .line 81
    .local v1, "tokens":[Lgov/nist/core/Token;
    const/4 v2, 0x0

    #@12
    aget-object v0, v1, v2

    #@14
    .line 82
    .local v0, "token":Lgov/nist/core/Token;
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@17
    move-result v2

    #@18
    const/16 v3, 0x805

    #@1a
    if-eq v2, v3, :cond_1

    #@1c
    .line 83
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@1f
    move-result v2

    #@20
    const/16 v3, 0x806

    #@22
    if-ne v2, v3, :cond_3

    #@24
    .line 93
    :cond_1
    iget-object v2, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    #@26
    invoke-virtual {v2}, Lgov/nist/core/LexerCore;->consume()V

    #@29
    .line 94
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result-object v2

    #@2d
    .line 99
    sget-boolean v3, Lgov/nist/core/Debug;->debug:Z

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 100
    const-string/jumbo v3, "method"

    #@34
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    #@37
    .line 94
    :cond_2
    return-object v2

    #@38
    .line 84
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@3b
    move-result v2

    #@3c
    const/16 v3, 0x808

    #@3e
    if-eq v2, v3, :cond_1

    #@40
    .line 85
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@43
    move-result v2

    #@44
    const/16 v3, 0x807

    #@46
    if-eq v2, v3, :cond_1

    #@48
    .line 86
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@4b
    move-result v2

    #@4c
    const/16 v3, 0x804

    #@4e
    if-eq v2, v3, :cond_1

    #@50
    .line 87
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@53
    move-result v2

    #@54
    const/16 v3, 0x809

    #@56
    if-eq v2, v3, :cond_1

    #@58
    .line 88
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@5b
    move-result v2

    #@5c
    const/16 v3, 0x835

    #@5e
    if-eq v2, v3, :cond_1

    #@60
    .line 89
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@63
    move-result v2

    #@64
    const/16 v3, 0x836

    #@66
    if-eq v2, v3, :cond_1

    #@68
    .line 90
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@6b
    move-result v2

    #@6c
    const/16 v3, 0x843

    #@6e
    if-eq v2, v3, :cond_1

    #@70
    .line 91
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@73
    move-result v2

    #@74
    const/16 v3, 0x846

    #@76
    if-eq v2, v3, :cond_1

    #@78
    .line 92
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenType()I

    #@7b
    move-result v2

    #@7c
    const/16 v3, 0xfff

    #@7e
    if-eq v2, v3, :cond_1

    #@80
    .line 96
    const-string/jumbo v2, "Invalid Method"

    #@83
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@86
    move-result-object v2

    #@87
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@88
    .line 98
    .end local v0    # "token":Lgov/nist/core/Token;
    .end local v1    # "tokens":[Lgov/nist/core/Token;
    :catchall_0
    move-exception v2

    #@89
    .line 99
    sget-boolean v3, Lgov/nist/core/Debug;->debug:Z

    #@8b
    if-eqz v3, :cond_4

    #@8d
    .line 100
    const-string/jumbo v3, "method"

    #@90
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    #@93
    .line 98
    :cond_4
    throw v2
.end method

.method protected sipVersion()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 55
    sget-boolean v1, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 56
    const-string/jumbo v1, "sipVersion"

    #@7
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 58
    :cond_0
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    #@c
    const/16 v2, 0x803

    #@e
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@11
    move-result-object v0

    #@12
    .line 59
    .local v0, "tok":Lgov/nist/core/Token;
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, "SIP"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_1

    #@1f
    .line 60
    const-string/jumbo v1, "Expecting SIP"

    #@22
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@25
    .line 61
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    #@27
    const/16 v2, 0x2f

    #@29
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@2c
    .line 62
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Parser;->lexer:Lgov/nist/core/LexerCore;

    #@2e
    const/16 v2, 0xfff

    #@30
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@33
    move-result-object v0

    #@34
    .line 63
    invoke-virtual {v0}, Lgov/nist/core/Token;->getTokenValue()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    const-string/jumbo v2, "2.0"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_2

    #@41
    .line 64
    const-string/jumbo v1, "Expecting SIP/2.0"

    #@44
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/Parser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@47
    .line 66
    :cond_2
    const-string/jumbo v1, "SIP/2.0"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 68
    sget-boolean v2, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    #@4c
    if-eqz v2, :cond_3

    #@4e
    .line 69
    const-string/jumbo v2, "sipVersion"

    #@51
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    #@54
    .line 66
    :cond_3
    return-object v1

    #@55
    .line 67
    .end local v0    # "tok":Lgov/nist/core/Token;
    :catchall_0
    move-exception v1

    #@56
    .line 68
    sget-boolean v2, Lgov/nist/javax/sip/parser/Parser;->debug:Z

    #@58
    if-eqz v2, :cond_4

    #@5a
    .line 69
    const-string/jumbo v2, "sipVersion"

    #@5d
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/parser/Parser;->dbg_leave(Ljava/lang/String;)V

    #@60
    .line 67
    :cond_4
    throw v1
.end method
