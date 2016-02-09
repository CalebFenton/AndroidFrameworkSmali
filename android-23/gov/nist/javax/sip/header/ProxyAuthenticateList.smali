.class public Lgov/nist/javax/sip/header/ProxyAuthenticateList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ProxyAuthenticateList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ProxyAuthenticate;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 59
    const-class v0, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    #@2
    const-string/jumbo v1, "Proxy-Authenticate"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 51
    new-instance v0, Lgov/nist/javax/sip/header/ProxyAuthenticateList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyAuthenticateList;-><init>()V

    #@5
    .line 52
    .local v0, "retval":Lgov/nist/javax/sip/header/ProxyAuthenticateList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ProxyAuthenticateList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ProxyAuthenticateList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 53
    return-object v0
.end method
