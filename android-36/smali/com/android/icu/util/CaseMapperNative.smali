.class public Lcom/android/icu/util/CaseMapperNative;
.super Ljava/lang/Object;
.source "CaseMapperNative.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 43
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/icu/util/CaseMapperNative;->toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native blacklist toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static blacklist toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 58
    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/icu/util/CaseMapperNative;->toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
