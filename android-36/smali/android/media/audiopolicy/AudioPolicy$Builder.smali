.class public Landroid/media/audiopolicy/AudioPolicy$Builder;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

.field private greylist-max-o mIsFocusPolicy:Z

.field private blacklist mIsTestFocusPolicy:Z

.field private greylist-max-o mLooper:Landroid/os/Looper;

.field private greylist-max-o mMixes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProjection:Landroid/media/projection/MediaProjection;

.field private greylist-max-o mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

.field private greylist-max-o mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsFocusPolicy:Z

    .line 198
    iput-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsTestFocusPolicy:Z

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mMixes:Ljava/util/ArrayList;

    .line 208
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mContext:Landroid/content/Context;

    .line 209
    return-void
.end method


# virtual methods
.method public whitelist addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;
    .registers 4
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 219
    if-eqz p1, :cond_1b

    .line 222
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 223
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->-$$Nest$smgetAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/audiopolicy/AudioMix;->setVirtualDeviceId(I)V

    .line 225
    :cond_15
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    return-object p0

    .line 220
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioMix argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist build()Landroid/media/audiopolicy/AudioPolicy;
    .registers 14

    .line 336
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    if-eqz v0, :cond_1d

    .line 338
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMix;

    .line 339
    .local v1, "mix":Landroid/media/audiopolicy/AudioMix;
    iget v2, v1, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/media/audiopolicy/AudioMix;->mCallbackFlags:I

    .line 340
    .end local v1    # "mix":Landroid/media/audiopolicy/AudioMix;
    goto :goto_a

    .line 342
    :cond_1d
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsFocusPolicy:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-eqz v0, :cond_26

    goto :goto_2e

    .line 343
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be a focus policy without an AudioPolicyFocusListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_2e
    :goto_2e
    new-instance v2, Landroid/media/audiopolicy/AudioPolicy;

    new-instance v3, Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mMixes:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Ljava/util/ArrayList;)V

    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mLooper:Landroid/os/Looper;

    iget-object v6, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    iget-object v7, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    iget-boolean v8, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsFocusPolicy:Z

    iget-boolean v9, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsTestFocusPolicy:Z

    iget-object v10, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    iget-object v11, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mProjection:Landroid/media/projection/MediaProjection;

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/media/audiopolicy/AudioPolicy;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;Landroid/media/audiopolicy/AudioPolicy-IA;)V

    return-object v2
.end method

.method public whitelist setAudioPolicyFocusListener(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    .line 249
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    .line 250
    return-void
.end method

.method public whitelist setAudioPolicyStatusListener(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    .line 289
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    .line 290
    return-void
.end method

.method public whitelist setAudioPolicyVolumeCallback(Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;)Landroid/media/audiopolicy/AudioPolicy$Builder;
    .registers 4
    .param p1, "vc"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    .line 301
    if-eqz p1, :cond_5

    .line 304
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    .line 305
    return-object p0

    .line 302
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null volume callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setIsAudioFocusPolicy(Z)Landroid/media/audiopolicy/AudioPolicy$Builder;
    .registers 2
    .param p1, "isFocusPolicy"    # Z

    .line 263
    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsFocusPolicy:Z

    .line 264
    return-object p0
.end method

.method public blacklist setIsTestFocusPolicy(Z)Landroid/media/audiopolicy/AudioPolicy$Builder;
    .registers 2
    .param p1, "isTestFocusPolicy"    # Z

    .line 280
    iput-boolean p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mIsTestFocusPolicy:Z

    .line 281
    return-object p0
.end method

.method public whitelist setLooper(Landroid/os/Looper;)Landroid/media/audiopolicy/AudioPolicy$Builder;
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 237
    if-eqz p1, :cond_5

    .line 240
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mLooper:Landroid/os/Looper;

    .line 241
    return-object p0

    .line 238
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null Looper argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMediaProjection(Landroid/media/projection/MediaProjection;)Landroid/media/audiopolicy/AudioPolicy$Builder;
    .registers 4
    .param p1, "projection"    # Landroid/media/projection/MediaProjection;

    .line 318
    if-eqz p1, :cond_5

    .line 321
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$Builder;->mProjection:Landroid/media/projection/MediaProjection;

    .line 322
    return-object p0

    .line 319
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null media projection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
