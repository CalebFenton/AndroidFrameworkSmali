.class public Lgov/nist/javax/sip/header/ims/SecurityServerList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "SecurityServerList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/SecurityServer;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13519d200c2ffeceL


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 57
    const-class v0, Lgov/nist/javax/sip/header/ims/SecurityServer;

    #@2
    const-string/jumbo v1, "Security-Server"

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
    .line 61
    new-instance v0, Lgov/nist/javax/sip/header/ims/SecurityServerList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/SecurityServerList;-><init>()V

    #@5
    .line 62
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/SecurityServerList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/SecurityServerList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/SecurityServerList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method
