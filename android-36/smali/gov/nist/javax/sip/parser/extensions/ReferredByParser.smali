.class public Lgov/nist/javax/sip/parser/extensions/ReferredByParser;
.super Lgov/nist/javax/sip/parser/AddressParametersParser;
.source "ReferredByParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 29
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 30
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "referBy"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/AddressParametersParser;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static greylist main([Ljava/lang/String;)V
    .registers 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 41
    const-string v4, "Referred-By: sip:mranga@120.6.55.9\n"

    const-string v5, "Referred-By: sip:mranga@129.6.55.9 ; tag=696928473514.129.6.55.9\n"

    const-string v0, "Referred-By: <sip:dave@denver.example.org?Replaces=12345%40192.168.118.3%3Bto-tag%3D12345%3Bfrom-tag%3D5FFE-3994>\n"

    const-string v1, "Referred-By: <sip:+1-650-555-2222@ss1.wcom.com;user=phone>;tag=5617\n"

    const-string v2, "Referred-By: T. A. Watson <sip:watson@bell-telephone.com>\n"

    const-string v3, "Referred-By: LittleGuy <sip:UserB@there.com>\n"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "to":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, v0

    if-ge v1, v2, :cond_40

    .line 51
    new-instance v2, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "tp":Lgov/nist/javax/sip/parser/extensions/ReferredByParser;
    invoke-virtual {v2}, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;->parse()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    .line 53
    .local v3, "t":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/extensions/ReferredBy;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    .end local v2    # "tp":Lgov/nist/javax/sip/parser/extensions/ReferredByParser;
    .end local v3    # "t":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 56
    .end local v1    # "i":I
    :cond_40
    return-void
.end method


# virtual methods
.method public greylist parse()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 33
    const/16 v0, 0x854

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;->headerName(I)V

    .line 34
    new-instance v0, Lgov/nist/javax/sip/header/extensions/ReferredBy;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/extensions/ReferredBy;-><init>()V

    .line 35
    .local v0, "referBy":Lgov/nist/javax/sip/header/extensions/ReferredBy;
    invoke-super {p0, v0}, Lgov/nist/javax/sip/parser/AddressParametersParser;->parse(Lgov/nist/javax/sip/header/AddressParametersHeader;)V

    .line 36
    iget-object v1, p0, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;->lexer:Lgov/nist/core/LexerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lgov/nist/core/LexerCore;->match(I)Lgov/nist/core/Token;

    .line 37
    return-object v0
.end method
