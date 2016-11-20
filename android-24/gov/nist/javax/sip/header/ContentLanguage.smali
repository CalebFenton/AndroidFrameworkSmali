.class public Lgov/nist/javax/sip/header/ContentLanguage;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ContentLanguage.java"

# interfaces
.implements Ljavax/sip/header/ContentLanguageHeader;


# static fields
.field private static final serialVersionUID:J = -0x481aef79f0bb5eceL


# instance fields
.field protected locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 95
    const-string/jumbo v0, "Content-Language"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 103
    const-string/jumbo v0, "Content-Language"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 104
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/ContentLanguage;->setLanguageTag(Ljava/lang/String;)V

    #@9
    .line 102
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 165
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lgov/nist/javax/sip/header/ContentLanguage;

    #@6
    .line 166
    .local v0, "retval":Lgov/nist/javax/sip/header/ContentLanguage;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 167
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@c
    invoke-virtual {v1}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/util/Locale;

    #@12
    iput-object v1, v0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@14
    .line 168
    :cond_0
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ContentLanguage;->getLanguageTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getContentLanguage()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 120
    const-string/jumbo v0, ""

    #@3
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@5
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 121
    iget-object v0, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@11
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@1d
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const/16 v1, 0x2d

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@2d
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    return-object v0
.end method

.method public setContentLanguage(Ljava/util/Locale;)V
    .locals 0
    .param p1, "language"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 161
    iput-object p1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@2
    .line 160
    return-void
.end method

.method public setLanguageTag(Ljava/lang/String;)V
    .locals 4
    .param p1, "languageTag"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 132
    const/16 v1, 0x2d

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 133
    .local v0, "slash":I
    if-ltz v0, :cond_0

    #@9
    .line 134
    new-instance v1, Ljava/util/Locale;

    #@b
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    add-int/lit8 v3, v0, 0x1

    #@11
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    iput-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@1a
    .line 130
    :goto_0
    return-void

    #@1b
    .line 136
    :cond_0
    new-instance v1, Ljava/util/Locale;

    #@1d
    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@20
    iput-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguage;->locale:Ljava/util/Locale;

    #@22
    goto :goto_0
.end method
