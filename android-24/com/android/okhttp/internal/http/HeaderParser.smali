.class public final Lcom/android/okhttp/internal/http/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    #@0
    .prologue
    .line 54
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-wide v2

    #@4
    .line 55
    .local v2, "seconds":J
    const-wide/32 v4, 0x7fffffff

    #@7
    cmp-long v1, v2, v4

    #@9
    if-lez v1, :cond_0

    #@b
    .line 56
    const v1, 0x7fffffff

    #@e
    return v1

    #@f
    .line 57
    :cond_0
    const-wide/16 v4, 0x0

    #@11
    cmp-long v1, v2, v4

    #@13
    if-gez v1, :cond_1

    #@15
    .line 58
    const/4 v1, 0x0

    #@16
    return v1

    #@17
    .line 60
    :cond_1
    long-to-int v1, v2

    #@18
    return v1

    #@19
    .line 62
    .end local v2    # "seconds":J
    :catch_0
    move-exception v0

    #@1a
    .line 63
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    #@0
    .prologue
    .line 26
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@d
    move-result v0

    #@e
    const/4 v1, -0x1

    #@f
    if-eq v0, v1, :cond_1

    #@11
    .line 31
    :cond_0
    return p1

    #@12
    .line 26
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@14
    goto :goto_0
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 39
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-ge p1, v1, :cond_0

    #@6
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v0

    #@a
    .line 41
    .local v0, "c":C
    const/16 v1, 0x20

    #@c
    if-eq v0, v1, :cond_1

    #@e
    const/16 v1, 0x9

    #@10
    if-eq v0, v1, :cond_1

    #@12
    .line 45
    .end local v0    # "c":C
    :cond_0
    return p1

    #@13
    .line 39
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 p1, p1, 0x1

    #@15
    goto :goto_0
.end method
