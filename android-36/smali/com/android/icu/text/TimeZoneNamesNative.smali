.class public final Lcom/android/icu/text/TimeZoneNamesNative;
.super Ljava/lang/Object;
.source "TimeZoneNamesNative.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist fillZoneStringsNative(Ljava/lang/String;[[Ljava/lang/String;)V
.end method

.method public static blacklist getFilledZoneStrings(Ljava/util/Locale;[Ljava/lang/String;)[[Ljava/lang/String;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "tzIds"    # [Ljava/lang/String;

    .line 49
    array-length v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 50
    .local v0, "result":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v3, p1

    if-ge v1, v3, :cond_20

    .line 51
    aget-object v3, v0, v1

    aget-object v4, p1, v1

    aput-object v4, v3, v2

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 53
    .end local v1    # "i":I
    :cond_20
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/icu/text/TimeZoneNamesNative;->fillZoneStringsNative(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 54
    return-object v0
.end method
