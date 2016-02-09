.class public Lgov/nist/javax/sip/header/ims/PathList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PathList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/Path;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 42
    const-class v0, Lgov/nist/javax/sip/header/ims/Path;

    #@2
    const-string/jumbo v1, "Path"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 41
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 47
    new-instance v0, Lgov/nist/javax/sip/header/ims/PathList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PathList;-><init>()V

    #@5
    .line 48
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PathList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PathList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PathList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method
