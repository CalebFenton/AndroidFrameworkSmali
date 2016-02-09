.class public Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PAssertedIdentityList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/PAssertedIdentity;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x59b8d5e538f75b6eL


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 58
    const-class v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    #@2
    const-string/jumbo v1, "P-Asserted-Identity"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 56
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 63
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;-><init>()V

    #@5
    .line 64
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method
