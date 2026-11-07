.class public Lcom/android/internal/telephony/util/DnsUtils;
.super Ljava/lang/Object;
.source "DnsUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist equalsDnsLabelIgnoreDnsCase([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 80
    :cond_4
    array-length v1, p0

    .line 81
    array-length v2, p1

    const/4 v3, 0x0

    if-eq v2, v1, :cond_a

    return v3

    :cond_a
    move v2, v3

    :goto_b
    if-ge v2, v1, :cond_1b

    .line 85
    aget-object v4, p0, v2

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Lcom/android/internal/telephony/util/DnsUtils;->equalsIgnoreDnsCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    return v3

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    return v0
.end method

.method public static blacklist equalsIgnoreDnsCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_30

    if-nez p1, :cond_7

    goto :goto_30

    .line 64
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_12

    return v1

    :cond_12
    move v2, v1

    .line 65
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 66
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/util/DnsUtils;->toDnsUpperCase(C)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/util/DnsUtils;->toDnsUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_2c

    return v1

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2f
    return v0

    :cond_30
    :goto_30
    if-nez p0, :cond_35

    if-nez p1, :cond_35

    return v0

    :cond_35
    return v1
.end method

.method public static blacklist toDnsLabelsUpperCase([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 50
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 51
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 52
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/telephony/util/DnsUtils;->toDnsUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method private static blacklist toDnsUpperCase(C)C
    .registers 2

    .line 0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_b

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_b

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    :cond_b
    return p0
.end method

.method public static blacklist toDnsUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 40
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/util/DnsUtils;->toDnsUpperCase(C)C

    move-result v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 43
    :cond_1a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
