.class public Lgov/nist/javax/sip/header/ProxyRequireList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ProxyRequireList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ProxyRequire;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e63f7a5e16e139aL


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 58
    const-class v0, Lgov/nist/javax/sip/header/ProxyRequire;

    #@2
    const-string/jumbo v1, "Proxy-Require"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 50
    new-instance v0, Lgov/nist/javax/sip/header/ProxyRequireList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ProxyRequireList;-><init>()V

    #@5
    .line 51
    .local v0, "retval":Lgov/nist/javax/sip/header/ProxyRequireList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ProxyRequireList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ProxyRequireList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 52
    return-object v0
.end method
