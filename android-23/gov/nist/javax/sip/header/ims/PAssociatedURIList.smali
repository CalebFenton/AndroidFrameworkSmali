.class public Lgov/nist/javax/sip/header/ims/PAssociatedURIList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PAssociatedURIList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/PAssociatedURI;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3dd0dfc13f8dd6a3L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 57
    const-class v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    #@2
    const-string/jumbo v1, "P-Associated-URI"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 62
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;-><init>()V

    #@5
    .line 63
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PAssociatedURIList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method
