.class public Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
.super Ljava/lang/Object;
.source "RemoteComposeBuffer.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist EASING_CUBIC_ACCELERATE:I = 0x2

.field public static final blacklist EASING_CUBIC_ANTICIPATE:I = 0x5

.field public static final blacklist EASING_CUBIC_CUSTOM:I = 0xb

.field public static final blacklist EASING_CUBIC_DECELERATE:I = 0x3

.field public static final blacklist EASING_CUBIC_LINEAR:I = 0x4

.field public static final blacklist EASING_CUBIC_OVERSHOOT:I = 0x6

.field public static final blacklist EASING_CUBIC_STANDARD:I = 0x1

.field public static final blacklist EASING_EASE_OUT_BOUNCE:I = 0xd

.field public static final blacklist EASING_EASE_OUT_ELASTIC:I = 0xe

.field public static final blacklist EASING_SPLINE_CUSTOM:I = 0xc

.field public static final blacklist PAD_AFTER_NONE:I = 0x1

.field public static final blacklist PAD_AFTER_SPACE:I = 0x0

.field public static final blacklist PAD_AFTER_ZERO:I = 0x3

.field public static final blacklist PAD_PRE_NONE:I = 0x4

.field public static final blacklist PAD_PRE_SPACE:I = 0x0

.field public static final blacklist PAD_PRE_ZERO:I = 0xc


# instance fields
.field private blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

.field private blacklist mGeneratedComponentId:I

.field private blacklist mLastComponentId:I

.field private blacklist mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

.field private final blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V
    .registers 3
    .param p1, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 165
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 166
    return-void
.end method

.method public static blacklist fromFile(Ljava/lang/String;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1105
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    .line 1106
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 1107
    return-object v0
.end method

.method public static blacklist fromInputStream(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 1136
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    .line 1137
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 1138
    return-object v0
.end method

.method private blacklist getComponentId(I)I
    .registers 4
    .param p1, "id"    # I

    .line 1808
    const/4 v0, 0x0

    .line 1809
    .local v0, "resolvedId":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_6

    .line 1810
    move v0, p1

    goto :goto_e

    .line 1812
    :cond_6
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 1813
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 1815
    :goto_e
    return v0
.end method

.method public static blacklist packAnimation(FI[FFF)[F
    .registers 6
    .param p0, "duration"    # F
    .param p1, "type"    # I
    .param p2, "spec"    # [F
    .param p3, "initialValue"    # F
    .param p4, "wrap"    # F

    .line 1786
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/FloatAnimation;->packToFloatArray(FI[FFF)[F

    move-result-object v0

    return-object v0
.end method

.method static blacklist read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1183
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1184
    .local v0, "fd":Ljava/io/FileInputStream;
    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 1185
    return-void
.end method

.method public static blacklist read(Ljava/io/InputStream;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .registers 6
    .param p0, "fd"    # Ljava/io/InputStream;
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 1195
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->readAllBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 1196
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reset(I)V

    .line 1197
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mBuffer:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1198
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    array-length v2, v0

    iput v2, v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->mSize:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    .line 1201
    .end local v0    # "bytes":[B
    nop

    .line 1202
    return-void

    .line 1199
    :catch_18
    move-exception v0

    .line 1200
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist readAllBytes(Ljava/io/InputStream;)[B
    .registers 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1212
    const v0, 0x8000

    new-array v0, v0, [B

    .line 1213
    .local v0, "buff":[B
    const/4 v1, 0x0

    .line 1215
    .local v1, "red":I
    :goto_6
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 1216
    .local v2, "ret":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_17

    .line 1217
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1218
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    .line 1220
    :cond_17
    add-int/2addr v1, v2

    .line 1221
    array-length v3, v0

    if-ne v1, v3, :cond_22

    .line 1222
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 1224
    .end local v2    # "ret":I
    :cond_22
    goto :goto_6
.end method

.method public static blacklist readNextOperation(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/ArrayList;)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1055
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    .line 1059
    .local v0, "opId":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    .line 1060
    .local v1, "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    if-eqz v1, :cond_12

    .line 1063
    invoke-interface {v1, p0, p1}, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 1064
    return-void

    .line 1061
    :cond_12
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown operation encountered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist storeBitmap(Ljava/lang/Object;)I
    .registers 11
    .param p1, "image"    # Ljava/lang/Object;

    .line 2415
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 2416
    .local v0, "imageId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_39

    .line 2417
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v3

    .line 2418
    .end local v0    # "imageId":I
    .local v3, "imageId":I
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->imageToByteArray(Ljava/lang/Object;)[B

    move-result-object v8

    .line 2419
    .local v8, "data":[B
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v0

    int-to-short v5, v0

    .line 2420
    .local v5, "imageWidth":S
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v0

    int-to-short v7, v0

    .line 2421
    .local v7, "imageHeight":S
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->isAlpha8Image(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2422
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v4, 0x4

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ISSSS[B)V

    goto :goto_38

    .line 2431
    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, v3, v5, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III[B)V

    .line 2436
    .end local v5    # "imageWidth":S
    .end local v7    # "imageHeight":S
    .end local v8    # "data":[B
    :goto_38
    move v0, v3

    .end local v3    # "imageId":I
    .restart local v0    # "imageId":I
    :cond_39
    return v0
.end method

.method static blacklist version()Ljava/lang/String;
    .registers 1

    .line 1090
    const-string/jumbo v0, "v1.0"

    return-object v0
.end method


# virtual methods
.method public varargs blacklist addAnimatedFloat([F)F
    .registers 5
    .param p1, "value"    # [F

    .line 1396
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1397
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    .line 1398
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addAnimatedFloat([F[F)F
    .registers 5
    .param p1, "value"    # [F
    .param p2, "animation"    # [F

    .line 1485
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1486
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[F)V

    .line 1487
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addBitmap(Ljava/lang/Object;)I
    .registers 3
    .param p1, "image"    # Ljava/lang/Object;

    .line 548
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist addBitmap(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 4
    .param p1, "image"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .line 558
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist addBitmapFont([Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)I
    .registers 4
    .param p1, "glyphs"    # [Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;

    .line 568
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 569
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Lcom/android/internal/widget/remotecompose/core/operations/BitmapFontData$Glyph;)V

    .line 570
    return v0
.end method

.method public blacklist addBoolean(Z)I
    .registers 4
    .param p1, "value"    # Z

    .line 1374
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 1375
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/types/BooleanConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IZ)V

    .line 1376
    return v0
.end method

.method public blacklist addBoxStart(IIII)V
    .registers 7
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I

    .line 2079
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2080
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/BoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 2081
    return-void
.end method

.method public blacklist addCanvasContentStart(I)V
    .registers 4
    .param p1, "componentId"    # I

    .line 2188
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2189
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 2190
    return-void
.end method

.method public blacklist addCanvasOperationsStart()V
    .registers 2

    .line 2206
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2207
    return-void
.end method

.method public blacklist addCanvasStart(II)V
    .registers 5
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I

    .line 2178
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2179
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CanvasLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 2180
    return-void
.end method

.method public blacklist addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V
    .registers 18
    .param p1, "id"    # I
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "metadata"    # Ljava/lang/String;

    .line 363
    move-object/from16 v0, p7

    const/4 v1, 0x0

    .line 364
    .local v1, "contentDescriptionId":I
    if-eqz p2, :cond_b

    .line 365
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    goto :goto_c

    .line 364
    :cond_b
    move v4, v1

    .line 367
    .end local v1    # "contentDescriptionId":I
    .local v4, "contentDescriptionId":I
    :goto_c
    const/4 v1, 0x0

    .line 368
    .local v1, "metadataId":I
    if-eqz v0, :cond_15

    .line 369
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    move v9, v1

    goto :goto_16

    .line 368
    :cond_15
    move v9, v1

    .line 371
    .end local v1    # "metadataId":I
    .local v9, "metadataId":I
    :goto_16
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/ClickArea;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFFI)V

    .line 372
    return-void
.end method

.method public blacklist addClipPath(I)V
    .registers 3
    .param p1, "pathId"    # I

    .line 1306
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ClipPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 1307
    return-void
.end method

.method public blacklist addClipRect(FFFF)V
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 1318
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/ClipRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1319
    return-void
.end method

.method public blacklist addClipRectModifier()V
    .registers 2

    .line 2035
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2036
    return-void
.end method

.method public blacklist addCollapsibleColumnStart(IIIIF)V
    .registers 13
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "spacedBy"    # F

    .line 2166
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2167
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "spacedBy":F
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "spacedBy":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 2169
    return-void
.end method

.method public blacklist addCollapsibleRowStart(IIIIF)V
    .registers 13
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "spacedBy"    # F

    .line 2135
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2136
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "spacedBy":F
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "spacedBy":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/CollapsibleRowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 2138
    return-void
.end method

.method public blacklist addColor(I)I
    .registers 5
    .param p1, "color"    # I

    .line 1645
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;-><init>(II)V

    .line 1646
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    .line 1647
    .local v1, "id":S
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;->mColorId:I

    .line 1648
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorConstant;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1649
    return v1
.end method

.method public blacklist addColorExpression(FFF)S
    .registers 7
    .param p1, "hue"    # F
    .param p2, "sat"    # F
    .param p3, "value"    # F

    .line 1727
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IFFF)V

    .line 1728
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    int-to-short v1, v1

    .line 1729
    .local v1, "id":S
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1730
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1731
    return v1
.end method

.method public blacklist addColorExpression(FFFF)S
    .registers 12
    .param p1, "alpha"    # F
    .param p2, "red"    # F
    .param p3, "green"    # F
    .param p4, "blue"    # F

    .line 1764
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "alpha":F
    .end local p2    # "red":F
    .end local p3    # "green":F
    .end local p4    # "blue":F
    .local v3, "alpha":F
    .local v4, "red":F
    .local v5, "green":F
    .local v6, "blue":F
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBFFFF)V

    .line 1766
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1767
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1768
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1769
    return p1
.end method

.method public blacklist addColorExpression(IFFF)S
    .registers 12
    .param p1, "alpha"    # I
    .param p2, "hue"    # F
    .param p3, "sat"    # F
    .param p4, "value"    # F

    .line 1745
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x4

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "alpha":I
    .end local p2    # "hue":F
    .end local p3    # "sat":F
    .end local p4    # "value":F
    .local v3, "alpha":I
    .local v4, "hue":F
    .local v5, "sat":F
    .local v6, "value":F
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IBIFFF)V

    .line 1747
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1748
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1749
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1750
    return p1
.end method

.method public blacklist addColorExpression(IIF)S
    .registers 10
    .param p1, "color1"    # I
    .param p2, "color2"    # I
    .param p3, "tween"    # F

    .line 1661
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "color1":I
    .end local p2    # "color2":I
    .end local p3    # "tween":F
    .local v3, "color1":I
    .local v4, "color2":I
    .local v5, "tween":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1662
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1663
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1664
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1665
    return p1
.end method

.method public blacklist addColorExpression(ISF)S
    .registers 10
    .param p1, "color1"    # I
    .param p2, "color2"    # S
    .param p3, "tween"    # F

    .line 1693
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x2

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "color1":I
    .end local p2    # "color2":S
    .end local p3    # "tween":F
    .local v3, "color1":I
    .local v4, "color2":S
    .local v5, "tween":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1694
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1695
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1696
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1697
    return p1
.end method

.method public blacklist addColorExpression(SIF)S
    .registers 10
    .param p1, "color1"    # S
    .param p2, "color2"    # I
    .param p3, "tween"    # F

    .line 1677
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "color1":S
    .end local p2    # "color2":I
    .end local p3    # "tween":F
    .local v3, "color1":S
    .local v4, "color2":I
    .local v5, "tween":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1678
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1679
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1680
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1681
    return p1
.end method

.method public blacklist addColorExpression(SSF)S
    .registers 10
    .param p1, "color1"    # S
    .param p2, "color2"    # S
    .param p3, "tween"    # F

    .line 1710
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;

    const/4 v1, 0x0

    const/4 v2, 0x3

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "color1":S
    .end local p2    # "color2":S
    .end local p3    # "tween":F
    .local v3, "color1":S
    .local v4, "color2":S
    .local v5, "tween":F
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;-><init>(IIIIF)V

    .line 1711
    .local v0, "c":Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result p1

    int-to-short p1, p1

    .line 1712
    .local p1, "id":S
    iput p1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->mId:I

    .line 1713
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorExpression;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1714
    return p1
.end method

.method public blacklist addColumnStart(IIIIF)V
    .registers 13
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "spacedBy"    # F

    .line 2151
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2152
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "spacedBy":F
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "spacedBy":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 2153
    return-void
.end method

.method public blacklist addComponentHeightValue(I)V
    .registers 5
    .param p1, "id"    # I

    .line 2229
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 2230
    return-void
.end method

.method public blacklist addComponentStart(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1835
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addComponentStart(II)V

    .line 1836
    return-void
.end method

.method public blacklist addComponentStart(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "id"    # I

    .line 1825
    invoke-direct {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 1826
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ComponentStart;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 1827
    return-void
.end method

.method public blacklist addComponentWidthValue(I)V
    .registers 5
    .param p1, "id"    # I

    .line 2220
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 2221
    return-void
.end method

.method public blacklist addConditionalOperations(BFF)V
    .registers 5
    .param p1, "type"    # B
    .param p2, "a"    # F
    .param p3, "b"    # F

    .line 2469
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ConditionalOperations;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;BFF)V

    .line 2470
    return-void
.end method

.method public blacklist addContainerEnd()V
    .registers 2

    .line 1840
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1841
    return-void
.end method

.method public blacklist addContentStart()V
    .registers 3

    .line 2200
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2201
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponentContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 2202
    return-void
.end method

.method public blacklist addDebugMessage(IFI)V
    .registers 5
    .param p1, "textId"    # I
    .param p2, "value"    # F
    .param p3, "flags"    # I

    .line 2480
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DebugMessage;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFI)V

    .line 2481
    return-void
.end method

.method public blacklist addDrawArc(FFFFFF)V
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "startAngle":F
    .end local p6    # "sweepAngle":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawArc;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 410
    return-void
.end method

.method public blacklist addDrawBitmap(IFFFFLjava/lang/String;)V
    .registers 15
    .param p1, "imageId"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "contentDescription"    # Ljava/lang/String;

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "contentDescriptionId":I
    if-eqz p6, :cond_9

    .line 470
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto :goto_a

    .line 469
    :cond_9
    move v7, v0

    .line 472
    .end local v0    # "contentDescriptionId":I
    .local v7, "contentDescriptionId":I
    :goto_a
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "imageId":I
    .end local p2    # "left":F
    .end local p3    # "top":F
    .end local p4    # "right":F
    .end local p5    # "bottom":F
    .local v2, "imageId":I
    .local v3, "left":F
    .local v4, "top":F
    .local v5, "right":F
    .local v6, "bottom":F
    invoke-static/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 473
    return-void
.end method

.method public blacklist addDrawBitmap(IFFLjava/lang/String;)V
    .registers 15
    .param p1, "imageId"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "contentDescription"    # Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageWidth(Ljava/lang/Object;)I

    move-result v0

    .line 484
    .local v0, "imageWidth":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Platform;->getImageHeight(Ljava/lang/Object;)I

    move-result v1

    .line 485
    .local v1, "imageHeight":I
    const/4 v2, 0x0

    .line 486
    .local v2, "contentDescriptionId":I
    if-eqz p4, :cond_1d

    .line 487
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v2

    move v9, v2

    goto :goto_1e

    .line 486
    :cond_1d
    move v9, v2

    .line 489
    .end local v2    # "contentDescriptionId":I
    .local v9, "contentDescriptionId":I
    :goto_1e
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    int-to-float v7, v0

    int-to-float v8, v1

    move v4, p1

    move v5, p2

    move v6, p3

    .end local p1    # "imageId":I
    .end local p2    # "left":F
    .end local p3    # "top":F
    .local v4, "imageId":I
    .local v5, "left":F
    .local v6, "top":F
    invoke-static/range {v3 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmap;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 491
    return-void
.end method

.method public blacklist addDrawBitmap(Ljava/lang/Object;FFFFLjava/lang/String;)V
    .registers 14
    .param p1, "image"    # Ljava/lang/Object;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "contentDescription"    # Ljava/lang/String;

    .line 449
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result v1

    .line 450
    .local v1, "imageId":I
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .end local p2    # "left":F
    .end local p3    # "top":F
    .end local p4    # "right":F
    .end local p5    # "bottom":F
    .end local p6    # "contentDescription":Ljava/lang/String;
    .local v2, "left":F
    .local v3, "top":F
    .local v4, "right":F
    .local v5, "bottom":F
    .local v6, "contentDescription":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawBitmap(IFFFFLjava/lang/String;)V

    .line 451
    return-void
.end method

.method public blacklist addDrawBitmapFontTextRun(IIIIFF)V
    .registers 14
    .param p1, "textId"    # I
    .param p2, "bitmapFontId"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F

    .line 854
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "textId":I
    .end local p2    # "bitmapFontId":I
    .end local p3    # "start":I
    .end local p4    # "end":I
    .end local p5    # "x":F
    .end local p6    # "y":F
    .local v1, "textId":I
    .local v2, "bitmapFontId":I
    .local v3, "start":I
    .local v4, "end":I
    .local v5, "x":F
    .local v6, "y":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapFontText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFF)V

    .line 855
    return-void
.end method

.method public blacklist addDrawCircle(FFF)V
    .registers 5
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F

    .line 639
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DrawCircle;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 640
    return-void
.end method

.method public blacklist addDrawLine(FFFF)V
    .registers 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 652
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawLine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 653
    return-void
.end method

.method public blacklist addDrawOval(FFFF)V
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 664
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawOval;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 665
    return-void
.end method

.method public blacklist addDrawPath(I)V
    .registers 3
    .param p1, "pathId"    # I

    .line 726
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DrawPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 727
    return-void
.end method

.method public blacklist addDrawPath(Ljava/lang/Object;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/Object;

    .line 676
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 677
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    .line 680
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawPath(I)V

    .line 681
    return-void
.end method

.method public blacklist addDrawRect(FFFF)V
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 738
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 739
    return-void
.end method

.method public blacklist addDrawRoundRect(FFFFFF)V
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radiusX"    # F
    .param p6, "radiusY"    # F

    .line 753
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "radiusX":F
    .end local p6    # "radiusY":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    .local v5, "radiusX":F
    .local v6, "radiusY":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawRoundRect;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 754
    return-void
.end method

.method public blacklist addDrawSector(FFFFFF)V
    .registers 14
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F

    .line 431
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .end local p5    # "startAngle":F
    .end local p6    # "sweepAngle":F
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    .local v5, "startAngle":F
    .local v6, "sweepAngle":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawSector;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFF)V

    .line 432
    return-void
.end method

.method public blacklist addDrawTextOnPath(ILjava/lang/Object;FF)V
    .registers 7
    .param p1, "textId"    # I
    .param p2, "path"    # Ljava/lang/Object;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F

    .line 783
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 784
    .local v0, "pathId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 785
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    .line 787
    :cond_d
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, p1, v0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 788
    return-void
.end method

.method public blacklist addDrawTextOnPath(Ljava/lang/String;Ljava/lang/Object;FF)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/Object;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F

    .line 766
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 767
    .local v0, "pathId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 768
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    .line 770
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    .line 771
    .local v1, "textId":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2, v1, v0, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextOnPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFF)V

    .line 772
    return-void
.end method

.method public blacklist addDrawTextRun(IIIIIFFZ)V
    .registers 18
    .param p1, "textId"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "rtl"    # Z

    .line 838
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    .line 839
    return-void
.end method

.method public blacklist addDrawTextRun(Ljava/lang/String;IIIIFFZ)V
    .registers 18
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "rtl"    # Z

    .line 812
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    .line 813
    .local v1, "textId":I
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/DrawText;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIFFZ)V

    .line 814
    return-void
.end method

.method public blacklist addDrawTweenPath(IIFFF)V
    .registers 12
    .param p1, "path1Id"    # I
    .param p2, "path2Id"    # I
    .param p3, "tween"    # F
    .param p4, "start"    # F
    .param p5, "stop"    # F

    .line 1000
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "path1Id":I
    .end local p2    # "path2Id":I
    .end local p3    # "tween":F
    .end local p4    # "start":F
    .end local p5    # "stop":F
    .local v1, "path1Id":I
    .local v2, "path2Id":I
    .local v3, "tween":F
    .local v4, "start":F
    .local v5, "stop":F
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTweenPath;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFF)V

    .line 1001
    return-void
.end method

.method public blacklist addDrawTweenPath(Ljava/lang/Object;Ljava/lang/Object;FFF)V
    .registers 14
    .param p1, "path1"    # Ljava/lang/Object;
    .param p2, "path2"    # Ljava/lang/Object;
    .param p3, "tween"    # F
    .param p4, "start"    # F
    .param p5, "stop"    # F

    .line 979
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 980
    .local v0, "path1Id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 981
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    move v3, v0

    goto :goto_10

    .line 980
    :cond_f
    move v3, v0

    .line 983
    .end local v0    # "path1Id":I
    .local v3, "path1Id":I
    :goto_10
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 984
    .local v0, "path2Id":I
    if-ne v0, v1, :cond_1e

    .line 985
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addPathData(Ljava/lang/Object;)I

    move-result v0

    move v4, v0

    goto :goto_1f

    .line 984
    :cond_1e
    move v4, v0

    .line 987
    .end local v0    # "path2Id":I
    .local v4, "path2Id":I
    :goto_1f
    move-object v2, p0

    move v5, p3

    move v6, p4

    move v7, p5

    .end local p3    # "tween":F
    .end local p4    # "start":F
    .end local p5    # "stop":F
    .local v5, "tween":F
    .local v6, "start":F
    .local v7, "stop":F
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addDrawTweenPath(IIFFF)V

    .line 988
    return-void
.end method

.method public blacklist addEndFloatFunctionDef()V
    .registers 2

    .line 2356
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2357
    return-void
.end method

.method public blacklist addFitBoxStart(IIII)V
    .registers 7
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I

    .line 2092
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2093
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/FitBoxLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 2094
    return-void
.end method

.method public blacklist addFloat(F)F
    .registers 4
    .param p1, "value"    # F

    .line 1328
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v0

    .line 1329
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 1330
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addFloatArray([F)F
    .registers 4
    .param p1, "values"    # [F

    .line 1524
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;I)I

    move-result v0

    .line 1525
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 1526
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addFloatList([F)F
    .registers 7
    .param p1, "values"    # [F

    .line 1536
    array-length v0, p1

    new-array v0, v0, [I

    .line 1537
    .local v0, "listId":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 1538
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v2

    aput v2, v0, v1

    .line 1539
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    aget v3, v0, v1

    aget v4, p1, v1

    invoke-static {v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 1537
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1541
    .end local v1    # "i":I
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addList([I)F

    move-result v1

    return v1
.end method

.method public blacklist addFloatMap([Ljava/lang/String;[F)F
    .registers 9
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [F

    .line 1564
    array-length v0, p2

    new-array v0, v0, [I

    .line 1565
    .local v0, "listId":[I
    array-length v1, p2

    new-array v1, v1, [B

    .line 1566
    .local v1, "type":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_23

    .line 1567
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    aget v4, p2, v2

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheFloat(F)I

    move-result v3

    aput v3, v0, v2

    .line 1568
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    aget v4, v0, v2

    aget v5, p2, v2

    invoke-static {v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IF)V

    .line 1569
    const/4 v3, 0x2

    aput-byte v3, v1, v2

    .line 1566
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1571
    .end local v2    # "i":I
    :cond_23
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addMap([Ljava/lang/String;[B[I)I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

.method public blacklist addHeader(IILjava/lang/String;FJ)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;
    .param p4, "density"    # F
    .param p5, "capabilities"    # J

    .line 246
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p4

    move-wide v4, p5

    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p4    # "density":F
    .end local p5    # "capabilities":J
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "density":F
    .local v4, "capabilities":J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    .line 247
    const/4 p1, 0x0

    .line 248
    .local p1, "contentDescriptionId":I
    if-eqz p3, :cond_15

    .line 249
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    .line 250
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 252
    :cond_15
    return-void
.end method

.method public blacklist addHeader([S[Ljava/lang/Object;)V
    .registers 4
    .param p1, "tags"    # [S
    .param p2, "values"    # [Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public blacklist addImage(IIIIF)V
    .registers 13
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "bitmapId"    # I
    .param p4, "scaleType"    # I
    .param p5, "alpha"    # F

    .line 2105
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2106
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "componentId":I
    .end local p2    # "animationId":I
    .end local p3    # "bitmapId":I
    .end local p4    # "scaleType":I
    .end local p5    # "alpha":F
    .local v2, "componentId":I
    .local v3, "animationId":I
    .local v4, "bitmapId":I
    .local v5, "scaleType":I
    .local v6, "alpha":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ImageLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 2107
    return-void
.end method

.method public blacklist addImpulse(FF)V
    .registers 4
    .param p1, "duration"    # F
    .param p2, "start"    # F

    .line 2304
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 2305
    return-void
.end method

.method public blacklist addImpulseEnd()V
    .registers 2

    .line 2314
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2315
    return-void
.end method

.method public blacklist addImpulseProcess()V
    .registers 2

    .line 2309
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ImpulseProcess;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2310
    return-void
.end method

.method public blacklist addInteger(I)I
    .registers 4
    .param p1, "value"    # I

    .line 1350
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheInteger(I)I

    move-result v0

    .line 1351
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 1352
    return v0
.end method

.method public blacklist addIntegerExpression(I[I)I
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # [I

    .line 1633
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1634
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II[I)V

    .line 1635
    return v0
.end method

.method public blacklist addList([I)F
    .registers 4
    .param p1, "listId"    # [I

    .line 1551
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;I)I

    move-result v0

    .line 1552
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/DataListIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    .line 1553
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist addLong(J)I
    .registers 5
    .param p1, "value"    # J

    .line 1362
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 1363
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IJ)V

    .line 1364
    return v0
.end method

.method public blacklist addLoopEnd()V
    .registers 2

    .line 2052
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2053
    return-void
.end method

.method public blacklist addLoopStart(IFFF)V
    .registers 6
    .param p1, "indexId"    # I
    .param p2, "from"    # F
    .param p3, "step"    # F
    .param p4, "until"    # F

    .line 2047
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 2048
    return-void
.end method

.method public blacklist addMap([Ljava/lang/String;[B[I)I
    .registers 6
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "types"    # [B
    .param p3, "listId"    # [I

    .line 1582
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/4 v1, 0x2

    invoke-virtual {v0, p3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;I)I

    move-result v0

    .line 1583
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapIds;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[Ljava/lang/String;[B[I)V

    .line 1584
    return v0
.end method

.method public blacklist addMatrixRestore()V
    .registers 2

    .line 1243
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRestore;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1244
    return-void
.end method

.method public blacklist addMatrixRotate(FFF)V
    .registers 5
    .param p1, "angle"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .line 1265
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixRotate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFF)V

    .line 1266
    return-void
.end method

.method public blacklist addMatrixSave()V
    .registers 2

    .line 1254
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSave;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1255
    return-void
.end method

.method public blacklist addMatrixScale(FF)V
    .registers 5
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 1285
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v0, p1, p2, v1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1286
    return-void
.end method

.method public blacklist addMatrixScale(FFFF)V
    .registers 6
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .line 1297
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixScale;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1298
    return-void
.end method

.method public blacklist addMatrixSkew(FF)V
    .registers 4
    .param p1, "skewX"    # F
    .param p2, "skewY"    # F

    .line 1234
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixSkew;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1235
    return-void
.end method

.method public blacklist addMatrixTranslate(FF)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 1275
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/MatrixTranslate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1276
    return-void
.end method

.method public blacklist addModifierBackground(II)V
    .registers 15
    .param p1, "color"    # I
    .param p2, "shape"    # I

    .line 1923
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v7, v0, v1

    .line 1924
    .local v7, "r":F
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v8, v0, v1

    .line 1925
    .local v8, "g":F
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float v9, v0, v1

    .line 1926
    .local v9, "b":F
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v10, v0, v1

    .line 1927
    .local v10, "a":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v11, p2

    .end local p2    # "shape":I
    .local v11, "shape":I
    invoke-static/range {v2 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BackgroundModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFI)V

    .line 1928
    return-void
.end method

.method public blacklist addModifierBorder(FFII)V
    .registers 20
    .param p1, "borderWidth"    # F
    .param p2, "borderRoundedCorner"    # F
    .param p3, "color"    # I
    .param p4, "shape"    # I

    .line 1940
    move/from16 v0, p3

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v10, v1, v2

    .line 1941
    .local v10, "r":F
    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float v11, v1, v2

    .line 1942
    .local v11, "g":F
    and-int/lit16 v1, v0, 0xff

    int-to-float v1, v1

    div-float v12, v1, v2

    .line 1943
    .local v12, "b":F
    shr-int/lit8 v1, v0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float v13, v1, v2

    .line 1944
    .local v13, "a":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v14, p4

    invoke-static/range {v3 .. v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/BorderModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFFFFFFFFI)V

    .line 1946
    return-void
.end method

.method public blacklist addModifierGraphicsLayer(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2017
    .local p1, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/HashMap;)V

    .line 2018
    return-void
.end method

.method public blacklist addModifierMarquee(IIFFFF)V
    .registers 14
    .param p1, "iterations"    # I
    .param p2, "animationMode"    # I
    .param p3, "repeatDelayMillis"    # F
    .param p4, "initialDelayMillis"    # F
    .param p5, "spacing"    # F
    .param p6, "velocity"    # F

    .line 2001
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "iterations":I
    .end local p2    # "animationMode":I
    .end local p3    # "repeatDelayMillis":F
    .end local p4    # "initialDelayMillis":F
    .end local p5    # "spacing":F
    .end local p6    # "velocity":F
    .local v1, "iterations":I
    .local v2, "animationMode":I
    .local v3, "repeatDelayMillis":F
    .local v4, "initialDelayMillis":F
    .local v5, "spacing":F
    .local v6, "velocity":F
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/MarqueeModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFFFF)V

    .line 2009
    return-void
.end method

.method public blacklist addModifierOffset(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1967
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/OffsetModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FF)V

    .line 1968
    return-void
.end method

.method public blacklist addModifierPadding(FFFF)V
    .registers 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 1957
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/PaddingModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 1958
    return-void
.end method

.method public blacklist addModifierRipple()V
    .registers 2

    .line 1981
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RippleModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1982
    return-void
.end method

.method public blacklist addModifierScroll(I)V
    .registers 5
    .param p1, "direction"    # I

    .line 1911
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v0

    .line 1912
    .local v0, "max":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 1913
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1914
    return-void
.end method

.method public blacklist addModifierScroll(IF)V
    .registers 16
    .param p1, "direction"    # I
    .param p2, "positionId"    # F

    .line 1883
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v4

    .line 1884
    .local v4, "max":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v11

    .line 1886
    .local v11, "notchMax":F
    if-eqz p1, :cond_d

    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_X:F

    goto :goto_f

    :cond_d
    sget v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_Y:F

    :goto_f
    move v12, v0

    .line 1888
    .local v12, "touchExpressionDirection":F
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, v4, v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 1889
    const/4 v0, 0x3

    new-array v7, v0, [F

    const/4 v0, 0x0

    aput v12, v7, v0

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    aput v0, v7, v1

    sget v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MUL:F

    const/4 v1, 0x2

    aput v0, v7, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p2

    .end local p2    # "positionId":F
    .local v1, "positionId":F
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addTouchExpression(FFFFFI[FI[F[F)V

    .line 1902
    iget-object p2, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1903
    return-void
.end method

.method public blacklist addModifierScroll(IFI)V
    .registers 19
    .param p1, "direction"    # I
    .param p2, "positionId"    # F
    .param p3, "notches"    # I

    .line 1852
    move/from16 v0, p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v5

    .line 1853
    .local v5, "max":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->reserveFloatVariable()F

    move-result v12

    .line 1855
    .local v12, "notchMax":F
    if-eqz v0, :cond_f

    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_X:F

    goto :goto_11

    :cond_f
    sget v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->FLOAT_TOUCH_POS_Y:F

    :goto_11
    move v13, v1

    .line 1857
    .local v13, "touchExpressionDirection":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v2, p2

    invoke-static {v1, v0, v2, v5, v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFF)V

    .line 1859
    const/4 v1, 0x3

    new-array v8, v1, [F

    const/4 v1, 0x0

    aput v13, v8, v1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    aput v3, v8, v4

    sget v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->MUL:F

    const/4 v6, 0x2

    aput v3, v8, v6

    move/from16 v14, p3

    int-to-float v3, v14

    new-array v10, v6, [F

    aput v3, v10, v1

    aput v12, v10, v4

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x3

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addTouchExpression(FFFFFI[FI[F[F)V

    .line 1873
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1874
    return-void
.end method

.method public blacklist addModifierZIndex(F)V
    .registers 3
    .param p1, "value"    # F

    .line 1976
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ZIndexModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;F)V

    .line 1977
    return-void
.end method

.method public blacklist addPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
    .registers 3
    .param p1, "paint"    # Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 1022
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/PaintData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 1023
    return-void
.end method

.method public blacklist addParticleLoopEnd()V
    .registers 2

    .line 2343
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2344
    return-void
.end method

.method public blacklist addParticles(I[I[[FI)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "varIds"    # [I
    .param p3, "initialExpressions"    # [[F
    .param p4, "particleCount"    # I

    .line 2327
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I[[FI)V

    .line 2328
    return-void
.end method

.method public blacklist addParticlesLoop(I[F[[F)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "restart"    # [F
    .param p3, "expressions"    # [[F

    .line 2338
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/ParticlesLoop;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F[[F)V

    .line 2339
    return-void
.end method

.method public blacklist addPathData(Ljava/lang/Object;)I
    .registers 5
    .param p1, "path"    # Ljava/lang/Object;

    .line 1010
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Platform;->pathToFloatArray(Ljava/lang/Object;)[F

    move-result-object v0

    .line 1011
    .local v0, "pathData":[F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    .line 1012
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2, v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/PathData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 1013
    return v1
.end method

.method public blacklist addRootStart()V
    .registers 3

    .line 2194
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2195
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    invoke-static {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 2196
    return-void
.end method

.method public blacklist addRoundClipRectModifier(FFFF)V
    .registers 6
    .param p1, "topStart"    # F
    .param p2, "topEnd"    # F
    .param p3, "bottomStart"    # F
    .param p4, "bottomEnd"    # F

    .line 2030
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RoundedClipRectModifierOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;FFFF)V

    .line 2031
    return-void
.end method

.method public blacklist addRowStart(IIIIF)V
    .registers 13
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "spacedBy"    # F

    .line 2120
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2121
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "spacedBy":F
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "spacedBy":F
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 2122
    return-void
.end method

.method public blacklist addRunActionsStart()V
    .registers 2

    .line 2211
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/RunActionOperation;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2212
    return-void
.end method

.method public blacklist addStateLayout(IIIII)V
    .registers 13
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontal"    # I
    .param p4, "vertical"    # I
    .param p5, "indexId"    # I

    .line 2066
    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2067
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .end local p2    # "animationId":I
    .end local p3    # "horizontal":I
    .end local p4    # "vertical":I
    .end local p5    # "indexId":I
    .local v3, "animationId":I
    .local v4, "horizontal":I
    .local v5, "vertical":I
    .local v6, "indexId":I
    invoke-static/range {v1 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/StateLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIII)V

    .line 2068
    return-void
.end method

.method public blacklist addText(Ljava/lang/String;)I
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v0

    .line 337
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 338
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 339
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;ILjava/lang/String;)V

    .line 341
    :cond_14
    return v0
.end method

.method public blacklist addTextComponentStart(IIIIFIFLjava/lang/String;III)V
    .registers 26
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "textId"    # I
    .param p4, "color"    # I
    .param p5, "fontSize"    # F
    .param p6, "fontStyle"    # I
    .param p7, "fontWeight"    # F
    .param p8, "fontFamily"    # Ljava/lang/String;
    .param p9, "textAlign"    # I
    .param p10, "overflow"    # I
    .param p11, "maxLines"    # I

    .line 2258
    move-object/from16 v0, p8

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->getComponentId(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 2259
    const/4 v1, -0x1

    .line 2260
    .local v1, "fontFamilyId":I
    if-eqz v0, :cond_11

    .line 2261
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    move v10, v1

    goto :goto_12

    .line 2260
    :cond_11
    move v10, v1

    .line 2263
    .end local v1    # "fontFamilyId":I
    .local v10, "fontFamilyId":I
    :goto_12
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v2 .. v13}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V

    .line 2276
    return-void
.end method

.method public blacklist addTouchExpression(FFFFI[FI[F[F)F
    .registers 21
    .param p1, "value"    # F
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "velocityId"    # F
    .param p5, "touchEffects"    # I
    .param p6, "exp"    # [F
    .param p7, "touchMode"    # I
    .param p8, "touchSpec"    # [F
    .param p9, "easingSpec"    # [F

    .line 1462
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    .line 1463
    .local v1, "id":F
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addTouchExpression(FFFFFI[FI[F[F)V

    .line 1474
    return v1
.end method

.method public blacklist addTouchExpression(FFFFFI[FI[F[F)V
    .registers 22
    .param p1, "id"    # F
    .param p2, "value"    # F
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "velocityId"    # F
    .param p6, "touchEffects"    # I
    .param p7, "exp"    # [F
    .param p8, "touchMode"    # I
    .param p9, "touchSpec"    # [F
    .param p10, "easingSpec"    # [F

    .line 1425
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 1427
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    .line 1425
    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V

    .line 1437
    return-void
.end method

.method public blacklist asFloatId(I)F
    .registers 3
    .param p1, "id"    # I

    .line 1386
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v0

    return v0
.end method

.method public blacklist bitmapAttribute(IS)F
    .registers 6
    .param p1, "bitmapId"    # I
    .param p2, "attribute"    # S

    .line 2375
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 2376
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v2, 0x0

    invoke-static {v1, v0, p1, p2, v2}, Lcom/android/internal/widget/remotecompose/core/operations/ImageAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 2377
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist callFloatFunction(I[F)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "args"    # [F

    .line 2366
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionCall;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 2367
    return-void
.end method

.method blacklist copy()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 4

    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    .local v0, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    .line 1075
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    .line 1076
    .local v1, "buffer":Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    move-result-object v2

    return-object v2
.end method

.method blacklist copyFromOperations(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 6
    .param p2, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;",
            ")",
            "Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;"
        }
    .end annotation

    .line 1152
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1153
    .local v1, "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    iget-object v2, p2, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1154
    .end local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/Operation;
    goto :goto_4

    .line 1155
    :cond_16
    return-object p2
.end method

.method public blacklist createID(I)I
    .registers 3
    .param p1, "type"    # I

    .line 2285
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId(I)I

    move-result v0

    return v0
.end method

.method public blacklist createTextFromFloat(FSSI)I
    .registers 13
    .param p1, "value"    # F
    .param p2, "digitsBefore"    # S
    .param p3, "digitsAfter"    # S
    .param p4, "flags"    # I

    .line 923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 924
    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->floatToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "placeHolder":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v1

    .line 933
    .local v1, "id":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_44

    .line 934
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    move v3, v1

    goto :goto_45

    .line 933
    :cond_44
    move v3, v1

    .line 937
    .end local v1    # "id":I
    .local v3, "id":I
    :goto_45
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "value":F
    .end local p2    # "digitsBefore":S
    .end local p3    # "digitsAfter":S
    .end local p4    # "flags":I
    .local v4, "value":F
    .local v5, "digitsBefore":S
    .local v6, "digitsAfter":S
    .local v7, "flags":I
    invoke-static/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/TextFromFloat;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFSSI)V

    .line 938
    return v3
.end method

.method public blacklist createTextId(Ljava/lang/String;)I
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 890
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist defineFloatFunction(I[I)V
    .registers 4
    .param p1, "fid"    # I
    .param p2, "args"    # [I

    .line 2351
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/FloatFunctionDefine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[I)V

    .line 2352
    return-void
.end method

.method public blacklist drawBitmap(Ljava/lang/Object;IIIIIIIIIILjava/lang/String;)V
    .registers 25
    .param p1, "image"    # Ljava/lang/Object;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I
    .param p4, "srcLeft"    # I
    .param p5, "srcTop"    # I
    .param p6, "srcRight"    # I
    .param p7, "srcBottom"    # I
    .param p8, "dstLeft"    # I
    .param p9, "dstTop"    # I
    .param p10, "dstRight"    # I
    .param p11, "dstBottom"    # I
    .param p12, "contentDescription"    # Ljava/lang/String;

    .line 293
    move-object/from16 v0, p12

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result v2

    .line 294
    .local v2, "imageId":I
    const/4 v1, 0x0

    .line 295
    .local v1, "contentDescriptionId":I
    if-eqz v0, :cond_f

    .line 296
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    move v11, v1

    goto :goto_10

    .line 295
    :cond_f
    move v11, v1

    .line 298
    .end local v1    # "contentDescriptionId":I
    .local v11, "contentDescriptionId":I
    :goto_10
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-static/range {v1 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIIIIIII)V

    .line 310
    return-void
.end method

.method public blacklist drawComponentContent()V
    .registers 2

    .line 2405
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 2406
    return-void
.end method

.method public blacklist drawScaledBitmap(IFFFFFFFFIFLjava/lang/String;)V
    .registers 29
    .param p1, "imageId"    # I
    .param p2, "srcLeft"    # F
    .param p3, "srcTop"    # F
    .param p4, "srcRight"    # F
    .param p5, "srcBottom"    # F
    .param p6, "dstLeft"    # F
    .param p7, "dstTop"    # F
    .param p8, "dstRight"    # F
    .param p9, "dstBottom"    # F
    .param p10, "scaleType"    # I
    .param p11, "scaleFactor"    # F
    .param p12, "contentDescription"    # Ljava/lang/String;

    .line 610
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    const/4 v2, 0x0

    .line 611
    .local v2, "contentDescriptionId":I
    if-eqz v1, :cond_d

    .line 612
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v2

    move v15, v2

    goto :goto_e

    .line 611
    :cond_d
    move v15, v2

    .line 614
    .end local v2    # "contentDescriptionId":I
    .local v15, "contentDescriptionId":I
    :goto_e
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v3 .. v15}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    .line 628
    return-void
.end method

.method public blacklist drawScaledBitmap(Ljava/lang/Object;FFFFFFFFIFLjava/lang/String;)V
    .registers 27
    .param p1, "image"    # Ljava/lang/Object;
    .param p2, "srcLeft"    # F
    .param p3, "srcTop"    # F
    .param p4, "srcRight"    # F
    .param p5, "srcBottom"    # F
    .param p6, "dstLeft"    # F
    .param p7, "dstTop"    # F
    .param p8, "dstRight"    # F
    .param p9, "dstBottom"    # F
    .param p10, "scaleType"    # I
    .param p11, "scaleFactor"    # F
    .param p12, "contentDescription"    # Ljava/lang/String;

    .line 520
    move-object/from16 v0, p12

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->storeBitmap(Ljava/lang/Object;)I

    move-result v2

    .line 521
    .local v2, "imageId":I
    const/4 v1, 0x0

    .line 522
    .local v1, "contentDescriptionId":I
    if-eqz v0, :cond_f

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    move v13, v1

    goto :goto_10

    .line 522
    :cond_f
    move v13, v1

    .line 525
    .end local v1    # "contentDescriptionId":I
    .local v13, "contentDescriptionId":I
    :goto_10
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v1 .. v13}, Lcom/android/internal/widget/remotecompose/core/operations/DrawBitmapScaled;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFFFFFIFI)V

    .line 539
    return-void
.end method

.method public blacklist drawTextAnchored(IFFFFI)V
    .registers 14
    .param p1, "textId"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "panX"    # F
    .param p5, "panY"    # F
    .param p6, "flags"    # I

    .line 963
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "textId":I
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "panX":F
    .end local p5    # "panY":F
    .end local p6    # "flags":I
    .local v1, "textId":I
    .local v2, "x":F
    .local v3, "y":F
    .local v4, "panX":F
    .local v5, "panY":F
    .local v6, "flags":I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 964
    return-void
.end method

.method public blacklist drawTextAnchored(Ljava/lang/String;FFFFI)V
    .registers 14
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "panX"    # F
    .param p5, "panY"    # F
    .param p6, "flags"    # I

    .line 879
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result v1

    .line 880
    .local v1, "textId":I
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "panX":F
    .end local p5    # "panY":F
    .end local p6    # "flags":I
    .local v2, "x":F
    .local v3, "y":F
    .local v4, "panX":F
    .local v5, "panY":F
    .local v6, "flags":I
    invoke-static/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/DrawTextAnchored;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI)V

    .line 881
    return-void
.end method

.method public blacklist fromFile(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "remoteComposeState"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1121
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    .line 1122
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    invoke-static {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->read(Ljava/io/File;Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V

    .line 1123
    return-object v0
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    return-object v0
.end method

.method public blacklist getColorAttribute(IS)F
    .registers 5
    .param p1, "baseColor"    # I
    .param p2, "type"    # S

    .line 2491
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 2492
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/ColorAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 2493
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist getLastComponentId()I
    .registers 2

    .line 181
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    return v0
.end method

.method public blacklist getPlatform()Lcom/android/internal/widget/remotecompose/core/Platform;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    return-object v0
.end method

.method public blacklist header(IILjava/lang/String;)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;

    .line 262
    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "contentDescription":Ljava/lang/String;
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "contentDescription":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->header(IILjava/lang/String;FJ)V

    .line 263
    return-void
.end method

.method public blacklist header(IILjava/lang/String;FJ)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;
    .param p4, "density"    # F
    .param p5, "capabilities"    # J

    .line 224
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    move v1, p1

    move v2, p2

    move v3, p4

    move-wide v4, p5

    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p4    # "density":F
    .end local p5    # "capabilities":J
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "density":F
    .local v4, "capabilities":J
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    .line 225
    const/4 p1, 0x0

    .line 226
    .local p1, "contentDescriptionId":I
    if-eqz p3, :cond_15

    .line 227
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->addText(Ljava/lang/String;)I

    move-result p1

    .line 228
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentDescription;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 230
    :cond_15
    return-void
.end method

.method public blacklist inflateFromBuffer(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1033
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->setIndex(I)V

    .line 1034
    :goto_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->available()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1035
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    .line 1039
    .local v0, "opId":I
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/Operations;->map:Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;

    .line 1040
    .local v1, "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    if-eqz v1, :cond_24

    .line 1043
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/widget/remotecompose/core/CompanionOperation;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V

    .line 1044
    .end local v0    # "opId":I
    .end local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    goto :goto_6

    .line 1041
    .restart local v0    # "opId":I
    .restart local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    :cond_24
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown operation encountered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1045
    .end local v0    # "opId":I
    .end local v1    # "operation":Lcom/android/internal/widget/remotecompose/core/CompanionOperation;
    :cond_3d
    return-void
.end method

.method public blacklist mapLookup(II)I
    .registers 7
    .param p1, "mapId"    # I
    .param p2, "strId"    # I

    .line 320
    mul-int/lit8 v0, p2, 0x21

    add-int/2addr v0, p1

    .line 321
    .local v0, "hash":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->dataGetId(Ljava/lang/Object;)I

    move-result v1

    .line 322
    .local v1, "id":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 323
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v1

    .line 324
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v2, v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/DataMapLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 326
    :cond_1f
    return v1
.end method

.method public blacklist nextId()I
    .registers 2

    .line 2294
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    return v0
.end method

.method public varargs blacklist pathAppend(I[F)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "path"    # [F

    .line 717
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/PathAppend;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I[F)V

    .line 718
    return-void
.end method

.method public blacklist pathCombine(IIIB)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "path1"    # I
    .param p3, "path2"    # I
    .param p4, "op"    # B

    .line 2449
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/PathCombine;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIB)V

    .line 2450
    return-void
.end method

.method public blacklist pathCreate(FF)I
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 705
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 706
    .local v0, "out":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/PathCreate;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFF)V

    .line 707
    return v0
.end method

.method public blacklist pathTween(IIF)I
    .registers 6
    .param p1, "pid1"    # I
    .param p2, "pid2"    # I
    .param p3, "tween"    # F

    .line 692
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 693
    .local v0, "out":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/PathTween;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIF)V

    .line 694
    return v0
.end method

.method public blacklist performHaptic(I)V
    .registers 3
    .param p1, "feedbackConstant"    # I

    .line 2458
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/HapticFeedback;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 2459
    return-void
.end method

.method public blacklist reserveFloatVariable()F
    .registers 3

    .line 1339
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 1340
    .local v0, "id":I
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist reset(I)V
    .registers 3
    .param p1, "expectedSize"    # I

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->reset()V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mLastComponentId:I

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mGeneratedComponentId:I

    .line 178
    return-void
.end method

.method public blacklist setBitmapName(ILjava/lang/String;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    .line 581
    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 2
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 198
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 199
    return-void
.end method

.method public blacklist setNamedVariable(ILjava/lang/String;I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 1797
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p3, p2}, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IILjava/lang/String;)V

    .line 1798
    return-void
.end method

.method public blacklist setPlatform(Lcom/android/internal/widget/remotecompose/core/Platform;)V
    .registers 2
    .param p1, "platform"    # Lcom/android/internal/widget/remotecompose/core/Platform;

    .line 190
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mPlatform:Lcom/android/internal/widget/remotecompose/core/Platform;

    .line 191
    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .registers 6
    .param p1, "scroll"    # I
    .param p2, "alignment"    # I
    .param p3, "sizing"    # I
    .param p4, "mode"    # I

    .line 387
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/remotecompose/core/operations/RootContentBehavior;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIII)V

    .line 388
    return-void
.end method

.method public blacklist setTheme(I)V
    .registers 3
    .param p1, "theme"    # I

    .line 1085
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/Theme;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;I)V

    .line 1086
    return-void
.end method

.method public blacklist textAttribute(IS)F
    .registers 5
    .param p1, "textId"    # I
    .param p2, "attribute"    # S

    .line 2386
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 2387
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS)V

    .line 2388
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist textLength(I)F
    .registers 4
    .param p1, "textId"    # I

    .line 1512
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->id()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1513
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TextLength;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;II)V

    .line 1514
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist textLookup(FF)I
    .registers 8
    .param p1, "dataSet"    # F
    .param p2, "index"    # F

    .line 1598
    nop

    .line 1599
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 1600
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1602
    .local v0, "hash":J
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v2

    .line 1603
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-static {v3, v2, v4, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookup;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIF)V

    .line 1604
    return v2
.end method

.method public blacklist textLookup(FI)I
    .registers 8
    .param p1, "dataSet"    # F
    .param p2, "index"    # I

    .line 1617
    nop

    .line 1618
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-float v2, p2

    .line 1619
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1620
    .local v0, "hash":J
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v2

    .line 1621
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {p1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-static {v3, v2, v4, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextLookupInt;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 1622
    return v2
.end method

.method public blacklist textMeasure(II)F
    .registers 5
    .param p1, "textId"    # I
    .param p2, "mode"    # I

    .line 1498
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    mul-int/lit8 v1, p2, 0x1f

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(Ljava/lang/Object;)I

    move-result v0

    .line 1499
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextMeasure;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 1500
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist textMerge(II)I
    .registers 5
    .param p1, "id1"    # I
    .param p2, "id2"    # I

    .line 901
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->nextId()I

    move-result v0

    .line 902
    .local v0, "textId":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/TextMerge;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;III)V

    .line 903
    return v0
.end method

.method public varargs blacklist timeAttribute(IS[I)F
    .registers 6
    .param p1, "timeId"    # I
    .param p2, "attribute"    # S
    .param p3, "args"    # [I

    .line 2398
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->nextId()I

    move-result v0

    .line 2399
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/TimeAttribute;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIS[I)V

    .line 2400
    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->asNan(I)F

    move-result v1

    return v1
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;Ljava/io/File;)V
    .registers 7
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .param p2, "file"    # Ljava/io/File;

    .line 1166
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1167
    .local v0, "fd":Ljava/io/FileOutputStream;
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getBuffer()[B

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->mBuffer:Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getSize()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1168
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 1169
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 1172
    .end local v0    # "fd":Ljava/io/FileOutputStream;
    nop

    .line 1173
    return-void

    .line 1170
    :catch_1d
    move-exception v0

    .line 1171
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
