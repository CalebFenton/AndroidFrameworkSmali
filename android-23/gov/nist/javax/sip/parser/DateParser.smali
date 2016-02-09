.class public Lgov/nist/javax/sip/parser/DateParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "DateParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 48
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 43
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    sget-boolean v3, Lgov/nist/javax/sip/parser/DateParser;->debug:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 58
    const-string/jumbo v3, "DateParser.parse"

    #@7
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/DateParser;->dbg_enter(Ljava/lang/String;)V

    #@a
    .line 60
    :cond_0
    const/16 v3, 0x820

    #@c
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/DateParser;->headerName(I)V

    #@f
    .line 61
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/DateParser;->wkday()I

    #@12
    .line 62
    iget-object v3, p0, Lgov/nist/javax/sip/parser/DateParser;->lexer:Lgov/nist/core/LexerCore;

    #@14
    const/16 v4, 0x2c

    #@16
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@19
    .line 63
    iget-object v3, p0, Lgov/nist/javax/sip/parser/DateParser;->lexer:Lgov/nist/core/LexerCore;

    #@1b
    const/16 v4, 0x20

    #@1d
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@20
    .line 64
    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/DateParser;->date()Ljava/util/Calendar;

    #@23
    move-result-object v0

    #@24
    .line 65
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v3, p0, Lgov/nist/javax/sip/parser/DateParser;->lexer:Lgov/nist/core/LexerCore;

    #@26
    const/16 v4, 0x20

    #@28
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@2b
    .line 66
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/DateParser;->time(Ljava/util/Calendar;)V

    #@2e
    .line 67
    iget-object v3, p0, Lgov/nist/javax/sip/parser/DateParser;->lexer:Lgov/nist/core/LexerCore;

    #@30
    const/16 v4, 0x20

    #@32
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@35
    .line 68
    iget-object v3, p0, Lgov/nist/javax/sip/parser/DateParser;->lexer:Lgov/nist/core/LexerCore;

    #@37
    invoke-virtual {v3}, Lgov/nist/core/LexerCore;->ttoken()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 69
    .local v2, "tzone":Ljava/lang/String;
    const-string/jumbo v3, "gmt"

    #@42
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v3

    #@46
    if-nez v3, :cond_2

    #@48
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v4, "Bad Time Zone "

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/DateParser;->createParseException(Ljava/lang/String;)Ljava/text/ParseException;

    #@5f
    move-result-object v3

    #@60
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@61
    .line 75
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "tzone":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@62
    .line 76
    sget-boolean v4, Lgov/nist/javax/sip/parser/DateParser;->debug:Z

    #@64
    if-eqz v4, :cond_1

    #@66
    .line 77
    const-string/jumbo v4, "DateParser.parse"

    #@69
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/parser/DateParser;->dbg_leave(Ljava/lang/String;)V

    #@6c
    .line 75
    :cond_1
    throw v3

    #@6d
    .line 71
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v2    # "tzone":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/parser/DateParser;->lexer:Lgov/nist/core/LexerCore;

    #@6f
    const/16 v4, 0xa

    #@71
    invoke-virtual {v3, v4}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@74
    .line 72
    new-instance v1, Lgov/nist/javax/sip/header/SIPDateHeader;

    #@76
    invoke-direct {v1}, Lgov/nist/javax/sip/header/SIPDateHeader;-><init>()V

    #@79
    .line 73
    .local v1, "retval":Lgov/nist/javax/sip/header/SIPDateHeader;
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/SIPDateHeader;->setDate(Ljava/util/Calendar;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7c
    .line 76
    sget-boolean v3, Lgov/nist/javax/sip/parser/DateParser;->debug:Z

    #@7e
    if-eqz v3, :cond_3

    #@80
    .line 77
    const-string/jumbo v3, "DateParser.parse"

    #@83
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/parser/DateParser;->dbg_leave(Ljava/lang/String;)V

    #@86
    .line 74
    :cond_3
    return-object v1
.end method
