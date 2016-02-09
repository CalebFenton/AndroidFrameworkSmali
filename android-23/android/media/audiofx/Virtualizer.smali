.class public Landroid/media/audiofx/Virtualizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Virtualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;,
        Landroid/media/audiofx/Virtualizer$BaseParameterListener;,
        Landroid/media/audiofx/Virtualizer$Settings;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final PARAM_FORCE_VIRTUALIZATION_MODE:I = 0x3

.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field public static final PARAM_VIRTUALIZATION_MODE:I = 0x4

.field public static final PARAM_VIRTUAL_SPEAKER_ANGLES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Virtualizer"

.field public static final VIRTUALIZATION_MODE_AUTO:I = 0x1

.field public static final VIRTUALIZATION_MODE_BINAURAL:I = 0x2

.field public static final VIRTUALIZATION_MODE_OFF:I = 0x0

.field public static final VIRTUALIZATION_MODE_TRANSAURAL:I = 0x3


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mStrengthSupported:Z


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/Virtualizer;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 120
    sget-object v3, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    #@5
    sget-object v4, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    #@7
    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    #@a
    .line 86
    iput-boolean v2, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    #@c
    .line 91
    iput-object v5, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    #@e
    .line 96
    iput-object v5, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    #@10
    .line 101
    new-instance v3, Ljava/lang/Object;

    #@12
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    #@15
    iput-object v3, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    #@17
    .line 122
    if-nez p2, :cond_0

    #@19
    .line 123
    const-string/jumbo v3, "Virtualizer"

    #@1c
    const-string/jumbo v4, "WARNING: attaching a Virtualizer to global output mix is deprecated!"

    #@1f
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 126
    :cond_0
    new-array v0, v1, [I

    #@24
    .line 127
    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    #@27
    move-result v3

    #@28
    invoke-virtual {p0, v3}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    #@2b
    .line 128
    aget v3, v0, v2

    #@2d
    if-eqz v3, :cond_1

    #@2f
    :goto_0
    iput-boolean v1, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    #@31
    .line 119
    return-void

    #@32
    :cond_1
    move v1, v2

    #@33
    .line 128
    goto :goto_0
.end method

.method private static deviceToMode(I)I
    .locals 1
    .param p0, "deviceType"    # I

    #@0
    .prologue
    .line 327
    packed-switch p0, :pswitch_data_0

    #@3
    .line 347
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 332
    :pswitch_1
    const/4 v0, 0x2

    #@6
    return v0

    #@7
    .line 344
    :pswitch_2
    const/4 v0, 0x3

    #@8
    return v0

    #@9
    .line 327
    nop

    #@a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getAnglesInt(II[I)Z
    .locals 11
    .param p1, "inputChannelMask"    # I
    .param p2, "deviceType"    # I
    .param p3, "angles"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 186
    if-nez p1, :cond_0

    #@4
    .line 187
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@6
    .line 188
    const-string/jumbo v8, "Virtualizer: illegal CHANNEL_INVALID channel mask"

    #@9
    .line 187
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v7

    #@d
    .line 190
    :cond_0
    if-ne p1, v9, :cond_1

    #@f
    .line 191
    const/16 v0, 0xc

    #@11
    .line 192
    .local v0, "channelMask":I
    :goto_0
    invoke-static {v0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    #@14
    move-result v2

    #@15
    .line 193
    .local v2, "nbChannels":I
    if-eqz p3, :cond_2

    #@17
    array-length v7, p3

    #@18
    mul-int/lit8 v8, v2, 0x3

    #@1a
    if-ge v7, v8, :cond_2

    #@1c
    .line 194
    const-string/jumbo v7, "Virtualizer"

    #@1f
    new-instance v8, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v9, "Size of array for angles cannot accomodate number of channels in mask ("

    #@27
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v8

    #@2b
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v8

    #@2f
    .line 195
    const-string/jumbo v9, ")"

    #@32
    .line 194
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 196
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@3f
    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v9, "Virtualizer: array for channel / angle pairs is too small: is "

    #@47
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    array-length v9, p3

    #@4c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v8

    #@50
    .line 198
    const-string/jumbo v9, ", should be "

    #@53
    .line 197
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    .line 198
    mul-int/lit8 v9, v2, 0x3

    #@59
    .line 197
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v8

    #@61
    .line 196
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v7

    #@65
    .line 191
    .end local v0    # "channelMask":I
    .end local v2    # "nbChannels":I
    :cond_1
    move v0, p1

    #@66
    .restart local v0    # "channelMask":I
    goto :goto_0

    #@67
    .line 201
    .restart local v2    # "nbChannels":I
    :cond_2
    const/16 v7, 0xc

    #@69
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@6c
    move-result-object v3

    #@6d
    .line 202
    .local v3, "paramsConverter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@70
    move-result-object v7

    #@71
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@74
    .line 203
    const/4 v7, 0x2

    #@75
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@78
    .line 205
    invoke-static {v0}, Landroid/media/AudioFormat;->convertChannelOutMaskToNativeMask(I)I

    #@7b
    move-result v7

    #@7c
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@7f
    .line 207
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    #@82
    move-result v7

    #@83
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@86
    .line 209
    mul-int/lit8 v7, v2, 0x4

    #@88
    mul-int/lit8 v7, v7, 0x3

    #@8a
    new-array v4, v7, [B

    #@8c
    .line 212
    .local v4, "result":[B
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    #@8f
    move-result-object v7

    #@90
    invoke-virtual {p0, v7, v4}, Landroid/media/audiofx/Virtualizer;->getParameter([B[B)I

    #@93
    move-result v6

    #@94
    .line 218
    .local v6, "status":I
    if-ltz v6, :cond_4

    #@96
    .line 219
    if-eqz p3, :cond_3

    #@98
    .line 221
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@9b
    move-result-object v5

    #@9c
    .line 222
    .local v5, "resultConverter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@a3
    .line 223
    const/4 v1, 0x0

    #@a4
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@a6
    .line 225
    mul-int/lit8 v7, v1, 0x3

    #@a8
    .line 226
    mul-int/lit8 v8, v1, 0x4

    #@aa
    mul-int/lit8 v8, v8, 0x3

    #@ac
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@af
    move-result v8

    #@b0
    .line 225
    invoke-static {v8}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    #@b3
    move-result v8

    #@b4
    aput v8, p3, v7

    #@b6
    .line 228
    mul-int/lit8 v7, v1, 0x3

    #@b8
    add-int/lit8 v7, v7, 0x1

    #@ba
    mul-int/lit8 v8, v1, 0x4

    #@bc
    mul-int/lit8 v8, v8, 0x3

    #@be
    add-int/lit8 v8, v8, 0x4

    #@c0
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@c3
    move-result v8

    #@c4
    aput v8, p3, v7

    #@c6
    .line 230
    mul-int/lit8 v7, v1, 0x3

    #@c8
    add-int/lit8 v7, v7, 0x2

    #@ca
    mul-int/lit8 v8, v1, 0x4

    #@cc
    mul-int/lit8 v8, v8, 0x3

    #@ce
    add-int/lit8 v8, v8, 0x8

    #@d0
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@d3
    move-result v8

    #@d4
    aput v8, p3, v7

    #@d6
    .line 223
    add-int/lit8 v1, v1, 0x1

    #@d8
    goto :goto_1

    #@d9
    .line 238
    .end local v1    # "i":I
    .end local v5    # "resultConverter":Ljava/nio/ByteBuffer;
    :cond_3
    return v9

    #@da
    .line 239
    :cond_4
    const/4 v7, -0x4

    #@db
    if-ne v6, v7, :cond_5

    #@dd
    .line 242
    return v10

    #@de
    .line 245
    :cond_5
    invoke-virtual {p0, v6}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    #@e1
    .line 248
    const-string/jumbo v7, "Virtualizer"

    #@e4
    new-instance v8, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v9, "unexpected status code "

    #@ec
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v8

    #@f0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v8

    #@f4
    .line 249
    const-string/jumbo v9, " after getParameter(PARAM_VIRTUAL_SPEAKER_ANGLES)"

    #@f7
    .line 248
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v8

    #@fb
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v8

    #@ff
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    .line 250
    return v10
.end method

.method private static getDeviceForModeForce(I)I
    .locals 1
    .param p0, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 319
    const/4 v0, 0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 320
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 322
    :cond_0
    invoke-static {p0}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private static getDeviceForModeQuery(I)I
    .locals 3
    .param p0, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 306
    packed-switch p0, :pswitch_data_0

    #@3
    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Virtualizer: illegal virtualization mode "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    .line 312
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 308
    :pswitch_0
    const/4 v0, 0x4

    #@1e
    return v0

    #@1f
    .line 310
    :pswitch_1
    const/4 v0, 0x2

    #@20
    return v0

    #@21
    .line 306
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public canVirtualize(II)Z
    .locals 2
    .param p1, "inputChannelMask"    # I
    .param p2, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 376
    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v0, v1}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public forceVirtualizationMode(I)Z
    .locals 7
    .param p1, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 435
    invoke-static {p1}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeForce(I)I

    #@4
    move-result v0

    #@5
    .line 436
    .local v0, "deviceType":I
    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    #@8
    move-result v1

    #@9
    .line 438
    .local v1, "internalDevice":I
    const/4 v3, 0x3

    #@a
    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/Virtualizer;->setParameter(II)I

    #@d
    move-result v2

    #@e
    .line 440
    .local v2, "status":I
    if-ltz v2, :cond_0

    #@10
    .line 441
    const/4 v3, 0x1

    #@11
    return v3

    #@12
    .line 442
    :cond_0
    const/4 v3, -0x4

    #@13
    if-ne v2, v3, :cond_1

    #@15
    .line 445
    return v6

    #@16
    .line 448
    :cond_1
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    #@19
    .line 451
    const-string/jumbo v3, "Virtualizer"

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "unexpected status code "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 452
    const-string/jumbo v5, " after setParameter(PARAM_FORCE_VIRTUALIZATION_MODE)"

    #@2f
    .line 451
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 453
    return v6
.end method

.method public getProperties()Landroid/media/audiofx/Virtualizer$Settings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 609
    new-instance v0, Landroid/media/audiofx/Virtualizer$Settings;

    #@3
    invoke-direct {v0}, Landroid/media/audiofx/Virtualizer$Settings;-><init>()V

    #@6
    .line 610
    .local v0, "settings":Landroid/media/audiofx/Virtualizer$Settings;
    new-array v1, v2, [S

    #@8
    .line 611
    .local v1, "value":[S
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    #@b
    move-result v2

    #@c
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    #@f
    .line 612
    const/4 v2, 0x0

    #@10
    aget-short v2, v1, v2

    #@12
    iput-short v2, v0, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    #@14
    .line 613
    return-object v0
.end method

.method public getRoundedStrength()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 166
    new-array v0, v1, [S

    #@3
    .line 167
    .local v0, "value":[S
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    #@6
    move-result v1

    #@7
    invoke-virtual {p0, v1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    #@a
    .line 168
    const/4 v1, 0x0

    #@b
    aget-short v1, v0, v1

    #@d
    return v1
.end method

.method public getSpeakerAngles(II[I)Z
    .locals 2
    .param p1, "inputChannelMask"    # I
    .param p2, "virtualizationMode"    # I
    .param p3, "angles"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 412
    if-nez p3, :cond_0

    #@2
    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 414
    const-string/jumbo v1, "Virtualizer: illegal null channel / angle array"

    #@7
    .line 413
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 417
    :cond_0
    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    #@e
    move-result v0

    #@f
    invoke-direct {p0, p1, v0, p3}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public getStrengthSupported()Z
    .locals 1

    #@0
    .prologue
    .line 137
    iget-boolean v0, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    #@2
    return v0
.end method

.method public getVirtualizationMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 470
    const/4 v2, 0x1

    #@2
    new-array v1, v2, [I

    #@4
    .line 471
    .local v1, "value":[I
    const/4 v2, 0x4

    #@5
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    #@8
    move-result v0

    #@9
    .line 472
    .local v0, "status":I
    if-ltz v0, :cond_0

    #@b
    .line 473
    aget v2, v1, v5

    #@d
    invoke-static {v2}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    #@10
    move-result v2

    #@11
    invoke-static {v2}, Landroid/media/audiofx/Virtualizer;->deviceToMode(I)I

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 474
    :cond_0
    const/4 v2, -0x4

    #@17
    if-ne v0, v2, :cond_1

    #@19
    .line 475
    return v5

    #@1a
    .line 478
    :cond_1
    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    #@1d
    .line 481
    const-string/jumbo v2, "Virtualizer"

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "unexpected status code "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 482
    const-string/jumbo v4, " after getParameter(PARAM_VIRTUALIZATION_MODE)"

    #@33
    .line 481
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 483
    return v5
.end method

.method public setParameterListener(Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    #@0
    .prologue
    .line 541
    iget-object v1, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 542
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 543
    iput-object p1, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    #@9
    .line 544
    new-instance v0, Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/Virtualizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Virtualizer;Landroid/media/audiofx/Virtualizer$BaseParameterListener;)V

    #@f
    iput-object v0, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    #@11
    .line 545
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    #@13
    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit v1

    #@17
    .line 540
    return-void

    #@18
    .line 541
    :catchall_0
    move-exception v0

    #@19
    monitor-exit v1

    #@1a
    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/Virtualizer$Settings;)V
    .locals 2
    .param p1, "settings"    # Landroid/media/audiofx/Virtualizer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 626
    iget-short v0, p1, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    #@6
    move-result v0

    #@7
    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    #@a
    .line 625
    return-void
.end method

.method public setStrength(S)V
    .locals 1
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 153
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    #@8
    .line 152
    return-void
.end method
