.class public Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PVisitedNetworkIDList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c52770d868f0e9eL


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 48
    const-class v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    #@2
    const-string/jumbo v1, "P-Visited-Network-ID"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 47
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 52
    new-instance v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;-><init>()V

    #@5
    .line 53
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method
