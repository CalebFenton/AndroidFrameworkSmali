.class public Lgov/nist/javax/sip/header/AcceptLanguageList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AcceptLanguageList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/AcceptLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2da707f5d2dc9048L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 53
    const-class v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    #@2
    const-string/jumbo v1, "Accept-Language"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 47
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguageList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguageList;-><init>()V

    #@5
    .line 48
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptLanguageList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguageList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AcceptLanguageList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 49
    return-object v0
.end method

.method public getFirst()Lgov/nist/javax/sip/header/AcceptLanguage;
    .locals 2

    #@0
    .prologue
    .line 57
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    #@6
    .line 58
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    if-eqz v0, :cond_0

    #@8
    .line 59
    return-object v0

    #@9
    .line 61
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    #@b
    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    #@e
    return-object v1
.end method

.method public bridge synthetic getFirst()Ljavax/sip/header/Header;
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->getFirst()Lgov/nist/javax/sip/header/AcceptLanguage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getLast()Lgov/nist/javax/sip/header/AcceptLanguage;
    .locals 2

    #@0
    .prologue
    .line 65
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getLast()Ljavax/sip/header/Header;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    #@6
    .line 66
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    if-eqz v0, :cond_0

    #@8
    .line 67
    return-object v0

    #@9
    .line 69
    :cond_0
    new-instance v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    #@b
    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    #@e
    return-object v1
.end method

.method public bridge synthetic getLast()Ljavax/sip/header/Header;
    .locals 1

    #@0
    .prologue
    .line 64
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->getLast()Lgov/nist/javax/sip/header/AcceptLanguage;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
