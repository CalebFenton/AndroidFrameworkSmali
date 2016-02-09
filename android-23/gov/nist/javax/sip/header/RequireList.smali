.class public final Lgov/nist/javax/sip/header/RequireList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "RequireList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Require;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x186f02d4bcad820dL


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 59
    const-class v0, Lgov/nist/javax/sip/header/Require;

    #@2
    const-string/jumbo v1, "Require"

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
    new-instance v0, Lgov/nist/javax/sip/header/RequireList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/RequireList;-><init>()V

    #@5
    .line 52
    .local v0, "retval":Lgov/nist/javax/sip/header/RequireList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RequireList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RequireList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 53
    return-object v0
.end method
