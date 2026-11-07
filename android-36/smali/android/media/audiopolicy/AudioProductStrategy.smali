.class public final Landroid/media/audiopolicy/AudioProductStrategy;
.super Ljava/lang/Object;
.source "AudioProductStrategy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    }
.end annotation


# static fields
.field private static final blacklist AUDIO_FLAGS_AFFECT_STRATEGY_SELECTION:I = 0xd

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static final blacklist DEFAULT_GROUP:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "AudioProductStrategy"

.field private static blacklist sAudioProductStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

.field private blacklist mId:I

.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_ATTRIBUTES()Landroid/media/AudioAttributes;
    .registers 1

    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smattributesMatches(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/media/audiopolicy/AudioProductStrategy;->attributesMatches(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sLock:Ljava/lang/Object;

    .line 380
    new-instance v0, Landroid/media/audiopolicy/AudioProductStrategy$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioProductStrategy$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 418
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 419
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 418
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "aag"    # [Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const-string v0, "name must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    const-string v0, "AudioAttributesGroups must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    iput-object p1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    .line 236
    iput p2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    .line 237
    iput-object p3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 238
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;I[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;Landroid/media/audiopolicy/AudioProductStrategy-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiopolicy/AudioProductStrategy;-><init>(Ljava/lang/String;I[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-void
.end method

.method private static blacklist attributesMatches(Landroid/media/AudioAttributes;Landroid/media/AudioAttributes;)Z
    .registers 7
    .param p0, "refAttr"    # Landroid/media/AudioAttributes;
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 438
    const-string v0, "reference AudioAttributes must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 439
    const-string v0, "requester\'s AudioAttributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "refFormattedTags":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "cliFormattedTags":Ljava/lang/String;
    sget-object v2, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v2}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 443
    return v3

    .line 445
    :cond_26
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    if-eqz v2, :cond_36

    .line 446
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v4

    if-ne v2, v4, :cond_72

    .line 447
    :cond_36
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    if-eqz v2, :cond_46

    .line 448
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v4

    if-ne v2, v4, :cond_72

    .line 449
    :cond_46
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0xd

    if-eqz v2, :cond_65

    .line 450
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0xd

    if-eqz v2, :cond_72

    .line 451
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    and-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v4

    if-ne v2, v4, :cond_72

    .line 452
    :cond_65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    goto :goto_73

    :cond_72
    goto :goto_74

    :cond_73
    :goto_73
    const/4 v3, 0x1

    .line 445
    :goto_74
    return v3
.end method

.method public static whitelist createInvalidAudioProductStrategy(I)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 4
    .param p0, "id"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 121
    new-instance v0, Landroid/media/audiopolicy/AudioProductStrategy;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    const-string v2, "dummy strategy"

    invoke-direct {v0, v2, p0, v1}, Landroid/media/audiopolicy/AudioProductStrategy;-><init>(Ljava/lang/String;I[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;)V

    return-object v0
.end method

.method public static blacklist getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;
    .registers 4
    .param p0, "streamType"    # I

    .line 134
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 135
    .local v1, "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v1, p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v2

    .line 136
    .local v2, "aa":Landroid/media/AudioAttributes;
    if-eqz v2, :cond_1b

    .line 137
    return-object v2

    .line 139
    .end local v1    # "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v2    # "aa":Landroid/media/AudioAttributes;
    :cond_1b
    goto :goto_8

    .line 140
    :cond_1c
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public static blacklist getAudioProductStrategies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    if-nez v0, :cond_16

    .line 83
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_7
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    if-nez v1, :cond_11

    .line 85
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->initializeAudioProductStrategies()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    .line 87
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 89
    :cond_16
    :goto_16
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    return-object v0
.end method

.method public static blacklist getAudioProductStrategyWithId(I)Landroid/media/audiopolicy/AudioProductStrategy;
    .registers 5
    .param p0, "id"    # I

    .line 100
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_3
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    if-nez v1, :cond_d

    .line 102
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->initializeAudioProductStrategies()Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    .line 104
    :cond_d
    sget-object v1, Landroid/media/audiopolicy/AudioProductStrategy;->sAudioProductStrategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 105
    .local v2, "strategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v3

    if-ne v3, p0, :cond_27

    .line 106
    monitor-exit v0

    return-object v2

    .line 108
    .end local v2    # "strategy":Landroid/media/audiopolicy/AudioProductStrategy;
    :cond_27
    goto :goto_13

    .line 109
    :cond_28
    monitor-exit v0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 109
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public static blacklist getDefaultAttributes()Landroid/media/AudioAttributes;
    .registers 1

    .line 426
    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public static blacklist getLegacyStreamTypeForStrategyWithAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 6
    .param p0, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 153
    const-string v0, "AudioAttributes must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 156
    .local v1, "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v1, p0}, Landroid/media/audiopolicy/AudioProductStrategy;->supportsAudioAttributes(Landroid/media/AudioAttributes;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 157
    invoke-virtual {v1, p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getLegacyStreamTypeForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 159
    .local v3, "streamType":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_54

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attributes "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " supported by strategy "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " have no associated stream type, therefore falling back to STREAM_MUSIC"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v4, "AudioProductStrategy"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v2

    .line 165
    :cond_54
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v3, v2, :cond_5b

    .line 166
    return v3

    .line 169
    .end local v1    # "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v3    # "streamType":I
    :cond_5b
    goto :goto_d

    .line 170
    :cond_5c
    return v2
.end method

.method public static blacklist getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;Z)I
    .registers 4
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "fallbackOnDefault"    # Z

    .line 186
    const-string v0, "attributes must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v0

    .line 188
    .local v0, "volumeGroupId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 189
    return v0

    .line 191
    :cond_d
    if-eqz p1, :cond_18

    .line 192
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getDefaultAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-static {v1}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributesInt(Landroid/media/AudioAttributes;)I

    move-result v1

    return v1

    .line 194
    :cond_18
    return v1
.end method

.method private static blacklist getVolumeGroupIdForAudioAttributesInt(Landroid/media/AudioAttributes;)I
    .registers 5
    .param p0, "attributes"    # Landroid/media/AudioAttributes;

    .line 354
    const-string v0, "attributes must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 356
    .local v1, "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    invoke-virtual {v1, p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 357
    .local v3, "volumeGroupId":I
    if-eq v3, v2, :cond_21

    .line 358
    return v3

    .line 360
    .end local v1    # "productStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    .end local v3    # "volumeGroupId":I
    :cond_21
    goto :goto_d

    .line 361
    :cond_22
    return v2
.end method

.method private static blacklist initializeAudioProductStrategies()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "apsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->native_list_audio_product_strategies(Ljava/util/ArrayList;)I

    move-result v1

    .line 200
    .local v1, "status":I
    if-eqz v1, :cond_12

    .line 201
    const-string v2, "AudioProductStrategy"

    const-string v3, ": initializeAudioProductStrategies failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_12
    return-object v0
.end method

.method private static native blacklist native_list_audio_product_strategies(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;)I"
        }
    .end annotation
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 211
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 212
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 214
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    .line 216
    .local v2, "thatStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    iget v3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    iget v4, v2, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    .line 217
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    .line 218
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 216
    :goto_31
    return v0

    .line 212
    .end local v2    # "thatStrategy":Landroid/media/audiopolicy/AudioProductStrategy;
    :cond_32
    :goto_32
    return v1
.end method

.method public whitelist getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 267
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v0, v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/media/audiopolicy/AudioProductStrategy;->DEFAULT_ATTRIBUTES:Landroid/media/AudioAttributes;

    goto :goto_11

    .line 268
    :cond_8
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 267
    :goto_11
    return-object v0
.end method

.method public blacklist getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;
    .registers 7
    .param p1, "streamType"    # I

    .line 278
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 279
    .local v3, "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsStreamType(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 280
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0

    .line 278
    .end local v3    # "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 283
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 247
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    return v0
.end method

.method public blacklist getLegacyStreamTypeForAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 7
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 294
    const-string v0, "AudioAttributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 296
    .local v3, "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsAttributes(Landroid/media/AudioAttributes;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 297
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getStreamType()I

    move-result v0

    return v0

    .line 295
    .end local v3    # "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 300
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 257
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVolumeGroupIdForAudioAttributes(Landroid/media/AudioAttributes;)I
    .registers 7
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 344
    const-string v0, "AudioAttributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 346
    .local v3, "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsAttributes(Landroid/media/AudioAttributes;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 347
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getVolumeGroupId()I

    move-result v0

    return v0

    .line 345
    .end local v3    # "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 350
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getVolumeGroupIdForLegacyStreamType(I)I
    .registers 7
    .param p1, "streamType"    # I

    .line 328
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 329
    .local v3, "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsStreamType(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 330
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->getVolumeGroupId()I

    move-result v0

    return v0

    .line 328
    .end local v3    # "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 333
    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 223
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist supportsAudioAttributes(Landroid/media/AudioAttributes;)Z
    .registers 8
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 311
    const-string v0, "AudioAttributes must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 313
    .local v4, "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    invoke-virtual {v4, p1}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->supportsAttributes(Landroid/media/AudioAttributes;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 314
    const/4 v0, 0x1

    return v0

    .line 312
    .end local v4    # "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 317
    :cond_19
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "\n Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, " Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v1, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2f

    aget-object v4, v1, v3

    .line 409
    .local v4, "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .end local v4    # "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 411
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 371
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget-object v0, p0, Landroid/media/audiopolicy/AudioProductStrategy;->mAudioAttributesGroups:[Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 375
    .local v3, "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    invoke-virtual {v3, p1, p2}, Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;->writeToParcel(Landroid/os/Parcel;I)V

    .line 374
    .end local v3    # "aag":Landroid/media/audiopolicy/AudioProductStrategy$AudioAttributesGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 377
    :cond_1e
    return-void
.end method
