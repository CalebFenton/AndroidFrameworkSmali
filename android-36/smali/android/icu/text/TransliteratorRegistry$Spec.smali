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
.field private greylist-max-o isNextLocale:Z

.field private greylist-max-o isSpecLocale:Z

.field private greylist-max-o nextSpec:Ljava/lang/String;

.field private greylist-max-o res:Landroid/icu/impl/ICUResourceBundle;

.field private greylist-max-o scriptName:Ljava/lang/String;

.field private greylist-max-o spec:Ljava/lang/String;

.field private greylist-max-o top:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 8
    .param p1, "theSpec"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 114
    :try_start_a
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v1}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v1

    .line 117
    .local v1, "script":I
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v2}, Landroid/icu/lang/UScript;->getCode(Ljava/lang/String;)[I

    move-result-object v2

    .line 118
    .local v2, "s":[I
    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 119
    aget v4, v2, v3

    invoke-static {v4}, Landroid/icu/lang/UScript;->getName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 121
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 122
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 126
    :cond_2d
    iput-boolean v3, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    .line 127
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    .line 129
    const/4 v3, -0x1

    if-ne v1, v3, :cond_5d

    .line 130
    iget-object v3, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v3}, Landroid/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 131
    .local v3, "toploc":Ljava/util/Locale;
    const-string v4, "android/icu/impl/data/icudata/translit"

    invoke-static {v4, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    iput-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    .line 133
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v4, :cond_5d

    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 134
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z
    :try_end_5d
    .catch Ljava/util/MissingResourceException; {:try_start_a .. :try_end_5d} :catch_5e

    .line 143
    .end local v1    # "script":I
    .end local v2    # "s":[I
    .end local v3    # "toploc":Ljava/util/Locale;
    :cond_5d
    goto :goto_61

    .line 137
    :catch_5e
    move-exception v1

    .line 141
    .local v1, "e":Ljava/util/MissingResourceException;
    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 145
    .end local v1    # "e":Ljava/util/MissingResourceException;
    :goto_61
    invoke-virtual {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->reset()V

    .line 146
    return-void
.end method

.method private greylist-max-o setupNext()V
    .registers 4

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    .line 162
    iget-boolean v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    if-eqz v1, :cond_26

    .line 163
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 167
    .local v1, "i":I
    if-lez v1, :cond_21

    .line 168
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    goto :goto_25

    .line 171
    :cond_21
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    .line 173
    .end local v1    # "i":I
    :goto_25
    goto :goto_38

    .line 175
    :cond_26
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 176
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    goto :goto_38

    .line 178
    :cond_35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    .line 181
    :goto_38
    return-void
.end method


# virtual methods
.method public greylist-max-o get()Ljava/lang/String;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getBundle()Ljava/util/ResourceBundle;
    .registers 3

    .line 210
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    .line 211
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 212
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    return-object v0

    .line 214
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getTop()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o hasFallback()Z
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o isLocale()Z
    .registers 2

    .line 199
    iget-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    return v0
.end method

.method public greylist-max-o next()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    .line 189
    iget-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    .line 190
    invoke-direct {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    .line 191
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o reset()V
    .registers 3

    .line 153
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 154
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->res:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iput-boolean v0, p0, Landroid/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    .line 156
    invoke-direct {p0}, Landroid/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    .line 158
    :cond_1a
    return-void
.end method
