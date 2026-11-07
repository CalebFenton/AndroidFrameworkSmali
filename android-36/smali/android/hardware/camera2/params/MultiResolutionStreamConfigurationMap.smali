.class public final Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
.super Ljava/lang/Object;
.source "MultiResolutionStreamConfigurationMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap$SizeComparator;
    }
.end annotation


# instance fields
.field private final blacklist mConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMultiResolutionInputConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mMultiResolutionOutputConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "configurations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    .line 76
    const-string v0, "multi-resolution configurations must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_8a

    .line 81
    iput-object p1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    .line 86
    iget-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, "cameraId":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/camera2/params/StreamConfiguration;

    .line 90
    .local v3, "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_41
    array-length v5, v3

    if-ge v4, v5, :cond_88

    .line 91
    aget-object v5, v3, v4

    .line 92
    .local v5, "config":Landroid/hardware/camera2/params/StreamConfiguration;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getFormat()I

    move-result v6

    .line 94
    .local v6, "format":I
    new-instance v7, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 95
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v9

    invoke-direct {v7, v8, v9, v2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;-><init>(IILjava/lang/String;)V

    .line 97
    .local v7, "multiResolutionStreamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    invoke-virtual {v5}, Landroid/hardware/camera2/params/StreamConfiguration;->isInput()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 98
    iget-object v8, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    .local v8, "destMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;>;"
    goto :goto_62

    .line 100
    .end local v8    # "destMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;>;"
    :cond_60
    iget-object v8, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    .line 103
    .restart local v8    # "destMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;>;"
    :goto_62
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_78

    .line 104
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v9, "multiResolutionStreamInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v9    # "multiResolutionStreamInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    :cond_78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v5    # "config":Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v6    # "format":I
    .end local v7    # "multiResolutionStreamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    .end local v8    # "destMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 110
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/hardware/camera2/params/StreamConfiguration;>;"
    .end local v2    # "cameraId":Ljava/lang/String;
    .end local v3    # "configs":[Landroid/hardware/camera2/params/StreamConfiguration;
    .end local v4    # "i":I
    :cond_88
    goto :goto_28

    .line 111
    :cond_89
    return-void

    .line 78
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "multi-resolution configurations must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist appendConfigurationsString(Ljava/lang/StringBuilder;Z)V
    .registers 13
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "output"    # Z

    .line 243
    if-eqz p2, :cond_5

    const-string v0, "Outputs("

    goto :goto_7

    :cond_5
    const-string v0, "Inputs("

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {p0, p2}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getPublicImageFormats(Z)[I

    move-result-object v0

    .line 245
    .local v0, "formats":[I
    if-eqz v0, :cond_91

    .line 246
    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_91

    aget v3, v0, v2

    .line 247
    .local v3, "format":I
    nop

    .line 248
    invoke-direct {p0, v3, p2}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInfo(IZ)Ljava/util/Collection;

    move-result-object v4

    .line 249
    .local v4, "streamInfoList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->formatToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 251
    .local v6, "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    nop

    .line 252
    invoke-virtual {v6}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 253
    invoke-virtual {v6}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 251
    const-string v8, "[w:%d, h:%d, id:%s], "

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .end local v6    # "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    goto :goto_3f

    .line 256
    :cond_6e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_89

    .line 257
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 259
    :cond_89
    const-string v5, "]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .end local v3    # "format":I
    .end local v4    # "streamInfoList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 262
    :cond_91
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    return-void
.end method

.method private blacklist getInfo(IZ)Ljava/util/Collection;
    .registers 6
    .param p1, "format"    # I
    .param p2, "output"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-static {p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal(I)I

    move-result v0

    .line 234
    .local v0, "internalFormat":I
    if-eqz p2, :cond_9

    iget-object v1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    goto :goto_b

    :cond_9
    iget-object v1, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    .line 235
    .local v1, "multiResolutionConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;>;"
    :goto_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    .line 238
    :cond_24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getPublicImageFormats(Z)[I
    .registers 10
    .param p1, "output"    # Z

    .line 179
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    .line 180
    .local v0, "multiResolutionConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 182
    .local v1, "formatCount":I
    new-array v2, v1, [I

    .line 183
    .local v2, "formats":[I
    const/4 v3, 0x0

    .line 184
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 185
    .local v5, "format":Ljava/lang/Integer;
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToPublic(I)I

    move-result v7

    aput v7, v2, v3

    .line 186
    .end local v5    # "format":Ljava/lang/Integer;
    move v3, v6

    goto :goto_16

    .line 188
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_30
    return-object v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 273
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 274
    return v0

    .line 276
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 277
    return v1

    .line 279
    :cond_8
    instance-of v2, p1, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    if-eqz v2, :cond_51

    .line 280
    move-object v2, p1

    check-cast v2, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;

    .line 282
    .local v2, "other":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    iget-object v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v4, v2, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 283
    return v0

    .line 286
    :cond_22
    iget-object v3, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 287
    .local v4, "id":Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    iget-object v6, v2, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 288
    return v0

    .line 290
    .end local v4    # "id":Ljava/lang/String;
    :cond_4f
    goto :goto_2c

    .line 292
    :cond_50
    return v1

    .line 294
    .end local v2    # "other":Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;
    :cond_51
    return v0
.end method

.method public whitelist getInputFormats()[I
    .registers 2

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getPublicImageFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInputInfo(I)Ljava/util/Collection;
    .registers 3
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;"
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInfo(IZ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputFormats()[I
    .registers 2

    .line 149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getPublicImageFormats(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getOutputInfo(I)Ljava/util/Collection;
    .registers 3
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;"
        }
    .end annotation

    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->getInfo(IZ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 302
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mConfigurations:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionOutputConfigs:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->mMultiResolutionInputConfigs:Ljava/util/Map;

    aput-object v2, v0, v1

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiResolutionStreamConfigurationMap("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->appendConfigurationsString(Ljava/lang/StringBuilder;Z)V

    .line 319
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/MultiResolutionStreamConfigurationMap;->appendConfigurationsString(Ljava/lang/StringBuilder;Z)V

    .line 321
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
