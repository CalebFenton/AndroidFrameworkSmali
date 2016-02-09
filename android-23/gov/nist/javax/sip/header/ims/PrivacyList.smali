.class public Lgov/nist/javax/sip/header/ims/PrivacyList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PrivacyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/Privacy;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x18f656c60d36e885L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 52
    const-class v0, Lgov/nist/javax/sip/header/ims/Privacy;

    #@2
    const-string/jumbo v1, "Privacy"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 51
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 57
    new-instance v0, Lgov/nist/javax/sip/header/ims/PrivacyList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PrivacyList;-><init>()V

    #@5
    .line 58
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PrivacyList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PrivacyList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PrivacyList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method
