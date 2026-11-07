.class public Landroid/net/connectivity/com/android/net/module/util/DnsUtils;
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
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 78
    return v0

    .line 80
    :cond_4
    array-length v1, p0

    .line 81
    .local v1, "length":I
    array-length v2, p1

    const/4 v3, 0x0

    if-eq v2, v1, :cond_a

    .line 82
    return v3

    .line 84
    :cond_a
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1b

    .line 85
    aget-object v4, p0, v2

    aget-object v5, p1, v2

    invoke-static {v4, v5}, Landroid/net/connectivity/com/android/net/module/util/DnsUtils;->equalsIgnoreDnsCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 86
    return v3

    .line 84
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 89
    .end local v2    # "i":I
    :cond_1b
    return v0
.end method

.method public static blacklist equalsIgnoreDnsCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 61
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

    .line 65
    :cond_12
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 66
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/net/connectivity/com/android/net/module/util/DnsUtils;->toDnsUpperCase(C)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/net/connectivity/com/android/net/module/util/DnsUtils;->toDnsUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_2c

    .line 67
    return v1

    .line 65
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 70
    .end local v2    # "i":I
    :cond_2f
    return v0

    .line 62
    :cond_30
    :goto_30
    if-nez p0, :cond_35

    if-nez p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    return v0
.end method

.method public static blacklist toDnsLabelsUpperCase([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "labels"    # [Ljava/lang/String;

    .line 50
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 51
    .local v0, "outStrings":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 52
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/DnsUtils;->toDnsUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 54
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private static blacklist toDnsUpperCase(C)C
    .registers 2
    .param p0, "a"    # C

    .line 93
    const/16 v0, 0x61

    if-lt p0, v0, :cond_c

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_c

    add-int/lit8 v0, p0, -0x20

    int-to-char v0, v0

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method public static blacklist toDnsUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 40
    .local v0, "outChars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/DnsUtils;->toDnsUpperCase(C)C

    move-result v2

    aput-char v2, v0, v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 43
    .end local v1    # "i":I
    :cond_1a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method
