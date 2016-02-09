.class public Landroid/media/audiopolicy/AudioPolicy;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioPolicy$Builder;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;,
        Landroid/media/audiopolicy/AudioPolicy$EventHandler;,
        Landroid/media/audiopolicy/AudioPolicy$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FOCUS_POLICY_DUCKING_DEFAULT:I = 0x0

.field public static final FOCUS_POLICY_DUCKING_IN_APP:I = 0x0

.field public static final FOCUS_POLICY_DUCKING_IN_POLICY:I = 0x1

.field private static final MSG_FOCUS_GRANT:I = 0x1

.field private static final MSG_FOCUS_LOSS:I = 0x2

.field private static final MSG_MIX_STATE_UPDATE:I = 0x3

.field private static final MSG_POLICY_STATUS_CHANGE:I = 0x0

.field public static final POLICY_STATUS_REGISTERED:I = 0x2

.field public static final POLICY_STATUS_UNREGISTERED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioPolicy"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

.field private mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

.field private mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

.field private final mLock:Ljava/lang/Object;

.field private final mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private mRegistrationId:Ljava/lang/String;

.field private mStatus:I

.field private mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;


# direct methods
.method static synthetic -get0(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicyConfig;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->onPolicyStatusChange()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V
    .locals 0
    .param p1, "msg"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "i"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(ILjava/lang/Object;I)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;)V
    .locals 2
    .param p1, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "fl"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    .param p5, "sl"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 55
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    #@b
    .line 424
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$1;

    #@d
    invoke-direct {v0, p0}, Landroid/media/audiopolicy/AudioPolicy$1;-><init>(Landroid/media/audiopolicy/AudioPolicy;)V

    #@10
    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@12
    .line 105
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    #@14
    .line 106
    const/4 v0, 0x1

    #@15
    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    #@17
    .line 107
    iput-object p2, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    #@19
    .line 108
    if-nez p3, :cond_0

    #@1b
    .line 109
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@1e
    move-result-object p3

    #@1f
    .line 111
    :cond_0
    if-eqz p3, :cond_1

    #@21
    .line 112
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    #@23
    invoke-direct {v0, p0, p0, p3}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;-><init>(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/audiopolicy/AudioPolicy;Landroid/os/Looper;)V

    #@26
    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    #@28
    .line 117
    :goto_0
    iput-object p4, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    #@2a
    .line 118
    iput-object p5, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    #@2c
    .line 104
    return-void

    #@2d
    .line 114
    :cond_1
    iput-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    #@2f
    .line 115
    const-string/jumbo v0, "AudioPolicy"

    #@32
    const-string/jumbo v1, "No event handler due to looper without a thread"

    #@35
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0
    .param p1, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "fl"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    .param p5, "sl"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/media/audiopolicy/AudioPolicy;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;)V

    #@3
    return-void
.end method

.method private static addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;
    .locals 2
    .param p0, "mix"    # Landroid/media/audiopolicy/AudioMix;

    #@0
    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "addr="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V
    .locals 3
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .param p2, "forTrack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 242
    if-nez p1, :cond_1

    #@2
    .line 243
    if-eqz p2, :cond_0

    #@4
    const-string/jumbo v0, "Invalid null AudioMix for AudioTrack creation"

    #@7
    .line 245
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 244
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "Invalid null AudioMix for AudioRecord creation"

    #@10
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    #@11
    .line 247
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    #@13
    iget-object v1, v1, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 248
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v2, "Invalid mix: not part of this policy"

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 250
    :cond_2
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    #@27
    move-result v1

    #@28
    and-int/lit8 v1, v1, 0x2

    #@2a
    const/4 v2, 0x2

    #@2b
    if-eq v1, v2, :cond_3

    #@2d
    .line 252
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string/jumbo v2, "Invalid AudioMix: not defined for loop back"

    #@32
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 254
    :cond_3
    if-eqz p2, :cond_4

    #@38
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    #@3b
    move-result v1

    #@3c
    const/4 v2, 0x1

    #@3d
    if-eq v1, v2, :cond_4

    #@3f
    .line 255
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@41
    .line 256
    const-string/jumbo v2, "Invalid AudioMix: not defined for being a recording source"

    #@44
    .line 255
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 258
    :cond_4
    if-nez p2, :cond_5

    #@4a
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_5

    #@50
    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@52
    .line 260
    const-string/jumbo v2, "Invalid AudioMix: not defined for capturing playback"

    #@55
    .line 259
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@58
    throw v1

    #@59
    .line 241
    :cond_5
    return-void
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    #@0
    .prologue
    .line 520
    sget-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 521
    sget-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    #@6
    return-object v1

    #@7
    .line 523
    :cond_0
    const-string/jumbo v1, "audio"

    #@a
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@d
    move-result-object v0

    #@e
    .line 524
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    #@14
    .line 525
    sget-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    #@16
    return-object v1
.end method

.method private onPolicyStatusChange()V
    .locals 3

    #@0
    .prologue
    .line 409
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    monitor-exit v2

    #@8
    .line 411
    return-void

    #@9
    .line 413
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    .local v0, "l":Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    monitor-exit v2

    #@c
    .line 415
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;->onStatusChange()V

    #@f
    .line 407
    return-void

    #@10
    .line 409
    .end local v0    # "l":Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method private policyReadyToUse()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 217
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 218
    :try_start_0
    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    #@6
    const/4 v2, 0x2

    #@7
    if-eq v0, v2, :cond_0

    #@9
    .line 219
    const-string/jumbo v0, "AudioPolicy"

    #@c
    const-string/jumbo v2, "Cannot use unregistered AudioPolicy"

    #@f
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v1

    #@13
    .line 220
    return v3

    #@14
    .line 222
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    #@16
    if-nez v0, :cond_1

    #@18
    .line 223
    const-string/jumbo v0, "AudioPolicy"

    #@1b
    const-string/jumbo v2, "Cannot use AudioPolicy without context"

    #@1e
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v1

    #@22
    .line 224
    return v3

    #@23
    .line 226
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    #@25
    if-nez v0, :cond_2

    #@27
    .line 227
    const-string/jumbo v0, "AudioPolicy"

    #@2a
    const-string/jumbo v2, "Cannot use unregistered AudioPolicy"

    #@2d
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@30
    monitor-exit v1

    #@31
    .line 228
    return v3

    #@32
    :cond_2
    monitor-exit v1

    #@33
    .line 231
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    #@35
    .line 232
    const-string/jumbo v1, "android.permission.MODIFY_AUDIO_ROUTING"

    #@38
    .line 231
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_3

    #@3e
    .line 233
    const-string/jumbo v0, "AudioPolicy"

    #@41
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v2, "Cannot use AudioPolicy for pid "

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@50
    move-result v2

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    const-string/jumbo v2, " / uid "

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@5f
    move-result v2

    #@60
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 234
    const-string/jumbo v2, ", needs MODIFY_AUDIO_ROUTING"

    #@67
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@72
    .line 235
    return v3

    #@73
    .line 217
    :catchall_0
    move-exception v0

    #@74
    monitor-exit v1

    #@75
    throw v0

    #@76
    .line 237
    :cond_3
    const/4 v0, 0x1

    #@77
    return v0
.end method

.method private sendMsg(I)V
    .locals 1
    .param p1, "msg"    # I

    #@0
    .prologue
    .line 504
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 505
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    #@6
    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendEmptyMessage(I)Z

    #@9
    .line 503
    :cond_0
    return-void
.end method

.method private sendMsg(ILjava/lang/Object;I)V
    .locals 3
    .param p1, "msg"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "i"    # I

    #@0
    .prologue
    .line 510
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 511
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    #@6
    .line 512
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v1, p1, p3, v2, p2}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    .line 511
    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 509
    :cond_0
    return-void
.end method


# virtual methods
.method public cb()Landroid/media/audiopolicy/IAudioPolicyCallback;
    .locals 1

    #@0
    .prologue
    .line 422
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@2
    return-object v0
.end method

.method public createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;
    .locals 7
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 331
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 332
    const-string/jumbo v2, "AudioPolicy"

    #@a
    const-string/jumbo v3, "Cannot create AudioRecord sink for AudioMix"

    #@d
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 333
    const/4 v2, 0x0

    #@11
    return-object v2

    #@12
    .line 335
    :cond_0
    invoke-direct {p0, p1, v6}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    #@15
    .line 338
    new-instance v2, Landroid/media/AudioFormat$Builder;

    #@17
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@1a
    move-result-object v3

    #@1b
    invoke-direct {v2, v3}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    #@1e
    .line 340
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getChannelMask()I

    #@25
    move-result v3

    #@26
    .line 339
    invoke-static {v3}, Landroid/media/AudioFormat;->inChannelMaskFromOutChannelMask(I)I

    #@29
    move-result v3

    #@2a
    .line 338
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@31
    move-result-object v1

    #@32
    .line 343
    .local v1, "mixFormat":Landroid/media/AudioFormat;
    new-instance v0, Landroid/media/AudioRecord;

    #@34
    .line 344
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    #@36
    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@39
    .line 345
    const/16 v3, 0x8

    #@3b
    .line 344
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    #@3e
    move-result-object v2

    #@3f
    .line 346
    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 344
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@4a
    move-result-object v2

    #@4b
    .line 349
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    #@52
    move-result v3

    #@53
    .line 351
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Landroid/media/AudioFormat;->getEncoding()I

    #@5a
    move-result v4

    #@5b
    const/16 v5, 0xc

    #@5d
    .line 349
    invoke-static {v3, v5, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    #@60
    move-result v3

    #@61
    .line 343
    invoke-direct {v0, v2, v1, v3, v6}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    #@64
    .line 354
    .local v0, "ar":Landroid/media/AudioRecord;
    return-object v0
.end method

.method public createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;
    .locals 7
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 370
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 371
    const-string/jumbo v1, "AudioPolicy"

    #@a
    const-string/jumbo v2, "Cannot create AudioTrack source for AudioMix"

    #@d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    .line 372
    const/4 v1, 0x0

    #@11
    return-object v1

    #@12
    .line 374
    :cond_0
    invoke-direct {p0, p1, v4}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    #@15
    .line 376
    new-instance v0, Landroid/media/AudioTrack;

    #@17
    .line 377
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    #@19
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@1c
    .line 378
    const/16 v2, 0xf

    #@1e
    .line 377
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@21
    move-result-object v1

    #@22
    .line 379
    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    .line 377
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@2d
    move-result-object v1

    #@2e
    .line 381
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@31
    move-result-object v2

    #@32
    .line 382
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Landroid/media/AudioFormat;->getSampleRate()I

    #@39
    move-result v3

    #@3a
    .line 383
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5}, Landroid/media/AudioFormat;->getChannelMask()I

    #@41
    move-result v5

    #@42
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6}, Landroid/media/AudioFormat;->getEncoding()I

    #@49
    move-result v6

    #@4a
    .line 382
    invoke-static {v3, v5, v6}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    #@4d
    move-result v3

    #@4e
    .line 385
    const/4 v5, 0x0

    #@4f
    .line 376
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    #@52
    .line 387
    .local v0, "at":Landroid/media/AudioTrack;
    return-object v0
.end method

.method public getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    #@2
    return-object v0
.end method

.method public getFocusDuckingBehavior()I
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    #@2
    iget v0, v0, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I

    #@4
    return v0
.end method

.method public getStatus()I
    .locals 1

    #@0
    .prologue
    .line 392
    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    #@2
    return v0
.end method

.method public hasFocusListener()Z
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public setFocusDuckingBehavior(I)I
    .locals 7
    .param p1, "behavior"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 288
    if-eqz p1, :cond_0

    #@3
    .line 289
    if-eq p1, v6, :cond_0

    #@5
    .line 290
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v4, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v5, "Invalid ducking behavior "

    #@f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 292
    :cond_0
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    #@21
    monitor-enter v4

    #@22
    .line 293
    :try_start_0
    iget v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    #@24
    const/4 v5, 0x2

    #@25
    if-eq v3, v5, :cond_1

    #@27
    .line 294
    new-instance v3, Ljava/lang/IllegalStateException;

    #@29
    .line 295
    const-string/jumbo v5, "Cannot change ducking behavior for unregistered policy"

    #@2c
    .line 294
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 292
    :catchall_0
    move-exception v3

    #@31
    monitor-exit v4

    #@32
    throw v3

    #@33
    .line 297
    :cond_1
    if-ne p1, v6, :cond_2

    #@35
    .line 298
    :try_start_1
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    #@37
    if-nez v3, :cond_2

    #@39
    .line 300
    new-instance v3, Ljava/lang/IllegalStateException;

    #@3b
    .line 301
    const-string/jumbo v5, "Cannot handle ducking without an audio focus listener"

    #@3e
    .line 300
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@41
    throw v3

    #@42
    .line 303
    :cond_2
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    move-result-object v1

    #@46
    .line 306
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_2
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    #@49
    move-result-object v3

    #@4a
    .line 305
    invoke-interface {v1, p1, v3}, Landroid/media/IAudioService;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    #@4d
    move-result v2

    #@4e
    .line 307
    .local v2, "status":I
    if-nez v2, :cond_3

    #@50
    .line 308
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    #@52
    iput p1, v3, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    :cond_3
    monitor-exit v4

    #@55
    .line 310
    return v2

    #@56
    .line 311
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    #@57
    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "AudioPolicy"

    #@5a
    const-string/jumbo v5, "Dead object in setFocusPropertiesForPolicy for behavior"

    #@5d
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@60
    .line 313
    const/4 v3, -0x1

    #@61
    monitor-exit v4

    #@62
    return v3
.end method

.method public setRegistration(Ljava/lang/String;)V
    .locals 2
    .param p1, "regId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 205
    :try_start_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    #@5
    .line 206
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    #@7
    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->setRegistration(Ljava/lang/String;)V

    #@a
    .line 207
    if-eqz p1, :cond_0

    #@c
    .line 208
    const/4 v0, 0x2

    #@d
    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :goto_0
    monitor-exit v1

    #@10
    .line 213
    const/4 v0, 0x0

    #@11
    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(I)V

    #@14
    .line 203
    return-void

    #@15
    .line 210
    :cond_0
    const/4 v0, 0x1

    #@16
    :try_start_1
    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    goto :goto_0

    #@19
    .line 204
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
.end method

.method public toLogFriendlyString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 529
    new-instance v0, Ljava/lang/String;

    #@2
    const-string/jumbo v1, "android.media.audiopolicy.AudioPolicy:\n"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@8
    .line 530
    .local v0, "textDump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string/jumbo v2, "config="

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    #@1a
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicyConfig;->toLogFriendlyString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 531
    return-object v0
.end method
