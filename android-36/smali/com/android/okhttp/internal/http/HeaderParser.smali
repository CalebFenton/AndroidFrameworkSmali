.class public final Lcom/android/okhttp/internal/http/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist parseSeconds(Ljava/lang/String;I)I
    .registers 4

    .line 60
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_19

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_f

    const p0, 0x7fffffff

    return p0

    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    long-to-int p0, p0

    return p0

    :catch_19
    return p1
.end method

.method public static greylist skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 31
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_15
    :goto_15
    return p1
.end method

.method public static greylist skipWhitespace(Ljava/lang/String;I)I
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 45
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_16
    :goto_16
    return p1
.end method
