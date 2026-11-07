.class public abstract Lcom/android/org/bouncycastle/asn1/LocaleUtil;
.super Ljava/lang/Object;
.source "LocaleUtil.java"


# static fields
.field public static blacklist EN_Locale:Ljava/util/Locale;

.field private static final blacklist localeCache:Ljava/util/Map;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/LocaleUtil;->localeCache:Ljava/util/Map;

    .line 22
    invoke-static {}, Lcom/android/org/bouncycastle/asn1/LocaleUtil;->forEN()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/asn1/LocaleUtil;->EN_Locale:Ljava/util/Locale;

    return-void
.end method

.method private static blacklist forEN()Ljava/util/Locale;
    .registers 4

    .line 26
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 31
    :cond_15
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x0

    .line 32
    :goto_1a
    array-length v3, v0

    if-eq v2, v3, :cond_2f

    .line 34
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 36
    aget-object v0, v0, v2

    return-object v0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 40
    :cond_2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
