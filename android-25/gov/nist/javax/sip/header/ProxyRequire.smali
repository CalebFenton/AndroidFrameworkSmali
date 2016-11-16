.class public Lgov/nist/javax/sip/header/ProxyRequire;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ProxyRequire.java"

# interfaces
.implements Ljavax/sip/header/ProxyRequireHeader;


# static fields
.field private static final serialVersionUID:J = -0x2d5ecb9861a287f5L


# instance fields
.field protected optionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 60
    const-string/jumbo v0, "Proxy-Require"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    const-string/jumbo v0, "Proxy-Require"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 68
    iput-object p1, p0, Lgov/nist/javax/sip/header/ProxyRequire;->optionTag:Ljava/lang/String;

    #@8
    .line 66
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/ProxyRequire;->optionTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOptionTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/ProxyRequire;->optionTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setOptionTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    if-nez p1, :cond_0

    #@2
    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "JAIN-SIP Exception, ProxyRequire, setOptionTag(), the optionTag parameter is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 90
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/ProxyRequire;->optionTag:Ljava/lang/String;

    #@d
    .line 87
    return-void
.end method
