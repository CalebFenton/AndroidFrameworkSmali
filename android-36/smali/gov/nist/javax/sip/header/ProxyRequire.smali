.class public Lgov/nist/javax/sip/header/ProxyRequire;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ProxyRequire.java"

# interfaces
.implements Ljavax/sip/header/ProxyRequireHeader;


# static fields
.field private static final whitelist serialVersionUID:J = -0x2d5ecb9861a287f5L


# instance fields
.field protected greylist optionTag:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 60
    const-string v0, "Proxy-Require"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 67
    const-string v0, "Proxy-Require"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lgov/nist/javax/sip/header/ProxyRequire;->optionTag:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lgov/nist/javax/sip/header/ProxyRequire;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getOptionTag()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/ProxyRequire;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist setOptionTag(Ljava/lang/String;)V
    .registers 4
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 88
    if-eqz p1, :cond_5

    .line 90
    iput-object p1, p0, Lgov/nist/javax/sip/header/ProxyRequire;->optionTag:Ljava/lang/String;

    .line 91
    return-void

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, ProxyRequire, setOptionTag(), the optionTag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
