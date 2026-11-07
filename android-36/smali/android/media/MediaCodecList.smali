.class public final Landroid/media/MediaCodecList;
.super Ljava/lang/Object;
.source "MediaCodecList.java"


# static fields
.field public static final whitelist ALL_CODECS:I = 0x1

.field public static final whitelist REGULAR_CODECS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaCodecList"

.field private static greylist-max-o sAllCodecInfos:[Landroid/media/MediaCodecInfo;

.field private static greylist-max-o sGlobalSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o sInitLock:Ljava/lang/Object;

.field private static greylist-max-o sRegularCodecInfos:[Landroid/media/MediaCodecInfo;


# instance fields
.field private greylist-max-o mCodecInfos:[Landroid/media/MediaCodecInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaCodecList;->sInitLock:Ljava/lang/Object;

    .line 189
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Landroid/media/MediaCodecList;->native_init()V

    .line 193
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 162
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "kind"    # I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 173
    if-nez p1, :cond_d

    .line 174
    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    iput-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    goto :goto_11

    .line 176
    :cond_d
    sget-object v0, Landroid/media/MediaCodecList;->sAllCodecInfos:[Landroid/media/MediaCodecInfo;

    iput-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 178
    :goto_11
    return-void
.end method

.method static final native greylist-max-o findCodecByName(Ljava/lang/String;)I
.end method

.method private greylist-max-o findCodecForFormat(ZLandroid/media/MediaFormat;)Ljava/lang/String;
    .registers 10
    .param p1, "encoder"    # Z
    .param p2, "format"    # Landroid/media/MediaFormat;

    .line 244
    const-string v0, "mime"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "mime":Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    .line 246
    .local v4, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eq v5, p1, :cond_15

    .line 247
    goto :goto_28

    .line 250
    :cond_15
    :try_start_15
    invoke-virtual {v4, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    .line 251
    .local v5, "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    if-eqz v5, :cond_26

    invoke-virtual {v5, p2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFormatSupported(Landroid/media/MediaFormat;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 252
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_25} :catch_27

    return-object v1

    .line 256
    .end local v5    # "caps":Landroid/media/MediaCodecInfo$CodecCapabilities;
    :cond_26
    goto :goto_28

    .line 254
    :catch_27
    move-exception v5

    .line 245
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    :goto_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 258
    :cond_2b
    const/4 v1, 0x0

    return-object v1
.end method

.method static final native blacklist getAttributes(I)I
.end method

.method static final native blacklist getCanonicalName(I)Ljava/lang/String;
.end method

.method static final native greylist-max-o getCodecCapabilities(ILjava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
.end method

.method public static final whitelist getCodecCount()I
    .registers 1

    .line 42
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 43
    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    return v0
.end method

.method public static final whitelist getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .registers 2
    .param p0, "index"    # I

    .line 57
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 58
    if-ltz p0, :cond_f

    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v0, v0

    if-gt p0, v0, :cond_f

    .line 61
    sget-object v0, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    aget-object v0, v0, p0

    return-object v0

    .line 59
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static final native greylist-max-o getCodecName(I)Ljava/lang/String;
.end method

.method static final greylist-max-o getGlobalSettings()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Landroid/media/MediaCodecList;->sInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    sget-object v1, Landroid/media/MediaCodecList;->sGlobalSettings:Ljava/util/Map;

    if-nez v1, :cond_d

    .line 67
    invoke-static {}, Landroid/media/MediaCodecList;->native_getGlobalSettings()Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/media/MediaCodecList;->sGlobalSettings:Ljava/util/Map;

    .line 69
    :cond_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    .line 70
    sget-object v0, Landroid/media/MediaCodecList;->sGlobalSettings:Ljava/util/Map;

    return-object v0

    .line 69
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static greylist-max-o getInfoFor(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .registers 3
    .param p0, "codec"    # Ljava/lang/String;

    .line 133
    invoke-static {}, Landroid/media/MediaCodecList;->initCodecList()V

    .line 134
    sget-object v0, Landroid/media/MediaCodecList;->sAllCodecInfos:[Landroid/media/MediaCodecInfo;

    invoke-static {p0}, Landroid/media/MediaCodecList;->findCodecByName(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static greylist-max-o getNewCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .registers 9
    .param p0, "index"    # I

    .line 105
    invoke-static {p0}, Landroid/media/MediaCodecList;->getSupportedTypes(I)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "supportedTypes":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 108
    .local v1, "caps":[Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v2, 0x0

    .line 109
    .local v2, "typeIx":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_1a

    aget-object v5, v0, v4

    .line 110
    .local v5, "type":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "typeIx":I
    .local v6, "typeIx":I
    invoke-static {p0, v5}, Landroid/media/MediaCodecList;->getCodecCapabilities(ILjava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    aput-object v7, v1, v2

    .line 109
    .end local v5    # "type":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_a

    .line 112
    .end local v6    # "typeIx":I
    .restart local v2    # "typeIx":I
    :cond_1a
    new-instance v3, Landroid/media/MediaCodecInfo;

    .line 113
    invoke-static {p0}, Landroid/media/MediaCodecList;->getCodecName(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Landroid/media/MediaCodecList;->getCanonicalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Landroid/media/MediaCodecList;->getAttributes(I)I

    move-result v6

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/media/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I[Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 112
    return-object v3
.end method

.method static final native greylist-max-o getSupportedTypes(I)[Ljava/lang/String;
.end method

.method private static final greylist-max-o initCodecList()V
    .registers 8

    .line 79
    sget-object v0, Landroid/media/MediaCodecList;->sInitLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-object v1, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    if-nez v1, :cond_52

    .line 81
    invoke-static {}, Landroid/media/MediaCodecList;->native_getCodecCount()I

    move-result v1

    .line 82
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "regulars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_54

    .line 84
    .local v3, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_16
    if-ge v4, v1, :cond_34

    .line 86
    :try_start_18
    invoke-static {v4}, Landroid/media/MediaCodecList;->getNewCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v5

    .line 87
    .local v5, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->makeRegular()Landroid/media/MediaCodecInfo;

    move-result-object v6

    .line 89
    .end local v5    # "info":Landroid/media/MediaCodecInfo;
    .local v6, "info":Landroid/media/MediaCodecInfo;
    if-eqz v6, :cond_28

    .line 90
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_28} :catch_29
    .catchall {:try_start_18 .. :try_end_28} :catchall_54

    .line 94
    .end local v6    # "info":Landroid/media/MediaCodecInfo;
    :cond_28
    goto :goto_31

    .line 92
    :catch_29
    move-exception v5

    .line 93
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string v6, "MediaCodecList"

    const-string v7, "Could not get codec capabilities"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 96
    .end local v4    # "index":I
    :cond_34
    nop

    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/media/MediaCodecInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/MediaCodecInfo;

    sput-object v4, Landroid/media/MediaCodecList;->sRegularCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 98
    nop

    .line 99
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/media/MediaCodecInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/MediaCodecInfo;

    sput-object v4, Landroid/media/MediaCodecList;->sAllCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 101
    .end local v1    # "count":I
    .end local v2    # "regulars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    .end local v3    # "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/MediaCodecInfo;>;"
    :cond_52
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_2a .. :try_end_56} :catchall_54

    throw v1
.end method

.method private static final native greylist-max-o native_getCodecCount()I
.end method

.method static final native greylist-max-o native_getGlobalSettings()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private static final native greylist-max-o native_init()V
.end method


# virtual methods
.method public final whitelist findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .registers 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodecList;->findCodecForFormat(ZLandroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;
    .registers 3
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 240
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodecList;->findCodecForFormat(ZLandroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist getCodecInfos()[Landroid/media/MediaCodecInfo;
    .registers 3

    .line 185
    iget-object v0, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    iget-object v1, p0, Landroid/media/MediaCodecList;->mCodecInfos:[Landroid/media/MediaCodecInfo;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MediaCodecInfo;

    return-object v0
.end method
