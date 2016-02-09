.class public Lcom/android/org/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;
.source "IPAddress.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static isMaskValue(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "component"    # Ljava/lang/String;
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 103
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result v1

    #@5
    .line 105
    .local v1, "value":I
    if-ltz v1, :cond_0

    #@7
    if-gt v1, p1, :cond_0

    #@9
    const/4 v2, 0x1

    #@a
    :cond_0
    return v2

    #@b
    .line 108
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    #@c
    .line 109
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 15
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public static isValidIPv4(Ljava/lang/String;)Z
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/4 v6, 0x0

    #@2
    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v7

    #@6
    if-nez v7, :cond_0

    #@8
    .line 43
    return v6

    #@9
    .line 47
    :cond_0
    const/4 v2, 0x0

    #@a
    .line 49
    .local v2, "octets":I
    new-instance v7, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v7

    #@13
    const-string/jumbo v8, "."

    #@16
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v7

    #@1a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v5

    #@1e
    .line 52
    .local v5, "temp":Ljava/lang/String;
    const/4 v4, 0x0

    #@1f
    .line 53
    .local v4, "start":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@22
    move-result v7

    #@23
    if-ge v4, v7, :cond_4

    #@25
    .line 54
    const/16 v7, 0x2e

    #@27
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->indexOf(II)I

    #@2a
    move-result v3

    #@2b
    .local v3, "pos":I
    if-le v3, v4, :cond_4

    #@2d
    .line 56
    if-ne v2, v9, :cond_1

    #@2f
    .line 58
    return v6

    #@30
    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@33
    move-result-object v7

    #@34
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result v1

    #@38
    .line 68
    .local v1, "octet":I
    if-ltz v1, :cond_2

    #@3a
    const/16 v7, 0xff

    #@3c
    if-le v1, v7, :cond_3

    #@3e
    .line 70
    :cond_2
    return v6

    #@3f
    .line 65
    .end local v1    # "octet":I
    :catch_0
    move-exception v0

    #@40
    .line 66
    .local v0, "ex":Ljava/lang/NumberFormatException;
    return v6

    #@41
    .line 72
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v1    # "octet":I
    :cond_3
    add-int/lit8 v4, v3, 0x1

    #@43
    .line 73
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 76
    .end local v1    # "octet":I
    .end local v3    # "pos":I
    :cond_4
    if-ne v2, v9, :cond_5

    #@48
    const/4 v6, 0x1

    #@49
    :cond_5
    return v6
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 82
    const-string/jumbo v3, "/"

    #@4
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 83
    .local v0, "index":I
    add-int/lit8 v3, v0, 0x1

    #@a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 85
    .local v1, "mask":Ljava/lang/String;
    if-lez v0, :cond_0

    #@10
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 86
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_1

    #@20
    const/16 v2, 0x20

    #@22
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    #@25
    move-result v2

    #@26
    .line 85
    :cond_0
    :goto_0
    return v2

    #@27
    .line 86
    :cond_1
    const/4 v2, 0x1

    #@28
    goto :goto_0
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .locals 13
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v12, 0x8

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v11, 0x0

    #@4
    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@7
    move-result v9

    #@8
    if-nez v9, :cond_0

    #@a
    .line 125
    return v11

    #@b
    .line 129
    :cond_0
    const/4 v3, 0x0

    #@c
    .line 131
    .local v3, "octets":I
    new-instance v9, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v9

    #@15
    const-string/jumbo v10, ":"

    #@18
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v9

    #@1c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v6

    #@20
    .line 132
    .local v6, "temp":Ljava/lang/String;
    const/4 v0, 0x0

    #@21
    .line 134
    .local v0, "doubleColonFound":Z
    const/4 v5, 0x0

    #@22
    .line 135
    .local v5, "start":I
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@25
    move-result v9

    #@26
    if-ge v5, v9, :cond_8

    #@28
    .line 136
    const/16 v9, 0x3a

    #@2a
    invoke-virtual {v6, v9, v5}, Ljava/lang/String;->indexOf(II)I

    #@2d
    move-result v4

    #@2e
    .local v4, "pos":I
    if-lt v4, v5, :cond_8

    #@30
    .line 138
    if-ne v3, v12, :cond_1

    #@32
    .line 140
    return v11

    #@33
    .line 143
    :cond_1
    if-eq v5, v4, :cond_6

    #@35
    .line 145
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v7

    #@39
    .line 147
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@3c
    move-result v9

    #@3d
    add-int/lit8 v9, v9, -0x1

    #@3f
    if-ne v4, v9, :cond_4

    #@41
    const/16 v9, 0x2e

    #@43
    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    #@46
    move-result v9

    #@47
    if-lez v9, :cond_4

    #@49
    .line 149
    invoke-static {v7}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    #@4c
    move-result v9

    #@4d
    if-nez v9, :cond_2

    #@4f
    .line 151
    return v11

    #@50
    .line 154
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@52
    .line 180
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v5, v4, 0x1

    #@54
    .line 181
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_0

    #@57
    .line 160
    .restart local v7    # "value":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5a
    move-result-object v9

    #@5b
    const/16 v10, 0x10

    #@5d
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    move-result v2

    #@61
    .line 166
    .local v2, "octet":I
    if-ltz v2, :cond_5

    #@63
    const v9, 0xffff

    #@66
    if-le v2, v9, :cond_3

    #@68
    .line 168
    :cond_5
    return v11

    #@69
    .line 163
    .end local v2    # "octet":I
    :catch_0
    move-exception v1

    #@6a
    .line 164
    .local v1, "ex":Ljava/lang/NumberFormatException;
    return v11

    #@6b
    .line 174
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    if-eq v4, v8, :cond_7

    #@6d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@70
    move-result v9

    #@71
    add-int/lit8 v9, v9, -0x1

    #@73
    if-eq v4, v9, :cond_7

    #@75
    if-eqz v0, :cond_7

    #@77
    .line 176
    return v11

    #@78
    .line 178
    :cond_7
    const/4 v0, 0x1

    #@79
    goto :goto_1

    #@7a
    .line 184
    .end local v4    # "pos":I
    :cond_8
    if-eq v3, v12, :cond_9

    #@7c
    .end local v0    # "doubleColonFound":Z
    :goto_2
    return v0

    #@7d
    .restart local v0    # "doubleColonFound":Z
    :cond_9
    move v0, v8

    #@7e
    goto :goto_2
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 92
    const-string/jumbo v3, "/"

    #@4
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 93
    .local v0, "index":I
    add-int/lit8 v3, v0, 0x1

    #@a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 95
    .local v1, "mask":Ljava/lang/String;
    if-lez v0, :cond_0

    #@10
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    invoke-static {v3}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 96
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_1

    #@20
    const/16 v2, 0x80

    #@22
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/IPAddress;->isMaskValue(Ljava/lang/String;I)Z

    #@25
    move-result v2

    #@26
    .line 95
    :cond_0
    :goto_0
    return v2

    #@27
    .line 96
    :cond_1
    const/4 v2, 0x1

    #@28
    goto :goto_0
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method
