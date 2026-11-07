.class public final Landroid/media/AudioMetadata;
.super Ljava/lang/Object;
.source "AudioMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioMetadata$BaseMap;,
        Landroid/media/AudioMetadata$DataPackage;,
        Landroid/media/AudioMetadata$AutoGrowByteBuffer;,
        Landroid/media/AudioMetadata$BaseMapPackage;,
        Landroid/media/AudioMetadata$ObjectPackage;,
        Landroid/media/AudioMetadata$Format;,
        Landroid/media/AudioMetadata$Key;
    }
.end annotation


# static fields
.field private static final blacklist AUDIO_METADATA_CHARSET:Ljava/nio/charset/Charset;

.field private static final blacklist AUDIO_METADATA_OBJ_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_BASEMAP:I = 0x6

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_DOUBLE:I = 0x4

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_FLOAT:I = 0x3

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_INT:I = 0x1

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_LONG:I = 0x2

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_NONE:I = 0x0

.field private static final blacklist AUDIO_METADATA_OBJ_TYPE_STRING:I = 0x5

.field private static final blacklist DATA_PACKAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioMetadata$DataPackage<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist OBJECT_PACKAGE:Landroid/media/AudioMetadata$ObjectPackage;

.field private static final blacklist TAG:Ljava/lang/String; = "AudioMetadata"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetAUDIO_METADATA_CHARSET()Ljava/nio/charset/Charset;
    .registers 1

    sget-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_CHARSET:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetAUDIO_METADATA_OBJ_TYPES()Ljava/util/Map;
    .registers 1

    sget-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_OBJ_TYPES:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDATA_PACKAGES()Ljava/util/Map;
    .registers 1

    sget-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetOBJECT_PACKAGE()Landroid/media/AudioMetadata$ObjectPackage;
    .registers 1

    sget-object v0, Landroid/media/AudioMetadata;->OBJECT_PACKAGE:Landroid/media/AudioMetadata$ObjectPackage;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 14

    .line 449
    const-class v0, Ljava/lang/Integer;

    .line 450
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    .line 451
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Float;

    .line 452
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-class v6, Ljava/lang/Double;

    .line 453
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    .line 454
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-class v10, Landroid/media/AudioMetadata$BaseMap;

    .line 455
    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 449
    invoke-static/range {v0 .. v11}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_OBJ_TYPES:Ljava/util/Map;

    .line 457
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Landroid/media/AudioMetadata;->AUDIO_METADATA_CHARSET:Ljava/nio/charset/Charset;

    .line 636
    nop

    .line 637
    move-object v4, v3

    new-instance v3, Landroid/media/AudioMetadata$2;

    invoke-direct {v3}, Landroid/media/AudioMetadata$2;-><init>()V

    .line 650
    move-object v6, v5

    new-instance v5, Landroid/media/AudioMetadata$3;

    invoke-direct {v5}, Landroid/media/AudioMetadata$3;-><init>()V

    .line 663
    move-object v8, v7

    new-instance v7, Landroid/media/AudioMetadata$4;

    invoke-direct {v7}, Landroid/media/AudioMetadata$4;-><init>()V

    .line 676
    move-object v10, v9

    new-instance v9, Landroid/media/AudioMetadata$5;

    invoke-direct {v9}, Landroid/media/AudioMetadata$5;-><init>()V

    .line 689
    move-object v12, v11

    new-instance v11, Landroid/media/AudioMetadata$6;

    invoke-direct {v11}, Landroid/media/AudioMetadata$6;-><init>()V

    .line 716
    new-instance v13, Landroid/media/AudioMetadata$BaseMapPackage;

    const/4 v0, 0x0

    invoke-direct {v13, v0}, Landroid/media/AudioMetadata$BaseMapPackage;-><init>(Landroid/media/AudioMetadata-IA;)V

    .line 636
    move-object v2, v1

    invoke-static/range {v2 .. v13}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/Map;

    .line 720
    new-instance v1, Landroid/media/AudioMetadata$ObjectPackage;

    invoke-direct {v1, v0}, Landroid/media/AudioMetadata$ObjectPackage;-><init>(Landroid/media/AudioMetadata-IA;)V

    sput-object v1, Landroid/media/AudioMetadata;->OBJECT_PACKAGE:Landroid/media/AudioMetadata$ObjectPackage;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/AudioMetadata$Key;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/media/AudioMetadata$Key<",
            "TT;>;"
        }
    .end annotation

    .line 277
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/media/AudioMetadata$1;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioMetadata$1;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static whitelist createMap()Landroid/media/AudioMetadataMap;
    .registers 1

    .line 88
    new-instance v0, Landroid/media/AudioMetadata$BaseMap;

    invoke-direct {v0}, Landroid/media/AudioMetadata$BaseMap;-><init>()V

    return-object v0
.end method

.method public static blacklist fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/media/AudioMetadata$BaseMap;
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 857
    sget-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioMetadata$DataPackage;

    .line 858
    .local v0, "dataPackage":Landroid/media/AudioMetadata$DataPackage;
    const/4 v1, 0x0

    const-string v2, "AudioMetadata"

    if-nez v0, :cond_18

    .line 859
    const-string v3, "Cannot find DataPackage for BaseMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-object v1

    .line 863
    :cond_18
    :try_start_18
    invoke-interface {v0, p0}, Landroid/media/AudioMetadata$DataPackage;->unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioMetadata$BaseMap;
    :try_end_1e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_18 .. :try_end_1e} :catch_1f

    return-object v3

    .line 864
    :catch_1f
    move-exception v3

    .line 865
    .local v3, "e":Ljava/nio/BufferUnderflowException;
    const-string v4, "No enough data to unpack"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .end local v3    # "e":Ljava/nio/BufferUnderflowException;
    return-object v1
.end method

.method public static blacklist toByteBuffer(Landroid/media/AudioMetadata$BaseMap;Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "data"    # Landroid/media/AudioMetadata$BaseMap;
    .param p1, "order"    # Ljava/nio/ByteOrder;

    .line 880
    sget-object v0, Landroid/media/AudioMetadata;->DATA_PACKAGES:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioMetadata$DataPackage;

    .line 881
    .local v0, "dataPackage":Landroid/media/AudioMetadata$DataPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 882
    const-string v2, "AudioMetadata"

    const-string v3, "Cannot find DataPackage for BaseMap"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-object v1

    .line 885
    :cond_18
    new-instance v2, Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    invoke-direct {v2}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;-><init>()V

    .line 886
    .local v2, "output":Landroid/media/AudioMetadata$AutoGrowByteBuffer;
    invoke-virtual {v2, p1}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->order(Ljava/nio/ByteOrder;)Landroid/media/AudioMetadata$AutoGrowByteBuffer;

    .line 887
    invoke-interface {v0, v2, p0}, Landroid/media/AudioMetadata$DataPackage;->pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 888
    invoke-virtual {v2}, Landroid/media/AudioMetadata$AutoGrowByteBuffer;->getRawByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 890
    :cond_2b
    return-object v1
.end method
