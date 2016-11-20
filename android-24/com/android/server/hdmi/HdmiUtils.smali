.class final Lcom/android/server/hdmi/HdmiUtils;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# static fields
.field private static final ADDRESS_TO_TYPE:[I

.field private static final DEFAULT_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v1, 0xf

    #@2
    .line 32
    new-array v0, v1, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    #@9
    .line 50
    new-array v0, v1, [Ljava/lang/String;

    #@b
    .line 51
    const-string/jumbo v1, "TV"

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    .line 52
    const-string/jumbo v1, "Recorder_1"

    #@14
    const/4 v2, 0x1

    #@15
    aput-object v1, v0, v2

    #@17
    .line 53
    const-string/jumbo v1, "Recorder_2"

    #@1a
    const/4 v2, 0x2

    #@1b
    aput-object v1, v0, v2

    #@1d
    .line 54
    const-string/jumbo v1, "Tuner_1"

    #@20
    const/4 v2, 0x3

    #@21
    aput-object v1, v0, v2

    #@23
    .line 55
    const-string/jumbo v1, "Playback_1"

    #@26
    const/4 v2, 0x4

    #@27
    aput-object v1, v0, v2

    #@29
    .line 56
    const-string/jumbo v1, "AudioSystem"

    #@2c
    const/4 v2, 0x5

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 57
    const-string/jumbo v1, "Tuner_2"

    #@32
    const/4 v2, 0x6

    #@33
    aput-object v1, v0, v2

    #@35
    .line 58
    const-string/jumbo v1, "Tuner_3"

    #@38
    const/4 v2, 0x7

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 59
    const-string/jumbo v1, "Playback_2"

    #@3e
    const/16 v2, 0x8

    #@40
    aput-object v1, v0, v2

    #@42
    .line 60
    const-string/jumbo v1, "Recorder_3"

    #@45
    const/16 v2, 0x9

    #@47
    aput-object v1, v0, v2

    #@49
    .line 61
    const-string/jumbo v1, "Tuner_4"

    #@4c
    const/16 v2, 0xa

    #@4e
    aput-object v1, v0, v2

    #@50
    .line 62
    const-string/jumbo v1, "Playback_3"

    #@53
    const/16 v2, 0xb

    #@55
    aput-object v1, v0, v2

    #@57
    .line 63
    const-string/jumbo v1, "Reserved_1"

    #@5a
    const/16 v2, 0xc

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 64
    const-string/jumbo v1, "Reserved_2"

    #@61
    const/16 v2, 0xd

    #@63
    aput-object v1, v0, v2

    #@65
    .line 65
    const-string/jumbo v1, "Secondary_TV"

    #@68
    const/16 v2, 0xe

    #@6a
    aput-object v1, v0, v2

    #@6c
    .line 50
    sput-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    #@6e
    .line 30
    return-void

    #@6f
    .line 32
    nop

    #@70
    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x3
        0x4
        0x5
        0x3
        0x3
        0x4
        0x1
        0x3
        0x4
        0x2
        0x2
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static asImmutableList([I)Ljava/util/List;
    .locals 5
    .param p0, "is"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    #@2
    array-length v2, p0

    #@3
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 164
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    #@7
    array-length v3, p0

    #@8
    :goto_0
    if-ge v2, v3, :cond_0

    #@a
    aget v1, p0, v2

    #@c
    .line 165
    .local v1, "type":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 164
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 167
    .end local v1    # "type":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method static checkCommandSource(Lcom/android/server/hdmi/HdmiCecMessage;ILjava/lang/String;)Z
    .locals 3
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p1, "expectedAddress"    # I
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    #@3
    move-result v0

    #@4
    .line 137
    .local v0, "src":I
    if-eq v0, p1, :cond_0

    #@6
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Invalid source [Expected:"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", Actual:"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, "]"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {p2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 139
    const/4 v1, 0x0

    #@30
    return v1

    #@31
    .line 141
    :cond_0
    const/4 v1, 0x1

    #@32
    return v1
.end method

.method static cloneHdmiDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 8
    .param p0, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p1, "newPowerStatus"    # I

    #@0
    .prologue
    .line 290
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@2
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@5
    move-result v1

    #@6
    .line 291
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@9
    move-result v2

    #@a
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    #@d
    move-result v3

    #@e
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    #@11
    move-result v4

    #@12
    .line 292
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getVendorId()I

    #@15
    move-result v5

    #@16
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    move v7, p1

    #@1b
    .line 290
    invoke-direct/range {v0 .. v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;I)V

    #@1e
    return-object v0
.end method

.method static getDefaultDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # I

    #@0
    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 106
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    #@8
    aget-object v0, v0, p0

    #@a
    return-object v0

    #@b
    .line 108
    :cond_0
    const-string/jumbo v0, ""

    #@e
    return-object v0
.end method

.method static getTypeFromAddress(I)I
    .locals 1
    .param p0, "address"    # I

    #@0
    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 91
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:[I

    #@8
    aget v0, v0, p0

    #@a
    return v0

    #@b
    .line 93
    :cond_0
    const/4 v0, -0x1

    #@c
    return v0
.end method

.method static isAffectingActiveRoutingPath(II)Z
    .locals 4
    .param p0, "activePath"    # I
    .param p1, "newPath"    # I

    #@0
    .prologue
    .line 242
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/16 v3, 0xc

    #@3
    if-gt v0, v3, :cond_0

    #@5
    .line 243
    shr-int v3, p1, v0

    #@7
    and-int/lit8 v2, v3, 0xf

    #@9
    .line 244
    .local v2, "nibble":I
    if-eqz v2, :cond_1

    #@b
    .line 245
    const v3, 0xfff0

    #@e
    shl-int v1, v3, v0

    #@10
    .line 246
    .local v1, "mask":I
    and-int/2addr p1, v1

    #@11
    .line 250
    .end local v1    # "mask":I
    .end local v2    # "nibble":I
    :cond_0
    if-nez p1, :cond_2

    #@13
    .line 251
    const/4 v3, 0x1

    #@14
    return v3

    #@15
    .line 242
    .restart local v2    # "nibble":I
    :cond_1
    add-int/lit8 v0, v0, 0x4

    #@17
    goto :goto_0

    #@18
    .line 253
    .end local v2    # "nibble":I
    :cond_2
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    #@1b
    move-result v3

    #@1c
    return v3
.end method

.method static isInActiveRoutingPath(II)Z
    .locals 5
    .param p0, "activePath"    # I
    .param p1, "newPath"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 270
    const/16 v0, 0xc

    #@3
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@5
    .line 271
    shr-int v3, p0, v0

    #@7
    and-int/lit8 v1, v3, 0xf

    #@9
    .line 272
    .local v1, "nibbleActive":I
    if-nez v1, :cond_1

    #@b
    .line 283
    .end local v1    # "nibbleActive":I
    :cond_0
    const/4 v3, 0x1

    #@c
    return v3

    #@d
    .line 275
    .restart local v1    # "nibbleActive":I
    :cond_1
    shr-int v3, p1, v0

    #@f
    and-int/lit8 v2, v3, 0xf

    #@11
    .line 276
    .local v2, "nibbleNew":I
    if-eqz v2, :cond_0

    #@13
    .line 279
    if-eq v1, v2, :cond_2

    #@15
    .line 280
    return v4

    #@16
    .line 270
    :cond_2
    add-int/lit8 v0, v0, -0x4

    #@18
    goto :goto_0
.end method

.method static isValidAddress(I)Z
    .locals 2
    .param p0, "address"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 79
    if-ltz p0, :cond_0

    #@3
    const/16 v1, 0xe

    #@5
    if-gt p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method static languageToInt(Ljava/lang/String;)I
    .locals 3
    .param p0, "language"    # Ljava/lang/String;

    #@0
    .prologue
    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 304
    .local v0, "normalized":Ljava/lang/String;
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v1

    #@9
    and-int/lit16 v1, v1, 0xff

    #@b
    shl-int/lit8 v1, v1, 0x10

    #@d
    .line 305
    const/4 v2, 0x1

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v2

    #@12
    and-int/lit16 v2, v2, 0xff

    #@14
    shl-int/lit8 v2, v2, 0x8

    #@16
    .line 304
    or-int/2addr v1, v2

    #@17
    .line 306
    const/4 v2, 0x2

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v2

    #@1c
    and-int/lit16 v2, v2, 0xff

    #@1e
    .line 304
    or-int/2addr v1, v2

    #@1f
    return v1
.end method

.method static mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 210
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 213
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 214
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 216
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 217
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@25
    move-result-object v1

    #@26
    return-object v1

    #@27
    .line 219
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    #@29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@2c
    .line 220
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@2f
    .line 221
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@32
    .line 222
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@35
    move-result-object v1

    #@36
    return-object v1
.end method

.method static parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p0, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 151
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    #@5
    move-result-object v2

    #@6
    aget-byte v2, v2, v1

    #@8
    if-ne v2, v0, :cond_0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    move v0, v1

    #@c
    goto :goto_0
.end method

.method static sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 202
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 203
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    #@9
    move-result v2

    #@a
    if-ge v0, v2, :cond_0

    #@c
    .line 204
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 203
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 206
    :cond_0
    return-object v1
.end method

.method static threeBytesToInt([B)I
    .locals 2
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 198
    const/4 v0, 0x0

    #@1
    aget-byte v0, p0, v0

    #@3
    and-int/lit16 v0, v0, 0xff

    #@5
    shl-int/lit8 v0, v0, 0x10

    #@7
    const/4 v1, 0x1

    #@8
    aget-byte v1, p0, v1

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    shl-int/lit8 v1, v1, 0x8

    #@e
    or-int/2addr v0, v1

    #@f
    const/4 v1, 0x2

    #@10
    aget-byte v1, p0, v1

    #@12
    and-int/lit16 v1, v1, 0xff

    #@14
    or-int/2addr v0, v1

    #@15
    return v0
.end method

.method static twoBytesToInt([B)I
    .locals 2
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 177
    const/4 v0, 0x0

    #@1
    aget-byte v0, p0, v0

    #@3
    and-int/lit16 v0, v0, 0xff

    #@5
    shl-int/lit8 v0, v0, 0x8

    #@7
    const/4 v1, 0x1

    #@8
    aget-byte v1, p0, v1

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    or-int/2addr v0, v1

    #@d
    return v0
.end method

.method static twoBytesToInt([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 188
    aget-byte v0, p0, p1

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    shl-int/lit8 v0, v0, 0x8

    #@6
    add-int/lit8 v1, p1, 0x1

    #@8
    aget-byte v1, p0, v1

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    or-int/2addr v0, v1

    #@d
    return v0
.end method

.method static verifyAddressType(II)V
    .locals 4
    .param p0, "logicalAddress"    # I
    .param p1, "deviceType"    # I

    #@0
    .prologue
    .line 120
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    #@3
    move-result v0

    #@4
    .line 121
    .local v0, "actualDeviceType":I
    if-eq v0, p1, :cond_0

    #@6
    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Device type missmatch:[Expected:"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 123
    const-string/jumbo v3, ", Actual:"

    #@1b
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 119
    :cond_0
    return-void
.end method
