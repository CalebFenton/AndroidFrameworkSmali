.class public Lgov/nist/javax/sip/parser/extensions/ReferredByParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ReferredByParser.java"


# direct methods
.method protected constructor <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .locals 0
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    #@3
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "referBy"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    #@3
    .line 24
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    const/4 v4, 0x6

    #@1
    new-array v2, v4, [Ljava/lang/String;

    #@3
    const-string/jumbo v4, "Referred-By: <sip:dave@denver.example.org?Replaces=12345%40192.168.118.3%3Bto-tag%3D12345%3Bfrom-tag%3D5FFE-3994>\n"

    #@6
    const/4 v5, 0x0

    #@7
    aput-object v4, v2, v5

    #@9
    .line 44
    const-string/jumbo v4, "Referred-By: <sip:+1-650-555-2222@ss1.wcom.com;user=phone>;tag=5617\n"

    #@c
    const/4 v5, 0x1

    #@d
    aput-object v4, v2, v5

    #@f
    .line 45
    const-string/jumbo v4, "Referred-By: T. A. Watson <sip:watson@bell-telephone.com>\n"

    #@12
    const/4 v5, 0x2

    #@13
    aput-object v4, v2, v5

    #@15
    .line 46
    const-string/jumbo v4, "Referred-By: LittleGuy <sip:UserB@there.com>\n"

    #@18
    const/4 v5, 0x3

    #@19
    aput-object v4, v2, v5

    #@1b
    .line 47
    const-string/jumbo v4, "Referred-By: sip:mranga@120.6.55.9\n"

    #@1e
    const/4 v5, 0x4

    #@1f
    aput-object v4, v2, v5

    #@21
    .line 48
    const-string/jumbo v4, "Referred-By: sip:mranga@129.6.55.9 ; tag=696928473514.129.6.55.9\n"

    #@24
    const/4 v5, 0x5

    #@25
    aput-object v4, v2, v5

    #@27
    .line 50
    .local v2, "to":[Ljava/lang/String;
    const/4 v0, 0x0

    #@28
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@29
    if-ge v0, v4, :cond_0

    #@2b
    .line 51
    new-instance v3, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;

    #@2d
    aget-object v4, v2, v0

    #@2f
    invoke-direct {v3, v4}, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;-><init>(Ljava/lang/String;)V

    #@32
    .line 52
    .local v3, "tp":Lgov/nist/javax/sip/parser/extensions/ReferredByParser;
    invoke-virtual {v3}, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    #@38
    .line 53
    .local v1, "t":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3a
    new-instance v5, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v6, "encoded = "

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v5

    #@46
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/extensions/ReferredBy;->encode()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v5

    #@4e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@55
    .line 50
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 40
    .end local v1    # "t":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    .end local v3    # "tp":Lgov/nist/javax/sip/parser/extensions/ReferredByParser;
    :cond_0
    return-void
.end method


# virtual methods
.method public parse()Lgov/nist/javax/sip/header/SIPHeader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 33
    const/16 v1, 0x854

    #@2
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;->headerName(I)V

    #@5
    .line 34
    new-instance v0, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    #@7
    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/ReferredBy;-><init>()V

    #@a
    .line 35
    .local v0, "referBy":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    #@d
    .line 36
    iget-object v1, p0, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;->lexer:Lgov/nist/core/LexerCore;

    #@f
    const/16 v2, 0xa

    #@11
    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    #@14
    .line 37
    return-object v0
.end method
