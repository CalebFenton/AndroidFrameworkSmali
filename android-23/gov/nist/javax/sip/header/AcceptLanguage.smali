.class public final Lgov/nist/javax/sip/header/AcceptLanguage;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "AcceptLanguage.java"

# interfaces
.implements Ljavax/sip/header/AcceptLanguageHeader;


# static fields
.field private static final serialVersionUID:J = -0x3e16c6fcfe290177L


# instance fields
.field protected languageRange:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "Accept-Language"

    #@3
    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    #@6
    .line 67
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 76
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 77
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    .line 79
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->parameters:Lgov/nist/core/NameValueList;

    #@10
    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 80
    const-string/jumbo v1, ";"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->parameters:Lgov/nist/core/NameValueList;

    #@1f
    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@26
    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public getAcceptLanguage()Ljava/util/Locale;
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 167
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@4
    if-nez v1, :cond_0

    #@6
    .line 168
    return-object v2

    #@7
    .line 170
    :cond_0
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@9
    const/16 v2, 0x2d

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v0

    #@f
    .line 171
    .local v0, "dash":I
    if-ltz v0, :cond_1

    #@11
    .line 172
    new-instance v1, Ljava/util/Locale;

    #@13
    iget-object v2, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@15
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@1b
    add-int/lit8 v4, v0, 0x1

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    return-object v1

    #@25
    .line 173
    :cond_1
    new-instance v1, Ljava/util/Locale;

    #@27
    iget-object v2, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@29
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@2c
    return-object v1
.end method

.method public getLanguageRange()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getQValue()F
    .locals 2

    #@0
    .prologue
    .line 98
    const-string/jumbo v0, "q"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->hasParameter(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 99
    const/high16 v0, -0x40800000    # -1.0f

    #@b
    return v0

    #@c
    .line 100
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->parameters:Lgov/nist/core/NameValueList;

    #@e
    const-string/jumbo v1, "q"

    #@11
    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/Float;

    #@17
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public hasQValue()Z
    .locals 1

    #@0
    .prologue
    .line 109
    const-string/jumbo v0, "q"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->hasParameter(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public removeQValue()V
    .locals 1

    #@0
    .prologue
    .line 117
    const-string/jumbo v0, "q"

    #@3
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->removeParameter(Ljava/lang/String;)V

    #@6
    .line 116
    return-void
.end method

.method public setAcceptLanguage(Ljava/util/Locale;)V
    .locals 2
    .param p1, "language"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 190
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 191
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@13
    .line 188
    :goto_0
    return-void

    #@14
    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const/16 v1, 0x2d

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@35
    goto :goto_0
.end method

.method public setLanguageRange(Ljava/lang/String;)V
    .locals 1
    .param p1, "languageRange"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lgov/nist/javax/sip/header/AcceptLanguage;->languageRange:Ljava/lang/String;

    #@6
    .line 126
    return-void
.end method

.method public setQValue(F)V
    .locals 4
    .param p1, "q"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    float-to-double v0, p1

    #@1
    const-wide/16 v2, 0x0

    #@3
    cmpg-double v0, v0, v2

    #@5
    if-ltz v0, :cond_0

    #@7
    float-to-double v0, p1

    #@8
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@a
    cmpl-double v0, v0, v2

    #@c
    if-lez v0, :cond_1

    #@e
    .line 151
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    #@10
    const-string/jumbo v1, "qvalue out of range!"

    #@13
    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 152
    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    #@19
    cmpl-float v0, p1, v0

    #@1b
    if-nez v0, :cond_2

    #@1d
    .line 153
    const-string/jumbo v0, "q"

    #@20
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->removeParameter(Ljava/lang/String;)V

    #@23
    .line 149
    :goto_0
    return-void

    #@24
    .line 155
    :cond_2
    new-instance v0, Lgov/nist/core/NameValue;

    #@26
    const-string/jumbo v1, "q"

    #@29
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v0, v1, v2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@30
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/AcceptLanguage;->setParameter(Lgov/nist/core/NameValue;)V

    #@33
    goto :goto_0
.end method
