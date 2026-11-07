.class public Landroid/media/audiofx/Virtualizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Virtualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;,
        Landroid/media/audiofx/Virtualizer$BaseParameterListener;,
        Landroid/media/audiofx/Virtualizer$Settings;,
        Landroid/media/audiofx/Virtualizer$ForceVirtualizationMode;,
        Landroid/media/audiofx/Virtualizer$VirtualizationMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final greylist-max-o PARAM_FORCE_VIRTUALIZATION_MODE:I = 0x3

.field public static final whitelist PARAM_STRENGTH:I = 0x1

.field public static final whitelist PARAM_STRENGTH_SUPPORTED:I = 0x0

.field public static final greylist-max-o PARAM_VIRTUALIZATION_MODE:I = 0x4

.field public static final greylist-max-o PARAM_VIRTUAL_SPEAKER_ANGLES:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Virtualizer"

.field public static final whitelist VIRTUALIZATION_MODE_AUTO:I = 0x1

.field public static final whitelist VIRTUALIZATION_MODE_BINAURAL:I = 0x2

.field public static final whitelist VIRTUALIZATION_MODE_OFF:I = 0x0

.field public static final whitelist VIRTUALIZATION_MODE_TRANSAURAL:I = 0x3


# instance fields
.field private greylist-max-o mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

.field private greylist-max-o mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

.field private final greylist-max-o mParamListenerLock:Ljava/lang/Object;

.field private greylist-max-o mStrengthSupported:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParamListener(Landroid/media/audiofx/Virtualizer;)Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/Virtualizer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor whitelist <init>(II)V
    .registers 7
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

    .line 125
    sget-object v0, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/Virtualizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    .line 101
    iput-object v1, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    .line 106
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    .line 127
    if-nez p2, :cond_1f

    .line 128
    const-string v1, "Virtualizer"

    const-string v2, "WARNING: attaching a Virtualizer to global output mix is deprecated!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1f
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 132
    .local v2, "value":[I
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 133
    aget v3, v2, v0

    if-eqz v3, :cond_2e

    move v0, v1

    :cond_2e
    iput-boolean v0, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    .line 134
    return-void
.end method

.method private static greylist-max-o deviceToMode(I)I
    .registers 2
    .param p0, "deviceType"    # I

    .line 332
    packed-switch p0, :pswitch_data_a

    .line 353
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 350
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 338
    :pswitch_7
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method private greylist-max-o getAnglesInt(II[I)Z
    .registers 15
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

    .line 191
    if-eqz p1, :cond_ee

    .line 195
    const/16 v0, 0xc

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    .line 196
    move v2, v0

    goto :goto_a

    :cond_9
    move v2, p1

    .line 197
    .local v2, "channelMask":I
    :goto_a
    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v3

    .line 198
    .local v3, "nbChannels":I
    const-string v4, "Virtualizer"

    if-eqz p3, :cond_5a

    array-length v5, p3

    mul-int/lit8 v6, v3, 0x3

    if-lt v5, v6, :cond_18

    goto :goto_5a

    .line 199
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size of array for angles cannot accomodate number of channels in mask ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Virtualizer: array for channel / angle pairs is too small: is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", should be "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v4, v3, 0x3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_5a
    :goto_5a
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    .local v0, "paramsConverter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 208
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 210
    invoke-static {v2}, Landroid/media/AudioFormat;->convertChannelOutMaskToNativeMask(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 212
    invoke-static {p2}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 214
    mul-int/lit8 v6, v3, 0x4

    mul-int/lit8 v6, v6, 0x3

    new-array v6, v6, [B

    .line 217
    .local v6, "result":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Landroid/media/audiofx/Virtualizer;->getParameter([B[B)I

    move-result v7

    .line 223
    .local v7, "status":I
    if-ltz v7, :cond_c9

    .line 224
    if-eqz p3, :cond_c8

    .line 226
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 227
    .local v4, "resultConverter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 228
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_95
    if-ge v8, v3, :cond_c8

    .line 230
    mul-int/lit8 v9, v8, 0x3

    mul-int/lit8 v10, v8, 0x4

    mul-int/lit8 v10, v10, 0x3

    .line 231
    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    .line 230
    invoke-static {v10}, Landroid/media/AudioFormat;->convertNativeChannelMaskToOutMask(I)I

    move-result v10

    aput v10, p3, v9

    .line 233
    mul-int/lit8 v9, v8, 0x3

    add-int/2addr v9, v1

    mul-int/lit8 v10, v8, 0x4

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    aput v10, p3, v9

    .line 235
    mul-int/lit8 v9, v8, 0x3

    add-int/2addr v9, v5

    mul-int/lit8 v10, v8, 0x4

    mul-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, 0x8

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v10

    aput v10, p3, v9

    .line 228
    add-int/lit8 v8, v8, 0x1

    goto :goto_95

    .line 243
    .end local v4    # "resultConverter":Ljava/nio/ByteBuffer;
    .end local v8    # "i":I
    :cond_c8
    return v1

    .line 244
    :cond_c9
    const/4 v1, -0x4

    const/4 v5, 0x0

    if-ne v7, v1, :cond_ce

    .line 247
    return v5

    .line 250
    :cond_ce
    invoke-virtual {p0, v7}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected status code "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " after getParameter(PARAM_VIRTUAL_SPEAKER_ANGLES)"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return v5

    .line 192
    .end local v0    # "paramsConverter":Ljava/nio/ByteBuffer;
    .end local v2    # "channelMask":I
    .end local v3    # "nbChannels":I
    .end local v6    # "result":[B
    .end local v7    # "status":I
    :cond_ee
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtualizer: illegal CHANNEL_INVALID channel mask"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getDeviceForModeForce(I)I
    .registers 2
    .param p0, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 325
    const/4 v0, 0x0

    return v0

    .line 327
    :cond_5
    invoke-static {p0}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result v0

    return v0
.end method

.method private static greylist-max-o getDeviceForModeQuery(I)I
    .registers 4
    .param p0, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 311
    packed-switch p0, :pswitch_data_20

    .line 317
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtualizer: illegal virtualization mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_1c
    const/4 v0, 0x2

    return v0

    .line 313
    :pswitch_1e
    const/4 v0, 0x4

    return v0

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public whitelist canVirtualize(II)Z
    .registers 5
    .param p1, "inputChannelMask"    # I
    .param p2, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 382
    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    move-result v0

    return v0
.end method

.method public whitelist forceVirtualizationMode(I)Z
    .registers 8
    .param p1, "virtualizationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 441
    invoke-static {p1}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeForce(I)I

    move-result v0

    .line 442
    .local v0, "deviceType":I
    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v1

    .line 444
    .local v1, "internalDevice":I
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Virtualizer;->setParameter(II)I

    move-result v2

    .line 446
    .local v2, "status":I
    if-ltz v2, :cond_11

    .line 447
    const/4 v3, 0x1

    return v3

    .line 448
    :cond_11
    const/4 v3, -0x4

    const/4 v4, 0x0

    if-ne v2, v3, :cond_16

    .line 451
    return v4

    .line 454
    :cond_16
    invoke-virtual {p0, v2}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected status code "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " after setParameter(PARAM_FORCE_VIRTUALIZATION_MODE)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Virtualizer"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v4
.end method

.method public whitelist getProperties()Landroid/media/audiofx/Virtualizer$Settings;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 615
    new-instance v0, Landroid/media/audiofx/Virtualizer$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/Virtualizer$Settings;-><init>()V

    .line 616
    .local v0, "settings":Landroid/media/audiofx/Virtualizer$Settings;
    const/4 v1, 0x1

    new-array v2, v1, [S

    .line 617
    .local v2, "value":[S
    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 618
    const/4 v1, 0x0

    aget-short v1, v2, v1

    iput-short v1, v0, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    .line 619
    return-object v0
.end method

.method public whitelist getRoundedStrength()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 171
    const/4 v0, 0x1

    new-array v1, v0, [S

    .line 172
    .local v1, "value":[S
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Virtualizer;->getParameter(I[S)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 173
    const/4 v0, 0x0

    aget-short v0, v1, v0

    return v0
.end method

.method public whitelist getSpeakerAngles(II[I)Z
    .registers 6
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

    .line 418
    if-eqz p3, :cond_b

    .line 423
    invoke-static {p2}, Landroid/media/audiofx/Virtualizer;->getDeviceForModeQuery(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Landroid/media/audiofx/Virtualizer;->getAnglesInt(II[I)Z

    move-result v0

    return v0

    .line 419
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Virtualizer: illegal null channel / angle array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getStrengthSupported()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Landroid/media/audiofx/Virtualizer;->mStrengthSupported:Z

    return v0
.end method

.method public whitelist getVirtualizationMode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 476
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 477
    .local v0, "value":[I
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Virtualizer;->getParameter(I[I)I

    move-result v1

    .line 478
    .local v1, "status":I
    const/4 v2, 0x0

    if-ltz v1, :cond_16

    .line 479
    aget v2, v0, v2

    invoke-static {v2}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v2

    invoke-static {v2}, Landroid/media/audiofx/Virtualizer;->deviceToMode(I)I

    move-result v2

    return v2

    .line 480
    :cond_16
    const/4 v3, -0x4

    if-ne v1, v3, :cond_1a

    .line 481
    return v2

    .line 484
    :cond_1a
    invoke-virtual {p0, v1}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected status code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after getParameter(PARAM_VIRTUALIZATION_MODE)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Virtualizer"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    return v2
.end method

.method public whitelist setParameterListener(Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    .line 547
    iget-object v0, p0, Landroid/media/audiofx/Virtualizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_3
    iget-object v1, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    if-nez v1, :cond_16

    .line 549
    iput-object p1, p0, Landroid/media/audiofx/Virtualizer;->mParamListener:Landroid/media/audiofx/Virtualizer$OnParameterChangeListener;

    .line 550
    new-instance v1, Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/Virtualizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Virtualizer;Landroid/media/audiofx/Virtualizer-IA;)V

    iput-object v1, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    .line 551
    iget-object v1, p0, Landroid/media/audiofx/Virtualizer;->mBaseParamListener:Landroid/media/audiofx/Virtualizer$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 553
    :cond_16
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist setProperties(Landroid/media/audiofx/Virtualizer$Settings;)V
    .registers 4
    .param p1, "settings"    # Landroid/media/audiofx/Virtualizer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 632
    const/4 v0, 0x1

    iget-short v1, p1, Landroid/media/audiofx/Virtualizer$Settings;->strength:S

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 633
    return-void
.end method

.method public whitelist setStrength(S)V
    .registers 3
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Virtualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Virtualizer;->checkStatus(I)V

    .line 159
    return-void
.end method
