.class abstract Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;
.super Lgov/nist/javax/sip/parser/HeaderParser;
.source "AddressHeaderParser.java"


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/parser/Lexer;)V
    .registers 2
    .param p1, "lexer"    # Lgov/nist/javax/sip/parser/Lexer;

    .line 49
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 50
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "buffer"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected greylist parse(Lgov/nist/javax/sip/header/ims/AddressHeaderIms;)V
    .registers 5
    .param p1, "addressHeader"    # Lgov/nist/javax/sip/header/ims/AddressHeaderIms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 58
    const-string v0, "AddressParametersParser.parse"

    const-string v1, "AddressHeaderParser.parse"

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;->dbg_enter(Ljava/lang/String;)V

    .line 60
    :try_start_7
    new-instance v1, Lgov/nist/javax/sip/parser/AddressParser;

    invoke-virtual {p0}, Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;->getLexer()Lgov/nist/javax/sip/parser/Lexer;

    move-result-object v2

    invoke-direct {v1, v2}, Lgov/nist/javax/sip/parser/AddressParser;-><init>(Lgov/nist/javax/sip/parser/Lexer;)V

    .line 61
    .local v1, "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/parser/AddressParser;->address(Z)Lgov/nist/javax/sip/address/AddressImpl;

    move-result-object v2

    .line 62
    .local v2, "addr":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/header/ims/AddressHeaderIms;->setAddress(Ljavax/sip/address/Address;)V
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_18} :catch_1f
    .catchall {:try_start_7 .. :try_end_18} :catchall_1d

    .line 68
    .end local v1    # "addressParser":Lgov/nist/javax/sip/parser/AddressParser;
    .end local v2    # "addr":Lgov/nist/javax/sip/address/AddressImpl;
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 69
    nop

    .line 70
    return-void

    .line 68
    :catchall_1d
    move-exception v1

    goto :goto_22

    .line 65
    :catch_1f
    move-exception v1

    .line 66
    .local v1, "ex":Ljava/text/ParseException;
    nop

    .end local p0    # "this":Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;
    .end local p1    # "addressHeader":Lgov/nist/javax/sip/header/ims/AddressHeaderIms;
    :try_start_21
    throw v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1d

    .line 68
    .end local v1    # "ex":Ljava/text/ParseException;
    .restart local p0    # "this":Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;
    .restart local p1    # "addressHeader":Lgov/nist/javax/sip/header/ims/AddressHeaderIms;
    :goto_22
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/parser/ims/AddressHeaderParser;->dbg_leave(Ljava/lang/String;)V

    .line 69
    throw v1
.end method
