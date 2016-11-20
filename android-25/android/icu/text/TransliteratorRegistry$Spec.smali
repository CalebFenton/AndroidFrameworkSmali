.class Landroid/icu/text/TransliteratorRegistry$Spec;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Spec"
.end annotation


# instance fields
.field private isNextLocale:Z

.field private isSpecLocale:Z

.field private nextSpec:Ljava/lang/String;

.field private res:Landroid/icu/impl/ICUResourceBundle;

.field private scriptName:Ljava/lang/String;

.field private spec:Ljava/lang/String;

.field private top:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "theSpec"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 101
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    #@6
    .line 102
    iput-object v6, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    #@8
    .line 103
    iput-object v6, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    #@a
    .line 107
    :try_start_0
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    #@c
    invoke-static {v4}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    #@f
    move-result v2

    #@10
    .line 110
    .local v2, "script":I
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    #@12
    invoke-static {v4}, Landroid/icu/lang/UScript;->getCode(Ljava/lang/String;)[I

    #@15
    move-result-object v1

    #@16
    .line 111
    .local v1, "s":[I
    if-eqz v1, :cond_0

    #@18
    .line 112
    const/4 v4, 0x0

    #@19
    aget v4, v1, v4

    #@1b
    invoke-static {v4}, Landroid/icu/lang/UScript;->getName(I)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    #@21
    .line 114
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    #@23
    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_0

    #@2b
    .line 115
    const/4 v4, 0x0

    #@2c
    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    #@2e
    .line 119
    :cond_0
    const/4 v4, 0x0

    #@2f
    iput-boolean v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    #@31
    .line 120
    const/4 v4, 0x0

    #@32
    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    #@34
    .line 122
    const/4 v4, -0x1

    #@35
    if-ne v2, v4, :cond_1

    #@37
    .line 123
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    #@39
    invoke-static {v4}, Landroid/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    #@3c
    move-result-object v3

    #@3d
    .line 124
    .local v3, "toploc":Ljava/util/Locale;
    const-string/jumbo v4, "android/icu/impl/data/icudt56b/translit"

    #@40
    invoke-static {v4, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;

    #@43
    move-result-object v4

    #@44
    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    #@46
    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    #@48
    .line 126
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    #@4a
    if-eqz v4, :cond_1

    #@4c
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    #@4e
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    #@58
    invoke-static {v4, v5}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_1

    #@5e
    .line 127
    const/4 v4, 0x1

    #@5f
    iput-boolean v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 138
    .end local v1    # "s":[I
    .end local v2    # "script":I
    .end local v3    # "toploc":Ljava/util/Locale;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->reset()V

    #@64
    .line 100
    return-void

    #@65
    .line 130
    :catch_0
    move-exception v0

    #@66
    .line 134
    .local v0, "e":Ljava/util/MissingResourceException;
    iput-object v6, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    #@68
    goto :goto_0
.end method

.method private setupNext()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 154
    iput-boolean v3, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    #@3
    .line 155
    iget-boolean v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 156
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    #@9
    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    #@b
    .line 157
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    #@d
    const/16 v2, 0x5f

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@12
    move-result v0

    #@13
    .line 160
    .local v0, "i":I
    if-lez v0, :cond_0

    #@15
    .line 161
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    #@1d
    .line 162
    const/4 v1, 0x1

    #@1e
    iput-boolean v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    #@20
    .line 153
    .end local v0    # "i":I
    :goto_0
    return-void

    #@21
    .line 164
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    #@23
    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    #@25
    goto :goto_0

    #@26
    .line 168
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    #@28
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    #@2a
    if-eq v1, v2, :cond_2

    #@2c
    .line 169
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    #@2e
    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    #@30
    goto :goto_0

    #@31
    .line 171
    :cond_2
    const/4 v1, 0x0

    #@32
    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    #@34
    goto :goto_0
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 188
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBundle()Ljava/util/ResourceBundle;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 203
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 204
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    #@7
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    .line 203
    if-eqz v0, :cond_0

    #@17
    .line 205
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    #@19
    return-object v0

    #@1a
    .line 207
    :cond_0
    return-object v2
.end method

.method public getTop()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasFallback()Z
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isLocale()Z
    .locals 1

    #@0
    .prologue
    .line 192
    iget-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    #@2
    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    #@2
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    #@4
    .line 182
    iget-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    #@6
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    #@8
    .line 183
    invoke-direct {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    #@b
    .line 184
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    #@d
    return-object v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 147
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    #@8
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    #@a
    .line 148
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    #@c
    if-eqz v0, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    #@11
    .line 149
    invoke-direct {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    #@14
    .line 145
    :cond_0
    return-void

    #@15
    .line 148
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method
