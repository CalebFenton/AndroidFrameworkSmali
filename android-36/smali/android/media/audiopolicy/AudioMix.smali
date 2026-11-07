.class public Landroid/media/audiopolicy/AudioMix;
.super Ljava/lang/Object;
.source "AudioMix.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioMix$Builder;,
        Landroid/media/audiopolicy/AudioMix$RouteFlags;
    }
.end annotation


# static fields
.field private static final greylist-max-o CALLBACK_FLAGS_ALL:I = 0x1

.field public static final greylist-max-o CALLBACK_FLAG_NOTIFY_ACTIVITY:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MIX_STATE_DISABLED:I = -0x1

.field public static final whitelist MIX_STATE_IDLE:I = 0x0

.field public static final whitelist MIX_STATE_MIXING:I = 0x1

.field public static final greylist-max-o MIX_TYPE_INVALID:I = -0x1

.field public static final greylist-max-o MIX_TYPE_PLAYERS:I = 0x0

.field public static final greylist-max-o MIX_TYPE_RECORDERS:I = 0x1

.field private static final blacklist PRIVILEDGED_CAPTURE_MAX_BYTES_PER_SAMPLE:I = 0x2

.field private static final blacklist PRIVILEDGED_CAPTURE_MAX_CHANNEL_NUMBER:I = 0x1

.field private static final blacklist PRIVILEDGED_CAPTURE_MAX_SAMPLE_RATE:I = 0x3e80

.field public static final whitelist ROUTE_FLAG_LOOP_BACK:I = 0x2

.field public static final blacklist ROUTE_FLAG_LOOP_BACK_RENDER:I = 0x3

.field public static final whitelist ROUTE_FLAG_RENDER:I = 0x1

.field private static final greylist-max-o ROUTE_FLAG_SUPPORTED:I = 0x3


# instance fields
.field greylist-max-r mCallbackFlags:I

.field greylist-max-r mDeviceAddress:Ljava/lang/String;

.field final greylist-max-r mDeviceSystemType:I

.field private greylist-max-r mFormat:Landroid/media/AudioFormat;

.field greylist-max-o mMixState:I

.field private greylist-max-r mMixType:I

.field private greylist-max-r mRouteFlags:I

.field private greylist-max-r mRule:Landroid/media/audiopolicy/AudioMixingRule;

.field private final blacklist mToken:Landroid/os/IBinder;

.field private blacklist mVirtualDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 331
    new-instance v0, Landroid/media/audiopolicy/AudioMix$1;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMix$1;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/AudioMix;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/os/IBinder;I)V
    .registers 11
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "routeFlags"    # I
    .param p4, "callbackFlags"    # I
    .param p5, "deviceType"    # I
    .param p6, "deviceAddress"    # Ljava/lang/String;
    .param p7, "token"    # Landroid/os/IBinder;
    .param p8, "virtualDeviceId"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 61
    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioMixingRule;

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 85
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    .line 86
    iput p3, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    .line 87
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    iput v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 88
    iput p4, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    .line 89
    iput p5, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    .line 90
    if-nez p6, :cond_2e

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2e
    move-object v0, p6

    :goto_2f
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    .line 92
    iput p8, p0, Landroid/media/audiopolicy/AudioMix;->mVirtualDeviceId:I

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/os/IBinder;ILandroid/media/audiopolicy/AudioMix-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IIILjava/lang/String;Landroid/os/IBinder;I)V

    return-void
.end method

.method public static blacklist canBeUsedForPrivilegedMediaCapture(Landroid/media/AudioFormat;)Ljava/lang/String;
    .registers 8
    .param p0, "format"    # Landroid/media/AudioFormat;

    .line 254
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v0

    .line 255
    .local v0, "sampleRate":I
    const-string v1, " can not be over "

    const/16 v2, 0x3e80

    if-gt v0, v2, :cond_88

    if-gtz v0, :cond_e

    goto/16 :goto_88

    .line 259
    :cond_e
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    .line 260
    .local v2, "channelCount":I
    const/4 v3, 0x1

    if-gt v2, v3, :cond_6c

    if-gtz v2, :cond_18

    goto :goto_6c

    .line 264
    :cond_18
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    .line 265
    .local v3, "encoding":I
    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v4

    const-string v5, "Privileged audio capture encoding "

    if-eqz v4, :cond_54

    invoke-static {v3}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_54

    .line 268
    :cond_2b
    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v4

    const/4 v6, 0x2

    if-le v4, v6, :cond_52

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " bytes per sample"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 272
    :cond_52
    const/4 v1, 0x0

    return-object v1

    .line 266
    :cond_54
    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "is not linear"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 261
    .end local v3    # "encoding":I
    :cond_6c
    :goto_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Privileged audio capture channel count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 256
    .end local v2    # "channelCount":I
    :cond_88
    :goto_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Privileged audio capture sample rate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kHz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist containsMatchAttributeRuleForUsage(I)Z
    .registers 3
    .param p1, "usage"    # I

    .line 233
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMixingRule;->containsMatchAttributeRuleForUsage(I)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 288
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 289
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_63

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_63

    .line 291
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/audiopolicy/AudioMix;

    .line 292
    .local v2, "that":Landroid/media/audiopolicy/AudioMix;
    invoke-static {}, Landroid/media/audiopolicy/Flags;->audioMixOwnership()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 293
    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_25

    .line 294
    :cond_24
    move v3, v0

    :goto_25
    nop

    .line 295
    .local v3, "tokenMatch":Z
    iget v4, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    iget-object v4, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget-object v5, v2, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 296
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    iget v4, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    .line 297
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    iget-object v4, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    iget-object v5, v2, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    .line 298
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    if-eqz v3, :cond_61

    goto :goto_62

    :cond_61
    move v0, v1

    .line 295
    :goto_62
    return v0

    .line 289
    .end local v2    # "that":Landroid/media/audiopolicy/AudioMix;
    .end local v3    # "tokenMatch":Z
    :cond_63
    :goto_63
    return v1
.end method

.method public greylist-max-o getFormat()Landroid/media/AudioFormat;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public whitelist getMixState()I
    .registers 2

    .line 179
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixState:I

    return v0
.end method

.method public greylist-max-o getMixType()I
    .registers 2

    .line 200
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    return v0
.end method

.method public greylist-max-o getRegistration()Ljava/lang/String;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRouteFlags()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    return v0
.end method

.method public greylist-max-o getRule()Landroid/media/audiopolicy/AudioMixingRule;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 305
    invoke-static {}, Landroid/media/audiopolicy/Flags;->audioMixOwnership()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 306
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget v2, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    iget-object v4, p0, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 308
    :cond_21
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    iget v2, p0, Landroid/media/audiopolicy/AudioMix;->mMixType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isAffectingUsage(I)Z
    .registers 3
    .param p1, "usage"    # I

    .line 223
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMixingRule;->isAffectingUsage(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isForCallRedirection()Z
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->isForCallRedirection()Z

    move-result v0

    return v0
.end method

.method public blacklist isRoutedToDevice(ILjava/lang/String;)Z
    .registers 6
    .param p1, "deviceType"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 238
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 239
    return v2

    .line 241
    :cond_8
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    if-eq p1, v0, :cond_d

    .line 242
    return v2

    .line 244
    :cond_d
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 245
    return v2

    .line 247
    :cond_16
    return v1
.end method

.method public blacklist matchesVirtualDeviceId(I)Z
    .registers 3
    .param p1, "deviceId"    # I

    .line 282
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mVirtualDeviceId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist setAudioMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)V
    .registers 4
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;

    .line 209
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule;->getTargetMixType()I

    move-result v1

    if-ne v0, v1, :cond_15

    .line 213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/AudioMixingRule;

    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 214
    return-void

    .line 210
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Target mix role of updated rule doesn\'t match the mix role of the AudioMix"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o setRegistration(Ljava/lang/String;)V
    .registers 2
    .param p1, "regId"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public blacklist setVirtualDeviceId(I)V
    .registers 2
    .param p1, "virtualDeviceId"    # I

    .line 364
    iput p1, p0, Landroid/media/audiopolicy/AudioMix;->mVirtualDeviceId:I

    .line 365
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 319
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mRouteFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceSystemType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 326
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiopolicy/AudioMixingRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 327
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 328
    iget v0, p0, Landroid/media/audiopolicy/AudioMix;->mVirtualDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    return-void
.end method
