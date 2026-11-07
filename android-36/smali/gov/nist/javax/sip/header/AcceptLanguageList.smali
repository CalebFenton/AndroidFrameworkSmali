.class public Lgov/nist/javax/sip/header/AcceptLanguageList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AcceptLanguageList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/AcceptLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x2da707f5d2dc9048L


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 53
    const-class v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    const-string v1, "Accept-Language"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 47
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguageList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguageList;-><init>()V

    .line 48
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptLanguageList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguageList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AcceptLanguageList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 49
    return-object v0
.end method

.method public greylist getFirst()Lgov/nist/javax/sip/header/AcceptLanguage;
    .registers 3

    .line 57
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    .line 58
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    if-eqz v0, :cond_9

    .line 59
    return-object v0

    .line 61
    :cond_9
    new-instance v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    return-object v1
.end method

.method public bridge synthetic greylist getFirst()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->getFirst()Lgov/nist/javax/sip/header/AcceptLanguage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->getFirst()Lgov/nist/javax/sip/header/AcceptLanguage;

    move-result-object v0

    return-object v0
.end method

.method public greylist getLast()Lgov/nist/javax/sip/header/AcceptLanguage;
    .registers 3

    .line 65
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getLast()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    .line 66
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    if-eqz v0, :cond_9

    .line 67
    return-object v0

    .line 69
    :cond_9
    new-instance v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    return-object v1
.end method

.method public bridge synthetic greylist getLast()Lgov/nist/javax/sip/header/SIPHeader;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->getLast()Lgov/nist/javax/sip/header/AcceptLanguage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getLast()Ljava/lang/Object;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->getLast()Lgov/nist/javax/sip/header/AcceptLanguage;

    move-result-object v0

    return-object v0
.end method
