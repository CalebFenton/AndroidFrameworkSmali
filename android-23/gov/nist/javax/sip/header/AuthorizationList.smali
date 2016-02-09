.class public Lgov/nist/javax/sip/header/AuthorizationList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AuthorizationList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Authorization;",
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
    .line 60
    const-class v0, Lgov/nist/javax/sip/header/Authorization;

    #@2
    const-string/jumbo v1, "Authorization"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 52
    new-instance v0, Lgov/nist/javax/sip/header/AuthorizationList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthorizationList;-><init>()V

    #@5
    .line 53
    .local v0, "retval":Lgov/nist/javax/sip/header/AuthorizationList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AuthorizationList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AuthorizationList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 54
    return-object v0
.end method
