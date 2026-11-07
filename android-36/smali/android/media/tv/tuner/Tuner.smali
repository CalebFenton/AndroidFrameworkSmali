.class public Landroid/media/tv/tuner/Tuner;
.super Ljava/lang/Object;
.source "Tuner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Tuner$EventHandler;,
        Landroid/media/tv/tuner/Tuner$OnResourceLostListener;,
        Landroid/media/tv/tuner/Tuner$Frontend;,
        Landroid/media/tv/tuner/Tuner$DvrType;,
        Landroid/media/tv/tuner/Tuner$Result;,
        Landroid/media/tv/tuner/Tuner$ScanType;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field public static final blacklist DVR_TYPE_PLAYBACK:I = 0x1

.field public static final blacklist DVR_TYPE_RECORD:I = 0x0

.field private static final blacklist FILTER_CLEANUP_THRESHOLD:I = 0x100

.field public static final whitelist INVALID_AV_SYNC_ID:I = -0x1

.field public static final whitelist INVALID_FILTER_ID:I = -0x1

.field public static final whitelist INVALID_FILTER_ID_LONG:J = -0x1L

.field public static final whitelist INVALID_FIRST_MACROBLOCK_IN_SLICE:I = -0x1

.field public static final whitelist INVALID_FRONTEND_ID:I = -0x1

.field public static final whitelist INVALID_FRONTEND_SETTING_FREQUENCY:I = -0x1

.field public static final blacklist INVALID_LNB_ID:I = -0x1

.field public static final whitelist INVALID_LTS_ID:I = -0x1

.field public static final whitelist INVALID_MMTP_RECORD_EVENT_MPT_SEQUENCE_NUM:I = -0x1

.field public static final whitelist INVALID_STREAM_ID:I = 0xffff

.field public static final whitelist INVALID_TIMESTAMP:J = -0x1L

.field public static final whitelist INVALID_TS_PID:I = 0xffff

.field private static final blacklist MSG_ON_FILTER_EVENT:I = 0x2

.field private static final blacklist MSG_ON_FILTER_STATUS:I = 0x3

.field private static final blacklist MSG_ON_LNB_EVENT:I = 0x4

.field private static final blacklist MSG_RESOURCE_LOST:I = 0x1

.field public static final whitelist RESULT_INVALID_ARGUMENT:I = 0x4

.field public static final whitelist RESULT_INVALID_STATE:I = 0x3

.field public static final whitelist RESULT_NOT_INITIALIZED:I = 0x2

.field public static final whitelist RESULT_OUT_OF_MEMORY:I = 0x5

.field public static final whitelist RESULT_SUCCESS:I = 0x0

.field public static final whitelist RESULT_UNAVAILABLE:I = 0x1

.field public static final whitelist RESULT_UNKNOWN_ERROR:I = 0x6

.field public static final whitelist SCAN_TYPE_AUTO:I = 0x1

.field public static final whitelist SCAN_TYPE_BLIND:I = 0x2

.field public static final whitelist SCAN_TYPE_UNDEFINED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "MediaTvTuner"

.field public static final whitelist VOID_KEYTOKEN:[B

.field private static blacklist sTunerVersion:I


# instance fields
.field private final blacklist mClientId:I

.field private blacklist mClosed:Z

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDemuxHandle:Ljava/lang/Long;

.field private final blacklist mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mDescramblers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/tuner/Descrambler;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

.field private blacklist mDesiredFrontendId:Ljava/lang/Integer;

.field private blacklist mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

.field private blacklist mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/tv/tuner/filter/Filter;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

.field private blacklist mFrontendCiCamHandle:Ljava/lang/Long;

.field private blacklist mFrontendCiCamId:Ljava/lang/Integer;

.field private final blacklist mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mFrontendHandle:Ljava/lang/Long;

.field private blacklist mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

.field private final blacklist mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mFrontendType:I

.field private blacklist mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

.field private blacklist mLnb:Landroid/media/tv/tuner/Lnb;

.field private blacklist mLnbHandle:Ljava/lang/Long;

.field private final blacklist mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private blacklist mNativeContext:J

.field private blacklist mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

.field private blacklist mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mOnResourceLostListenerLock:Ljava/lang/Object;

.field private blacklist mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

.field private final blacklist mOnTuneEventLock:Ljava/lang/Object;

.field private blacklist mRequestedCiCamId:I

.field private final blacklist mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

.field private blacklist mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

.field private blacklist mScanCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mScanCallbackLock:Ljava/lang/Object;

.field private final blacklist mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field private blacklist mUserId:I


# direct methods
.method public static synthetic blacklist $r8$lambda$1FObZ3CERPVOPa1dcmg6A4yAn-4(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbcAnnexReported$19(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2wXmNMFxPN1j99hJDmzZBh07zpo(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onModulationReported$17(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3vuKWhUUdhyAGNZZTdMnyg5Dv6E(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onProgress$5(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5EE8ncAM389a4Jnu4EaV6NF-etM(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onSymbolRates$7([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BRPd0v6_-VbCJ-I3euTfqTwbuHc(Landroid/media/tv/tuner/Tuner;[J)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onFrequenciesReport$6([J)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Hn3qU9yDoocXI1gWspAVhHRORNQ(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onHierarchy$8(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KGZwtHNzLMH1twiG5SiaoiJ12qs(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onAtsc3PlpInfos$16([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ONFwCOtHJXJxWyttyRlOgXoLaqo(Landroid/media/tv/tuner/Tuner;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->lambda$onUnlocked$3()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YYbuCNGUDUZ9-HAWxkgMZzP9KaA(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onPlpIds$10([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aCPFQ9KrsvwBRnRb1ceUm-9aP44(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onInputStreamIds$12([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$alis4wXVAgjfxQAS_mK5biVyY_0(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbsStandard$13(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dcL51-O3EH6PqbIRJD55bfQv6Oc(Landroid/media/tv/tuner/Tuner;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onPriorityReported$18(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eGHlVKOctaOVkJ8S5U6E6mR9QMw(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onSignalType$9(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eN8P2Pn8nsoBFjSiRDs0gK4Z_a4(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onFrontendEvent$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iRo7M-Sb-xnNgUFrBFffQgYSqgE(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbtCellIdsReported$20([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iwPivbDfgHkgq-fYgjRgREw8mfI(Landroid/media/tv/tuner/Tuner;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->lambda$onScanStopped$4()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k3mPxd60d1g7ohUjrF79Yek8DV8(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onDvbtStandard$14(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sxlvg9gtqfSlysj7t9T1KGQT97w(Landroid/media/tv/tuner/Tuner;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onAnalogSifStandard$15(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tyfkoqhPBmBorDf0xHlPulphvdI(Landroid/media/tv/tuner/Tuner;[I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->lambda$onGroupIds$11([I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$v5bxOz0OYS2vWKwvrX3P_PhIezI(Landroid/media/tv/tuner/Tuner;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->lambda$onLocked$2()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrontend(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$Frontend;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$EventHandler;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnResourceLostListener(Landroid/media/tv/tuner/Tuner;)Landroid/media/tv/tuner/Tuner$OnResourceLostListener;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnResourceLostListenerExecutor(Landroid/media/tv/tuner/Tuner;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnResourceLostListenerLock(Landroid/media/tv/tuner/Tuner;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Landroid/media/tv/tuner/Tuner;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseAll(Landroid/media/tv/tuner/Tuner;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseAll()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Landroid/media/tv/tuner/Tuner;->VOID_KEYTOKEN:[B

    .line 251
    const/4 v0, 0x3

    const-string v2, "MediaTvTuner"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    .line 278
    :try_start_11
    const-string/jumbo v0, "media_tv_tuner"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Landroid/media/tv/tuner/Tuner;->nativeInit()V

    .line 281
    const-class v0, Landroid/media/MediaCodec;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_23
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_11 .. :try_end_23} :catch_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_23} :catch_24

    goto :goto_32

    .line 284
    :catch_24
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "MediaCodec class not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 282
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2b
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v3, "tuner JNI library not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_32
    nop

    .line 292
    :goto_33
    sput v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tvInputSessionId"    # Ljava/lang/String;
    .param p3, "useCase"    # I

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Landroid/media/tv/tuner/DemuxInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/DemuxInfo;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    .line 295
    iput-boolean v1, p0, Landroid/media/tv/tuner/Tuner;->mClosed:Z

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 302
    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 303
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    .line 320
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    .line 321
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    .line 322
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    .line 323
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 324
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 325
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 326
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    .line 335
    new-instance v0, Landroid/media/tv/tuner/Tuner$1;

    invoke-direct {v0, p0}, Landroid/media/tv/tuner/Tuner$1;-><init>(Landroid/media/tv/tuner/Tuner;)V

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 359
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mContext:Landroid/content/Context;

    .line 360
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mContext:Landroid/content/Context;

    const-class v2, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 363
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_de

    .line 369
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeSetup()V

    .line 370
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetTunerVersion()I

    move-result v0

    sput v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 371
    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    const-string v2, "MediaTvTuner"

    if-nez v0, :cond_81

    .line 372
    const-string v0, "Unknown Tuner version!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 374
    :cond_81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Tuner version is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v3, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 375
    invoke-static {v3}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 376
    invoke-static {v4}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_b1
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v0, :cond_bb

    .line 379
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    .line 382
    :cond_bb
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 383
    .local v0, "clientId":[I
    new-instance v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v2}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    .line 384
    .local v2, "profile":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    iput-object p2, v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 385
    iput p3, v2, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 386
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v4, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iget-object v5, p0, Landroid/media/tv/tuner/Tuner;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-virtual {v3, v2, v4, v5, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V

    .line 388
    aget v1, v0, v1

    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    .line 390
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 391
    return-void

    .line 364
    .end local v0    # "clientId":[I
    .end local v2    # "profile":Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    :cond_de
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tuner instance is created, but the device doesn\'t have tuner feature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist acquireTRMSLock(Ljava/lang/String;)V
    .registers 5
    .param p1, "functionNameForLog"    # Ljava/lang/String;

    .line 2890
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_28

    .line 2891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTEMPT:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    :cond_28
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->acquireLock(I)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED:acquireLock() in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for clientId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - this can cause deadlock between Tuner API calls and onReclaimResources()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :cond_5a
    return-void
.end method

.method private blacklist checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z
    .registers 5
    .param p1, "resourceType"    # I
    .param p2, "localLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 2776
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_34

    .line 2802
    :pswitch_4
    return v0

    .line 2796
    :pswitch_5
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    if-nez v1, :cond_31

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2797
    return v0

    .line 2784
    :pswitch_10
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-nez v1, :cond_31

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2785
    return v0

    .line 2790
    :pswitch_1b
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    if-nez v1, :cond_31

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2791
    return v0

    .line 2778
    :pswitch_26
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    if-nez v1, :cond_31

    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2779
    return v0

    .line 2804
    :cond_31
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_26
        :pswitch_1b
        :pswitch_4
        :pswitch_10
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist closeLnb()V
    .registers 4

    .line 934
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 937
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_50

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_2d

    .line 938
    :try_start_b
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_27

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling mLnb.close() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_27
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v0}, Landroid/media/tv/tuner/Lnb;->closeInternal()V

    goto :goto_49

    .line 943
    :cond_2d
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_49

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT calling mLnb.close() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_b .. :try_end_49} :catchall_50

    .line 948
    :cond_49
    :goto_49
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 949
    nop

    .line 950
    return-void

    .line 948
    :catchall_50
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 949
    throw v0
.end method

.method private blacklist configureDemuxInternal(Landroid/media/tv/tuner/DemuxInfo;Z)I
    .registers 14
    .param p1, "desiredDemuxInfo"    # Landroid/media/tv/tuner/DemuxInfo;
    .param p2, "reduceDesiredFilterTypes"    # Z

    .line 2662
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 2663
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    if-eqz v1, :cond_d

    .line 2664
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFilters()V

    .line 2665
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDemux()V

    .line 2667
    :cond_d
    return v0

    .line 2670
    :cond_e
    invoke-virtual {p1}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v1

    .line 2674
    .local v1, "desiredFilterTypes":I
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v2}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v2

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_23

    .line 2676
    if-eqz p2, :cond_22

    .line 2677
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v2, v1}, Landroid/media/tv/tuner/DemuxInfo;->setFilterTypes(I)V

    .line 2679
    :cond_22
    return v0

    .line 2683
    :cond_23
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;

    move-result-object v2

    .line 2684
    .local v2, "caps":Landroid/media/tv/tuner/DemuxCapabilities;
    const-string v3, "MediaTvTuner"

    const/4 v4, 0x1

    if-nez v2, :cond_32

    .line 2685
    const-string v0, "configureDemuxInternal:failed to get DemuxCapabilities"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    return v4

    .line 2689
    :cond_32
    invoke-virtual {v2}, Landroid/media/tv/tuner/DemuxCapabilities;->getFilterTypeCapabilityList()[I

    move-result-object v5

    .line 2690
    .local v5, "filterCapsList":[I
    array-length v6, v5

    if-gtz v6, :cond_3f

    .line 2691
    const-string v0, "configureDemuxInternal: getFilterTypeCapabilityList() returned an empty array"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    return v4

    .line 2696
    :cond_3f
    const/4 v6, 0x0

    .line 2697
    .local v6, "supported":Z
    array-length v7, v5

    move v8, v0

    :goto_42
    if-ge v8, v7, :cond_4f

    aget v9, v5, v8

    .line 2698
    .local v9, "filterCaps":I
    and-int v10, v1, v9

    if-ne v10, v1, :cond_4c

    .line 2699
    const/4 v6, 0x1

    .line 2700
    goto :goto_4f

    .line 2697
    .end local v9    # "filterCaps":I
    :cond_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 2703
    :cond_4f
    :goto_4f
    if-nez v6, :cond_6e

    .line 2704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configureDemuxInternal: requested caps:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " is not supported by the system"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    return v4

    .line 2710
    :cond_6e
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    if-eqz v3, :cond_8d

    .line 2711
    if-eqz v1, :cond_8d

    .line 2714
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxInfo(J)Landroid/media/tv/tuner/DemuxInfo;

    move-result-object v3

    .line 2715
    .local v3, "currentDemuxInfo":Landroid/media/tv/tuner/DemuxInfo;
    if-eqz v3, :cond_8d

    .line 2716
    invoke-virtual {v3}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v4

    and-int/2addr v4, v1

    if-eq v4, v1, :cond_8d

    .line 2718
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFilters()V

    .line 2719
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDemux()V

    .line 2724
    .end local v3    # "currentDemuxInfo":Landroid/media/tv/tuner/DemuxInfo;
    :cond_8d
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v3, v1}, Landroid/media/tv/tuner/DemuxInfo;->setFilterTypes(I)V

    .line 2725
    return v0
.end method

.method private blacklist createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;
    .registers 4

    .line 1095
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    .local v1, "looper":Landroid/os/Looper;
    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 1096
    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner-IA;)V

    return-object v0

    .line 1097
    :cond_e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1b

    .line 1098
    new-instance v0, Landroid/media/tv/tuner/Tuner$EventHandler;

    invoke-direct {v0, p0, v1, v2}, Landroid/media/tv/tuner/Tuner$EventHandler;-><init>(Landroid/media/tv/tuner/Tuner;Landroid/os/Looper;Landroid/media/tv/tuner/Tuner-IA;)V

    return-object v0

    .line 1100
    :cond_1b
    return-object v2
.end method

.method private blacklist getFrontendInfoListInternal()[Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 8

    .line 398
    invoke-virtual {p0}, Landroid/media/tv/tuner/Tuner;->getFrontendIds()Ljava/util/List;

    move-result-object v0

    .line 399
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_8

    .line 400
    const/4 v1, 0x0

    return-object v1

    .line 402
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 403
    .local v1, "infos":[Landroid/media/tv/tuner/frontend/FrontendInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 404
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 405
    .local v3, "id":I
    invoke-virtual {p0, v3}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v4

    .line 406
    .local v4, "frontendInfo":Landroid/media/tv/tuner/frontend/FrontendInfo;
    if-nez v4, :cond_44

    .line 407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get a FrontendInfo on frontend id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaTvTuner"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    goto :goto_46

    .line 410
    :cond_44
    aput-object v4, v1, v2

    .line 403
    .end local v3    # "id":I
    .end local v4    # "frontendInfo":Landroid/media/tv/tuner/frontend/FrontendInfo;
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 412
    .end local v2    # "i":I
    :cond_49
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    return-object v2
.end method

.method public static blacklist getTunerVersion()I
    .registers 1

    .line 417
    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    return v0
.end method

.method private blacklist isFrontendOwner()Z
    .registers 5

    .line 620
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 621
    .local v0, "notAnOwner":Z
    :goto_9
    if-eqz v0, :cond_14

    .line 622
    const-string v1, "MediaTvTuner"

    const-string/jumbo v3, "transferOwner() - cannot be called on the non-owner"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return v2

    .line 625
    :cond_14
    return v1
.end method

.method private blacklist isNewOwnerQualifiedForTransfer(Landroid/media/tv/tuner/Tuner;)Z
    .registers 7
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 634
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_12

    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    .line 635
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 636
    .local v0, "newOwnerIsTheCurrentSharee":Z
    :goto_13
    const-string v3, "MediaTvTuner"

    if-nez v0, :cond_1e

    .line 637
    const-string/jumbo v1, "transferOwner() - new owner must be the current sharee"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return v2

    .line 642
    :cond_1e
    iget-object v4, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    if-nez v4, :cond_29

    iget-object v4, p1, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v4, :cond_27

    goto :goto_29

    :cond_27
    move v4, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v4, v1

    .line 644
    .local v4, "newOwnerAlreadyHoldsToBeSharedResource":Z
    :goto_2a
    if-eqz v4, :cond_33

    .line 645
    const-string/jumbo v1, "transferOwner() - new owner cannot be holding CiCam nor Lnb resource"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return v2

    .line 650
    :cond_33
    return v1
.end method

.method static synthetic blacklist lambda$getFrontendInfoListInternal$0(I)[Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 2
    .param p0, "x$0"    # I

    .line 412
    new-array v0, p0, [Landroid/media/tv/tuner/frontend/FrontendInfo;

    return-object v0
.end method

.method private synthetic blacklist lambda$onAnalogSifStandard$15(I)V
    .registers 4
    .param p1, "sif"    # I

    .line 2184
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2185
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2186
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAnalogSifStandardReported(I)V

    .line 2188
    :cond_c
    monitor-exit v0

    .line 2189
    return-void

    .line 2188
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onAtsc3PlpInfos$16([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 4
    .param p1, "atsc3PlpInfos"    # [Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    .line 2198
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2199
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2200
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onAtsc3PlpInfosReported([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    .line 2202
    :cond_c
    monitor-exit v0

    .line 2203
    return-void

    .line 2202
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onDvbcAnnexReported$19(I)V
    .registers 4
    .param p1, "dvbcAnnex"    # I

    .line 2240
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2241
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2242
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbcAnnexReported(I)V

    .line 2244
    :cond_c
    monitor-exit v0

    .line 2245
    return-void

    .line 2244
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onDvbsStandard$13(I)V
    .registers 4
    .param p1, "dvbsStandandard"    # I

    .line 2156
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2157
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2158
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbsStandardReported(I)V

    .line 2160
    :cond_c
    monitor-exit v0

    .line 2161
    return-void

    .line 2160
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onDvbtCellIdsReported$20([I)V
    .registers 4
    .param p1, "dvbtCellIds"    # [I

    .line 2254
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2255
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2256
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbtCellIdsReported([I)V

    .line 2258
    :cond_c
    monitor-exit v0

    .line 2259
    return-void

    .line 2258
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onDvbtStandard$14(I)V
    .registers 4
    .param p1, "dvbtStandard"    # I

    .line 2170
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2171
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2172
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onDvbtStandardReported(I)V

    .line 2174
    :cond_c
    monitor-exit v0

    .line 2175
    return-void

    .line 2174
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onFrequenciesReport$6([J)V
    .registers 4
    .param p1, "frequencies"    # [J

    .line 2058
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2059
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2060
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onFrequenciesLongReported([J)V

    .line 2062
    :cond_c
    monitor-exit v0

    .line 2063
    return-void

    .line 2062
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onFrontendEvent$1(I)V
    .registers 4
    .param p1, "eventType"    # I

    .line 1964
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1965
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    if-eqz v1, :cond_c

    .line 1966
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/OnTuneEventListener;->onTuneEvent(I)V

    .line 1968
    :cond_c
    monitor-exit v0

    .line 1969
    return-void

    .line 1968
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onGroupIds$11([I)V
    .registers 4
    .param p1, "groupIds"    # [I

    .line 2128
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2129
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2130
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onGroupIdsReported([I)V

    .line 2132
    :cond_c
    monitor-exit v0

    .line 2133
    return-void

    .line 2132
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onHierarchy$8(I)V
    .registers 4
    .param p1, "hierarchy"    # I

    .line 2086
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2087
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2088
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onHierarchyReported(I)V

    .line 2090
    :cond_c
    monitor-exit v0

    .line 2091
    return-void

    .line 2090
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onInputStreamIds$12([I)V
    .registers 4
    .param p1, "inputStreamIds"    # [I

    .line 2142
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2143
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2144
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onInputStreamIdsReported([I)V

    .line 2146
    :cond_c
    monitor-exit v0

    .line 2147
    return-void

    .line 2146
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onLocked$2()V
    .registers 3

    .line 1998
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1999
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2000
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onLocked()V

    .line 2002
    :cond_c
    monitor-exit v0

    .line 2003
    return-void

    .line 2002
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onModulationReported$17(I)V
    .registers 4
    .param p1, "modulation"    # I

    .line 2212
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2213
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2214
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onModulationReported(I)V

    .line 2216
    :cond_c
    monitor-exit v0

    .line 2217
    return-void

    .line 2216
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onPlpIds$10([I)V
    .registers 4
    .param p1, "plpIds"    # [I

    .line 2114
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2115
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2116
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onPlpIdsReported([I)V

    .line 2118
    :cond_c
    monitor-exit v0

    .line 2119
    return-void

    .line 2118
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onPriorityReported$18(Z)V
    .registers 4
    .param p1, "isHighPriority"    # Z

    .line 2226
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2227
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2228
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onPriorityReported(Z)V

    .line 2230
    :cond_c
    monitor-exit v0

    .line 2231
    return-void

    .line 2230
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onProgress$5(I)V
    .registers 4
    .param p1, "percent"    # I

    .line 2044
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2045
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2046
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onProgress(I)V

    .line 2048
    :cond_c
    monitor-exit v0

    .line 2049
    return-void

    .line 2048
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onScanStopped$4()V
    .registers 3

    .line 2030
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2031
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2032
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onScanStopped()V

    .line 2034
    :cond_c
    monitor-exit v0

    .line 2035
    return-void

    .line 2034
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onSignalType$9(I)V
    .registers 4
    .param p1, "signalType"    # I

    .line 2100
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2101
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2102
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSignalTypeReported(I)V

    .line 2104
    :cond_c
    monitor-exit v0

    .line 2105
    return-void

    .line 2104
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onSymbolRates$7([I)V
    .registers 4
    .param p1, "rate"    # [I

    .line 2072
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2073
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2074
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1, p1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onSymbolRatesReported([I)V

    .line 2076
    :cond_c
    monitor-exit v0

    .line 2077
    return-void

    .line 2076
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private synthetic blacklist lambda$onUnlocked$3()V
    .registers 3

    .line 2016
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2017
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_c

    .line 2018
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    invoke-interface {v1}, Landroid/media/tv/tuner/frontend/ScanCallback;->onUnlocked()V

    .line 2020
    :cond_c
    monitor-exit v0

    .line 2021
    return-void

    .line 2020
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private native blacklist nativeClose()I
.end method

.method private native blacklist nativeCloseDemux(J)I
.end method

.method private native blacklist nativeCloseFrontend(J)I
.end method

.method private native blacklist nativeConnectCiCam(I)I
.end method

.method private native blacklist nativeDisconnectCiCam()I
.end method

.method private native blacklist nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;
.end method

.method private native blacklist nativeGetAvSyncTime(I)Ljava/lang/Long;
.end method

.method private native blacklist nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
.end method

.method private native blacklist nativeGetDemuxInfo(J)Landroid/media/tv/tuner/DemuxInfo;
.end method

.method private native blacklist nativeGetFrontendHardwareInfo()Ljava/lang/String;
.end method

.method private native blacklist nativeGetFrontendIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private native blacklist nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
.end method

.method private native blacklist nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
.end method

.method private native blacklist nativeGetFrontendStatusReadiness([I)[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
.end method

.method private native blacklist nativeGetMaxNumberOfFrontends(I)I
.end method

.method private native blacklist nativeGetTunerVersion()I
.end method

.method private static native blacklist nativeInit()V
.end method

.method private native blacklist nativeIsLnaSupported()Z
.end method

.method private native blacklist nativeLinkCiCam(I)I
.end method

.method private native blacklist nativeOpenDemuxByhandle(J)I
.end method

.method private native blacklist nativeOpenDescramblerByHandle(J)Landroid/media/tv/tuner/Descrambler;
.end method

.method private native blacklist nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;
.end method

.method private native blacklist nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;
.end method

.method private native blacklist nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;
.end method

.method private native blacklist nativeOpenFrontendByHandle(J)Landroid/media/tv/tuner/Tuner$Frontend;
.end method

.method private native blacklist nativeOpenLnbByHandle(J)Landroid/media/tv/tuner/Lnb;
.end method

.method private native blacklist nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;
.end method

.method private static native blacklist nativeOpenSharedFilter(Ljava/lang/String;)Landroid/media/tv/tuner/filter/SharedFilter;
.end method

.method private native blacklist nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
.end method

.method private native blacklist nativeRegisterFeCbListener(J)V
.end method

.method private native blacklist nativeRemoveOutputPid(I)I
.end method

.method private native blacklist nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I
.end method

.method private native blacklist nativeSetLna(Z)I
.end method

.method private native blacklist nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I
.end method

.method private native blacklist nativeSetMaxNumberOfFrontends(II)I
.end method

.method private native blacklist nativeSetup()V
.end method

.method private native blacklist nativeShareFrontend(I)I
.end method

.method private native blacklist nativeStopScan()I
.end method

.method private native blacklist nativeStopTune()I
.end method

.method private native blacklist nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I
.end method

.method private native blacklist nativeUnlinkCiCam(I)I
.end method

.method private native blacklist nativeUnregisterFeCbListener(J)V
.end method

.method private native blacklist nativeUnshareFrontend()I
.end method

.method private native blacklist nativeUpdateFrontend(J)V
.end method

.method private blacklist onAnalogSifStandard(I)V
    .registers 5
    .param p1, "sif"    # I

    .line 2181
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2182
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2183
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda15;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2191
    :cond_15
    monitor-exit v0

    .line 2192
    return-void

    .line 2191
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onAtsc3PlpInfos([Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V
    .registers 5
    .param p1, "atsc3PlpInfos"    # [Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;

    .line 2195
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2196
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2197
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda17;-><init>(Landroid/media/tv/tuner/Tuner;[Landroid/media/tv/tuner/frontend/Atsc3PlpInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2205
    :cond_15
    monitor-exit v0

    .line 2206
    return-void

    .line 2205
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onDvbcAnnexReported(I)V
    .registers 5
    .param p1, "dvbcAnnex"    # I

    .line 2237
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2238
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2239
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda5;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2247
    :cond_15
    monitor-exit v0

    .line 2248
    return-void

    .line 2247
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onDvbsStandard(I)V
    .registers 5
    .param p1, "dvbsStandandard"    # I

    .line 2153
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2154
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2155
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda9;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2163
    :cond_15
    monitor-exit v0

    .line 2164
    return-void

    .line 2163
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onDvbtCellIdsReported([I)V
    .registers 5
    .param p1, "dvbtCellIds"    # [I

    .line 2251
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2252
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2253
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2261
    :cond_15
    monitor-exit v0

    .line 2262
    return-void

    .line 2261
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onDvbtStandard(I)V
    .registers 5
    .param p1, "dvbtStandard"    # I

    .line 2167
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2168
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2169
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda11;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2177
    :cond_15
    monitor-exit v0

    .line 2178
    return-void

    .line 2177
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onFrequenciesReport([J)V
    .registers 5
    .param p1, "frequencies"    # [J

    .line 2055
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2056
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2057
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda3;-><init>(Landroid/media/tv/tuner/Tuner;[J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2065
    :cond_15
    monitor-exit v0

    .line 2066
    return-void

    .line 2065
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onFrontendEvent(I)V
    .registers 5
    .param p1, "eventType"    # I

    .line 1960
    const-string v0, "MediaTvTuner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got event from tuning. Event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1962
    :try_start_25
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    if-eqz v1, :cond_37

    .line 1963
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda21;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1971
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_5d

    .line 1973
    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for the events from tuning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    const/4 v0, 0x2

    const/16 v1, 0x114

    if-nez p1, :cond_4a

    .line 1975
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1976
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_5c

    .line 1978
    :cond_4a
    const/4 v2, 0x1

    if-ne p1, v2, :cond_54

    .line 1979
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1980
    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    goto :goto_5c

    .line 1982
    :cond_54
    if-ne p1, v0, :cond_5c

    .line 1983
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1984
    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1987
    :cond_5c
    :goto_5c
    return-void

    .line 1971
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private blacklist onGroupIds([I)V
    .registers 5
    .param p1, "groupIds"    # [I

    .line 2125
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2126
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2127
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda7;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2135
    :cond_15
    monitor-exit v0

    .line 2136
    return-void

    .line 2135
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onHierarchy(I)V
    .registers 5
    .param p1, "hierarchy"    # I

    .line 2083
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2084
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2085
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda8;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2093
    :cond_15
    monitor-exit v0

    .line 2094
    return-void

    .line 2093
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onInputStreamIds([I)V
    .registers 5
    .param p1, "inputStreamIds"    # [I

    .line 2139
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2140
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2141
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda2;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2149
    :cond_15
    monitor-exit v0

    .line 2150
    return-void

    .line 2149
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onLocked()V
    .registers 4

    .line 1990
    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for locked event from scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v1, 0x2

    const/16 v2, 0x114

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1995
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1996
    :try_start_12
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_24

    .line 1997
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda19;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2005
    :cond_24
    monitor-exit v0

    .line 2006
    return-void

    .line 2005
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private blacklist onModulationReported(I)V
    .registers 5
    .param p1, "modulation"    # I

    .line 2209
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2210
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2211
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2219
    :cond_15
    monitor-exit v0

    .line 2220
    return-void

    .line 2219
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onPlpIds([I)V
    .registers 5
    .param p1, "plpIds"    # [I

    .line 2111
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2112
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2113
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda18;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2121
    :cond_15
    monitor-exit v0

    .line 2122
    return-void

    .line 2121
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onPriorityReported(Z)V
    .registers 5
    .param p1, "isHighPriority"    # Z

    .line 2223
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2224
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2225
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda10;-><init>(Landroid/media/tv/tuner/Tuner;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2233
    :cond_15
    monitor-exit v0

    .line 2234
    return-void

    .line 2233
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onProgress(I)V
    .registers 5
    .param p1, "percent"    # I

    .line 2041
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2042
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2043
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda4;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2051
    :cond_15
    monitor-exit v0

    .line 2052
    return-void

    .line 2051
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onScanStopped()V
    .registers 4

    .line 2027
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2028
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2029
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda20;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2037
    :cond_15
    monitor-exit v0

    .line 2038
    return-void

    .line 2037
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onSignalType(I)V
    .registers 5
    .param p1, "signalType"    # I

    .line 2097
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2098
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2099
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda14;-><init>(Landroid/media/tv/tuner/Tuner;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2107
    :cond_15
    monitor-exit v0

    .line 2108
    return-void

    .line 2107
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onSymbolRates([I)V
    .registers 5
    .param p1, "rate"    # [I

    .line 2069
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2070
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_15

    .line 2071
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda16;-><init>(Landroid/media/tv/tuner/Tuner;[I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2079
    :cond_15
    monitor-exit v0

    .line 2080
    return-void

    .line 2079
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private blacklist onUnlocked()V
    .registers 4

    .line 2009
    const-string v0, "MediaTvTuner"

    const-string v1, "Wrote Stats Log for unlocked event from scanning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v1, 0x2

    const/16 v2, 0x114

    invoke-static {v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 2013
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2014
    :try_start_12
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_24

    .line 2015
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Landroid/media/tv/tuner/Tuner$$ExternalSyntheticLambda6;-><init>(Landroid/media/tv/tuner/Tuner;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2023
    :cond_24
    monitor-exit v0

    .line 2024
    return-void

    .line 2023
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public static whitelist openSharedFilter(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/filter/SharedFilterCallback;)Landroid/media/tv/tuner/filter/SharedFilter;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sharedFilterToken"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cb"    # Landroid/media/tv/tuner/filter/SharedFilterCallback;

    .line 2613
    const-string/jumbo v0, "sharedFilterToken must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2614
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2615
    const-string v0, "SharedFilterCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2617
    const-string v0, "android.permission.ACCESS_TV_SHARED_FILTER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_22

    .line 2623
    invoke-static {p1}, Landroid/media/tv/tuner/Tuner;->nativeOpenSharedFilter(Ljava/lang/String;)Landroid/media/tv/tuner/filter/SharedFilter;

    move-result-object v0

    .line 2624
    .local v0, "filter":Landroid/media/tv/tuner/filter/SharedFilter;
    if-eqz v0, :cond_21

    .line 2625
    invoke-virtual {v0, p3, p2}, Landroid/media/tv/tuner/filter/SharedFilter;->setCallback(Landroid/media/tv/tuner/filter/SharedFilterCallback;Ljava/util/concurrent/Executor;)V

    .line 2627
    :cond_21
    return-object v0

    .line 2620
    .end local v0    # "filter":Landroid/media/tv/tuner/filter/SharedFilter;
    :cond_22
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have ACCESS_TV_SHAREDFILTER permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist registerFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V
    .registers 4
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;

    .line 814
    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeRegisterFeCbListener(J)V

    .line 815
    return-void
.end method

.method private blacklist releaseAll()V
    .registers 1

    .line 999
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseCiCam()V

    .line 1000
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFrontend()V

    .line 1001
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->closeLnb()V

    .line 1002
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDescramblers()V

    .line 1003
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFilters()V

    .line 1004
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseDemux()V

    .line 1005
    return-void
.end method

.method private blacklist releaseCiCam()V
    .registers 5

    .line 911
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 913
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_72

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_4f

    .line 914
    :try_start_b
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasing CiCam : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_34
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeUnlinkCiCam(I)I

    .line 918
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCiCam(JI)V

    .line 919
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    goto :goto_6b

    .line 921
    :cond_4f
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_6b

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT releasing CiCam : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_b .. :try_end_6b} :catchall_72

    .line 926
    :cond_6b
    :goto_6b
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 927
    nop

    .line 928
    return-void

    .line 926
    :catchall_72
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 927
    throw v0
.end method

.method private blacklist releaseDemux()V
    .registers 6

    .line 982
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 984
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    if-eqz v0, :cond_2a

    .line 985
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeCloseDemux(J)I

    move-result v0

    .line 986
    .local v0, "res":I
    if-eqz v0, :cond_1a

    .line 987
    const-string v1, "failed to close demux"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    .line 989
    :cond_1a
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDemux(JI)V

    .line 990
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_31

    .line 993
    .end local v0    # "res":I
    :cond_2a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 994
    nop

    .line 995
    return-void

    .line 993
    :catchall_31
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 994
    throw v0
.end method

.method private blacklist releaseDescramblers()V
    .registers 9

    .line 967
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    monitor-enter v0

    .line 968
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 969
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 970
    .local v2, "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/Descrambler;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tuner/Descrambler;

    .line 971
    .local v3, "descrambler":Landroid/media/tv/tuner/Descrambler;
    if-eqz v3, :cond_32

    .line 972
    invoke-virtual {v3}, Landroid/media/tv/tuner/Descrambler;->close()V

    .line 974
    :cond_32
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget v7, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(JI)V

    .line 975
    .end local v2    # "d":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/Descrambler;>;>;"
    .end local v3    # "descrambler":Landroid/media/tv/tuner/Descrambler;
    goto :goto_15

    .line 976
    :cond_44
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 978
    :cond_49
    monitor-exit v0

    .line 979
    return-void

    .line 978
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private blacklist releaseFilters()V
    .registers 5

    .line 953
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    monitor-enter v0

    .line 954
    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 955
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 956
    .local v2, "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/tuner/filter/Filter;

    .line 957
    .local v3, "filter":Landroid/media/tv/tuner/filter/Filter;
    if-eqz v3, :cond_28

    .line 958
    invoke-virtual {v3}, Landroid/media/tv/tuner/filter/Filter;->close()V

    .line 960
    .end local v2    # "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    .end local v3    # "filter":Landroid/media/tv/tuner/filter/Filter;
    :cond_28
    goto :goto_11

    .line 961
    :cond_29
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 963
    :cond_2e
    monitor-exit v0

    .line 964
    return-void

    .line 963
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private blacklist releaseFrontend()V
    .registers 6

    .line 866
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    const-string v1, "MediaTvTuner"

    if-eqz v0, :cond_b

    .line 867
    const-string v0, "Tuner#releaseFrontend"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_b
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 871
    :try_start_10
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    if-eqz v0, :cond_93

    .line 872
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 873
    const-string/jumbo v0, "mFrontendHandle not null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_1e
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 876
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_2d

    .line 877
    const-string/jumbo v0, "mFeOwnerTuner not null - sharee"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_2d
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {v0, p0}, Landroid/media/tv/tuner/Tuner;->unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    .line 881
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 882
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeUnshareFrontend()I

    goto :goto_53

    .line 884
    :cond_38
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_42

    .line 885
    const-string/jumbo v0, "mFeOwnerTuner null - owner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_42
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/media/tv/tuner/Tuner;->nativeCloseFrontend(J)I

    move-result v0

    .line 889
    .local v0, "res":I
    if-eqz v0, :cond_53

    .line 890
    const-string v3, "failed to close frontend"

    invoke-static {v0, v3}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    .line 893
    .end local v0    # "res":I
    :cond_53
    :goto_53
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_7b

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call TRM#releaseFrontend :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_7b
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseFrontend(JI)V

    .line 897
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 898
    const/16 v1, 0x114

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 900
    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V
    :try_end_93
    .catchall {:try_start_10 .. :try_end_93} :catchall_9a

    .line 903
    :cond_93
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 904
    nop

    .line 905
    return-void

    .line 903
    :catchall_9a
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 904
    throw v0
.end method

.method private blacklist releaseTRMSLock()V
    .registers 3

    .line 2902
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLock(I)Z

    .line 2903
    return-void
.end method

.method private blacklist replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V
    .registers 5
    .param p1, "src"    # Landroid/media/tv/tuner/Tuner;

    .line 569
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 571
    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_2c

    .line 572
    :try_start_9
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_26

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetting CiCamParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    .line 576
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    goto :goto_81

    .line 578
    :cond_2c
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_79

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying CiCamParams from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mFrontendCiCamHandle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFrontendCiCamId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_79
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    .line 584
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;
    :try_end_81
    .catchall {:try_start_9 .. :try_end_81} :catchall_88

    .line 587
    :goto_81
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 588
    nop

    .line 589
    return-void

    .line 587
    :catchall_88
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 588
    throw v0
.end method

.method private blacklist replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V
    .registers 5
    .param p1, "src"    # Landroid/media/tv/tuner/Tuner;

    .line 528
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 530
    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_31

    .line 531
    :try_start_9
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_26

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetting Frontend params for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 535
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    .line 536
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 537
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    goto :goto_69

    .line 539
    :cond_31
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_59

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying Frontend params from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_59
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 544
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    .line 545
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 546
    iget v0, p1, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I
    :try_end_69
    .catchall {:try_start_9 .. :try_end_69} :catchall_70

    .line 549
    :goto_69
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 550
    nop

    .line 551
    return-void

    .line 549
    :catchall_70
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 550
    throw v0
.end method

.method private blacklist replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V
    .registers 5
    .param p1, "src"    # Landroid/media/tv/tuner/Tuner;

    .line 595
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 597
    const-string v0, "MediaTvTuner"

    if-nez p1, :cond_19

    .line 598
    :try_start_9
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_13

    .line 599
    const-string/jumbo v1, "resetting Lnb params"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 602
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;

    goto :goto_49

    .line 604
    :cond_19
    sget-boolean v1, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v1, :cond_41

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copying Lnb params from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_41
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 608
    iget-object v0, p1, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;
    :try_end_49
    .catchall {:try_start_9 .. :try_end_49} :catchall_50

    .line 611
    :goto_49
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 612
    nop

    .line 613
    return-void

    .line 611
    :catchall_50
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 612
    throw v0
.end method

.method private blacklist requestDemux()Z
    .registers 6

    .line 2729
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 2730
    .local v0, "demuxHandle":[J
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;-><init>()V

    .line 2731
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->clientId:I

    .line 2732
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    invoke-virtual {v2}, Landroid/media/tv/tuner/DemuxInfo;->getFilterTypes()I

    move-result v2

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->desiredFilterTypes:I

    .line 2733
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[J)Z

    move-result v2

    .line 2734
    .local v2, "granted":Z
    if-eqz v2, :cond_2e

    .line 2735
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    .line 2736
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/media/tv/tuner/Tuner;->nativeOpenDemuxByhandle(J)I

    .line 2738
    :cond_2e
    return v2
.end method

.method private blacklist requestDescrambler()Landroid/media/tv/tuner/Descrambler;
    .registers 11

    .line 2742
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 2743
    .local v0, "descramblerHandle":[J
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;-><init>()V

    .line 2744
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->clientId:I

    .line 2745
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[J)Z

    move-result v2

    .line 2746
    .local v2, "granted":Z
    if-nez v2, :cond_16

    .line 2747
    const/4 v3, 0x0

    return-object v3

    .line 2749
    :cond_16
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    .line 2750
    .local v3, "handle":J
    invoke-direct {p0, v3, v4}, Landroid/media/tv/tuner/Tuner;->nativeOpenDescramblerByHandle(J)Landroid/media/tv/tuner/Descrambler;

    move-result-object v5

    .line 2751
    .local v5, "descrambler":Landroid/media/tv/tuner/Descrambler;
    if-eqz v5, :cond_36

    .line 2752
    iget-object v6, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    monitor-enter v6

    .line 2753
    :try_start_22
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2754
    .local v7, "weakDescrambler":Ljava/lang/ref/WeakReference;
    iget-object v8, p0, Landroid/media/tv/tuner/Tuner;->mDescramblers:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2755
    nop

    .end local v7    # "weakDescrambler":Ljava/lang/ref/WeakReference;
    monitor-exit v6

    goto :goto_3d

    :catchall_33
    move-exception v7

    monitor-exit v6
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_33

    throw v7

    .line 2757
    :cond_36
    iget-object v6, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v7, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v6, v3, v4, v7}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseDescrambler(JI)V

    .line 2759
    :goto_3d
    return-object v5
.end method

.method private blacklist requestFrontend()Z
    .registers 6

    .line 1391
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 1392
    .local v0, "feHandle":[J
    const/4 v1, 0x0

    .line 1394
    .local v1, "granted":Z
    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;

    invoke-direct {v3}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;-><init>()V

    .line 1395
    .local v3, "request":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v4, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->clientId:I

    .line 1396
    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    iput v4, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->frontendType:I

    .line 1397
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    if-nez v4, :cond_18

    .line 1398
    const/4 v4, -0x1

    goto :goto_1e

    .line 1399
    :cond_18
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1e
    iput v4, v3, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->desiredId:I

    .line 1400
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v4, v3, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[J)Z

    move-result v4
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_70

    .line 1402
    .end local v1    # "granted":Z
    .end local v3    # "request":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .local v4, "granted":Z
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    .line 1403
    nop

    .line 1404
    if-eqz v4, :cond_40

    .line 1405
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    .line 1406
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroid/media/tv/tuner/Tuner;->nativeOpenFrontendByHandle(J)Landroid/media/tv/tuner/Tuner$Frontend;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 1411
    :cond_40
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_50

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_50

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_68

    .line 1414
    :cond_50
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1416
    :try_start_55
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;

    if-eqz v1, :cond_62

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v1, :cond_62

    .line 1417
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v1}, Landroid/media/tv/tuner/Tuner;->nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I
    :try_end_62
    .catchall {:try_start_55 .. :try_end_62} :catchall_69

    .line 1420
    :cond_62
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1421
    nop

    .line 1423
    :cond_68
    return v4

    .line 1420
    :catchall_69
    move-exception v1

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1421
    throw v1

    .line 1402
    .end local v4    # "granted":Z
    .restart local v1    # "granted":Z
    :catchall_70
    move-exception v3

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    .line 1403
    throw v3
.end method

.method private blacklist requestFrontendCiCam(I)Z
    .registers 7
    .param p1, "ciCamId"    # I

    .line 2763
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 2764
    .local v0, "ciCamHandle":[J
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;-><init>()V

    .line 2765
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->clientId:I

    .line 2766
    iput p1, v1, Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;->ciCamId:I

    .line 2767
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestCiCam(Landroid/media/tv/tunerresourcemanager/TunerCiCamRequest;[J)Z

    move-result v2

    .line 2768
    .local v2, "granted":Z
    if-eqz v2, :cond_25

    .line 2769
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    .line 2770
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    .line 2772
    :cond_25
    return v2
.end method

.method private blacklist requestLnb()Z
    .registers 6

    .line 2399
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 2400
    .local v0, "lnbHandle":[J
    new-instance v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;-><init>()V

    .line 2401
    .local v1, "request":Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iput v2, v1, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->clientId:I

    .line 2402
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[J)Z

    move-result v2

    .line 2403
    .local v2, "granted":Z
    if-eqz v2, :cond_29

    .line 2404
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;

    .line 2405
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByHandle(J)Landroid/media/tv/tuner/Lnb;

    move-result-object v3

    iput-object v3, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 2407
    :cond_29
    return v2
.end method

.method private blacklist requestResource(ILjava/util/concurrent/locks/ReentrantLock;)Z
    .registers 7
    .param p1, "resourceType"    # I
    .param p2, "localLock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 2814
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 2817
    .local v1, "enableLockOperations":Z
    :goto_6
    if-eqz v1, :cond_1b

    .line 2818
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2819
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1b

    .line 2821
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "local lock must be locked beforehand"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2826
    :cond_1b
    :goto_1b
    if-eqz v1, :cond_34

    .line 2827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestResource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 2832
    :cond_34
    if-eqz v1, :cond_3c

    .line 2833
    :try_start_36
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3c

    .line 2852
    :catchall_3a
    move-exception v0

    goto :goto_70

    .line 2835
    :cond_3c
    :goto_3c
    packed-switch p1, :pswitch_data_78

    .line 2849
    :pswitch_3f
    nop

    .line 2852
    if-eqz v1, :cond_76

    .line 2853
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    goto :goto_76

    .line 2846
    :pswitch_46
    :try_start_46
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mRequestedCiCamId:I

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->requestFrontendCiCam(I)Z

    move-result v0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_3a

    .line 2852
    if-eqz v1, :cond_51

    .line 2853
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2846
    :cond_51
    return v0

    .line 2840
    :pswitch_52
    :try_start_52
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestLnb()Z

    move-result v0
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_3a

    .line 2852
    if-eqz v1, :cond_5b

    .line 2853
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2840
    :cond_5b
    return v0

    .line 2843
    :pswitch_5c
    :try_start_5c
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDemux()Z

    move-result v0
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_3a

    .line 2852
    if-eqz v1, :cond_65

    .line 2853
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2843
    :cond_65
    return v0

    .line 2837
    :pswitch_66
    :try_start_66
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestFrontend()Z

    move-result v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_3a

    .line 2852
    if-eqz v1, :cond_6f

    .line 2853
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2837
    :cond_6f
    return v0

    .line 2852
    :goto_70
    if-eqz v1, :cond_75

    .line 2853
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2855
    :cond_75
    throw v0

    .line 2849
    :cond_76
    :goto_76
    return v0

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_66
        :pswitch_5c
        :pswitch_3f
        :pswitch_52
        :pswitch_3f
        :pswitch_46
    .end packed-switch
.end method

.method private blacklist setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V
    .registers 4
    .param p1, "owner"    # Landroid/media/tv/tuner/Tuner;

    .line 557
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 559
    :try_start_5
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_e

    .line 561
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 562
    nop

    .line 563
    return-void

    .line 561
    :catchall_e
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 562
    throw v0
.end method

.method private blacklist setLnb(Landroid/media/tv/tuner/Lnb;)I
    .registers 4
    .param p1, "lnb"    # Landroid/media/tv/tuner/Lnb;

    .line 1438
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1440
    :try_start_5
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeSetLnb(Landroid/media/tv/tuner/Lnb;)I

    move-result v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 1442
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1440
    return v0

    .line 1442
    :catchall_f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1443
    throw v0
.end method

.method private blacklist transferCiCamOwner(Landroid/media/tv/tuner/Tuner;)I
    .registers 8
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 685
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 686
    .local v0, "notAnOwner":Z
    :goto_8
    if-eqz v0, :cond_b

    .line 688
    return v1

    .line 694
    :cond_b
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 695
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->replicateCiCamSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 698
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v4, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 701
    return v1

    .line 703
    :cond_20
    const/4 v1, 0x6

    return v1
.end method

.method private blacklist transferFeOwner(Landroid/media/tv/tuner/Tuner;)I
    .registers 6
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 659
    invoke-virtual {p0}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUpdateFrontend(J)V

    .line 660
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUpdateFrontend(J)V

    .line 663
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateFrontendSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 666
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 667
    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/media/tv/tuner/Tuner;->setFrontendOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 670
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 673
    return v3

    .line 675
    :cond_24
    const/4 v0, 0x6

    return v0
.end method

.method private blacklist transferLnbOwner(Landroid/media/tv/tuner/Tuner;)I
    .registers 8
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 713
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 714
    .local v0, "notAnOwner":Z
    :goto_8
    if-eqz v0, :cond_b

    .line 716
    return v1

    .line 722
    :cond_b
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v2, p1}, Landroid/media/tv/tuner/Lnb;->setOwner(Landroid/media/tv/tuner/Tuner;)V

    .line 724
    invoke-direct {p1, p0}, Landroid/media/tv/tuner/Tuner;->replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 725
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/tv/tuner/Tuner;->replicateLnbSettings(Landroid/media/tv/tuner/Tuner;)V

    .line 728
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v4, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->transferOwner(III)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 731
    return v1

    .line 733
    :cond_25
    const/4 v1, 0x6

    return v1
.end method

.method private blacklist unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V
    .registers 4
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;

    .line 821
    invoke-virtual {p1}, Landroid/media/tv/tuner/Tuner;->getNativeContext()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeUnregisterFeCbListener(J)V

    .line 822
    return-void
.end method


# virtual methods
.method public whitelist applyFrontend(Landroid/media/tv/tuner/frontend/FrontendInfo;)I
    .registers 5
    .param p1, "desiredFrontendInfo"    # Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 2524
    const-string v0, "desiredFrontendInfo must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2525
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2527
    :try_start_a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_7d

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-eqz v0, :cond_1d

    .line 2528
    :try_start_11
    const-string v0, "Operation connot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_7d

    .line 2529
    nop

    .line 2546
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2529
    return v1

    .line 2531
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    if-eqz v0, :cond_2d

    .line 2532
    const-string v0, "A frontend has been opened before"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_7d

    .line 2533
    nop

    .line 2546
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2533
    return v1

    .line 2535
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 2536
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    .line 2537
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_65

    .line 2538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying frontend with type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_65
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_6c
    .catchall {:try_start_2d .. :try_end_6c} :catchall_7d

    if-nez v0, :cond_76

    .line 2542
    nop

    .line 2546
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2542
    const/4 v0, 0x1

    return v0

    .line 2544
    :cond_76
    nop

    .line 2546
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2544
    return v1

    .line 2546
    :catchall_7d
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2547
    throw v0
.end method

.method public whitelist applyFrontendByType(I)I
    .registers 5
    .param p1, "desiredFrontendType"    # I

    .line 2572
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2574
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_61

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-eqz v0, :cond_18

    .line 2575
    :try_start_c
    const-string v0, "Operation connot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_61

    .line 2576
    nop

    .line 2593
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2576
    return v1

    .line 2578
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    if-eqz v0, :cond_28

    .line 2579
    const-string v0, "A frontend has been opened before"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_61

    .line 2580
    nop

    .line 2593
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2580
    return v1

    .line 2583
    :cond_28
    const/4 v0, 0x0

    :try_start_29
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredFrontendId:Ljava/lang/Integer;

    .line 2584
    iput p1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 2585
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_49

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying frontend with type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    :cond_49
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_50
    .catchall {:try_start_29 .. :try_end_50} :catchall_61

    if-nez v0, :cond_5a

    .line 2589
    nop

    .line 2593
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2589
    const/4 v0, 0x1

    return v0

    .line 2591
    :cond_5a
    nop

    .line 2593
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2591
    return v1

    .line 2593
    :catchall_61
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2594
    throw v0
.end method

.method public whitelist cancelScanning()I
    .registers 5

    .line 1370
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1372
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_18

    .line 1373
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_36

    .line 1374
    nop

    .line 1386
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1374
    const/4 v0, 0x3

    return v0

    .line 1376
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_36

    .line 1377
    :try_start_1b
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    const/4 v2, 0x6

    const/16 v3, 0x114

    invoke-static {v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1380
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopScan()I

    move-result v1

    .line 1381
    .local v1, "retVal":I
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    .line 1382
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1383
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_33

    .line 1386
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1383
    return v1

    .line 1384
    .end local v1    # "retVal":I
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :try_start_35
    throw v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 1386
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :catchall_36
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1387
    throw v0
.end method

.method public whitelist cancelTuning()I
    .registers 3

    .line 1272
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1274
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_18

    .line 1275
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_22

    .line 1276
    nop

    .line 1280
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1276
    const/4 v0, 0x3

    return v0

    .line 1278
    :cond_18
    :try_start_18
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeStopTune()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_22

    .line 1280
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1278
    return v0

    .line 1280
    :catchall_22
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1281
    throw v0
.end method

.method public whitelist clearOnTuneEventListener()V
    .registers 3

    .line 1173
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1174
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    .line 1175
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    .line 1176
    monitor-exit v0

    .line 1177
    return-void

    .line 1176
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist clearResourceLostListener()V
    .registers 3

    .line 450
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    .line 452
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    .line 453
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 836
    iget-boolean v0, p0, Landroid/media/tv/tuner/Tuner;->mClosed:Z

    if-eqz v0, :cond_5

    .line 837
    return-void

    .line 839
    :cond_5
    const-string v0, "close()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 841
    const/4 v0, 0x1

    :try_start_b
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseAll()V

    .line 842
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v2, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->unregisterClientProfile(I)V

    .line 843
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeClose()I

    move-result v1

    const-string v2, "failed to close tuner"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_25

    .line 845
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 846
    iput-boolean v0, p0, Landroid/media/tv/tuner/Tuner;->mClosed:Z

    .line 847
    nop

    .line 848
    return-void

    .line 845
    :catchall_25
    move-exception v1

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 846
    iput-boolean v0, p0, Landroid/media/tv/tuner/Tuner;->mClosed:Z

    .line 847
    throw v1
.end method

.method public whitelist closeFrontend()V
    .registers 2

    .line 854
    const-string v0, "closeFrontend()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 856
    :try_start_5
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseFrontend()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 858
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 859
    nop

    .line 860
    return-void

    .line 858
    :catchall_d
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 859
    throw v0
.end method

.method public whitelist configureDemux(Landroid/media/tv/tuner/DemuxInfo;)I
    .registers 7
    .param p1, "desiredDemuxInfo"    # Landroid/media/tv/tuner/DemuxInfo;

    .line 2646
    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v0

    .line 2647
    .local v0, "tunerMajorVersion":I
    sget v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    const/high16 v2, 0x30000

    const/4 v3, 0x1

    if-ge v1, v2, :cond_42

    .line 2648
    const-string v1, "MediaTvTuner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configureDemux() is not supported for tuner version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 2649
    invoke-static {v4}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    .line 2650
    invoke-static {v4}, Landroid/media/tv/tuner/TunerVersionChecker;->getMinorVersion(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2648
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    return v3

    .line 2654
    :cond_42
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    monitor-enter v1

    .line 2655
    :try_start_45
    invoke-direct {p0, p1, v3}, Landroid/media/tv/tuner/Tuner;->configureDemuxInternal(Landroid/media/tv/tuner/DemuxInfo;Z)I

    move-result v2

    monitor-exit v1

    return v2

    .line 2656
    :catchall_4b
    move-exception v2

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4b

    throw v2
.end method

.method public whitelist connectCiCam(I)I
    .registers 4
    .param p1, "ciCamId"    # I

    .line 1559
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1561
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1562
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeConnectCiCam(I)I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1f

    .line 1566
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1562
    return v0

    .line 1564
    :cond_18
    nop

    .line 1566
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1564
    return v1

    .line 1566
    :catchall_1f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1567
    throw v0
.end method

.method public whitelist connectFrontendToCiCam(I)I
    .registers 5
    .param p1, "ciCamId"    # I

    .line 1597
    const-string v0, "connectFrontendToCiCam()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1599
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1601
    :try_start_f
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_81

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-nez v0, :cond_2a

    .line 1602
    :try_start_16
    const-string v0, "Operation cannot be done without frontend"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_81

    .line 1603
    nop

    .line 1623
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1624
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1625
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1603
    return v1

    .line 1605
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_42

    .line 1606
    const-string v0, "Operation cannot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_81

    .line 1607
    nop

    .line 1623
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1624
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1625
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1607
    return v1

    .line 1609
    :cond_42
    :try_start_42
    const-string/jumbo v0, "linkFrontendToCiCam"

    const v1, 0x10001

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1612
    iput p1, p0, Landroid/media/tv/tuner/Tuner;->mRequestedCiCamId:I

    .line 1615
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1616
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1618
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeLinkCiCam(I)I

    move-result v0
    :try_end_63
    .catchall {:try_start_42 .. :try_end_63} :catchall_81

    .line 1623
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1624
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1625
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1618
    return v0

    .line 1621
    :cond_71
    nop

    .line 1623
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1624
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1625
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1621
    const/4 v0, -0x1

    return v0

    .line 1623
    :catchall_81
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1624
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1625
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1626
    throw v0
.end method

.method public whitelist disconnectCiCam()I
    .registers 3

    .line 1641
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1643
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    if-eqz v0, :cond_13

    .line 1644
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeDisconnectCiCam()I

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    .line 1648
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1644
    return v0

    .line 1646
    :cond_13
    nop

    .line 1648
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1646
    const/4 v0, 0x1

    return v0

    .line 1648
    :catchall_1b
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1649
    throw v0
.end method

.method public whitelist disconnectFrontendToCiCam(I)I
    .registers 7
    .param p1, "ciCamId"    # I

    .line 1670
    const-string v0, "disconnectFrontendToCiCam()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 1672
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_9a

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-nez v0, :cond_23

    .line 1673
    :try_start_c
    const-string v0, "Operation cannot be done without frontend"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_9a

    .line 1674
    nop

    .line 1695
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1696
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1698
    :cond_1f
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1674
    return v1

    .line 1676
    :cond_23
    :try_start_23
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_3e

    .line 1677
    const-string v0, "Operation cannot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_9a

    .line 1678
    nop

    .line 1695
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1696
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1698
    :cond_3a
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1678
    return v1

    .line 1680
    :cond_3e
    :try_start_3e
    const-string/jumbo v0, "unlinkFrontendToCiCam"

    const v1, 0x10001

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 1683
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1684
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    if-eqz v0, :cond_87

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    if-eqz v0, :cond_87

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    .line 1685
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_87

    .line 1686
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeUnlinkCiCam(I)I

    move-result v0

    .line 1687
    .local v0, "result":I
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCiCam(JI)V

    .line 1688
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamId:Ljava/lang/Integer;

    .line 1689
    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamHandle:Ljava/lang/Long;
    :try_end_75
    .catchall {:try_start_3e .. :try_end_75} :catchall_9a

    .line 1690
    nop

    .line 1695
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1696
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1698
    :cond_83
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1690
    return v0

    .line 1693
    .end local v0    # "result":I
    :cond_87
    nop

    .line 1695
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1696
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1698
    :cond_95
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1693
    const/4 v0, 0x1

    return v0

    .line 1695
    :catchall_9a
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1696
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1698
    :cond_a8
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 1699
    throw v0
.end method

.method public whitelist getAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)I
    .registers 5
    .param p1, "filter"    # Landroid/media/tv/tuner/filter/Filter;

    .line 1511
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1513
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_27

    const/4 v1, -0x1

    if-nez v0, :cond_16

    .line 1514
    nop

    .line 1519
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1514
    return v1

    .line 1516
    :cond_16
    :try_start_16
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncHwId(Landroid/media/tv/tuner/filter/Filter;)Ljava/lang/Integer;

    move-result-object v0

    .line 1517
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_27

    .line 1519
    :goto_21
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1517
    return v1

    .line 1519
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_27
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1520
    throw v0
.end method

.method public whitelist getAvSyncTime(I)J
    .registers 6
    .param p1, "avSyncHwId"    # I

    .line 1533
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1535
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    const-wide/16 v1, -0x1

    if-nez v0, :cond_17

    .line 1536
    nop

    .line 1541
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1536
    return-wide v1

    .line 1538
    :cond_17
    :try_start_17
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetAvSyncTime(I)Ljava/lang/Long;

    move-result-object v0

    .line 1539
    .local v0, "time":Ljava/lang/Long;
    if-nez v0, :cond_1e

    goto :goto_22

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_28

    .line 1541
    :goto_22
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1539
    return-wide v1

    .line 1541
    .end local v0    # "time":Ljava/lang/Long;
    :catchall_28
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1542
    throw v0
.end method

.method public whitelist getAvailableFrontendInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/FrontendInfo;",
            ">;"
        }
    .end annotation

    .line 1810
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoListInternal()[Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    .line 1811
    .local v0, "feInfoList":[Landroid/media/tv/tuner/frontend/FrontendInfo;
    if-nez v0, :cond_8

    .line 1812
    const/4 v1, 0x0

    return-object v1

    .line 1814
    :cond_8
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getClientId()I
    .registers 2

    .line 2882
    iget v0, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    return v0
.end method

.method public whitelist getCurrentDemuxInfo()Landroid/media/tv/tuner/DemuxInfo;
    .registers 3

    .line 1943
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1945
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_21

    if-nez v0, :cond_11

    .line 1946
    nop

    .line 1950
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1946
    const/4 v0, 0x0

    return-object v0

    .line 1948
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxHandle:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxInfo(J)Landroid/media/tv/tuner/DemuxInfo;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_21

    .line 1950
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1948
    return-object v0

    .line 1950
    :catchall_21
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1951
    throw v0
.end method

.method public whitelist getCurrentFrontendHardwareInfo()Ljava/lang/String;
    .registers 3

    .line 1830
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1832
    :try_start_5
    const-string v0, "Get Frontend hardware info"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_39

    if-nez v0, :cond_17

    .line 1834
    nop

    .line 1844
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1834
    const/4 v0, 0x0

    return-object v0

    .line 1836
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_31

    .line 1839
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-nez v0, :cond_29

    .line 1842
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendHardwareInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_39

    .line 1844
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1842
    return-object v0

    .line 1840
    :cond_29
    :try_start_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    throw v0

    .line 1837
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    throw v0
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_39

    .line 1844
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :catchall_39
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1845
    throw v0
.end method

.method public whitelist getDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;
    .registers 3

    .line 1927
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1929
    :try_start_5
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetDemuxCapabilities()Landroid/media/tv/tuner/DemuxCapabilities;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 1931
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1929
    return-object v0

    .line 1931
    :catchall_f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1932
    throw v0
.end method

.method public blacklist getDesiredDemuxInfo()Landroid/media/tv/tuner/DemuxInfo;
    .registers 2

    .line 1956
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDesiredDemuxInfo:Landroid/media/tv/tuner/DemuxInfo;

    return-object v0
.end method

.method public blacklist getFrontendIds()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 424
    :try_start_5
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendIds()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 426
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 424
    return-object v0

    .line 426
    :catchall_f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 427
    throw v0
.end method

.method public whitelist getFrontendInfo()Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 3

    .line 1782
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1784
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_3a

    if-nez v0, :cond_16

    .line 1785
    nop

    .line 1795
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1785
    const/4 v0, 0x0

    return-object v0

    .line 1787
    :cond_16
    :try_start_16
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_32

    .line 1790
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    if-nez v0, :cond_2a

    .line 1791
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner$Frontend;->-$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/tv/tuner/Tuner;->getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 1793
    :cond_2a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_3a

    .line 1795
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1793
    return-object v0

    .line 1788
    :cond_32
    :try_start_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    throw v0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    .line 1795
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    :catchall_3a
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1796
    throw v0
.end method

.method public blacklist getFrontendInfoById(I)Landroid/media/tv/tuner/frontend/FrontendInfo;
    .registers 4
    .param p1, "id"    # I

    .line 1911
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1913
    :try_start_5
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendInfo(I)Landroid/media/tv/tuner/frontend/FrontendInfo;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 1915
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1913
    return-object v0

    .line 1915
    :catchall_f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1916
    throw v0
.end method

.method public whitelist getFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;
    .registers 4
    .param p1, "statusTypes"    # [I

    .line 1490
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1492
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_1f

    .line 1495
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-nez v0, :cond_17

    .line 1498
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendStatus([I)Landroid/media/tv/tuner/frontend/FrontendStatus;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_27

    .line 1500
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1498
    return-object v0

    .line 1496
    :cond_17
    :try_start_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0

    .line 1493
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_27

    .line 1500
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :catchall_27
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1501
    throw v0
.end method

.method public whitelist getFrontendStatusReadiness([I)Ljava/util/List;
    .registers 5
    .param p1, "statusTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;",
            ">;"
        }
    .end annotation

    .line 1751
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1753
    :try_start_5
    const-string v0, "Get fronted status readiness"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1755
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_47

    .line 1769
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1755
    return-object v0

    .line 1757
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_3f

    .line 1760
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-nez v0, :cond_37

    .line 1763
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetFrontendStatusReadiness([I)[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;

    move-result-object v0

    .line 1764
    .local v0, "readiness":[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
    if-nez v0, :cond_2d

    .line 1765
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_47

    .line 1769
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1765
    return-object v1

    .line 1767
    :cond_2d
    :try_start_2d
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_47

    .line 1769
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1767
    return-object v1

    .line 1761
    .end local v0    # "readiness":[Landroid/media/tv/tuner/frontend/FrontendStatusReadiness;
    :cond_37
    :try_start_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0

    .line 1758
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "statusTypes":[I
    throw v0
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_47

    .line 1769
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "statusTypes":[I
    :catchall_47
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1770
    throw v0
.end method

.method public whitelist getMaxNumberOfFrontends(I)I
    .registers 6
    .param p1, "frontendType"    # I

    .line 1896
    const/high16 v0, 0x20000

    const-string v1, "Set maximum Frontends"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1898
    const/4 v0, -0x1

    return v0

    .line 1900
    :cond_c
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeGetMaxNumberOfFrontends(I)I

    move-result v0

    .line 1901
    .local v0, "maxNumFromHAL":I
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->getMaxNumberOfFrontends(I)I

    move-result v1

    .line 1902
    .local v1, "maxNumFromTRM":I
    if-eq v0, v1, :cond_3b

    .line 1903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "max num of usable frontend is out-of-sync b/w "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaTvTuner"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_3b
    return v0
.end method

.method blacklist getNativeContext()J
    .registers 3

    .line 828
    iget-wide v0, p0, Landroid/media/tv/tuner/Tuner;->mNativeContext:J

    return-wide v0
.end method

.method blacklist getTunerResourceManager()Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    .registers 2

    .line 2886
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    return-object v0
.end method

.method public whitelist hasUnusedFrontend(I)Z
    .registers 3
    .param p1, "frontendType"    # I

    .line 778
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->hasUnusedFrontend(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isLnaSupported()Z
    .registers 4

    .line 1458
    const/high16 v0, 0x30000

    const-string/jumbo v1, "isLnaSupported"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1463
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeIsLnaSupported()Z

    move-result v0

    return v0

    .line 1460
    :cond_10
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tuner HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1461
    invoke-static {}, Landroid/media/tv/tuner/TunerVersionChecker;->getTunerVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support this method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isLowestPriority(I)Z
    .registers 4
    .param p1, "frontendType"    # I

    .line 805
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->isLowestPriority(II)Z

    move-result v0

    return v0
.end method

.method public whitelist openDescrambler()Landroid/media/tv/tuner/Descrambler;
    .registers 3

    .line 2436
    const-string/jumbo v0, "openDescrambler()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 2437
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2440
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_d
    invoke-direct {p0, v0, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_2a

    if-nez v0, :cond_1d

    .line 2441
    nop

    .line 2445
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2446
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2441
    return-object v1

    .line 2443
    :cond_1d
    :try_start_1d
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->requestDescrambler()Landroid/media/tv/tuner/Descrambler;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_2a

    .line 2445
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2446
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2443
    return-object v0

    .line 2445
    :catchall_2a
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2446
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2447
    throw v0
.end method

.method public whitelist openDvrPlayback(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrPlayback;
    .registers 7
    .param p1, "bufferSize"    # J
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "l"    # Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;

    .line 2495
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2497
    :try_start_5
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2498
    const-string v0, "OnPlaybackStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2499
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2e

    if-nez v0, :cond_20

    .line 2500
    nop

    .line 2506
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2500
    const/4 v0, 0x0

    return-object v0

    .line 2502
    :cond_20
    :try_start_20
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrPlayback(J)Landroid/media/tv/tuner/dvr/DvrPlayback;

    move-result-object v0

    .line 2503
    .local v0, "dvr":Landroid/media/tv/tuner/dvr/DvrPlayback;
    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrPlayback;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnPlaybackStatusChangedListener;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2e

    .line 2504
    nop

    .line 2506
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2504
    return-object v0

    .line 2506
    .end local v0    # "dvr":Landroid/media/tv/tuner/dvr/DvrPlayback;
    :catchall_2e
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2507
    throw v0
.end method

.method public whitelist openDvrRecorder(JLjava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)Landroid/media/tv/tuner/dvr/DvrRecorder;
    .registers 7
    .param p1, "bufferSize"    # J
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "l"    # Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;

    .line 2465
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2467
    :try_start_5
    const-string v0, "executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2468
    const-string v0, "OnRecordStatusChangedListener must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2469
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2e

    if-nez v0, :cond_20

    .line 2470
    nop

    .line 2476
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2470
    const/4 v0, 0x0

    return-object v0

    .line 2472
    :cond_20
    :try_start_20
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeOpenDvrRecorder(J)Landroid/media/tv/tuner/dvr/DvrRecorder;

    move-result-object v0

    .line 2473
    .local v0, "dvr":Landroid/media/tv/tuner/dvr/DvrRecorder;
    invoke-virtual {v0, p3, p4}, Landroid/media/tv/tuner/dvr/DvrRecorder;->setListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/dvr/OnRecordStatusChangedListener;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2e

    .line 2474
    nop

    .line 2476
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2474
    return-object v0

    .line 2476
    .end local v0    # "dvr":Landroid/media/tv/tuner/dvr/DvrRecorder;
    :catchall_2e
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2477
    throw v0
.end method

.method public whitelist openFilter(IIJLjava/util/concurrent/Executor;Landroid/media/tv/tuner/filter/FilterCallback;)Landroid/media/tv/tuner/filter/Filter;
    .registers 14
    .param p1, "mainType"    # I
    .param p2, "subType"    # I
    .param p3, "bufferSize"    # J
    .param p5, "executor"    # Ljava/util/concurrent/Executor;
    .param p6, "cb"    # Landroid/media/tv/tuner/filter/FilterCallback;

    .line 2285
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2287
    :try_start_5
    sget v0, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    invoke-static {v0}, Landroid/media/tv/tuner/TunerVersionChecker;->getMajorVersion(I)I

    move-result v0

    .line 2288
    .local v0, "tunerMajorVersion":I
    sget v1, Landroid/media/tv/tuner/Tuner;->sTunerVersion:I

    const/high16 v2, 0x30000

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3e

    .line 2289
    new-instance v1, Landroid/media/tv/tuner/DemuxInfo;

    invoke-direct {v1, p1}, Landroid/media/tv/tuner/DemuxInfo;-><init>(I)V

    .line 2290
    .local v1, "demuxInfo":Landroid/media/tv/tuner/DemuxInfo;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/media/tv/tuner/Tuner;->configureDemuxInternal(Landroid/media/tv/tuner/DemuxInfo;Z)I

    move-result v2

    .line 2291
    .local v2, "res":I
    if-eqz v2, :cond_3e

    .line 2292
    const-string v4, "MediaTvTuner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "openFilter called for unsupported mainType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_a8

    .line 2293
    nop

    .line 2323
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2293
    return-object v3

    .line 2296
    .end local v1    # "demuxInfo":Landroid/media/tv/tuner/DemuxInfo;
    .end local v2    # "res":I
    :cond_3e
    :try_start_3e
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_a8

    if-nez v1, :cond_4e

    .line 2297
    nop

    .line 2323
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2297
    return-object v3

    .line 2299
    :cond_4e
    nop

    .line 2300
    :try_start_4f
    invoke-static {p1, p2}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v1

    .line 2299
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/media/tv/tuner/Tuner;->nativeOpenFilter(IIJ)Landroid/media/tv/tuner/filter/Filter;

    move-result-object v1

    .line 2301
    .local v1, "filter":Landroid/media/tv/tuner/filter/Filter;
    if-eqz v1, :cond_a1

    .line 2302
    invoke-virtual {v1, p1, p2}, Landroid/media/tv/tuner/filter/Filter;->setType(II)V

    .line 2303
    invoke-virtual {v1, p6, p5}, Landroid/media/tv/tuner/filter/Filter;->setCallback(Landroid/media/tv/tuner/filter/FilterCallback;Ljava/util/concurrent/Executor;)V

    .line 2304
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    if-nez v2, :cond_69

    .line 2305
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->createEventHandler()Landroid/media/tv/tuner/Tuner$EventHandler;

    move-result-object v2

    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mHandler:Landroid/media/tv/tuner/Tuner$EventHandler;

    .line 2307
    :cond_69
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    monitor-enter v2
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_a8

    .line 2308
    :try_start_6c
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2309
    .local v3, "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2310
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x100

    if-le v4, v5, :cond_9c

    .line 2311
    iget-object v4, p0, Landroid/media/tv/tuner/Tuner;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2312
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;>;"
    :goto_86
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 2313
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 2314
    .local v5, "wFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9b

    .line 2315
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 2317
    .end local v5    # "wFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    :cond_9b
    goto :goto_86

    .line 2319
    .end local v3    # "weakFilter":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/media/tv/tuner/filter/Filter;>;>;"
    :cond_9c
    monitor-exit v2

    goto :goto_a1

    :catchall_9e
    move-exception v3

    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_6c .. :try_end_a0} :catchall_9e

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "mainType":I
    .end local p2    # "subType":I
    .end local p3    # "bufferSize":J
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    .end local p6    # "cb":Landroid/media/tv/tuner/filter/FilterCallback;
    :try_start_a0
    throw v3
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_a8

    .line 2321
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "mainType":I
    .restart local p2    # "subType":I
    .restart local p3    # "bufferSize":J
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    .restart local p6    # "cb":Landroid/media/tv/tuner/filter/FilterCallback;
    :cond_a1
    :goto_a1
    nop

    .line 2323
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2321
    return-object v1

    .line 2323
    .end local v0    # "tunerMajorVersion":I
    .end local v1    # "filter":Landroid/media/tv/tuner/filter/Filter;
    :catchall_a8
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2324
    throw v0
.end method

.method public whitelist openLnb(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "cb"    # Landroid/media/tv/tuner/LnbCallback;

    .line 2339
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2341
    :try_start_5
    const-string v0, "executor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2342
    const-string v0, "LnbCallback must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2343
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_20

    .line 2344
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v0, p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 2345
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_4f

    .line 2357
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2345
    return-object v0

    .line 2347
    :cond_20
    :try_start_20
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v0, :cond_47

    .line 2349
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v0, p0, p1, p2}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 2350
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_3f

    .line 2351
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    .line 2353
    :cond_3f
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_41
    .catchall {:try_start_20 .. :try_end_41} :catchall_4f

    .line 2357
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2353
    return-object v0

    .line 2355
    :cond_47
    nop

    .line 2357
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2355
    const/4 v0, 0x0

    return-object v0

    .line 2357
    :catchall_4f
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2358
    throw v0
.end method

.method public whitelist openLnbByName(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)Landroid/media/tv/tuner/Lnb;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "cb"    # Landroid/media/tv/tuner/LnbCallback;

    .line 2373
    const-string/jumbo v0, "openLnbByName"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 2374
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2376
    :try_start_b
    const-string v0, "LNB name must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2377
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2378
    const-string v0, "LnbCallback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2379
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeOpenLnbByName(Ljava/lang/String;)Landroid/media/tv/tuner/Lnb;

    move-result-object v0

    .line 2380
    .local v0, "newLnb":Landroid/media/tv/tuner/Lnb;
    if-eqz v0, :cond_40

    .line 2381
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    if-eqz v1, :cond_2c

    .line 2382
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v1}, Landroid/media/tv/tuner/Lnb;->closeInternal()V

    .line 2383
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;

    .line 2385
    :cond_2c
    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    .line 2386
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-virtual {v1, p0, p2, p3}, Landroid/media/tv/tuner/Lnb;->setCallbackAndOwner(Landroid/media/tv/tuner/Tuner;Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/LnbCallback;)V

    .line 2387
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    if-eqz v1, :cond_40

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v1, :cond_40

    .line 2388
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;

    invoke-direct {p0, v1}, Landroid/media/tv/tuner/Tuner;->setLnb(Landroid/media/tv/tuner/Lnb;)I

    .line 2391
    :cond_40
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_4b

    .line 2393
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2394
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2391
    return-object v1

    .line 2393
    .end local v0    # "newLnb":Landroid/media/tv/tuner/Lnb;
    :catchall_4b
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 2394
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2395
    throw v0
.end method

.method public whitelist openTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;
    .registers 3

    .line 2417
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2419
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_20

    if-nez v0, :cond_16

    .line 2420
    nop

    .line 2424
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2420
    const/4 v0, 0x0

    return-object v0

    .line 2422
    :cond_16
    :try_start_16
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeOpenTimeFilter()Landroid/media/tv/tuner/filter/TimeFilter;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_20

    .line 2424
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2422
    return-object v0

    .line 2424
    :catchall_20
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mDemuxLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2425
    throw v0
.end method

.method blacklist releaseLnb()V
    .registers 6

    .line 2860
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2862
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_38

    const-string v1, "MediaTvTuner"

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 2864
    :try_start_c
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_16

    .line 2865
    const-string/jumbo v0, "releasing Lnb"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :cond_16
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseLnb(JI)V

    .line 2868
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnbHandle:Ljava/lang/Long;

    goto :goto_2f

    .line 2870
    :cond_26
    sget-boolean v0, Landroid/media/tv/tuner/Tuner;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 2871
    const-string v0, "NOT releasing Lnb because mLnbHandle is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :cond_2f
    :goto_2f
    iput-object v2, p0, Landroid/media/tv/tuner/Tuner;->mLnb:Landroid/media/tv/tuner/Lnb;
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_38

    .line 2876
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2877
    nop

    .line 2878
    return-void

    .line 2876
    :catchall_38
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2877
    throw v0
.end method

.method public whitelist removeOutputPid(I)I
    .registers 4
    .param p1, "pid"    # I

    .line 1717
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1719
    :try_start_5
    const-string v0, "Remove output PID"

    const/high16 v1, 0x20000

    invoke-static {v1, v0}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_40

    if-nez v0, :cond_17

    .line 1721
    nop

    .line 1732
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1721
    const/4 v0, 0x1

    return v0

    .line 1723
    :cond_17
    :try_start_17
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    if-eqz v0, :cond_38

    .line 1726
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_2e

    .line 1727
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_40

    .line 1728
    nop

    .line 1732
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1728
    const/4 v0, 0x3

    return v0

    .line 1730
    :cond_2e
    :try_start_2e
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeRemoveOutputPid(I)I

    move-result v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_40

    .line 1732
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1730
    return v0

    .line 1724
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "frontend is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "pid":I
    throw v0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_40

    .line 1732
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "pid":I
    :catchall_40
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1733
    throw v0
.end method

.method public whitelist scan(Landroid/media/tv/tuner/frontend/FrontendSettings;ILjava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/ScanCallback;)I
    .registers 9
    .param p1, "settings"    # Landroid/media/tv/tuner/frontend/FrontendSettings;
    .param p2, "scanType"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "scanCallback"    # Landroid/media/tv/tuner/frontend/ScanCallback;

    .line 1309
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1311
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_18

    .line 1312
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_9b

    .line 1313
    nop

    .line 1353
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1313
    const/4 v0, 0x3

    return v0

    .line 1315
    :cond_18
    :try_start_18
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_9b

    .line 1318
    :try_start_1b
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    if-ne v1, p4, :cond_2c

    :cond_23
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_34

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    if-ne v1, p3, :cond_2c

    goto :goto_34

    .line 1321
    :cond_2c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Different Scan session already in progress.  stopScan must be called before a new scan session can be started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .end local p2    # "scanType":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    throw v1

    .line 1325
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .restart local p2    # "scanType":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    :cond_34
    :goto_34
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    iput v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 1326
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v1, v2, :cond_53

    .line 1327
    const-string v1, "Scan with DTMB Frontend"

    const v2, 0x10001

    invoke-static {v2, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 1330
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_1b .. :try_end_4d} :catchall_98

    .line 1353
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1330
    return v3

    .line 1333
    :cond_53
    :try_start_53
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_6a

    .line 1334
    const-string v1, "Tuner with IPTV Frontend"

    const/high16 v2, 0x30000

    invoke-static {v2, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1337
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_98

    .line 1353
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1337
    return v3

    .line 1340
    :cond_6a
    :try_start_6a
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1342
    iput-object p4, p0, Landroid/media/tv/tuner/Tuner;->mScanCallback:Landroid/media/tv/tuner/frontend/ScanCallback;

    .line 1343
    iput-object p3, p0, Landroid/media/tv/tuner/Tuner;->mScanCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 1344
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 1345
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1346
    const/16 v2, 0x114

    const/4 v3, 0x5

    invoke-static {v2, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1348
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeScan(ILandroid/media/tv/tuner/frontend/FrontendSettings;I)I

    move-result v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_6a .. :try_end_8b} :catchall_98

    .line 1353
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1348
    return v1

    .line 1350
    :cond_91
    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_98

    .line 1353
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1350
    return v3

    .line 1351
    :catchall_98
    move-exception v1

    :try_start_99
    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    .end local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .end local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .end local p2    # "scanType":I
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    :try_start_9a
    throw v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    .line 1353
    .restart local p0    # "this":Landroid/media/tv/tuner/Tuner;
    .restart local p1    # "settings":Landroid/media/tv/tuner/frontend/FrontendSettings;
    .restart local p2    # "scanType":I
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "scanCallback":Landroid/media/tv/tuner/frontend/ScanCallback;
    :catchall_9b
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1354
    throw v0
.end method

.method public whitelist setLnaEnabled(Z)I
    .registers 3
    .param p1, "enable"    # Z

    .line 1476
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->nativeSetLna(Z)I

    move-result v0

    return v0
.end method

.method public whitelist setMaxNumberOfFrontends(II)I
    .registers 5
    .param p1, "frontendType"    # I
    .param p2, "maxNumber"    # I

    .line 1864
    const/high16 v0, 0x20000

    const-string v1, "Set maximum Frontends"

    invoke-static {v0, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1866
    const/4 v0, 0x1

    return v0

    .line 1868
    :cond_c
    if-gez p2, :cond_10

    .line 1869
    const/4 v0, 0x4

    return v0

    .line 1871
    :cond_10
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_1d

    .line 1872
    const-string v0, "MediaTvTuner"

    const-string v1, "Operation cannot be done by sharee of tuner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const/4 v0, 0x3

    return v0

    .line 1875
    :cond_1d
    invoke-direct {p0, p1, p2}, Landroid/media/tv/tuner/Tuner;->nativeSetMaxNumberOfFrontends(II)I

    move-result v0

    .line 1876
    .local v0, "res":I
    if-nez v0, :cond_2c

    .line 1877
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    invoke-virtual {v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->setMaxNumberOfFrontends(II)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1878
    const/4 v0, 0x4

    .line 1881
    :cond_2c
    return v0
.end method

.method public whitelist setOnTuneEventListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/frontend/OnTuneEventListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "eventListener"    # Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    .line 1160
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1161
    :try_start_3
    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventListener:Landroid/media/tv/tuner/frontend/OnTuneEventListener;

    .line 1162
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnTuneEventExecutor:Ljava/util/concurrent/Executor;

    .line 1163
    monitor-exit v0

    .line 1164
    return-void

    .line 1163
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public whitelist setResourceLostListener(Ljava/util/concurrent/Executor;Landroid/media/tv/tuner/Tuner$OnResourceLostListener;)V
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    .line 438
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_3
    const-string v1, "OnResourceLostListener must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    const-string v1, "executor must not be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 441
    iput-object p2, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListener:Landroid/media/tv/tuner/Tuner$OnResourceLostListener;

    .line 442
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mOnResourceLostListenerExecutor:Ljava/util/concurrent/Executor;

    .line 443
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist setResourceOwnershipRetention(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 767
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->setResourceOwnershipRetention(IZ)V

    .line 768
    return-void
.end method

.method public whitelist shareFrontendFromTuner(Landroid/media/tv/tuner/Tuner;)V
    .registers 5
    .param p1, "tuner"    # Landroid/media/tv/tuner/Tuner;

    .line 462
    const-string/jumbo v0, "shareFrontendFromTuner()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 465
    :try_start_b
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    if-eqz v0, :cond_1a

    .line 467
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {v0, p0}, Landroid/media/tv/tuner/Tuner;->unregisterFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    .line 468
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 469
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->nativeUnshareFrontend()I

    .line 471
    :cond_1a
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    iget v2, p1, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->shareFrontend(II)V

    .line 472
    iput-object p1, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    .line 473
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    invoke-direct {v0, p0}, Landroid/media/tv/tuner/Tuner;->registerFrontendCallbackListener(Landroid/media/tv/tuner/Tuner;)V

    .line 474
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    iget-object v0, v0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    .line 475
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;

    iget-object v0, v0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    iput-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    .line 476
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontend:Landroid/media/tv/tuner/Tuner$Frontend;

    invoke-static {v0}, Landroid/media/tv/tuner/Tuner$Frontend;->-$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->nativeShareFrontend(I)I
    :try_end_3f
    .catchall {:try_start_b .. :try_end_3f} :catchall_49

    .line 478
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 479
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 480
    nop

    .line 481
    return-void

    .line 478
    :catchall_49
    move-exception v0

    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 479
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 480
    throw v0
.end method

.method public whitelist transferOwner(Landroid/media/tv/tuner/Tuner;)I
    .registers 4
    .param p1, "newOwner"    # Landroid/media/tv/tuner/Tuner;

    .line 491
    const-string/jumbo v0, "transferOwner()"

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/Tuner;->acquireTRMSLock(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 493
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 494
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 497
    :try_start_15
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->isFrontendOwner()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->isNewOwnerQualifiedForTransfer(Landroid/media/tv/tuner/Tuner;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_85

    .line 501
    :cond_22
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferFeOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_9a

    .line 502
    .local v0, "res":I
    if-eqz v0, :cond_3c

    .line 503
    nop

    .line 516
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 517
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 503
    return v0

    .line 506
    :cond_3c
    :try_start_3c
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferCiCamOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v1
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_9a

    .line 507
    .end local v0    # "res":I
    .local v1, "res":I
    if-eqz v1, :cond_56

    .line 508
    nop

    .line 516
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 517
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 508
    return v1

    .line 511
    :cond_56
    :try_start_56
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Tuner;->transferLnbOwner(Landroid/media/tv/tuner/Tuner;)I

    move-result v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_9a

    .line 512
    .end local v1    # "res":I
    .restart local v0    # "res":I
    if-eqz v0, :cond_70

    .line 513
    nop

    .line 516
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 517
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 513
    return v0

    .line 516
    .end local v0    # "res":I
    :cond_70
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 517
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 520
    nop

    .line 521
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_85
    :goto_85
    nop

    .line 516
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 517
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 498
    const/4 v0, 0x3

    return v0

    .line 516
    :catchall_9a
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 517
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendCiCamLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 518
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mLnbLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    invoke-direct {p0}, Landroid/media/tv/tuner/Tuner;->releaseTRMSLock()V

    .line 520
    throw v0
.end method

.method public whitelist tune(Landroid/media/tv/tuner/frontend/FrontendSettings;)I
    .registers 7
    .param p1, "settings"    # Landroid/media/tv/tuner/frontend/FrontendSettings;

    .line 1219
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1221
    :try_start_5
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFeOwnerTuner:Landroid/media/tv/tuner/Tuner;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_c7

    const/4 v1, 0x3

    const-string v2, "MediaTvTuner"

    if-eqz v0, :cond_18

    .line 1222
    :try_start_c
    const-string v0, "Operation cannot be done by sharee of tuner"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_c7

    .line 1223
    nop

    .line 1258
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1223
    return v1

    .line 1225
    :cond_18
    :try_start_18
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v0

    .line 1226
    .local v0, "type":I
    iget-object v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendHandle:Ljava/lang/Long;

    if-eqz v3, :cond_4d

    iget v3, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    if-eq v0, v3, :cond_4d

    .line 1227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontend was opened with type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_c7

    .line 1229
    nop

    .line 1258
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1229
    return v1

    .line 1231
    :cond_4d
    :try_start_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tune to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getFrequencyLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iput v0, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    .line 1233
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v1, v3, :cond_82

    .line 1234
    const-string v1, "Tuner with DTMB Frontend"

    const v3, 0x10001

    invoke-static {v3, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1
    :try_end_79
    .catchall {:try_start_4d .. :try_end_79} :catchall_c7

    if-nez v1, :cond_82

    .line 1236
    nop

    .line 1258
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1236
    return v4

    .line 1239
    :cond_82
    :try_start_82
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendType:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_99

    .line 1240
    const-string v1, "Tuner with IPTV Frontend"

    const/high16 v3, 0x30000

    invoke-static {v3, v1}, Landroid/media/tv/tuner/TunerVersionChecker;->checkHigherOrEqualVersionTo(ILjava/lang/String;)Z

    move-result v1
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_c7

    if-nez v1, :cond_99

    .line 1242
    nop

    .line 1258
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1242
    return v4

    .line 1246
    :cond_99
    :try_start_99
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Landroid/media/tv/tuner/Tuner;->checkResource(ILjava/util/concurrent/locks/ReentrantLock;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1247
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendInfo:Landroid/media/tv/tuner/frontend/FrontendInfo;

    .line 1248
    const-string v1, "Write Stats Log for tuning."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mUserId:I

    .line 1250
    const/16 v2, 0x114

    invoke-static {v2, v1, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1252
    invoke-virtual {p1}, Landroid/media/tv/tuner/frontend/FrontendSettings;->getType()I

    move-result v1

    invoke-direct {p0, v1, p1}, Landroid/media/tv/tuner/Tuner;->nativeTune(ILandroid/media/tv/tuner/frontend/FrontendSettings;)I

    move-result v1
    :try_end_b9
    .catchall {:try_start_99 .. :try_end_b9} :catchall_c7

    .line 1253
    .local v1, "res":I
    nop

    .line 1258
    iget-object v2, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1253
    return v1

    .line 1255
    .end local v1    # "res":I
    :cond_c0
    nop

    .line 1258
    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1255
    return v4

    .line 1258
    .end local v0    # "type":I
    :catchall_c7
    move-exception v0

    iget-object v1, p0, Landroid/media/tv/tuner/Tuner;->mFrontendLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1259
    throw v0
.end method

.method public whitelist updateResourcePriority(II)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "niceValue"    # I

    .line 752
    iget-object v0, p0, Landroid/media/tv/tuner/Tuner;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/tv/tuner/Tuner;->mClientId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->updateClientPriority(III)Z

    .line 753
    return-void
.end method
