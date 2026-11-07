.class public Landroid/media/audiopolicy/AudioPolicy;
.super Ljava/lang/Object;
.source "AudioPolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;,
        Landroid/media/audiopolicy/AudioPolicy$EventHandler;,
        Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;,
        Landroid/media/audiopolicy/AudioPolicy$PolicyStatus;,
        Landroid/media/audiopolicy/AudioPolicy$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field public static final whitelist FOCUS_POLICY_DUCKING_DEFAULT:I = 0x0

.field public static final whitelist FOCUS_POLICY_DUCKING_IN_APP:I = 0x0

.field public static final whitelist FOCUS_POLICY_DUCKING_IN_POLICY:I = 0x1

.field private static final greylist-max-o MSG_FOCUS_ABANDON:I = 0x5

.field private static final greylist-max-o MSG_FOCUS_GRANT:I = 0x1

.field private static final greylist-max-o MSG_FOCUS_LOSS:I = 0x2

.field private static final greylist-max-o MSG_FOCUS_REQUEST:I = 0x4

.field private static final greylist-max-o MSG_MIX_STATE_UPDATE:I = 0x3

.field private static final greylist-max-o MSG_POLICY_STATUS_CHANGE:I = 0x0

.field private static final greylist-max-o MSG_VOL_ADJUST:I = 0x6

.field public static final whitelist POLICY_STATUS_REGISTERED:I = 0x2

.field public static final whitelist POLICY_STATUS_UNREGISTERED:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "AudioPolicy"

.field private static greylist-max-o sService:Landroid/media/IAudioService;


# instance fields
.field private blacklist mCaptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

.field private greylist-max-o mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

.field private blacklist mInjectors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/AudioTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o mIsFocusPolicy:Z

.field private final blacklist mIsTestFocusPolicy:Z

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private final greylist-max-o mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final blacklist mProjection:Landroid/media/projection/MediaProjection;

.field private greylist-max-o mRegistrationId:Ljava/lang/String;

.field private greylist-max-o mStatus:I

.field private final greylist-max-o mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

.field private final greylist-max-o mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfig(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicyConfig;
    .registers 1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFocusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusListener(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    .registers 1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolCb(Landroid/media/audiopolicy/AudioPolicy;)Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/audiopolicy/AudioPolicy;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$monPolicyStatusChange(Landroid/media/audiopolicy/AudioPolicy;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->onPolicyStatusChange()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendMsg(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(ILjava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;
    .registers 1

    invoke-static {p0}, Landroid/media/audiopolicy/AudioPolicy;->getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;)V
    .registers 12
    .param p1, "config"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "fl"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;
    .param p5, "sl"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;
    .param p6, "isFocusPolicy"    # Z
    .param p7, "isTestFocusPolicy"    # Z
    .param p8, "vc"    # Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;
    .param p9, "projection"    # Landroid/media/projection/MediaProjection;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    .line 1166
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$1;

    invoke-direct {v0, p0}, Landroid/media/audiopolicy/AudioPolicy$1;-><init>(Landroid/media/audiopolicy/AudioPolicy;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 167
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    .line 169
    iput-object p2, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    .line 170
    if-nez p3, :cond_1e

    .line 171
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    .line 173
    :cond_1e
    if-eqz p3, :cond_28

    .line 174
    new-instance v0, Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    invoke-direct {v0, p0, p0, p3}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;-><init>(Landroid/media/audiopolicy/AudioPolicy;Landroid/media/audiopolicy/AudioPolicy;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    goto :goto_32

    .line 176
    :cond_28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    .line 177
    const-string v0, "AudioPolicy"

    const-string v1, "No event handler due to looper without a thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_32
    iput-object p4, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    .line 180
    iput-object p5, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    .line 181
    iput-boolean p6, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsFocusPolicy:Z

    .line 182
    iput-boolean p7, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsTestFocusPolicy:Z

    .line 183
    iput-object p8, p0, Landroid/media/audiopolicy/AudioPolicy;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    .line 184
    iput-object p9, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    .line 185
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;Landroid/media/audiopolicy/AudioPolicy-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/audiopolicy/AudioPolicy;-><init>(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/content/Context;Landroid/os/Looper;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;ZZLandroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;Landroid/media/projection/MediaProjection;)V

    return-void
.end method

.method private static greylist-max-o addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;
    .registers 3
    .param p0, "mix"    # Landroid/media/audiopolicy/AudioMix;

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;

    .line 824
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 825
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 827
    :cond_b
    const-string v0, "AudioPolicy"

    const-string v1, "Null context, checking permission via ActivityManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 829
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 831
    .local v1, "uid":I
    :try_start_1a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_22} :catch_23

    return v2

    .line 832
    :catch_23
    move-exception v2

    .line 833
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private greylist-max-o checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V
    .registers 5
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .param p2, "forTrack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 839
    if-nez p1, :cond_10

    .line 840
    if-eqz p2, :cond_7

    const-string v0, "Invalid null AudioMix for AudioTrack creation"

    goto :goto_9

    .line 841
    :cond_7
    const-string v0, "Invalid null AudioMix for AudioRecord creation"

    :goto_9
    nop

    .line 842
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 844
    .end local v0    # "msg":Ljava/lang/String;
    :cond_10
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v0, v0, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 847
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_46

    .line 851
    if-eqz p2, :cond_34

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    goto :goto_34

    .line 852
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid AudioMix: not defined for being a recording source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_34
    :goto_34
    if-nez p2, :cond_45

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_45

    .line 856
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid AudioMix: not defined for capturing playback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 859
    :cond_45
    :goto_45
    return-void

    .line 849
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid AudioMix: not defined for loop back"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mix: not part of this policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    if-nez p0, :cond_7

    .line 157
    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 156
    :goto_b
    return-object v0
.end method

.method private static greylist-max-o getService()Landroid/media/IAudioService;
    .registers 2

    .line 1313
    sget-object v0, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    if-eqz v0, :cond_7

    .line 1314
    sget-object v0, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    return-object v0

    .line 1316
    :cond_7
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1317
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    .line 1318
    sget-object v1, Landroid/media/audiopolicy/AudioPolicy;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private blacklist isAudioPolicyRegisteredLocked()Z
    .registers 3

    .line 760
    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist isCallRedirectionPolicy()Z
    .registers 5

    .line 810
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 811
    :try_start_3
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v1, v1, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioMix;

    .line 812
    .local v2, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioMix;->isForCallRedirection()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 813
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 815
    .end local v2    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_20
    goto :goto_b

    .line 816
    :cond_21
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 817
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private blacklist isLoopbackRenderPolicy()Z
    .registers 4

    .line 803
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    :try_start_3
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget-object v1, v1, Landroid/media/audiopolicy/AudioPolicyConfig;->mMixes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 806
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method static synthetic blacklist lambda$isLoopbackRenderPolicy$4(Landroid/media/audiopolicy/AudioMix;)Z
    .registers 3
    .param p0, "mix"    # Landroid/media/audiopolicy/AudioMix;

    .line 804
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMix;->getRouteFlags()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static synthetic blacklist lambda$updateMixingRules$0(Landroid/util/Pair;)Landroid/media/audiopolicy/AudioMix;
    .registers 2
    .param p0, "p"    # Landroid/util/Pair;

    .line 460
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/AudioMix;

    return-object v0
.end method

.method static synthetic blacklist lambda$updateMixingRules$1(I)[Landroid/media/audiopolicy/AudioMix;
    .registers 2
    .param p0, "x$0"    # I

    .line 460
    new-array v0, p0, [Landroid/media/audiopolicy/AudioMix;

    return-object v0
.end method

.method static synthetic blacklist lambda$updateMixingRules$2(Landroid/util/Pair;)Landroid/media/audiopolicy/AudioMixingRule;
    .registers 2
    .param p0, "p"    # Landroid/util/Pair;

    .line 461
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiopolicy/AudioMixingRule;

    return-object v0
.end method

.method static synthetic blacklist lambda$updateMixingRules$3(I)[Landroid/media/audiopolicy/AudioMixingRule;
    .registers 2
    .param p0, "x$0"    # I

    .line 462
    new-array v0, p0, [Landroid/media/audiopolicy/AudioMixingRule;

    return-object v0
.end method

.method private greylist-max-o onPolicyStatusChange()V
    .registers 2

    .line 1155
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    if-eqz v0, :cond_9

    .line 1156
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioPolicy$AudioPolicyStatusListener;->onStatusChange()V

    .line 1158
    :cond_9
    return-void
.end method

.method private greylist-max-o policyReadyToUse()Z
    .registers 8

    .line 764
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 765
    :try_start_3
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_12

    .line 766
    const-string v1, "AudioPolicy"

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    monitor-exit v0

    return v3

    .line 769
    :cond_12
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    if-nez v1, :cond_1f

    .line 770
    const-string v1, "AudioPolicy"

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    monitor-exit v0

    return v3

    .line 773
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_9c

    .line 776
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 777
    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    move v0, v1

    goto :goto_2c

    :cond_2b
    move v0, v3

    .line 779
    .local v0, "canModifyAudioRouting":Z
    :goto_2c
    const-string v2, "android.permission.CALL_AUDIO_INTERCEPTION"

    .line 780
    invoke-direct {p0, v2}, Landroid/media/audiopolicy/AudioPolicy;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_36

    move v2, v1

    goto :goto_37

    :cond_36
    move v2, v3

    .line 785
    .local v2, "canInterceptCallAudio":Z
    :goto_37
    :try_start_37
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    if-eqz v4, :cond_49

    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {v4}, Landroid/media/projection/MediaProjection;->getProjection()Landroid/media/projection/IMediaProjection;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/projection/IMediaProjection;->canProjectAudio()Z

    move-result v4
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_45} :catch_8f

    if-eqz v4, :cond_49

    move v4, v1

    goto :goto_4a

    :cond_49
    move v4, v3

    .line 789
    .local v4, "canProjectAudio":Z
    :goto_4a
    nop

    .line 791
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isLoopbackRenderPolicy()Z

    move-result v5

    if-eqz v5, :cond_53

    if-nez v4, :cond_8e

    .line 792
    :cond_53
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isCallRedirectionPolicy()Z

    move-result v5

    if-eqz v5, :cond_5b

    if-nez v2, :cond_8e

    :cond_5b
    if-nez v0, :cond_8e

    .line 794
    const-string v1, "AudioPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot use AudioPolicy for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", needs MODIFY_AUDIO_ROUTING or MediaProjection that can project audio."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 794
    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    return v3

    .line 799
    :cond_8e
    return v1

    .line 786
    .end local v4    # "canProjectAudio":Z
    :catch_8f
    move-exception v1

    .line 787
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "AudioPolicy"

    const-string v4, "Failed to check if MediaProjection#canProjectAudio"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 773
    .end local v0    # "canModifyAudioRouting":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "canInterceptCallAudio":Z
    :catchall_9c
    move-exception v1

    :try_start_9d
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw v1
.end method

.method private greylist-max-o sendMsg(I)V
    .registers 3
    .param p1, "msg"    # I

    .line 1297
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    if-eqz v0, :cond_9

    .line 1298
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendEmptyMessage(I)Z

    .line 1300
    :cond_9
    return-void
.end method

.method private greylist-max-o sendMsg(ILjava/lang/Object;I)V
    .registers 7
    .param p1, "msg"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "i"    # I

    .line 1303
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    if-eqz v0, :cond_10

    .line 1304
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mEventHandler:Landroid/media/audiopolicy/AudioPolicy$EventHandler;

    .line 1305
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p3, v2, p2}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1304
    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioPolicy$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1307
    :cond_10
    return-void
.end method


# virtual methods
.method public whitelist attachMixes(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 363
    .local p1, "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    if-eqz p1, :cond_75

    .line 366
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_5
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6a

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v1, "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 372
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    if-eqz v3, :cond_3d

    .line 375
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 376
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/media/audiopolicy/AudioPolicy;->getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/audiopolicy/AudioMix;->setVirtualDeviceId(I)V

    .line 378
    :cond_38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    nop

    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    goto :goto_17

    .line 373
    .restart local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_3d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal null AudioMix in attachMixes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    throw v2

    .line 381
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :cond_45
    new-instance v2, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-direct {v2, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Ljava/util/ArrayList;)V

    .line 382
    .local v2, "cfg":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v3
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_72

    .line 384
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_4e
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/media/IAudioService;->addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    .line 385
    .local v4, "status":I
    if-nez v4, :cond_5d

    .line 386
    iget-object v5, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v5, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->add(Ljava/util/ArrayList;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5d} :catch_5f
    .catchall {:try_start_4e .. :try_end_5d} :catchall_72

    .line 388
    :cond_5d
    :try_start_5d
    monitor-exit v0

    return v4

    .line 389
    .end local v4    # "status":I
    :catch_5f
    move-exception v4

    .line 390
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AudioPolicy"

    const-string v6, "Dead object in attachMixes"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 368
    .end local v1    # "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    .end local v2    # "cfg":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v3    # "service":Landroid/media/IAudioService;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_6a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot alter unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    throw v1

    .line 393
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_5d .. :try_end_74} :catchall_72

    throw v1

    .line 364
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null list of AudioMix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o cb()Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2

    .line 1164
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mPolicyCb:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object v0
.end method

.method public whitelist clearFadeManagerConfigurationForFocusLoss()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 709
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 710
    .local v0, "service":Landroid/media/IAudioService;
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 711
    :try_start_7
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isAudioPolicyRegisteredLocked()Z

    move-result v2

    const-string v3, "Cannot clear FadeManagerConfiguration from unregistered AudioPolicy"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_23

    .line 715
    :try_start_10
    invoke-interface {v0}, Landroid/media/IAudioService;->clearFadeManagerConfigurationForFocusLoss()I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16
    .catchall {:try_start_10 .. :try_end_14} :catchall_23

    :try_start_14
    monitor-exit v1

    return v2

    .line 716
    :catch_16
    move-exception v2

    .line 717
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AudioPolicy"

    const-string v4, "Received remote exception for clearFadeManagerConfigurationForFocusLoss:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "service":Landroid/media/IAudioService;
    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    throw v3

    .line 721
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "service":Landroid/media/IAudioService;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public whitelist createAudioRecordSink(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioRecord;
    .registers 10
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 987
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v0

    if-nez v0, :cond_f

    .line 988
    const-string v0, "AudioPolicy"

    const-string v1, "Cannot create AudioRecord sink for AudioMix"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v0, 0x0

    return-object v0

    .line 991
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    .line 994
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/AudioFormat$Builder;-><init>(Landroid/media/AudioFormat;)V

    .line 996
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    .line 995
    invoke-static {v2}, Landroid/media/AudioFormat;->inChannelMaskFromOutChannelMask(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 997
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 999
    .local v1, "mixFormat":Landroid/media/AudioFormat;
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1000
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 1001
    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const-string v3, "fixedVolume"

    .line 1002
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 1003
    .local v2, "ab":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->isForCallRedirection()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1004
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    .line 1007
    :cond_52
    new-instance v3, Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1009
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v5

    .line 1011
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v6

    .line 1009
    const/16 v7, 0xc

    invoke-static {v5, v7, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    invoke-direct {v3, v4, v1, v5, v0}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 1014
    .local v3, "ar":Landroid/media/AudioRecord;
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1015
    :try_start_74
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    if-nez v4, :cond_80

    .line 1016
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    .line 1018
    :cond_80
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    monitor-exit v0

    .line 1020
    return-object v3

    .line 1019
    :catchall_8c
    move-exception v4

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_74 .. :try_end_8e} :catchall_8c

    throw v4
.end method

.method public whitelist createAudioTrackSource(Landroid/media/audiopolicy/AudioMix;)Landroid/media/AudioTrack;
    .registers 11
    .param p1, "mix"    # Landroid/media/audiopolicy/AudioMix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1035
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1036
    const-string v0, "AudioPolicy"

    const-string v1, "Cannot create AudioTrack source for AudioMix"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v0, 0x0

    return-object v0

    .line 1039
    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/audiopolicy/AudioPolicy;->checkMixReadyToUse(Landroid/media/audiopolicy/AudioMix;Z)V

    .line 1041
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1042
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1043
    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->addressForTag(Landroid/media/audiopolicy/AudioMix;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 1044
    .local v1, "ab":Landroid/media/AudioAttributes$Builder;
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->isForCallRedirection()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1045
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->setForCallRedirection()Landroid/media/AudioAttributes$Builder;

    .line 1047
    :cond_2f
    new-instance v3, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1048
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v5

    .line 1049
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    .line 1050
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v6

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMix;->getFormat()Landroid/media/AudioFormat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v7

    .line 1049
    invoke-static {v2, v6, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 1054
    .local v3, "at":Landroid/media/AudioTrack;
    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1055
    :try_start_5d
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    if-nez v4, :cond_68

    .line 1056
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    .line 1058
    :cond_68
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    monitor-exit v2

    .line 1060
    return-object v3

    .line 1059
    :catchall_74
    move-exception v0

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_74

    throw v0
.end method

.method public whitelist detachMixes(Ljava/util/List;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;)I"
        }
    .end annotation

    .line 408
    .local p1, "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    if-eqz p1, :cond_75

    .line 411
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_5
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6a

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    .local v1, "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/AudioMix;

    .line 417
    .local v3, "mix":Landroid/media/audiopolicy/AudioMix;
    if-eqz v3, :cond_3d

    .line 420
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 421
    iget-object v4, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/media/audiopolicy/AudioPolicy;->getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/audiopolicy/AudioMix;->setVirtualDeviceId(I)V

    .line 423
    :cond_38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    nop

    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    goto :goto_17

    .line 418
    .restart local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_3d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal null AudioMix in detachMixes"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    throw v2

    .line 426
    .end local v3    # "mix":Landroid/media/audiopolicy/AudioMix;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :cond_45
    new-instance v2, Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-direct {v2, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;-><init>(Ljava/util/ArrayList;)V

    .line 427
    .local v2, "cfg":Landroid/media/audiopolicy/AudioPolicyConfig;
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v3
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_72

    .line 429
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_4e
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/media/IAudioService;->removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v4

    .line 430
    .local v4, "status":I
    if-nez v4, :cond_5d

    .line 431
    iget-object v5, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v5, v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->remove(Ljava/util/ArrayList;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5d} :catch_5f
    .catchall {:try_start_4e .. :try_end_5d} :catchall_72

    .line 433
    :cond_5d
    :try_start_5d
    monitor-exit v0

    return v4

    .line 434
    .end local v4    # "status":I
    :catch_5f
    move-exception v4

    .line 435
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "AudioPolicy"

    const-string v6, "Dead object in detachMixes"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    monitor-exit v0

    const/4 v0, -0x1

    return v0

    .line 413
    .end local v1    # "zeMixes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/audiopolicy/AudioMix;>;"
    .end local v2    # "cfg":Landroid/media/audiopolicy/AudioPolicyConfig;
    .end local v3    # "service":Landroid/media/IAudioService;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_6a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot alter unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    throw v1

    .line 438
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "mixes":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioMix;>;"
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_5d .. :try_end_74} :catchall_72

    throw v1

    .line 409
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null list of AudioMix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAttributionSource()Landroid/content/AttributionSource;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/audiopolicy/AudioPolicy;->getAttributionSource(Landroid/content/Context;)Landroid/content/AttributionSource;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getConfig()Landroid/media/audiopolicy/AudioPolicyConfig;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    return-object v0
.end method

.method public whitelist getFadeManagerConfigurationForFocusLoss()Landroid/media/FadeManagerConfiguration;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 742
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 743
    .local v0, "service":Landroid/media/IAudioService;
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 744
    :try_start_7
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isAudioPolicyRegisteredLocked()Z

    move-result v2

    const-string v3, "Cannot get FadeManagerConfiguration from unregistered AudioPolicy"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_23

    .line 748
    :try_start_10
    invoke-interface {v0}, Landroid/media/IAudioService;->getFadeManagerConfigurationForFocusLoss()Landroid/media/FadeManagerConfiguration;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16
    .catchall {:try_start_10 .. :try_end_14} :catchall_23

    :try_start_14
    monitor-exit v1

    return-object v2

    .line 749
    :catch_16
    move-exception v2

    .line 750
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AudioPolicy"

    const-string v4, "Received remote exception for getFadeManagerConfigurationForFocusLoss:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "service":Landroid/media/IAudioService;
    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    throw v3

    .line 755
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "service":Landroid/media/IAudioService;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public whitelist getFocusDuckingBehavior()I
    .registers 2

    .line 866
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iget v0, v0, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I

    return v0
.end method

.method public whitelist getFocusStack()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 923
    :try_start_0
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getFocusStack()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 924
    :catch_9
    move-exception v0

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getMediaProjection()Landroid/media/projection/MediaProjection;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method

.method public blacklist getMixes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;"
        }
    .end annotation

    .line 632
    invoke-static {}, Landroid/media/audiopolicy/Flags;->audioMixTestApi()Z

    move-result v0

    if-nez v0, :cond_b

    .line 633
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 635
    :cond_b
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    :try_start_e
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 637
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public blacklist getRegistration()Ljava/lang/String;
    .registers 2

    .line 656
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 1108
    iget v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    return v0
.end method

.method public greylist-max-o hasFocusListener()Z
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist invalidateCaptorsAndInjectors()V
    .registers 6

    .line 1067
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->policyReadyToUse()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1068
    return-void

    .line 1070
    :cond_7
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_a
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    .line 1072
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1073
    .local v2, "weakTrack":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/AudioTrack;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_63

    .line 1074
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_29

    .line 1075
    goto :goto_14

    .line 1079
    :cond_29
    :try_start_29
    invoke-virtual {v3}, Landroid/media/AudioTrack;->stop()V

    .line 1080
    invoke-virtual {v3}, Landroid/media/AudioTrack;->flush()V
    :try_end_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_2f} :catch_30
    .catchall {:try_start_29 .. :try_end_2f} :catchall_63

    .line 1084
    goto :goto_31

    .line 1081
    :catch_30
    move-exception v4

    .line 1085
    .end local v2    # "weakTrack":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/AudioTrack;>;"
    .end local v3    # "track":Landroid/media/AudioTrack;
    :goto_31
    goto :goto_14

    .line 1086
    :cond_32
    :try_start_32
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mInjectors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1088
    :cond_37
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    if-eqz v1, :cond_61

    .line 1089
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1090
    .local v2, "weakRecord":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/AudioRecord;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioRecord;
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_63

    .line 1091
    .local v3, "record":Landroid/media/AudioRecord;
    if-nez v3, :cond_56

    .line 1092
    goto :goto_41

    .line 1096
    :cond_56
    :try_start_56
    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_59
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_63

    .line 1100
    goto :goto_5b

    .line 1097
    :catch_5a
    move-exception v4

    .line 1101
    .end local v2    # "weakRecord":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/AudioRecord;>;"
    .end local v3    # "record":Landroid/media/AudioRecord;
    :goto_5b
    goto :goto_41

    .line 1102
    :cond_5c
    :try_start_5c
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mCaptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1104
    :cond_61
    monitor-exit v0

    .line 1105
    return-void

    .line 1104
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_63

    throw v1
.end method

.method public greylist-max-o isFocusPolicy()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsFocusPolicy:Z

    return v0
.end method

.method public blacklist isTestFocusPolicy()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mIsTestFocusPolicy:Z

    return v0
.end method

.method public greylist-max-o isVolumeController()Z
    .registers 2

    .line 144
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mVolCb:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyVolumeCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist removeUidDeviceAffinity(I)Z
    .registers 8
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 532
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 536
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2c

    .line 538
    .local v1, "service":Landroid/media/IAudioService;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/media/IAudioService;->removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v3
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_1a
    .catchall {:try_start_d .. :try_end_15} :catchall_2c

    .line 539
    .local v3, "status":I
    if-nez v3, :cond_18

    const/4 v2, 0x1

    :cond_18
    :try_start_18
    monitor-exit v0

    return v2

    .line 540
    .end local v3    # "status":I
    :catch_1a
    move-exception v3

    .line 541
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "AudioPolicy"

    const-string v5, "Dead object in removeUidDeviceAffinity"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    monitor-exit v0

    return v2

    .line 534
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "uid":I
    throw v1

    .line 544
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "uid":I
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public whitelist removeUserIdDeviceAffinity(I)Z
    .registers 8
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 557
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_3
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    .line 561
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2c

    .line 563
    .local v1, "service":Landroid/media/IAudioService;
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Landroid/media/IAudioService;->removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v3
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_1a
    .catchall {:try_start_d .. :try_end_15} :catchall_2c

    .line 564
    .local v3, "status":I
    if-nez v3, :cond_18

    const/4 v2, 0x1

    :cond_18
    :try_start_18
    monitor-exit v0

    return v2

    .line 565
    .end local v3    # "status":I
    :catch_1a
    move-exception v3

    .line 566
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "AudioPolicy"

    const-string v5, "Dead object in removeUserIdDeviceAffinity"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    monitor-exit v0

    return v2

    .line 559
    .end local v1    # "service":Landroid/media/IAudioService;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "userId":I
    throw v1

    .line 569
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "userId":I
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist reset()V
    .registers 2

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->setRegistration(Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method public whitelist sendFocusLoss(Landroid/media/AudioFocusInfo;)Z
    .registers 4
    .param p1, "focusLoser"    # Landroid/media/AudioFocusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 967
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    :try_start_3
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/media/IAudioService;->sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z

    move-result v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    .line 970
    :catch_10
    move-exception v0

    .line 971
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;)V
    .registers 5
    .param p1, "focusLoser"    # Landroid/media/AudioFocusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 946
    :try_start_0
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFocusInfo;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->sendFocusLossAndUpdate(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    .line 949
    nop

    .line 950
    return-void

    .line 947
    :catch_13
    move-exception v0

    .line 948
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setFadeManagerConfigurationForFocusLoss(Landroid/media/FadeManagerConfiguration;)I
    .registers 7
    .param p1, "fmcForFocusLoss"    # Landroid/media/FadeManagerConfiguration;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 674
    const-string v0, "FadeManagerConfiguration for focus loss cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 677
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 678
    .local v0, "service":Landroid/media/IAudioService;
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 679
    :try_start_c
    invoke-direct {p0}, Landroid/media/audiopolicy/AudioPolicy;->isAudioPolicyRegisteredLocked()Z

    move-result v2

    const-string v3, "Cannot set FadeManagerConfiguration with unregistered AudioPolicy"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_28

    .line 683
    :try_start_15
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setFadeManagerConfigurationForFocusLoss(Landroid/media/FadeManagerConfiguration;)I

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_19} :catch_1b
    .catchall {:try_start_15 .. :try_end_19} :catchall_28

    :try_start_19
    monitor-exit v1

    return v2

    .line 684
    :catch_1b
    move-exception v2

    .line 685
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AudioPolicy"

    const-string v4, "Received remote exception for setFadeManagerConfigurationForFocusLoss:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local v0    # "service":Landroid/media/IAudioService;
    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "fmcForFocusLoss":Landroid/media/FadeManagerConfiguration;
    throw v3

    .line 689
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "service":Landroid/media/IAudioService;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "fmcForFocusLoss":Landroid/media/FadeManagerConfiguration;
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public whitelist setFocusDuckingBehavior(I)I
    .registers 7
    .param p1, "behavior"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 883
    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 885
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ducking behavior "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_1f
    :goto_1f
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 888
    :try_start_22
    iget v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_56

    .line 892
    if-ne p1, v0, :cond_36

    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mFocusListener:Landroid/media/audiopolicy/AudioPolicy$AudioPolicyFocusListener;

    if-eqz v0, :cond_2e

    goto :goto_36

    .line 895
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot handle ducking without an audio focus listener"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "behavior":I
    throw v0

    .line 898
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "behavior":I
    :cond_36
    :goto_36
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_5e

    .line 900
    .local v0, "service":Landroid/media/IAudioService;
    nop

    .line 901
    :try_start_3b
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v2

    .line 900
    invoke-interface {v0, p1, v2}, Landroid/media/IAudioService;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 902
    .local v2, "status":I
    if-nez v2, :cond_49

    .line 903
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    iput p1, v3, Landroid/media/audiopolicy/AudioPolicyConfig;->mDuckingPolicy:I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_49} :catch_4b
    .catchall {:try_start_3b .. :try_end_49} :catchall_5e

    .line 905
    :cond_49
    :try_start_49
    monitor-exit v1

    return v2

    .line 906
    .end local v2    # "status":I
    :catch_4b
    move-exception v2

    .line 907
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "AudioPolicy"

    const-string v4, "Dead object in setFocusPropertiesForPolicy for behavior"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    .line 889
    .end local v0    # "service":Landroid/media/IAudioService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot change ducking behavior for unregistered policy"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "behavior":I
    throw v0

    .line 910
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "behavior":I
    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_5e

    throw v0
.end method

.method public whitelist setRegistration(Ljava/lang/String;)V
    .registers 4
    .param p1, "regId"    # Ljava/lang/String;

    .line 641
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_3
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy;->mRegistrationId:Ljava/lang/String;

    .line 643
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v1, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->setRegistration(Ljava/lang/String;)V

    .line 644
    if-eqz p1, :cond_10

    .line 645
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    goto :goto_18

    .line 647
    :cond_10
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    .line 648
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioPolicyConfig;->reset()V

    .line 650
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1e

    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audiopolicy/AudioPolicy;->sendMsg(I)V

    .line 652
    return-void

    .line 650
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public whitelist setUidDeviceAffinity(ILjava/util/List;)Z
    .registers 12
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 491
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    if-eqz p2, :cond_6d

    .line 494
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 495
    :try_start_5
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_62

    .line 498
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 499
    .local v1, "deviceTypes":[I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 500
    .local v2, "deviceAdresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 501
    .local v3, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceInfo;

    .line 502
    .local v5, "device":Landroid/media/AudioDeviceInfo;
    if-eqz v5, :cond_3e

    .line 506
    nop

    .line 507
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v6

    aput v6, v1, v3

    .line 508
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 509
    nop

    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    add-int/lit8 v3, v3, 0x1

    .line 510
    goto :goto_1b

    .line 503
    .restart local v5    # "device":Landroid/media/AudioDeviceInfo;
    :cond_3e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Illegal null AudioDeviceInfo in setUidDeviceAffinity"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "uid":I
    .end local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    throw v4

    .line 511
    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "uid":I
    .restart local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :cond_46
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v4
    :try_end_4a
    .catchall {:try_start_5 .. :try_end_4a} :catchall_6a

    .line 513
    .local v4, "service":Landroid/media/IAudioService;
    const/4 v5, 0x0

    :try_start_4b
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v6

    invoke-interface {v4, v6, p1, v1, v2}, Landroid/media/IAudioService;->setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v6
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_53} :catch_58
    .catchall {:try_start_4b .. :try_end_53} :catchall_6a

    .line 515
    .local v6, "status":I
    if-nez v6, :cond_56

    const/4 v5, 0x1

    :cond_56
    :try_start_56
    monitor-exit v0

    return v5

    .line 516
    .end local v6    # "status":I
    :catch_58
    move-exception v6

    .line 517
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AudioPolicy"

    const-string v8, "Dead object in setUidDeviceAffinity"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    monitor-exit v0

    return v5

    .line 496
    .end local v1    # "deviceTypes":[I
    .end local v2    # "deviceAdresses":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "service":Landroid/media/IAudioService;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_62
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "uid":I
    .end local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    throw v1

    .line 520
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "uid":I
    .restart local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_56 .. :try_end_6c} :catchall_6a

    throw v1

    .line 492
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null list of audio devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setUserIdDeviceAffinity(ILjava/util/List;)Z
    .registers 12
    .param p1, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceInfo;",
            ">;)Z"
        }
    .end annotation

    .line 590
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    const-string v0, "Illegal null list of audio devices"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 591
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_8
    iget v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_65

    .line 595
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 596
    .local v1, "deviceTypes":[I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 597
    .local v2, "deviceAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 598
    .local v3, "i":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioDeviceInfo;

    .line 599
    .local v5, "device":Landroid/media/AudioDeviceInfo;
    if-eqz v5, :cond_41

    .line 603
    nop

    .line 604
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v6

    invoke-static {v6}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v6

    aput v6, v1, v3

    .line 605
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 606
    nop

    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    add-int/lit8 v3, v3, 0x1

    .line 607
    goto :goto_1e

    .line 600
    .restart local v5    # "device":Landroid/media/AudioDeviceInfo;
    :cond_41
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Illegal null AudioDeviceInfo in setUserIdDeviceAffinity"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "userId":I
    .end local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    throw v4

    .line 608
    .end local v5    # "device":Landroid/media/AudioDeviceInfo;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "userId":I
    .restart local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :cond_49
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v4
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_6d

    .line 610
    .local v4, "service":Landroid/media/IAudioService;
    const/4 v5, 0x0

    :try_start_4e
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v6

    invoke-interface {v4, v6, p1, v1, v2}, Landroid/media/IAudioService;->setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I

    move-result v6
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_56} :catch_5b
    .catchall {:try_start_4e .. :try_end_56} :catchall_6d

    .line 612
    .local v6, "status":I
    if-nez v6, :cond_59

    const/4 v5, 0x1

    :cond_59
    :try_start_59
    monitor-exit v0

    return v5

    .line 613
    .end local v6    # "status":I
    :catch_5b
    move-exception v6

    .line 614
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AudioPolicy"

    const-string v8, "Dead object in setUserIdDeviceAffinity"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    monitor-exit v0

    return v5

    .line 593
    .end local v1    # "deviceTypes":[I
    .end local v2    # "deviceAddresses":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "service":Landroid/media/IAudioService;
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_65
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot use unregistered AudioPolicy"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "userId":I
    .end local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    throw v1

    .line 617
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "userId":I
    .restart local p2    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceInfo;>;"
    :catchall_6d
    move-exception v1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_59 .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public whitelist toLogFriendlyString()Ljava/lang/String;
    .registers 4

    .line 1322
    new-instance v0, Ljava/lang/String;

    const-string v1, "android.media.audiopolicy.AudioPolicy:\n"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1323
    .local v0, "textDump":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioPolicyConfig;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1324
    return-object v0
.end method

.method public whitelist updateMixingRules(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/media/audiopolicy/AudioMix;",
            "Landroid/media/audiopolicy/AudioMixingRule;",
            ">;>;)I"
        }
    .end annotation

    .line 454
    .local p1, "mixingRuleUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/media/audiopolicy/AudioMix;Landroid/media/audiopolicy/AudioMixingRule;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-static {}, Landroid/media/audiopolicy/AudioPolicy;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 458
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_7
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_4f

    .line 459
    nop

    .line 460
    :try_start_b
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audiopolicy/AudioMix;

    .line 461
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Landroid/media/audiopolicy/AudioPolicy$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/audiopolicy/AudioMixingRule;

    .line 463
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioPolicy;->cb()Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v4

    .line 459
    invoke-interface {v0, v2, v3, v4}, Landroid/media/IAudioService;->updateMixingRulesForPolicy([Landroid/media/audiopolicy/AudioMix;[Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v2

    .line 464
    .local v2, "status":I
    if-nez v2, :cond_4a

    .line 465
    iget-object v3, p0, Landroid/media/audiopolicy/AudioPolicy;->mConfig:Landroid/media/audiopolicy/AudioPolicyConfig;

    invoke-virtual {v3, p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->updateMixingRules(Ljava/util/List;)V

    .line 467
    :cond_4a
    monitor-exit v1

    return v2

    .line 468
    .end local v2    # "status":I
    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_4c

    .end local v0    # "service":Landroid/media/IAudioService;
    .end local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .end local p1    # "mixingRuleUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/media/audiopolicy/AudioMix;Landroid/media/audiopolicy/AudioMixingRule;>;>;"
    :try_start_4e
    throw v2
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_4f} :catch_4f

    .line 469
    .restart local v0    # "service":Landroid/media/IAudioService;
    .restart local p0    # "this":Landroid/media/audiopolicy/AudioPolicy;
    .restart local p1    # "mixingRuleUpdates":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/media/audiopolicy/AudioMix;Landroid/media/audiopolicy/AudioMixingRule;>;>;"
    :catch_4f
    move-exception v1

    .line 470
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AudioPolicy"

    const-string v3, "Received remote exeception in updateMixingRules call: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    const/4 v2, -0x1

    return v2
.end method
