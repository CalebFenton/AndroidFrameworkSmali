.class public abstract Lcom/android/server/wifi/hotspot2/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final PLMNText:[Ljava/lang/String;

.field public static final UNSET_TIME:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 18
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "org"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "3gppnetwork"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "mcc*"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "mnc*"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "wlan"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    sput-object v0, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    #@23
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static bytesToBingoCard(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 212
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    .line 213
    .local v0, "dup":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    .line 214
    .local v1, "sbx":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 215
    const-string/jumbo v2, "%02x "

    #@14
    new-array v3, v6, [Ljava/lang/Object;

    #@16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@19
    move-result v4

    #@1a
    and-int/lit16 v4, v4, 0xff

    #@1c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v4

    #@20
    aput-object v4, v3, v5

    #@22
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    goto :goto_0

    #@2a
    .line 217
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@2d
    move-result-object v0

    #@2e
    .line 218
    const/16 v2, 0x20

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 219
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_1

    #@39
    .line 220
    const-string/jumbo v2, "%c"

    #@3c
    new-array v3, v6, [Ljava/lang/Object;

    #@3e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@41
    move-result v4

    #@42
    and-int/lit16 v4, v4, 0xff

    #@44
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->toAscii(I)C

    #@47
    move-result v4

    #@48
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@4b
    move-result-object v4

    #@4c
    aput-object v4, v3, v5

    #@4e
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    goto :goto_1

    #@56
    .line 222
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    return-object v2
.end method

.method public static bytesToBingoCard(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "len"    # I

    #@0
    .prologue
    .line 206
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 207
    .local v0, "dup":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    #@7
    move-result v1

    #@8
    add-int/2addr v1, p1

    #@9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@c
    .line 208
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->bytesToBingoCard(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Comparable",
            "<TT;>;TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p0, "c1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    .local p1, "c2":Ljava/lang/Comparable;, "TT;"
    if-nez p0, :cond_1

    #@2
    .line 195
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, -0x1

    #@7
    goto :goto_0

    #@8
    .line 197
    :cond_1
    if-nez p1, :cond_2

    #@a
    .line 198
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 201
    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public static fromHex(CZ)I
    .locals 3
    .param p0, "ch"    # C
    .param p1, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    const/16 v0, 0x39

    #@2
    if-gt p0, v0, :cond_0

    #@4
    const/16 v0, 0x30

    #@6
    if-lt p0, v0, :cond_0

    #@8
    .line 167
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 168
    :cond_0
    const/16 v0, 0x61

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x66

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 169
    add-int/lit8 v0, p0, 0xa

    #@15
    add-int/lit8 v0, v0, -0x61

    #@17
    return v0

    #@18
    .line 170
    :cond_1
    const/16 v0, 0x46

    #@1a
    if-gt p0, v0, :cond_2

    #@1c
    const/16 v0, 0x41

    #@1e
    if-lt p0, v0, :cond_2

    #@20
    .line 171
    add-int/lit8 v0, p0, 0xa

    #@22
    add-int/lit8 v0, v0, -0x41

    #@24
    return v0

    #@25
    .line 172
    :cond_2
    if-eqz p1, :cond_3

    #@27
    .line 173
    const/4 v0, -0x1

    #@28
    return v0

    #@29
    .line 175
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Bad hex-character: "

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method

.method public static getMccMnc(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "domain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x3

    #@3
    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@6
    move-result v5

    #@7
    sget-object v6, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    #@9
    array-length v6, v6

    #@a
    if-eq v5, v6, :cond_0

    #@c
    .line 60
    return-object v8

    #@d
    .line 63
    :cond_0
    const/4 v3, 0x0

    #@e
    .local v3, "n":I
    :goto_0
    sget-object v5, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    #@10
    array-length v5, v5

    #@11
    if-ge v3, v5, :cond_3

    #@13
    .line 64
    sget-object v5, Lcom/android/server/wifi/hotspot2/Utils;->PLMNText:[Ljava/lang/String;

    #@15
    aget-object v1, v5, v3

    #@17
    .line 65
    .local v1, "expect":Ljava/lang/String;
    const-string/jumbo v5, "*"

    #@1a
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_1

    #@20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@23
    move-result v5

    #@24
    add-int/lit8 v2, v5, -0x1

    #@26
    .line 66
    .local v2, "len":I
    :goto_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    check-cast v5, Ljava/lang/String;

    #@2c
    invoke-virtual {v5, v9, v1, v9, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@2f
    move-result v5

    #@30
    if-nez v5, :cond_2

    #@32
    .line 67
    return-object v8

    #@33
    .line 65
    .end local v2    # "len":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@36
    move-result v2

    #@37
    .restart local v2    # "len":I
    goto :goto_1

    #@38
    .line 63
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 71
    .end local v1    # "expect":Ljava/lang/String;
    .end local v2    # "len":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const/4 v5, 0x2

    #@41
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v5

    #@45
    check-cast v5, Ljava/lang/String;

    #@47
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v5

    #@53
    check-cast v5, Ljava/lang/String;

    #@55
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    .line 72
    .local v4, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    #@62
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@65
    move-result v5

    #@66
    if-ge v3, v5, :cond_6

    #@68
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    #@6b
    move-result v0

    #@6c
    .line 74
    .local v0, "ch":C
    const/16 v5, 0x30

    #@6e
    if-lt v0, v5, :cond_4

    #@70
    const/16 v5, 0x39

    #@72
    if-le v0, v5, :cond_5

    #@74
    .line 75
    :cond_4
    return-object v8

    #@75
    .line 72
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@77
    goto :goto_2

    #@78
    .line 78
    .end local v0    # "ch":C
    :cond_6
    return-object v4
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    and-int/lit8 v3, v3, 0x1

    #@7
    const/4 v4, 0x1

    #@8
    if-ne v3, v4, :cond_0

    #@a
    .line 152
    new-instance v3, Ljava/lang/NumberFormatException;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Odd length hex string: "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1b
    move-result v5

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 154
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@2b
    move-result v3

    #@2c
    shr-int/lit8 v3, v3, 0x1

    #@2e
    new-array v0, v3, [B

    #@30
    .line 155
    .local v0, "data":[B
    const/4 v2, 0x0

    #@31
    .line 156
    .local v2, "position":I
    const/4 v1, 0x0

    #@32
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@35
    move-result v3

    #@36
    if-ge v1, v3, :cond_1

    #@38
    .line 158
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v3

    #@3c
    invoke-static {v3, v5}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    #@3f
    move-result v3

    #@40
    and-int/lit8 v3, v3, 0xf

    #@42
    shl-int/lit8 v3, v3, 0x4

    #@44
    .line 159
    add-int/lit8 v4, v1, 0x1

    #@46
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@49
    move-result v4

    #@4a
    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    #@4d
    move-result v4

    #@4e
    and-int/lit8 v4, v4, 0xf

    #@50
    .line 158
    or-int/2addr v3, v4

    #@51
    int-to-byte v3, v3

    #@52
    .line 157
    aput-byte v3, v0, v2

    #@54
    .line 160
    add-int/lit8 v2, v2, 0x1

    #@56
    .line 156
    add-int/lit8 v1, v1, 0x2

    #@58
    goto :goto_0

    #@59
    .line 162
    :cond_1
    return-object v0
.end method

.method public static hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 21
    const-string/jumbo v0, "HS20"

    #@3
    return-object v0
.end method

.method static isDecimal(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    const/4 v1, 0x0

    #@1
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v1, v2, :cond_2

    #@7
    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 186
    .local v0, "ch":C
    const/16 v2, 0x30

    #@d
    if-lt v0, v2, :cond_0

    #@f
    const/16 v2, 0x39

    #@11
    if-le v0, v2, :cond_1

    #@13
    .line 187
    :cond_0
    const/4 v2, 0x0

    #@14
    return v2

    #@15
    .line 184
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 190
    .end local v0    # "ch":C
    :cond_2
    const/4 v2, 0x1

    #@19
    return v2
.end method

.method public static parseMac(Ljava/lang/String;)J
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 43
    const-wide/16 v2, 0x0

    #@3
    .line 44
    .local v2, "mac":J
    const/4 v0, 0x0

    #@4
    .line 45
    .local v0, "count":I
    const/4 v1, 0x0

    #@5
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@8
    move-result v5

    #@9
    if-ge v1, v5, :cond_1

    #@b
    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@e
    move-result v5

    #@f
    invoke-static {v5, v10}, Lcom/android/server/wifi/hotspot2/Utils;->fromHex(CZ)I

    #@12
    move-result v4

    #@13
    .line 47
    .local v4, "nibble":I
    if-ltz v4, :cond_0

    #@15
    .line 48
    const/4 v5, 0x4

    #@16
    shl-long v6, v2, v5

    #@18
    int-to-long v8, v4

    #@19
    or-long v2, v6, v8

    #@1b
    .line 49
    add-int/lit8 v0, v0, 0x1

    #@1d
    .line 45
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 52
    .end local v4    # "nibble":I
    :cond_1
    const/16 v5, 0xc

    #@22
    if-lt v0, v5, :cond_2

    #@24
    and-int/lit8 v5, v0, 0x1

    #@26
    if-ne v5, v10, :cond_3

    #@28
    .line 53
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@2a
    new-instance v6, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v7, "Bad MAC address: \'"

    #@32
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v6

    #@36
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    const-string/jumbo v7, "\'"

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v6

    #@45
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@48
    throw v5

    #@49
    .line 55
    :cond_3
    return-wide v2
.end method

.method public static roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "ois":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 94
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    #@8
    .line 95
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "oi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_2

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v5

    #@16
    check-cast v5, Ljava/lang/Long;

    #@18
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    #@1b
    move-result-wide v2

    #@1c
    .line 96
    .local v2, "oi":J
    if-eqz v0, :cond_0

    #@1e
    .line 97
    const/4 v0, 0x0

    #@1f
    .line 101
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@22
    move-result v5

    #@23
    const/16 v6, 0x28

    #@25
    if-le v5, v6, :cond_1

    #@27
    .line 102
    const-string/jumbo v5, "%06x"

    #@2a
    new-array v6, v9, [Ljava/lang/Object;

    #@2c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2f
    move-result-object v7

    #@30
    aput-object v7, v6, v8

    #@32
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    goto :goto_0

    #@3a
    .line 99
    :cond_0
    const-string/jumbo v5, ", "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    goto :goto_1

    #@41
    .line 104
    :cond_1
    const-string/jumbo v5, "%010x"

    #@44
    new-array v6, v9, [Ljava/lang/Object;

    #@46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@49
    move-result-object v7

    #@4a
    aput-object v7, v6, v8

    #@4c
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_0

    #@54
    .line 107
    .end local v2    # "oi":J
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    return-object v5
.end method

.method public static roamingConsortiumsToString([J)Ljava/lang/String;
    .locals 6
    .param p0, "ois"    # [J

    #@0
    .prologue
    .line 82
    if-nez p0, :cond_0

    #@2
    .line 83
    const-string/jumbo v1, "null"

    #@5
    return-object v1

    #@6
    .line 85
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@8
    array-length v1, p0

    #@9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 86
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    #@d
    array-length v4, p0

    #@e
    :goto_0
    if-ge v1, v4, :cond_1

    #@10
    aget-wide v2, p0, v1

    #@12
    .line 87
    .local v2, "oi":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@15
    move-result-object v5

    #@16
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@19
    .line 86
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 89
    .end local v2    # "oi":J
    :cond_1
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->roamingConsortiumsToString(Ljava/util/Collection;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method

.method public static splitDomain(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 26
    const-string/jumbo v5, "."

    #@4
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7
    move-result v5

    #@8
    if-eqz v5, :cond_0

    #@a
    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v5

    #@e
    add-int/lit8 v5, v5, -0x1

    #@10
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    .line 28
    :cond_0
    const/16 v5, 0x40

    #@16
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    #@19
    move-result v0

    #@1a
    .line 29
    .local v0, "at":I
    if-ltz v0, :cond_1

    #@1c
    .line 30
    add-int/lit8 v5, v0, 0x1

    #@1e
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    .line 32
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, "\\."

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    .line 33
    .local v3, "labels":[Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedList;

    #@2f
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@32
    .line 34
    .local v2, "labelList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    array-length v5, v3

    #@33
    :goto_0
    if-ge v4, v5, :cond_2

    #@35
    aget-object v1, v3, v4

    #@37
    .line 35
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@3a
    .line 34
    add-int/lit8 v4, v4, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 38
    .end local v1    # "label":Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method private static toAscii(I)C
    .locals 1
    .param p0, "b"    # I

    #@0
    .prologue
    .line 180
    const/16 v0, 0x20

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x7f

    #@6
    if-ge p0, v0, :cond_0

    #@8
    int-to-char v0, p0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/16 v0, 0x2e

    #@c
    goto :goto_0
.end method

.method public static toHMS(J)Ljava/lang/String;
    .locals 18
    .param p0, "millis"    # J

    #@0
    .prologue
    .line 226
    const-wide/16 v12, 0x0

    #@2
    cmp-long v12, p0, v12

    #@4
    if-ltz v12, :cond_0

    #@6
    move-wide/from16 v8, p0

    #@8
    .line 227
    .local v8, "time":J
    :goto_0
    const-wide/16 v12, 0x3e8

    #@a
    div-long v10, v8, v12

    #@c
    .line 228
    .local v10, "tmp":J
    const-wide/16 v12, 0x3e8

    #@e
    mul-long/2addr v12, v10

    #@f
    sub-long v4, v8, v12

    #@11
    .line 230
    .local v4, "ms":J
    move-wide v8, v10

    #@12
    .line 231
    const-wide/16 v12, 0x3c

    #@14
    div-long/2addr v10, v12

    #@15
    .line 232
    const-wide/16 v12, 0x3c

    #@17
    mul-long/2addr v12, v10

    #@18
    sub-long v6, v8, v12

    #@1a
    .line 234
    .local v6, "s":J
    move-wide v8, v10

    #@1b
    .line 235
    const-wide/16 v12, 0x3c

    #@1d
    div-long/2addr v10, v12

    #@1e
    .line 236
    const-wide/16 v12, 0x3c

    #@20
    mul-long/2addr v12, v10

    #@21
    sub-long v2, v8, v12

    #@23
    .line 238
    .local v2, "m":J
    const-string/jumbo v13, "%s%d:%02d:%02d.%03d"

    #@26
    const/4 v12, 0x5

    #@27
    new-array v14, v12, [Ljava/lang/Object;

    #@29
    const-wide/16 v16, 0x0

    #@2b
    cmp-long v12, p0, v16

    #@2d
    if-gez v12, :cond_1

    #@2f
    const-string/jumbo v12, "-"

    #@32
    :goto_1
    const/4 v15, 0x0

    #@33
    aput-object v12, v14, v15

    #@35
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@38
    move-result-object v12

    #@39
    const/4 v15, 0x1

    #@3a
    aput-object v12, v14, v15

    #@3c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v12

    #@40
    const/4 v15, 0x2

    #@41
    aput-object v12, v14, v15

    #@43
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@46
    move-result-object v12

    #@47
    const/4 v15, 0x3

    #@48
    aput-object v12, v14, v15

    #@4a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4d
    move-result-object v12

    #@4e
    const/4 v15, 0x4

    #@4f
    aput-object v12, v14, v15

    #@51
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v12

    #@55
    return-object v12

    #@56
    .line 226
    .end local v2    # "m":J
    .end local v4    # "ms":J
    .end local v6    # "s":J
    .end local v8    # "time":J
    .end local v10    # "tmp":J
    :cond_0
    move-wide/from16 v0, p0

    #@58
    neg-long v8, v0

    #@59
    .restart local v8    # "time":J
    goto :goto_0

    #@5a
    .line 238
    .restart local v2    # "m":J
    .restart local v4    # "ms":J
    .restart local v6    # "s":J
    .restart local v10    # "tmp":J
    :cond_1
    const-string/jumbo v12, ""

    #@5d
    goto :goto_1
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "octets"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    array-length v2, p0

    #@4
    mul-int/lit8 v2, v2, 0x2

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 144
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, p0

    #@a
    move v2, v3

    #@b
    :goto_0
    if-ge v2, v4, :cond_0

    #@d
    aget-byte v0, p0, v2

    #@f
    .line 145
    .local v0, "o":B
    const-string/jumbo v5, "%02x"

    #@12
    const/4 v6, 0x1

    #@13
    new-array v6, v6, [Ljava/lang/Object;

    #@15
    and-int/lit16 v7, v0, 0xff

    #@17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v7

    #@1b
    aput-object v7, v6, v3

    #@1d
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 144
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 147
    .end local v0    # "o":B
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    return-object v2
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 125
    if-nez p0, :cond_0

    #@3
    .line 126
    const-string/jumbo v3, "null"

    #@6
    return-object v3

    #@7
    .line 128
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    array-length v3, p0

    #@a
    mul-int/lit8 v3, v3, 0x3

    #@c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@f
    .line 130
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    #@10
    .line 131
    .local v1, "first":Z
    array-length v5, p0

    #@11
    move v3, v4

    #@12
    :goto_0
    if-ge v3, v5, :cond_2

    #@14
    aget-byte v0, p0, v3

    #@16
    .line 132
    .local v0, "b":B
    if-eqz v1, :cond_1

    #@18
    .line 133
    const/4 v1, 0x0

    #@19
    .line 137
    :goto_1
    const-string/jumbo v6, "%02x"

    #@1c
    const/4 v7, 0x1

    #@1d
    new-array v7, v7, [Ljava/lang/Object;

    #@1f
    and-int/lit16 v8, v0, 0xff

    #@21
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v8

    #@25
    aput-object v8, v7, v4

    #@27
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 131
    add-int/lit8 v3, v3, 0x1

    #@30
    goto :goto_0

    #@31
    .line 135
    :cond_1
    const/16 v6, 0x20

    #@33
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36
    goto :goto_1

    #@37
    .line 139
    .end local v0    # "b":B
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    return-object v3
.end method

.method public static toUTCString(J)Ljava/lang/String;
    .locals 8
    .param p0, "ms"    # J

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    .line 242
    const-wide/16 v2, 0x0

    #@5
    cmp-long v1, p0, v2

    #@7
    if-gez v1, :cond_0

    #@9
    .line 243
    const-string/jumbo v1, "unset"

    #@c
    return-object v1

    #@d
    .line 245
    :cond_0
    const-string/jumbo v1, "UTC"

    #@10
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    #@17
    move-result-object v0

    #@18
    .line 246
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1b
    .line 247
    const-string/jumbo v1, "%4d/%02d/%02d %2d:%02d:%02dZ"

    #@1e
    const/4 v2, 0x6

    #@1f
    new-array v2, v2, [Ljava/lang/Object;

    #@21
    .line 248
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    #@24
    move-result v3

    #@25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v3

    #@29
    const/4 v4, 0x0

    #@2a
    aput-object v3, v2, v4

    #@2c
    .line 249
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    #@2f
    move-result v3

    #@30
    add-int/lit8 v3, v3, 0x1

    #@32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v3

    #@36
    aput-object v3, v2, v5

    #@38
    .line 250
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    #@3b
    move-result v3

    #@3c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object v3

    #@40
    aput-object v3, v2, v6

    #@42
    .line 251
    const/16 v3, 0xb

    #@44
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@47
    move-result v3

    #@48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v3

    #@4c
    const/4 v4, 0x3

    #@4d
    aput-object v3, v2, v4

    #@4f
    .line 252
    const/16 v3, 0xc

    #@51
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@54
    move-result v3

    #@55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v3

    #@59
    const/4 v4, 0x4

    #@5a
    aput-object v3, v2, v4

    #@5c
    .line 253
    const/16 v3, 0xd

    #@5e
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    #@61
    move-result v3

    #@62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@65
    move-result-object v3

    #@66
    aput-object v3, v2, v7

    #@68
    .line 247
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    return-object v1
.end method

.method public static toUnicodeEscapedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 112
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@a
    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v3

    #@e
    if-ge v1, v3, :cond_1

    #@10
    .line 113
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 114
    .local v0, "ch":C
    const/16 v3, 0x20

    #@16
    if-lt v0, v3, :cond_0

    #@18
    const/16 v3, 0x7f

    #@1a
    if-ge v0, v3, :cond_0

    #@1c
    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 112
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 118
    :cond_0
    const-string/jumbo v3, "\\u"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, "%04x"

    #@2c
    const/4 v5, 0x1

    #@2d
    new-array v5, v5, [Ljava/lang/Object;

    #@2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v6

    #@33
    const/4 v7, 0x0

    #@34
    aput-object v6, v5, v7

    #@36
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    goto :goto_1

    #@3e
    .line 121
    .end local v0    # "ch":C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v3

    #@42
    return-object v3
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 257
    if-nez p0, :cond_0

    #@3
    .line 258
    return-object v0

    #@4
    .line 260
    :cond_0
    const-string/jumbo v0, "\""

    #@7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    const-string/jumbo v0, "\""

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@19
    move-result v0

    #@1a
    add-int/lit8 v0, v0, -0x1

    #@1c
    const/4 v1, 0x1

    #@1d
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 264
    :cond_1
    return-object p0
.end method
