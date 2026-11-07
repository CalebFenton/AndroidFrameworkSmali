.class public final Landroid/companion/virtual/audio/VirtualAudioSession;
.super Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;
.source "VirtualAudioSession.java"

# interfaces
.implements Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VirtualAudioSession"


# instance fields
.field private blacklist mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

.field private final blacklist mAudioConfigChangedCallback:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

.field private blacklist mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

.field private blacklist mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mReroutedAppUids:Landroid/util/IntArray;

.field private final blacklist mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 107
    invoke-direct {p0}, Landroid/companion/virtual/audio/IAudioRoutingCallback$Stub;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    .line 108
    iput-object p1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Landroid/companion/virtual/audio/UserRestrictionsDetector;

    invoke-direct {v0, p1}, Landroid/companion/virtual/audio/UserRestrictionsDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;

    .line 110
    if-nez p2, :cond_1e

    const/4 v0, 0x0

    goto :goto_23

    :cond_1e
    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    invoke-direct {v0, p1, p3, p2}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)V

    :goto_23
    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioConfigChangedCallback:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    .line 112
    return-void
.end method

.method private static blacklist createAudioRecordMix(Landroid/media/AudioFormat;[I)Landroid/media/audiopolicy/AudioMix;
    .registers 9
    .param p0, "audioFormat"    # Landroid/media/AudioFormat;
    .param p1, "appUids"    # [I

    .line 311
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    .line 312
    .local v0, "builder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 313
    array-length v2, p1

    move v3, v1

    :goto_b
    if-ge v3, v2, :cond_1a

    aget v4, p1, v3

    .line 314
    .local v4, "uid":I
    const/4 v5, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 313
    .end local v4    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 316
    :cond_1a
    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->allowPrivilegedPlaybackCapture(Z)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v1

    .line 317
    .local v1, "audioMixingRule":Landroid/media/audiopolicy/AudioMixingRule;
    new-instance v2, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v2, v1}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 319
    invoke-virtual {v2, p0}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    .line 320
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v2

    .line 322
    .local v2, "audioMix":Landroid/media/audiopolicy/AudioMix;
    return-object v2
.end method

.method private blacklist createAudioStreams([I)V
    .registers 10
    .param p1, "appUids"    # [I

    .line 232
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    if-nez v1, :cond_14

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v1, :cond_c

    goto :goto_14

    .line 234
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "At least one of AudioCapture and AudioInjection must be started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/companion/virtual/audio/VirtualAudioSession;
    .end local p1    # "appUids":[I
    throw v1

    .line 237
    .restart local p0    # "this":Landroid/companion/virtual/audio/VirtualAudioSession;
    .restart local p1    # "appUids":[I
    :cond_14
    :goto_14
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-nez v1, :cond_a3

    .line 245
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 246
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_2b

    aget v3, p1, v2

    .line 247
    .local v3, "appUid":I
    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->add(I)V

    .line 246
    .end local v3    # "appUid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 250
    :cond_2b
    const/4 v1, 0x0

    .line 251
    .local v1, "audioRecordMix":Landroid/media/audiopolicy/AudioMix;
    const/4 v2, 0x0

    .line 252
    .local v2, "audioTrackMix":Landroid/media/audiopolicy/AudioMix;
    new-instance v3, Landroid/media/audiopolicy/AudioPolicy$Builder;

    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/audiopolicy/AudioPolicy$Builder;-><init>(Landroid/content/Context;)V

    .line 253
    .local v3, "builder":Landroid/media/audiopolicy/AudioPolicy$Builder;
    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    if-eqz v4, :cond_46

    .line 254
    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v4}, Landroid/companion/virtual/audio/AudioCapture;->getFormat()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->createAudioRecordMix(Landroid/media/AudioFormat;[I)Landroid/media/audiopolicy/AudioMix;

    move-result-object v4

    move-object v1, v4

    .line 255
    invoke-virtual {v3, v1}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 257
    :cond_46
    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v4, :cond_58

    .line 258
    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v4}, Landroid/companion/virtual/audio/AudioInjection;->getFormat()Landroid/media/AudioFormat;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->createAudioTrackMix(Landroid/media/AudioFormat;[I)Landroid/media/audiopolicy/AudioMix;

    move-result-object v4

    move-object v2, v4

    .line 259
    invoke-virtual {v3, v2}, Landroid/media/audiopolicy/AudioPolicy$Builder;->addMix(Landroid/media/audiopolicy/AudioMix;)Landroid/media/audiopolicy/AudioPolicy$Builder;

    .line 261
    :cond_58
    invoke-virtual {v3}, Landroid/media/audiopolicy/AudioPolicy$Builder;->build()Landroid/media/audiopolicy/AudioPolicy;

    move-result-object v4

    iput-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 262
    iget-object v4, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mContext:Landroid/content/Context;

    const-class v5, Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 263
    .local v4, "audioManager":Landroid/media/AudioManager;
    iget-object v5, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_78

    .line 264
    const-string v5, "VirtualAudioSession"

    const-string v6, "Failed to register audio policy!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_78
    const/4 v5, 0x0

    if-eqz v1, :cond_82

    iget-object v6, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v6, v1}, Landroid/media/audiopolicy/AudioPolicy;->createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;

    move-result-object v6

    goto :goto_83

    .line 269
    :cond_82
    move-object v6, v5

    :goto_83
    nop

    .line 271
    .local v6, "audioRecord":Landroid/media/AudioRecord;
    if-eqz v2, :cond_8d

    iget-object v5, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v5, v2}, Landroid/media/audiopolicy/AudioPolicy;->createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;

    move-result-object v5

    goto :goto_8e

    .line 272
    :cond_8d
    nop

    :goto_8e
    nop

    .line 274
    .local v5, "audioTrack":Landroid/media/AudioTrack;
    iget-object v7, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    if-eqz v7, :cond_98

    .line 275
    iget-object v7, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v7, v6}, Landroid/companion/virtual/audio/AudioCapture;->setAudioRecord(Landroid/media/AudioRecord;)V

    .line 277
    :cond_98
    iget-object v7, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v7, :cond_a1

    .line 278
    iget-object v7, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v7, v5}, Landroid/companion/virtual/audio/AudioInjection;->setAudioTrack(Landroid/media/AudioTrack;)V

    .line 280
    .end local v1    # "audioRecordMix":Landroid/media/audiopolicy/AudioMix;
    .end local v2    # "audioTrackMix":Landroid/media/audiopolicy/AudioMix;
    .end local v3    # "builder":Landroid/media/audiopolicy/AudioPolicy$Builder;
    .end local v4    # "audioManager":Landroid/media/AudioManager;
    .end local v5    # "audioTrack":Landroid/media/AudioTrack;
    .end local v6    # "audioRecord":Landroid/media/AudioRecord;
    :cond_a1
    monitor-exit v0

    .line 281
    return-void

    .line 238
    :cond_a3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot create audio streams while the audio policy is registered. Call releaseAudioStreams() first to unregister the previous audio policy."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/companion/virtual/audio/VirtualAudioSession;
    .end local p1    # "appUids":[I
    throw v1

    .line 280
    .restart local p0    # "this":Landroid/companion/virtual/audio/VirtualAudioSession;
    .restart local p1    # "appUids":[I
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_3 .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method private static blacklist createAudioTrackMix(Landroid/media/AudioFormat;[I)Landroid/media/audiopolicy/AudioMix;
    .registers 8
    .param p0, "audioFormat"    # Landroid/media/AudioFormat;
    .param p1, "appUids"    # [I

    .line 326
    new-instance v0, Landroid/media/audiopolicy/AudioMixingRule$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;-><init>()V

    .line 327
    .local v0, "builder":Landroid/media/audiopolicy/AudioMixingRule$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->setTargetMixRole(I)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 328
    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1a

    aget v3, p1, v2

    .line 329
    .local v3, "uid":I
    const/4 v4, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->addMixRule(ILjava/lang/Object;)Landroid/media/audiopolicy/AudioMixingRule$Builder;

    .line 328
    .end local v3    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 331
    :cond_1a
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule$Builder;->build()Landroid/media/audiopolicy/AudioMixingRule;

    move-result-object v1

    .line 332
    .local v1, "audioMixingRule":Landroid/media/audiopolicy/AudioMixingRule;
    new-instance v2, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v2, v1}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 334
    invoke-virtual {v2, p0}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    .line 335
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v2

    .line 337
    .local v2, "audioMix":Landroid/media/audiopolicy/AudioMix;
    return-object v2
.end method

.method private blacklist releaseAudioStreams()V
    .registers 5

    .line 285
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 287
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v1, v2}, Landroid/companion/virtual/audio/AudioCapture;->setAudioRecord(Landroid/media/AudioRecord;)V

    .line 289
    :cond_d
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v1, :cond_16

    .line 290
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v1, v2}, Landroid/companion/virtual/audio/AudioInjection;->setAudioTrack(Landroid/media/AudioTrack;)V

    .line 292
    :cond_16
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    .line 293
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    if-eqz v1, :cond_37

    .line 294
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mContext:Landroid/content/Context;

    const-class v3, Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 295
    .local v1, "audioManager":Landroid/media/AudioManager;
    iget-object v3, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->unregisterAudioPolicy(Landroid/media/audiopolicy/AudioPolicy;)V

    .line 296
    iput-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioPolicy:Landroid/media/audiopolicy/AudioPolicy;

    .line 297
    const-string v2, "VirtualAudioSession"

    const-string v3, "AudioPolicy unregistered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_37
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 207
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;

    invoke-virtual {v0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->unregister()V

    .line 208
    invoke-direct {p0}, Landroid/companion/virtual/audio/VirtualAudioSession;->releaseAudioStreams()V

    .line 209
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_b
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 211
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v1}, Landroid/companion/virtual/audio/AudioCapture;->close()V

    .line 212
    iput-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    .line 214
    :cond_17
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v1, :cond_22

    .line 215
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v1}, Landroid/companion/virtual/audio/AudioInjection;->close()V

    .line 216
    iput-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    .line 218
    :cond_22
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist getAudioCapture()Landroid/companion/virtual/audio/AudioCapture;
    .registers 3

    .line 172
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    monitor-exit v0

    return-object v1

    .line 174
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getAudioConfigChangedListener()Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioConfigChangedCallback:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    return-object v0
.end method

.method public blacklist getAudioInjection()Landroid/companion/virtual/audio/AudioInjection;
    .registers 3

    .line 181
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    monitor-exit v0

    return-object v1

    .line 183
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getReroutedAppUids()Landroid/util/IntArray;
    .registers 3

    .line 305
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    monitor-exit v0

    return-object v1

    .line 307
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist onAppsNeedingAudioRoutingChanged([I)V
    .registers 4
    .param p1, "appUids"    # [I

    .line 189
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mReroutedAppUids:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1d

    .line 195
    invoke-direct {p0}, Landroid/companion/virtual/audio/VirtualAudioSession;->releaseAudioStreams()V

    .line 197
    array-length v0, p1

    if-nez v0, :cond_19

    .line 198
    return-void

    .line 201
    :cond_19
    invoke-direct {p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession;->createAudioStreams([I)V

    .line 202
    return-void

    .line 193
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist onMicrophoneRestrictionChanged(Z)V
    .registers 4
    .param p1, "isUnmuteMicDisallowed"    # Z

    .line 223
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-eqz v1, :cond_c

    .line 225
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v1, p1}, Landroid/companion/virtual/audio/AudioInjection;->setSilent(Z)V

    .line 227
    :cond_c
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist startAudioCapture(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioCapture;
    .registers 5
    .param p1, "captureFormat"    # Landroid/media/AudioFormat;

    .line 122
    const-string v0, "captureFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_8
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    if-nez v1, :cond_1c

    .line 130
    new-instance v1, Landroid/companion/virtual/audio/AudioCapture;

    invoke-direct {v1, p1}, Landroid/companion/virtual/audio/AudioCapture;-><init>(Landroid/media/AudioFormat;)V

    iput-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    .line 131
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    invoke-virtual {v1}, Landroid/companion/virtual/audio/AudioCapture;->startRecording()V

    .line 132
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioCapture:Landroid/companion/virtual/audio/AudioCapture;

    monitor-exit v0

    return-object v1

    .line 126
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot start capture while another capture is ongoing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/companion/virtual/audio/VirtualAudioSession;
    .end local p1    # "captureFormat":Landroid/media/AudioFormat;
    throw v1

    .line 133
    .restart local p0    # "this":Landroid/companion/virtual/audio/VirtualAudioSession;
    .restart local p1    # "captureFormat":Landroid/media/AudioFormat;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public blacklist startAudioInjection(Landroid/media/AudioFormat;)Landroid/companion/virtual/audio/AudioInjection;
    .registers 5
    .param p1, "injectionFormat"    # Landroid/media/AudioFormat;

    .line 144
    const-string/jumbo v0, "injectionFormat must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_9
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    if-nez v1, :cond_2d

    .line 152
    new-instance v1, Landroid/companion/virtual/audio/AudioInjection;

    invoke-direct {v1, p1}, Landroid/companion/virtual/audio/AudioInjection;-><init>(Landroid/media/AudioFormat;)V

    iput-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    .line 153
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    invoke-virtual {v1}, Landroid/companion/virtual/audio/AudioInjection;->play()V

    .line 155
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;

    invoke-virtual {v1, p0}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->register(Landroid/companion/virtual/audio/UserRestrictionsDetector$UserRestrictionsCallback;)V

    .line 156
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    iget-object v2, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mUserRestrictionsDetector:Landroid/companion/virtual/audio/UserRestrictionsDetector;

    invoke-virtual {v2}, Landroid/companion/virtual/audio/UserRestrictionsDetector;->isUnmuteMicrophoneDisallowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/companion/virtual/audio/AudioInjection;->setSilent(Z)V

    .line 157
    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession;->mAudioInjection:Landroid/companion/virtual/audio/AudioInjection;

    monitor-exit v0

    return-object v1

    .line 148
    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot start injection while injection is already ongoing."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/companion/virtual/audio/VirtualAudioSession;
    .end local p1    # "injectionFormat":Landroid/media/AudioFormat;
    throw v1

    .line 158
    .restart local p0    # "this":Landroid/companion/virtual/audio/VirtualAudioSession;
    .restart local p1    # "injectionFormat":Landroid/media/AudioFormat;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_9 .. :try_end_37} :catchall_35

    throw v1
.end method
