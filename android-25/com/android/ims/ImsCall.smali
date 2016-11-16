.class public Lcom/android/ims/ImsCall;
.super Ljava/lang/Object;
.source "ImsCall.java"

# interfaces
.implements Lcom/android/ims/internal/ICall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;,
        Lcom/android/ims/ImsCall$Listener;
    }
.end annotation


# static fields
.field private static final CONF_DBG:Z = true

.field private static final DBG:Z

.field private static final FORCE_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImsCall"

.field private static final UPDATE_EXTEND_TO_CONFERENCE:I = 0x5

.field private static final UPDATE_HOLD:I = 0x1

.field private static final UPDATE_HOLD_MERGE:I = 0x2

.field private static final UPDATE_MERGE:I = 0x4

.field private static final UPDATE_NONE:I = 0x0

.field private static final UPDATE_RESUME:I = 0x3

.field private static final UPDATE_UNSPECIFIED:I = 0x6

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1

.field private static final VDBG:Z

.field private static final sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mCallSessionMergePending:Z

.field private mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHold:Z

.field private mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

.field private mInCall:Z

.field private mIsConferenceHost:Z

.field private mIsMerged:Z

.field private mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

.field private mListener:Lcom/android/ims/ImsCall$Listener;

.field private mLockObj:Ljava/lang/Object;

.field private mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

.field private mMergeHost:Lcom/android/ims/ImsCall;

.field private mMergePeer:Lcom/android/ims/ImsCall;

.field private mMergeRequestedByConference:Z

.field private mMute:Z

.field private mOverrideReason:I

.field private mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mSession:Lcom/android/ims/internal/ImsCallSession;

.field private mSessionEndDuringMerge:Z

.field private mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

.field private mTerminationRequestPending:Z

.field private mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

.field private mUpdateRequest:I

.field private mWasVideoCall:Z

.field public final uniqueId:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    #@0
    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCallProfile;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/ims/ImsCall;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/ims/ImsCall;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    #@2
    return v0
.end method

.method static synthetic -get7(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/ims/ImsCall;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/ims/ImsCall;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)Lcom/android/ims/ImsReasonInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/ims/ImsCall;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(Lcom/android/ims/ImsCall;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Lcom/android/ims/ImsCall;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setCallProfile(Lcom/android/ims/ImsCallProfile;)V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/ims/ImsCall;Z)V
    .locals 0
    .param p1, "callSessionMergePending"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/ims/ImsCall;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->mergeInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/ims/ImsCall;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "ImsCall"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    sput-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@a
    .line 69
    const-string/jumbo v0, "ImsCall"

    #@d
    const/4 v1, 0x2

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@11
    move-result v0

    #@12
    sput-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    #@14
    .line 552
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@16
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@19
    sput-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1b
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 456
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@c
    .line 460
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@e
    .line 464
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@10
    .line 466
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    #@12
    .line 468
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@14
    .line 470
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@16
    .line 473
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@18
    .line 475
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@1a
    .line 479
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    #@1c
    .line 481
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1e
    .line 484
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@20
    .line 488
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@22
    .line 489
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@24
    .line 492
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    #@26
    .line 496
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@28
    .line 502
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@2a
    .line 506
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@2c
    .line 510
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    #@2e
    .line 516
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@30
    .line 525
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    #@32
    .line 538
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    #@34
    .line 547
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    #@36
    .line 571
    iput v1, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    #@38
    .line 580
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    #@3a
    .line 581
    invoke-direct {p0, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Lcom/android/ims/ImsCallProfile;)V

    #@3d
    .line 582
    sget-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    #@42
    move-result v0

    #@43
    iput v0, p0, Lcom/android/ims/ImsCall;->uniqueId:I

    #@45
    .line 579
    return-void
.end method

.method private appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3249
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3250
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 3251
    const-string/jumbo v1, " ImsCall="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 3252
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    .line 3253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method private clear(Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "lastReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1552
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@3
    .line 1553
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@5
    .line 1554
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@7
    .line 1555
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@9
    .line 1551
    return-void
.end method

.method private clearMergeInfo()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3013
    const-string/jumbo v0, "clearMergeInfo :: clearing all merge info"

    #@5
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@8
    .line 3017
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 3018
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@e
    iput-object v2, v0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@10
    .line 3019
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@12
    iput v1, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@14
    .line 3020
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@16
    iput-boolean v1, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@18
    .line 3022
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 3023
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@1e
    iput-object v2, v0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@20
    .line 3024
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@22
    iput v1, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@24
    .line 3025
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@26
    iput-boolean v1, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@28
    .line 3027
    :cond_1
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@2a
    .line 3028
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@2c
    .line 3029
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@2e
    .line 3030
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@30
    .line 3011
    return-void
.end method

.method private clearSessionTerminationFlags()V
    .locals 1

    #@0
    .prologue
    .line 2065
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@3
    .line 2066
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@6
    .line 2064
    return-void
.end method

.method private createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 1

    #@0
    .prologue
    .line 1562
    new-instance v0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    #@2
    invoke-direct {v0, p0}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;)V

    #@5
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    #@7
    .line 1563
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    #@9
    return-object v0
.end method

.method private createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1592
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    #@3
    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    #@6
    .line 1594
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1595
    return-object v0

    #@b
    .line 1598
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@d
    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@f
    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@11
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@13
    .line 1599
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@15
    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@17
    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@19
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@1b
    .line 1600
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@1d
    .line 1602
    iget v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 1603
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@23
    .line 1606
    :cond_1
    return-object v0
.end method

.method private createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 1575
    new-instance v0, Lcom/android/ims/ImsCall;

    #@2
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v2, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    #@7
    .line 1578
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->attachSession(Lcom/android/ims/internal/ImsCallSession;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1588
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :cond_0
    :goto_0
    return-object v0

    #@b
    .line 1579
    .restart local v0    # "call":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v1

    #@c
    .line 1580
    .local v1, "e":Lcom/android/ims/ImsException;
    if-eqz v0, :cond_0

    #@e
    .line 1581
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    #@11
    .line 1582
    const/4 v0, 0x0

    #@12
    .local v0, "call":Lcom/android/ims/ImsCall;
    goto :goto_0
.end method

.method private createResumeMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    .line 1610
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    #@3
    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    #@6
    .line 1612
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1613
    return-object v0

    #@b
    .line 1616
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@d
    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@f
    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@11
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@13
    .line 1617
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@15
    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@17
    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@19
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@1b
    .line 1618
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@1d
    .line 1620
    iget v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 1621
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@23
    .line 1624
    :cond_1
    return-object v0
.end method

.method private enforceConversationMode()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1628
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1629
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@7
    .line 1630
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@9
    .line 1627
    :cond_0
    return-void
.end method

.method private isCallSessionMergePending()Z
    .locals 1

    #@0
    .prologue
    .line 3094
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@2
    return v0
.end method

.method private isMergeHost()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3076
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private isMergePeer()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3085
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private isMerging()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 3067
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 1
    .param p0, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 640
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->isAlive()Z

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1775
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@4
    if-eq p1, v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@8
    if-ne p1, v0, :cond_0

    #@a
    .line 1776
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 1778
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3328
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 3327
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3344
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 3343
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 3353
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a
    .line 3352
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3320
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 3319
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3336
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 3335
    return-void
.end method

.method private markCallAsMerged(Z)V
    .locals 3
    .param p1, "playDisconnectTone"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1790
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@3
    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 1793
    const-string/jumbo v1, "markCallAsMerged"

    #@c
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@f
    .line 1794
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@12
    .line 1795
    const/4 v1, 0x1

    #@13
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@15
    .line 1797
    if-eqz p1, :cond_1

    #@17
    .line 1798
    const-string/jumbo v0, "Call ended by network"

    #@1a
    .line 1802
    .local v0, "reasonInfo":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/android/ims/ImsReasonInfo;

    #@1c
    invoke-direct {v1, v2, v2, v0}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    #@1f
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@21
    .line 1789
    .end local v0    # "reasonInfo":Ljava/lang/String;
    :cond_0
    return-void

    #@22
    .line 1800
    :cond_1
    const-string/jumbo v0, "Call ended during conference merge process."

    #@25
    .restart local v0    # "reasonInfo":Ljava/lang/String;
    goto :goto_0
.end method

.method private merge()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1290
    const-string/jumbo v0, "merge :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1292
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 1293
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "merge :: update is in progress; request="

    #@15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 1295
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@1b
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 1294
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@2a
    .line 1296
    new-instance v0, Lcom/android/ims/ImsException;

    #@2c
    const-string/jumbo v2, "Call update is in progress"

    #@2f
    .line 1297
    const/16 v3, 0x66

    #@31
    .line 1296
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@34
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 1292
    :catchall_0
    move-exception v0

    #@36
    monitor-exit v1

    #@37
    throw v0

    #@38
    .line 1300
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@3a
    if-nez v0, :cond_1

    #@3c
    .line 1301
    const-string/jumbo v0, "merge :: no call session"

    #@3f
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@42
    .line 1302
    new-instance v0, Lcom/android/ims/ImsException;

    #@44
    const-string/jumbo v2, "No call session"

    #@47
    .line 1303
    const/16 v3, 0x94

    #@49
    .line 1302
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@4c
    throw v0

    #@4d
    .line 1308
    :cond_1
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@4f
    if-nez v0, :cond_2

    #@51
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    #@53
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@56
    move-result-object v0

    #@57
    .line 1309
    const v2, 0x1120089

    #@5a
    .line 1308
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_5

    #@60
    .line 1311
    :cond_2
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@62
    if-eqz v0, :cond_3

    #@64
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@66
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@69
    move-result v0

    #@6a
    if-eqz v0, :cond_4

    #@6c
    .line 1323
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@6e
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->merge()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@71
    :goto_1
    monitor-exit v1

    #@72
    .line 1289
    return-void

    #@73
    .line 1311
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@76
    move-result v0

    #@77
    if-nez v0, :cond_3

    #@79
    .line 1319
    const/4 v0, 0x4

    #@7a
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@7c
    .line 1320
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@7e
    const/4 v2, 0x4

    #@7f
    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@81
    goto :goto_0

    #@82
    .line 1328
    :cond_5
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@84
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    #@8b
    .line 1329
    const/4 v0, 0x1

    #@8c
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@8e
    .line 1330
    const/4 v0, 0x2

    #@8f
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@91
    goto :goto_1
.end method

.method private mergeInternal()V
    .locals 1

    #@0
    .prologue
    .line 1636
    const-string/jumbo v0, "mergeInternal :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1639
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@8
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->merge()V

    #@b
    .line 1640
    const/4 v0, 0x4

    #@c
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@e
    .line 1634
    return-void
.end method

.method private notifyConferenceSessionTerminated(Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@2
    .line 1645
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V

    #@5
    .line 1647
    if-eqz v0, :cond_0

    #@7
    .line 1649
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1643
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1650
    :catch_0
    move-exception v1

    #@c
    .line 1651
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "notifyConferenceSessionTerminated :: "

    #@f
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    goto :goto_0
.end method

.method private notifyConferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V
    .locals 19
    .param p1, "state"    # Lcom/android/ims/ImsConferenceState;

    #@0
    .prologue
    .line 1657
    if-eqz p1, :cond_0

    #@2
    move-object/from16 v0, p1

    #@4
    iget-object v0, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@6
    move-object/from16 v17, v0

    #@8
    if-nez v17, :cond_1

    #@a
    .line 1658
    :cond_0
    return-void

    #@b
    .line 1661
    :cond_1
    move-object/from16 v0, p1

    #@d
    iget-object v0, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@f
    move-object/from16 v17, v0

    #@11
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@14
    move-result-object v13

    #@15
    .line 1663
    .local v13, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-nez v13, :cond_2

    #@17
    .line 1664
    return-void

    #@18
    .line 1667
    :cond_2
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v11

    #@1c
    .line 1668
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v17, Ljava/util/ArrayList;

    #@1e
    invoke-interface {v13}, Ljava/util/Set;->size()I

    #@21
    move-result v18

    #@22
    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(I)V

    #@25
    move-object/from16 v0, v17

    #@27
    move-object/from16 v1, p0

    #@29
    iput-object v0, v1, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@2b
    .line 1669
    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v17

    #@2f
    if-eqz v17, :cond_5

    #@31
    .line 1670
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v9

    #@35
    check-cast v9, Ljava/util/Map$Entry;

    #@37
    .line 1672
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3a
    move-result-object v12

    #@3b
    check-cast v12, Ljava/lang/String;

    #@3d
    .line 1673
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Landroid/os/Bundle;

    #@43
    .line 1674
    .local v3, "confInfo":Landroid/os/Bundle;
    const-string/jumbo v17, "status"

    #@46
    move-object/from16 v0, v17

    #@48
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v14

    #@4c
    .line 1675
    .local v14, "status":Ljava/lang/String;
    const-string/jumbo v17, "user"

    #@4f
    move-object/from16 v0, v17

    #@51
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v16

    #@55
    .line 1676
    .local v16, "user":Ljava/lang/String;
    const-string/jumbo v17, "display-text"

    #@58
    move-object/from16 v0, v17

    #@5a
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    .line 1677
    .local v6, "displayName":Ljava/lang/String;
    const-string/jumbo v17, "endpoint"

    #@61
    move-object/from16 v0, v17

    #@63
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@66
    move-result-object v7

    #@67
    .line 1680
    .local v7, "endpoint":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    #@69
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v18, "notifyConferenceStateUpdated :: key="

    #@6f
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v17

    #@73
    move-object/from16 v0, v17

    #@75
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v17

    #@79
    .line 1681
    const-string/jumbo v18, ", status="

    #@7c
    .line 1680
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v17

    #@80
    move-object/from16 v0, v17

    #@82
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v17

    #@86
    .line 1682
    const-string/jumbo v18, ", user="

    #@89
    .line 1680
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v17

    #@8d
    move-object/from16 v0, v17

    #@8f
    move-object/from16 v1, v16

    #@91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v17

    #@95
    .line 1683
    const-string/jumbo v18, ", displayName= "

    #@98
    .line 1680
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v17

    #@9c
    move-object/from16 v0, v17

    #@9e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v17

    #@a2
    .line 1684
    const-string/jumbo v18, ", endpoint="

    #@a5
    .line 1680
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v17

    #@a9
    move-object/from16 v0, v17

    #@ab
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v17

    #@af
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v17

    #@b3
    move-object/from16 v0, p0

    #@b5
    move-object/from16 v1, v17

    #@b7
    invoke-direct {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@ba
    .line 1687
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@bd
    move-result-object v10

    #@be
    .line 1688
    .local v10, "handle":Landroid/net/Uri;
    if-nez v7, :cond_4

    #@c0
    .line 1689
    const-string/jumbo v7, ""

    #@c3
    .line 1691
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@c6
    move-result-object v8

    #@c7
    .line 1692
    .local v8, "endpointUri":Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/ims/ImsConferenceState;->getConnectionStateForStatus(Ljava/lang/String;)I

    #@ca
    move-result v5

    #@cb
    .line 1694
    .local v5, "connectionState":I
    const/16 v17, 0x6

    #@cd
    move/from16 v0, v17

    #@cf
    if-eq v5, v0, :cond_3

    #@d1
    .line 1695
    new-instance v4, Landroid/telecom/ConferenceParticipant;

    #@d3
    invoke-direct {v4, v10, v6, v8, v5}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V

    #@d6
    .line 1697
    .local v4, "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@da
    move-object/from16 v17, v0

    #@dc
    move-object/from16 v0, v17

    #@de
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e1
    goto/16 :goto_0

    #@e3
    .line 1701
    .end local v3    # "confInfo":Landroid/os/Bundle;
    .end local v4    # "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    .end local v5    # "connectionState":I
    .end local v6    # "displayName":Ljava/lang/String;
    .end local v7    # "endpoint":Ljava/lang/String;
    .end local v8    # "endpointUri":Landroid/net/Uri;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v10    # "handle":Landroid/net/Uri;
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "status":Ljava/lang/String;
    .end local v16    # "user":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    #@e5
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@e7
    move-object/from16 v17, v0

    #@e9
    if-eqz v17, :cond_6

    #@eb
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@ef
    move-object/from16 v17, v0

    #@f1
    if-eqz v17, :cond_6

    #@f3
    .line 1703
    :try_start_0
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@f7
    move-object/from16 v17, v0

    #@f9
    move-object/from16 v0, p0

    #@fb
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@fd
    move-object/from16 v18, v0

    #@ff
    move-object/from16 v0, v17

    #@101
    move-object/from16 v1, p0

    #@103
    move-object/from16 v2, v18

    #@105
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@108
    .line 1656
    :cond_6
    :goto_1
    return-void

    #@109
    .line 1704
    :catch_0
    move-exception v15

    #@10a
    .line 1705
    .local v15, "t":Ljava/lang/Throwable;
    const-string/jumbo v17, "notifyConferenceStateUpdated :: "

    #@10d
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, v17

    #@111
    invoke-direct {v0, v1, v15}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@114
    goto :goto_1
.end method

.method private notifySessionTerminatedDuringMerge()V
    .locals 5

    #@0
    .prologue
    .line 2037
    const/4 v1, 0x0

    #@1
    .line 2038
    .local v1, "notifyFailure":Z
    const/4 v2, 0x0

    #@2
    .line 2040
    .local v2, "notifyFailureReasonInfo":Lcom/android/ims/ImsReasonInfo;
    monitor-enter p0

    #@3
    .line 2041
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@5
    .line 2042
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-boolean v4, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 2047
    const-string/jumbo v4, "notifySessionTerminatedDuringMerge ::reporting terminate during merge"

    #@c
    invoke-direct {p0, v4}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@f
    .line 2049
    const/4 v1, 0x1

    #@10
    .line 2050
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@12
    .line 2052
    .end local v2    # "notifyFailureReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 2055
    if-eqz v0, :cond_1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 2057
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@1d
    .line 2035
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 2040
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v4

    #@1f
    monitor-exit p0

    #@20
    throw v4

    #@21
    .line 2058
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v3

    #@22
    .line 2059
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "notifySessionTerminatedDuringMerge :: "

    #@25
    invoke-direct {p0, v4, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    goto :goto_0
.end method

.method private processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1720
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "processCallTerminated :: reason="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, " userInitiated = "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 1721
    iget-boolean v3, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    #@19
    .line 1720
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@24
    .line 1723
    const/4 v0, 0x0

    #@25
    .line 1724
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-enter p0

    #@26
    .line 1729
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 1745
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 1746
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceSessionTerminated(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    monitor-exit p0

    #@3a
    .line 1747
    return-void

    #@3b
    .line 1737
    :cond_1
    :try_start_1
    const-string/jumbo v2, "processCallTerminated :: burying termination during ongoing merge."

    #@3e
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@41
    .line 1739
    const/4 v2, 0x1

    #@42
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@44
    .line 1740
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@46
    monitor-exit p0

    #@47
    .line 1741
    return-void

    #@48
    .line 1749
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@4a
    .line 1750
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4d
    monitor-exit p0

    #@4e
    .line 1754
    if-eqz v0, :cond_3

    #@50
    .line 1756
    :try_start_3
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    #@53
    .line 1719
    :cond_3
    :goto_0
    return-void

    #@54
    .line 1724
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@55
    monitor-exit p0

    #@56
    throw v2

    #@57
    .line 1757
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@58
    .line 1758
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "processCallTerminated :: "

    #@5b
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5e
    goto :goto_0
.end method

.method private processMergeComplete()V
    .locals 8

    #@0
    .prologue
    .line 1846
    const-string/jumbo v6, "processMergeComplete :: "

    #@3
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1850
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    #@9
    move-result v6

    #@a
    if-nez v6, :cond_0

    #@c
    .line 1851
    const-string/jumbo v6, "processMergeComplete :: We are not the merge host!"

    #@f
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@12
    .line 1852
    return-void

    #@13
    .line 1856
    :cond_0
    const/4 v3, 0x0

    #@14
    .line 1861
    .local v3, "swapRequired":Z
    monitor-enter p0

    #@15
    .line 1862
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_3

    #@1b
    .line 1863
    const/4 v6, 0x0

    #@1c
    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@1f
    .line 1866
    iget-boolean v6, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    #@21
    if-nez v6, :cond_1

    #@23
    .line 1869
    const/4 v6, 0x0

    #@24
    iput-boolean v6, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@26
    .line 1870
    const/4 v3, 0x1

    #@27
    .line 1872
    :cond_1
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@29
    const/4 v7, 0x0

    #@2a
    invoke-direct {v6, v7}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    #@2d
    .line 1873
    move-object v0, p0

    #@2e
    .line 1874
    .local v0, "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@30
    .line 1975
    .local v1, "finalPeerCall":Lcom/android/ims/ImsCall;
    :goto_0
    iget-object v2, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@32
    .line 1977
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-static {v1}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    #@35
    .line 1978
    invoke-static {v0}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    #@38
    .line 1981
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    #@3b
    .line 1985
    invoke-direct {v1}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    #@3e
    .line 1988
    invoke-direct {v0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    #@41
    .line 1994
    const/4 v6, 0x1

    #@42
    iput-boolean v6, v0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    monitor-exit p0

    #@45
    .line 1996
    if-eqz v2, :cond_2

    #@47
    .line 2001
    :try_start_1
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@4a
    .line 2005
    :goto_1
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@4c
    if-eqz v6, :cond_2

    #@4e
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@50
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@53
    move-result v6

    #@54
    if-eqz v6, :cond_b

    #@56
    .line 2014
    :cond_2
    :goto_2
    return-void

    #@57
    .line 1881
    .end local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@59
    if-nez v6, :cond_4

    #@5b
    .line 1882
    const-string/jumbo v6, "processMergeComplete :: No transient session!"

    #@5e
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    monitor-exit p0

    #@62
    .line 1883
    return-void

    #@63
    .line 1885
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@65
    if-nez v6, :cond_5

    #@67
    .line 1886
    const-string/jumbo v6, "processMergeComplete :: No merge peer!"

    #@6a
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    monitor-exit p0

    #@6e
    .line 1887
    return-void

    #@6f
    .line 1892
    :cond_5
    :try_start_4
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@71
    .line 1893
    .local v5, "transientConferenceSession":Lcom/android/ims/internal/ImsCallSession;
    const/4 v6, 0x0

    #@72
    iput-object v6, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@74
    .line 1897
    const/4 v6, 0x0

    #@75
    invoke-virtual {v5, v6}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@78
    .line 1907
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@7a
    invoke-static {v6}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@7d
    move-result v6

    #@7e
    if-eqz v6, :cond_6

    #@80
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@82
    invoke-virtual {v6}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@85
    move-result-object v6

    #@86
    invoke-static {v6}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@89
    move-result v6

    #@8a
    if-eqz v6, :cond_7

    #@8c
    .line 1936
    :cond_6
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@8e
    invoke-static {v6}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@91
    move-result v6

    #@92
    if-nez v6, :cond_a

    #@94
    .line 1937
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@96
    invoke-virtual {v6}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@99
    move-result-object v6

    #@9a
    invoke-static {v6}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@9d
    move-result v6

    #@9e
    .line 1936
    if-eqz v6, :cond_a

    #@a0
    .line 1942
    move-object v0, p0

    #@a1
    .line 1943
    .restart local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@a3
    .line 1944
    .restart local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v3, 0x0

    #@a4
    .line 1945
    const/4 v6, 0x0

    #@a5
    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@a8
    .line 1946
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@aa
    const/4 v7, 0x0

    #@ab
    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@ae
    .line 1948
    const-string/jumbo v6, "processMergeComplete :: transient will stay with the merge host"

    #@b1
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@b4
    .line 1967
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v7, "processMergeComplete :: call="

    #@bc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v6

    #@c0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    const-string/jumbo v7, " is the final host"

    #@c7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v6

    #@cb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v6

    #@cf
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@d2
    .line 1972
    invoke-direct {v0, v5}, Lcom/android/ims/ImsCall;->setTransientSessionAsPrimary(Lcom/android/ims/internal/ImsCallSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@d5
    goto/16 :goto_0

    #@d7
    .line 1861
    .end local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .end local v5    # "transientConferenceSession":Lcom/android/ims/internal/ImsCallSession;
    :catchall_0
    move-exception v6

    #@d8
    monitor-exit p0

    #@d9
    throw v6

    #@da
    .line 1916
    .restart local v5    # "transientConferenceSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_7
    :try_start_5
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@dc
    const/4 v7, 0x0

    #@dd
    iput-boolean v7, v6, Lcom/android/ims/ImsCall;->mHold:Z

    #@df
    .line 1917
    const/4 v6, 0x1

    #@e0
    iput-boolean v6, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@e2
    .line 1918
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@e4
    if-eqz v6, :cond_8

    #@e6
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@e8
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@eb
    move-result v6

    #@ec
    if-eqz v6, :cond_9

    #@ee
    .line 1928
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@f0
    .line 1929
    .restart local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    move-object v1, p0

    #@f1
    .line 1930
    .restart local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v3, 0x1

    #@f2
    .line 1931
    const/4 v6, 0x0

    #@f3
    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@f6
    .line 1932
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@f8
    const/4 v7, 0x0

    #@f9
    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@fc
    .line 1934
    const-string/jumbo v6, "processMergeComplete :: transient will transfer to merge peer"

    #@ff
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@102
    goto :goto_3

    #@103
    .line 1919
    .end local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_9
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@105
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@107
    iput-object v7, v6, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@109
    goto :goto_4

    #@10a
    .line 1955
    :cond_a
    move-object v0, p0

    #@10b
    .line 1956
    .restart local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@10d
    .line 1957
    .restart local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@10f
    const/4 v7, 0x0

    #@110
    invoke-direct {v6, v7}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    #@113
    .line 1958
    const/4 v3, 0x0

    #@114
    .line 1959
    const/4 v6, 0x0

    #@115
    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@118
    .line 1960
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@11a
    const/4 v7, 0x1

    #@11b
    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@11e
    .line 1962
    const-string/jumbo v6, "processMergeComplete :: transient will stay with us (I\'m the host)."

    #@121
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@124
    goto :goto_3

    #@125
    .line 2002
    .end local v5    # "transientConferenceSession":Lcom/android/ims/internal/ImsCallSession;
    .restart local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v4

    #@126
    .line 2003
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "processMergeComplete :: "

    #@129
    invoke-direct {p0, v6, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12c
    goto/16 :goto_1

    #@12e
    .line 2008
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_b
    :try_start_6
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@130
    .line 2007
    invoke-virtual {v2, v0, v6}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    #@133
    goto/16 :goto_2

    #@135
    .line 2009
    :catch_1
    move-exception v4

    #@136
    .line 2010
    .restart local v4    # "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "processMergeComplete :: "

    #@139
    invoke-direct {p0, v6, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13c
    goto/16 :goto_2
.end method

.method private processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 2079
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "processMergeFailed :: reason="

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@17
    .line 2082
    monitor-enter p0

    #@18
    .line 2085
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 2086
    const-string/jumbo v2, "processMergeFailed :: We are not the merge host!"

    #@21
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 2087
    return-void

    #@26
    .line 2091
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 2092
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-virtual {v2, v3}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@30
    .line 2093
    const/4 v2, 0x0

    #@31
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@33
    .line 2096
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@35
    .line 2100
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    const/4 v2, 0x1

    #@36
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    #@39
    .line 2101
    const/4 v2, 0x0

    #@3a
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    #@3d
    .line 2102
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    #@40
    .line 2105
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@42
    if-eqz v2, :cond_3

    #@44
    .line 2106
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@46
    const/4 v3, 0x1

    #@47
    invoke-direct {v2, v3}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    #@4a
    .line 2107
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@4c
    const/4 v3, 0x0

    #@4d
    invoke-direct {v2, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    #@50
    .line 2108
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@52
    invoke-direct {v2}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    #@55
    .line 2114
    :goto_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    monitor-exit p0

    #@59
    .line 2116
    if-eqz v0, :cond_2

    #@5b
    .line 2118
    :try_start_2
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@5e
    .line 2124
    :cond_2
    :goto_1
    return-void

    #@5f
    .line 2110
    :cond_3
    :try_start_3
    const-string/jumbo v2, "processMergeFailed :: No merge peer!"

    #@62
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    goto :goto_0

    #@66
    .line 2082
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@67
    monitor-exit p0

    #@68
    throw v2

    #@69
    .line 2119
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@6a
    .line 2120
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "processMergeFailed :: "

    #@6d
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@70
    goto :goto_1
.end method

.method private setCallProfile(Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 661
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 662
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@5
    .line 663
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@7
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 660
    return-void

    #@c
    .line 661
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method private setCallSessionMergePending(Z)V
    .locals 0
    .param p1, "callSessionMergePending"    # Z

    #@0
    .prologue
    .line 3104
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@2
    .line 3103
    return-void
.end method

.method private setMergePeer(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergePeer"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3040
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@3
    .line 3041
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@5
    .line 3043
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@7
    .line 3044
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@9
    .line 3039
    return-void
.end method

.method private setTransientSessionAsPrimary(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 2
    .param p1, "transientSession"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1782
    monitor-enter p0

    #@1
    .line 1783
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@7
    .line 1784
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@9
    .line 1785
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@b
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 1781
    return-void

    #@14
    .line 1782
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method private shouldProcessConferenceResult()Z
    .locals 3

    #@0
    .prologue
    .line 3122
    const/4 v0, 0x0

    #@1
    .line 3124
    .local v0, "areMergeTriggersDone":Z
    monitor-enter p0

    #@2
    .line 3128
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 3138
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_5

    #@14
    .line 3140
    const-string/jumbo v1, "shouldProcessConferenceResult :: We are a merge host"

    #@17
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@1a
    .line 3141
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "shouldProcessConferenceResult :: Here is the merge peer="

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@33
    .line 3143
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_4

    #@39
    .line 3144
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@3b
    invoke-direct {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@3e
    move-result v1

    #@3f
    if-eqz v1, :cond_3

    #@41
    const/4 v0, 0x0

    #@42
    .line 3145
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_1

    #@48
    .line 3147
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@4a
    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@4d
    move-result v1

    #@4e
    and-int/2addr v0, v1

    #@4f
    .line 3178
    .end local v0    # "areMergeTriggersDone":Z
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "shouldProcessConferenceResult :: returning:"

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    .line 3179
    if-eqz v0, :cond_b

    #@5d
    const-string/jumbo v1, "true"

    #@60
    .line 3178
    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6b
    monitor-exit p0

    #@6c
    .line 3182
    return v0

    #@6d
    .line 3130
    .restart local v0    # "areMergeTriggersDone":Z
    :cond_2
    :try_start_1
    const-string/jumbo v1, "shouldProcessConferenceResult :: no merge in progress"

    #@70
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    .line 3132
    const/4 v1, 0x0

    #@74
    monitor-exit p0

    #@75
    return v1

    #@76
    .line 3144
    :cond_3
    const/4 v0, 0x1

    #@77
    goto :goto_0

    #@78
    .line 3143
    :cond_4
    const/4 v0, 0x0

    #@79
    goto :goto_0

    #@7a
    .line 3149
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_a

    #@80
    .line 3151
    const-string/jumbo v1, "shouldProcessConferenceResult :: We are a merge peer"

    #@83
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@86
    .line 3152
    new-instance v1, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v2, "shouldProcessConferenceResult :: Here is the merge host="

    #@8e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@9f
    .line 3154
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@a2
    move-result v1

    #@a3
    if-nez v1, :cond_7

    #@a5
    .line 3155
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@a7
    invoke-direct {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@aa
    move-result v1

    #@ab
    if-eqz v1, :cond_6

    #@ad
    const/4 v0, 0x0

    #@ae
    .line 3156
    :goto_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@b0
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@b3
    move-result v1

    #@b4
    if-nez v1, :cond_8

    #@b6
    .line 3158
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@b8
    iget-object v1, v1, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@ba
    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@bd
    move-result v1

    #@be
    and-int/2addr v0, v1

    #@bf
    .local v0, "areMergeTriggersDone":Z
    goto :goto_1

    #@c0
    .line 3155
    .local v0, "areMergeTriggersDone":Z
    :cond_6
    const/4 v0, 0x1

    #@c1
    goto :goto_3

    #@c2
    .line 3154
    :cond_7
    const/4 v0, 0x0

    #@c3
    goto :goto_3

    #@c4
    .line 3170
    :cond_8
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@c7
    move-result v1

    #@c8
    if-eqz v1, :cond_9

    #@ca
    const/4 v0, 0x0

    #@cb
    goto :goto_1

    #@cc
    :cond_9
    const/4 v0, 0x1

    #@cd
    goto :goto_1

    #@ce
    .line 3174
    :cond_a
    const-string/jumbo v1, "shouldProcessConferenceResult : merge in progress but call is neither host nor peer."

    #@d1
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d4
    goto/16 :goto_1

    #@d6
    .line 3124
    .end local v0    # "areMergeTriggersDone":Z
    :catchall_0
    move-exception v1

    #@d7
    monitor-exit p0

    #@d8
    throw v1

    #@d9
    .line 3179
    :cond_b
    :try_start_3
    const-string/jumbo v1, "false"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@dc
    goto :goto_2
.end method

.method private throwImsException(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 3236
    instance-of v0, p1, Lcom/android/ims/ImsException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3237
    check-cast p1, Lcom/android/ims/ImsException;

    #@6
    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    #@7
    .line 3239
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    #@9
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-direct {v0, v1, p1, p2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@10
    throw v0
.end method

.method private trackVideoStateHistory(Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 3262
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p1}, Lcom/android/ims/ImsCallProfile;->isVideoCall()Z

    #@7
    move-result v0

    #@8
    :goto_0
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    #@a
    .line 3261
    return-void

    #@b
    .line 3262
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method private updateCallProfile()V
    .locals 2

    #@0
    .prologue
    .line 2024
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2025
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 2026
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@9
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    #@c
    move-result-object v0

    #@d
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->setCallProfile(Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 2023
    return-void

    #@12
    .line 2024
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private static updateCallProfile(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "call"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    .line 2018
    if-eqz p0, :cond_0

    #@2
    .line 2019
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->updateCallProfile()V

    #@5
    .line 2017
    :cond_0
    return-void
.end method

.method private updateRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "updateRequest"    # I

    #@0
    .prologue
    .line 2987
    packed-switch p1, :pswitch_data_0

    #@3
    .line 3003
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 2989
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@a
    return-object v0

    #@b
    .line 2991
    :pswitch_1
    const-string/jumbo v0, "HOLD"

    #@e
    return-object v0

    #@f
    .line 2993
    :pswitch_2
    const-string/jumbo v0, "HOLD_MERGE"

    #@12
    return-object v0

    #@13
    .line 2995
    :pswitch_3
    const-string/jumbo v0, "RESUME"

    #@16
    return-object v0

    #@17
    .line 2997
    :pswitch_4
    const-string/jumbo v0, "MERGE"

    #@1a
    return-object v0

    #@1b
    .line 2999
    :pswitch_5
    const-string/jumbo v0, "EXTEND_TO_CONFERENCE"

    #@1e
    return-object v0

    #@1f
    .line 3001
    :pswitch_6
    const-string/jumbo v0, "UNSPECIFIED"

    #@22
    return-object v0

    #@23
    .line 2987
    nop

    #@24
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public accept(I)V
    .locals 1
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1089
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    #@2
    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V

    #@8
    .line 1088
    return-void
.end method

.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "accept :: callType="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, ", profile="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@22
    .line 1103
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@24
    monitor-enter v2

    #@25
    .line 1104
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@27
    if-nez v1, :cond_0

    #@29
    .line 1105
    new-instance v1, Lcom/android/ims/ImsException;

    #@2b
    const-string/jumbo v3, "No call to answer"

    #@2e
    .line 1106
    const/16 v4, 0x94

    #@30
    .line 1105
    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@33
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 1103
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1

    #@37
    .line 1110
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@39
    invoke-virtual {v1, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 1116
    :try_start_2
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@3e
    if-eqz v1, :cond_2

    #@40
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@42
    if-eqz v1, :cond_2

    #@44
    .line 1117
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    #@46
    if-eqz v1, :cond_1

    #@48
    .line 1118
    const-string/jumbo v1, "accept :: call profile will be updated"

    #@4b
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@4e
    .line 1121
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@50
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@52
    .line 1122
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@54
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Lcom/android/ims/ImsCallProfile;)V

    #@57
    .line 1123
    const/4 v1, 0x0

    #@58
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@5a
    .line 1127
    :cond_2
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@5c
    if-eqz v1, :cond_3

    #@5e
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@60
    const/4 v3, 0x6

    #@61
    if-ne v1, v3, :cond_3

    #@63
    .line 1128
    const/4 v1, 0x0

    #@64
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@66
    :cond_3
    monitor-exit v2

    #@67
    .line 1100
    return-void

    #@68
    .line 1111
    :catch_0
    move-exception v0

    #@69
    .line 1112
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v1, "accept :: "

    #@6c
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6f
    .line 1113
    new-instance v1, Lcom/android/ims/ImsException;

    #@71
    const-string/jumbo v3, "accept()"

    #@74
    const/4 v4, 0x0

    #@75
    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@78
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public attachSession(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "attachSession :: session="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@17
    .line 1018
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v2

    #@1a
    .line 1019
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1022
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1e
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1, v3}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    :goto_0
    monitor-exit v2

    #@26
    .line 1015
    return-void

    #@27
    .line 1023
    :catch_0
    move-exception v0

    #@28
    .line 1024
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "attachSession :: "

    #@2b
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    .line 1025
    const/4 v1, 0x0

    #@2f
    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 1018
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1
.end method

.method public checkIfRemoteUserIsSame(Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 613
    if-nez p1, :cond_0

    #@2
    .line 614
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@6
    const-string/jumbo v1, "remote_uri"

    #@9
    const-string/jumbo v2, ""

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 590
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 592
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@9
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->close()V

    #@c
    .line 593
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@f
    .line 598
    :goto_0
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@12
    .line 599
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@15
    .line 600
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@18
    .line 601
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 589
    return-void

    #@1d
    .line 595
    :cond_0
    :try_start_1
    const-string/jumbo v0, "close :: Cannot close Null call session!"

    #@20
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 590
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method public conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/ims/ImsConferenceState;

    #@0
    .prologue
    .line 2966
    monitor-enter p0

    #@1
    .line 2967
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    #@4
    .line 2968
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit p0

    #@7
    .line 2971
    if-eqz v0, :cond_0

    #@9
    .line 2973
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsConferenceState;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@c
    .line 2963
    :cond_0
    :goto_0
    return-void

    #@d
    .line 2966
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@e
    monitor-exit p0

    #@f
    throw v2

    #@10
    .line 2974
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@11
    .line 2975
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "callSessionConferenceStateUpdated :: "

    #@14
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17
    goto :goto_0
.end method

.method public equalsTo(Lcom/android/ims/internal/ICall;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 628
    if-nez p1, :cond_0

    #@3
    .line 629
    return v1

    #@4
    .line 632
    :cond_0
    instance-of v0, p1, Lcom/android/ims/ImsCall;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 633
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 636
    :cond_1
    return v1
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x66

    #@2
    .line 1417
    const-string/jumbo v0, "extendToConference ::"

    #@5
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@8
    .line 1419
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1420
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1421
    const-string/jumbo v0, "extendToConference :: call is on hold"

    #@15
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@18
    .line 1423
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    #@1a
    const-string/jumbo v1, "Not in a call to extend a call to conference"

    #@1d
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@20
    throw v0

    #@21
    .line 1427
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@23
    monitor-enter v1

    #@24
    .line 1428
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "extendToConference :: update is in progress; request="

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 1431
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@36
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 1430
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@45
    .line 1433
    new-instance v0, Lcom/android/ims/ImsException;

    #@47
    const-string/jumbo v2, "Call update is in progress"

    #@4a
    .line 1434
    const/16 v3, 0x66

    #@4c
    .line 1433
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@4f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 1427
    :catchall_0
    move-exception v0

    #@51
    monitor-exit v1

    #@52
    throw v0

    #@53
    .line 1437
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@55
    if-nez v0, :cond_3

    #@57
    .line 1438
    const-string/jumbo v0, "extendToConference :: "

    #@5a
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@5d
    .line 1439
    new-instance v0, Lcom/android/ims/ImsException;

    #@5f
    const-string/jumbo v2, "No call session"

    #@62
    .line 1440
    const/16 v3, 0x94

    #@64
    .line 1439
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@67
    throw v0

    #@68
    .line 1443
    :cond_3
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@6a
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    #@6d
    .line 1444
    const/4 v0, 0x5

    #@6e
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    monitor-exit v1

    #@71
    .line 1416
    return-void
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 794
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 797
    new-instance v1, Lcom/android/ims/ImsException;

    #@9
    const-string/jumbo v3, "No call session"

    #@c
    .line 798
    const/16 v4, 0x94

    #@e
    .line 797
    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 794
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 802
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@17
    invoke-virtual {v1, p1}, Lcom/android/ims/internal/ImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    monitor-exit v2

    #@1c
    return-object v1

    #@1d
    .line 803
    :catch_0
    move-exception v0

    #@1e
    .line 804
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "getCallExtra :: "

    #@21
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    .line 805
    new-instance v1, Lcom/android/ims/ImsException;

    #@26
    const-string/jumbo v3, "getCallExtra()"

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@2d
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    #@0
    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 649
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getCallSession()Lcom/android/ims/internal/ImsCallSession;
    .locals 2

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 768
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 767
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 731
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 732
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "getConferenceParticipants :: mConferenceParticipants"

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 733
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@12
    .line 732
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@1d
    .line 734
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    if-nez v0, :cond_0

    #@21
    monitor-exit v1

    #@22
    .line 735
    return-object v3

    #@23
    .line 737
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_1

    #@2b
    .line 738
    new-instance v0, Ljava/util/ArrayList;

    #@2d
    const/4 v2, 0x0

    #@2e
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    monitor-exit v1

    #@32
    return-object v0

    #@33
    .line 740
    :cond_1
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    #@35
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@37
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    monitor-exit v1

    #@3b
    return-object v0

    #@3c
    .line 731
    :catchall_0
    move-exception v0

    #@3d
    monitor-exit v1

    #@3e
    throw v0
.end method

.method public getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
    .locals 1

    #@0
    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    #@2
    return-object v0
.end method

.method public getLastReasonInfo()Lcom/android/ims/ImsReasonInfo;
    .locals 2

    #@0
    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 817
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 816
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 673
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 674
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 675
    new-instance v1, Lcom/android/ims/ImsException;

    #@9
    const-string/jumbo v3, "No call session"

    #@c
    .line 676
    const/16 v4, 0x94

    #@e
    .line 675
    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 673
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 680
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@17
    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    monitor-exit v2

    #@1c
    return-object v1

    #@1d
    .line 681
    :catch_0
    move-exception v0

    #@1e
    .line 682
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "getLocalCallProfile :: "

    #@21
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    .line 683
    new-instance v1, Lcom/android/ims/ImsException;

    #@26
    const-string/jumbo v3, "getLocalCallProfile()"

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@2d
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getMediaSession()Lcom/android/ims/internal/ImsStreamMediaSession;
    .locals 2

    #@0
    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 780
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getProposedCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    #@0
    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 716
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isInCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 717
    const/4 v0, 0x0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    .line 720
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    .line 715
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 694
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 696
    new-instance v1, Lcom/android/ims/ImsException;

    #@9
    const-string/jumbo v3, "No call session"

    #@c
    .line 697
    const/16 v4, 0x94

    #@e
    .line 696
    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 694
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 701
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@17
    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    monitor-exit v2

    #@1c
    return-object v1

    #@1d
    .line 702
    :catch_0
    move-exception v0

    #@1e
    .line 703
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "getRemoteCallProfile :: "

    #@21
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    .line 704
    new-instance v1, Lcom/android/ims/ImsException;

    #@26
    const-string/jumbo v3, "getRemoteCallProfile()"

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@2d
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getSession()Lcom/android/ims/internal/ImsCallSession;
    .locals 2

    #@0
    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1835
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 1834
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getState()I
    .locals 2

    #@0
    .prologue
    .line 751
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 752
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 753
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 756
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->getState()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result v0

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 751
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public hasPendingUpdate()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 827
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 828
    :try_start_0
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    monitor-exit v1

    #@a
    return v0

    #@b
    .line 827
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public hold()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1216
    const-string/jumbo v0, "hold :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1218
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1219
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1220
    const-string/jumbo v0, "hold :: call is already on hold"

    #@13
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@16
    .line 1222
    :cond_0
    return-void

    #@17
    .line 1225
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1226
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "hold :: update is in progress; request="

    #@26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1228
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@2c
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@3b
    .line 1229
    new-instance v0, Lcom/android/ims/ImsException;

    #@3d
    const-string/jumbo v2, "Call update is in progress"

    #@40
    .line 1230
    const/16 v3, 0x66

    #@42
    .line 1229
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@45
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 1225
    :catchall_0
    move-exception v0

    #@47
    monitor-exit v1

    #@48
    throw v0

    #@49
    .line 1233
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@4b
    if-nez v0, :cond_3

    #@4d
    .line 1234
    new-instance v0, Lcom/android/ims/ImsException;

    #@4f
    const-string/jumbo v2, "No call session"

    #@52
    .line 1235
    const/16 v3, 0x94

    #@54
    .line 1234
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@57
    throw v0

    #@58
    .line 1238
    :cond_3
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5a
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    #@61
    .line 1241
    const/4 v0, 0x1

    #@62
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@64
    .line 1242
    const/4 v0, 0x1

    #@65
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    monitor-exit v1

    #@68
    .line 1215
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1453
    const-string/jumbo v0, "inviteParticipants ::"

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1455
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 1456
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1457
    const-string/jumbo v0, "inviteParticipants :: "

    #@10
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@13
    .line 1458
    new-instance v0, Lcom/android/ims/ImsException;

    #@15
    const-string/jumbo v2, "No call session"

    #@18
    .line 1459
    const/16 v3, 0x94

    #@1a
    .line 1458
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1455
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 1462
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@23
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 1452
    return-void
.end method

.method public isConferenceHost()Z
    .locals 2

    #@0
    .prologue
    .line 900
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 901
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :goto_0
    monitor-exit v1

    #@c
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0

    #@f
    .line 900
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public isInCall()Z
    .locals 2

    #@0
    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 850
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 849
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isMergeRequestedByConf()Z
    .locals 2

    #@0
    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1814
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1813
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isMerged()Z
    .locals 1

    #@0
    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    #@2
    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    #@0
    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 884
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 887
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@c
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->isMultiparty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    move-result v0

    #@10
    monitor-exit v1

    #@11
    return v0

    #@12
    .line 882
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public isMuted()Z
    .locals 2

    #@0
    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 861
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 860
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isOnHold()Z
    .locals 2

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 872
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 871
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public isPendingHold()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 838
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 839
    :try_start_0
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-ne v2, v0, :cond_0

    #@8
    :goto_0
    monitor-exit v1

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    .line 838
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public isVideoCall()Z
    .locals 2

    #@0
    .prologue
    .line 3277
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 3278
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@9
    invoke-virtual {v0}, Lcom/android/ims/ImsCallProfile;->isVideoCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    :goto_0
    monitor-exit v1

    #@e
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0

    #@11
    .line 3277
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public isWifiCall()Z
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3293
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 3294
    :try_start_0
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-nez v5, :cond_0

    #@8
    monitor-exit v4

    #@9
    .line 3295
    return v3

    #@a
    .line 3297
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@c
    const-string/jumbo v6, "CallRadioTech"

    #@f
    invoke-virtual {v5, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 3298
    .local v0, "callType":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@15
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    .line 3299
    :cond_1
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@1d
    const-string/jumbo v6, "callRadioTech"

    #@20
    invoke-virtual {v5, v6}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result-object v0

    #@24
    .line 3304
    :cond_2
    const/4 v2, 0x0

    #@25
    .line 3306
    .local v2, "radioTechnology":I
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    move-result v2

    #@29
    .line 3311
    :goto_0
    const/16 v5, 0x12

    #@2b
    if-ne v2, v5, :cond_3

    #@2d
    const/4 v3, 0x1

    #@2e
    :cond_3
    monitor-exit v4

    #@2f
    return v3

    #@30
    .line 3307
    :catch_0
    move-exception v1

    #@31
    .line 3308
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    #@32
    goto :goto_0

    #@33
    .line 3293
    .end local v0    # "callType":Ljava/lang/String;
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v2    # "radioTechnology":I
    :catchall_0
    move-exception v3

    #@34
    monitor-exit v4

    #@35
    throw v3
.end method

.method public merge(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "bgCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "merge(1) :: bgImsCall="

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@18
    .line 1345
    if-nez p1, :cond_0

    #@1a
    .line 1346
    new-instance v0, Lcom/android/ims/ImsException;

    #@1c
    const-string/jumbo v1, "No background call"

    #@1f
    .line 1347
    const/16 v2, 0x65

    #@21
    .line 1346
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@24
    throw v0

    #@25
    .line 1350
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@27
    monitor-enter v1

    #@28
    .line 1352
    const/4 v0, 0x1

    #@29
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    #@2c
    .line 1353
    const/4 v0, 0x1

    #@2d
    invoke-direct {p1, v0}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    #@30
    .line 1355
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_1

    #@36
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_2

    #@3c
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_3

    #@42
    .line 1361
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setMergePeer(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    :goto_0
    monitor-exit v1

    #@46
    .line 1368
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_4

    #@4c
    .line 1369
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    #@4e
    .line 1373
    :goto_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->merge()V

    #@51
    .line 1342
    return-void

    #@52
    .line 1364
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setMergeHost(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 1350
    :catchall_0
    move-exception v0

    #@57
    monitor-exit v1

    #@58
    throw v0

    #@59
    .line 1371
    :cond_4
    const-string/jumbo v0, "merge : mMergeRequestedByConference not set"

    #@5c
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@5f
    goto :goto_1
.end method

.method public reject(I)V
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "reject :: reason="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@17
    .line 1143
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1144
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 1145
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@20
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->reject(I)V

    #@23
    .line 1148
    :cond_0
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@25
    if-eqz v0, :cond_2

    #@27
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 1149
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 1150
    const-string/jumbo v0, "reject :: call profile is not updated; destroy it..."

    #@32
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@35
    .line 1153
    :cond_1
    const/4 v0, 0x0

    #@36
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@38
    .line 1157
    :cond_2
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@3a
    if-eqz v0, :cond_3

    #@3c
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@3e
    const/4 v2, 0x6

    #@3f
    if-ne v0, v2, :cond_3

    #@41
    .line 1158
    const/4 v0, 0x0

    #@42
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    :cond_3
    monitor-exit v1

    #@45
    .line 1140
    return-void

    #@46
    .line 1143
    :catchall_0
    move-exception v0

    #@47
    monitor-exit v1

    #@48
    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "removeParticipants :: session="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@19
    .line 1472
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 1473
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1e
    if-nez v0, :cond_0

    #@20
    .line 1474
    const-string/jumbo v0, "removeParticipants :: "

    #@23
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@26
    .line 1475
    new-instance v0, Lcom/android/ims/ImsException;

    #@28
    const-string/jumbo v2, "No call session"

    #@2b
    .line 1476
    const/16 v3, 0x94

    #@2d
    .line 1475
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@30
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 1472
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0

    #@34
    .line 1479
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@36
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    monitor-exit v1

    #@3a
    .line 1470
    return-void
.end method

.method public resetIsMergeRequestedByConf(Z)V
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1824
    :try_start_0
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1822
    return-void

    #@7
    .line 1823
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public resume()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1253
    const-string/jumbo v0, "resume :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1255
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1256
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1257
    const-string/jumbo v0, "resume :: call is not being held"

    #@13
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@16
    .line 1259
    :cond_0
    return-void

    #@17
    .line 1262
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1263
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "resume :: update is in progress; request="

    #@26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1265
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@2c
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1264
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@3b
    .line 1266
    new-instance v0, Lcom/android/ims/ImsException;

    #@3d
    const-string/jumbo v2, "Call update is in progress"

    #@40
    .line 1267
    const/16 v3, 0x66

    #@42
    .line 1266
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@45
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 1262
    :catchall_0
    move-exception v0

    #@47
    monitor-exit v1

    #@48
    throw v0

    #@49
    .line 1270
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@4b
    if-nez v0, :cond_3

    #@4d
    .line 1271
    const-string/jumbo v0, "resume :: "

    #@50
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@53
    .line 1272
    new-instance v0, Lcom/android/ims/ImsException;

    #@55
    const-string/jumbo v2, "No call session"

    #@58
    .line 1273
    const/16 v3, 0x94

    #@5a
    .line 1272
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@5d
    throw v0

    #@5e
    .line 1278
    :cond_3
    const/4 v0, 0x3

    #@5f
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@61
    .line 1279
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@63
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createResumeMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    monitor-exit v1

    #@6b
    .line 1252
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "sendDtmf :: code="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@17
    .line 1495
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1496
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 1497
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@20
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    monitor-exit v1

    #@24
    .line 1492
    return-void

    #@25
    .line 1495
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "sendUssd :: ussdMessage="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@17
    .line 1540
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1541
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 1542
    const-string/jumbo v0, "sendUssd :: "

    #@21
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@24
    .line 1543
    new-instance v0, Lcom/android/ims/ImsException;

    #@26
    const-string/jumbo v2, "No call session"

    #@29
    .line 1544
    const/16 v3, 0x94

    #@2b
    .line 1543
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@2e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 1540
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0

    #@32
    .line 1547
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@34
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    monitor-exit v1

    #@38
    .line 1537
    return-void
.end method

.method public setIsMerged(Z)V
    .locals 0
    .param p1, "isMerged"    # Z

    #@0
    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    #@2
    .line 911
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;

    #@0
    .prologue
    .line 930
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;Z)V

    #@4
    .line 929
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;Z)V
    .locals 7
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .param p2, "callbackImmediately"    # Z

    #@0
    .prologue
    .line 948
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 949
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@5
    .line 951
    if-eqz p1, :cond_0

    #@7
    if-eqz p2, :cond_0

    #@9
    .line 955
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@b
    .line 956
    .local v0, "inCall":Z
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@d
    .line 957
    .local v2, "onHold":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getState()I

    #@10
    move-result v3

    #@11
    .line 958
    .local v3, "state":I
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .local v1, "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    monitor-exit v6

    #@14
    .line 962
    if-eqz v1, :cond_1

    #@16
    .line 963
    :try_start_1
    invoke-virtual {p1, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@19
    .line 942
    :goto_0
    return-void

    #@1a
    .end local v0    # "inCall":Z
    .end local v1    # "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .end local v2    # "onHold":Z
    .end local v3    # "state":I
    :cond_0
    monitor-exit v6

    #@1b
    .line 952
    return-void

    #@1c
    .line 948
    :catchall_0
    move-exception v5

    #@1d
    monitor-exit v6

    #@1e
    throw v5

    #@1f
    .line 964
    .restart local v0    # "inCall":Z
    .restart local v1    # "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v2    # "onHold":Z
    .restart local v3    # "state":I
    :cond_1
    if-eqz v0, :cond_3

    #@21
    .line 965
    if-eqz v2, :cond_2

    #@23
    .line 966
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@26
    goto :goto_0

    #@27
    .line 983
    :catch_0
    move-exception v4

    #@28
    .line 984
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "setListener() :: "

    #@2b
    invoke-direct {p0, v5, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    goto :goto_0

    #@2f
    .line 968
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_3
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    #@32
    goto :goto_0

    #@33
    .line 971
    :cond_3
    sparse-switch v3, :sswitch_data_0

    #@36
    goto :goto_0

    #@37
    .line 973
    :sswitch_0
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V

    #@3a
    goto :goto_0

    #@3b
    .line 976
    :sswitch_1
    invoke-virtual {p1, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    #@3e
    goto :goto_0

    #@3f
    .line 971
    nop

    #@40
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMergeHost(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergeHost"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3054
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@3
    .line 3055
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@5
    .line 3057
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@7
    .line 3058
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@9
    .line 3053
    return-void
.end method

.method public setMute(Z)V
    .locals 4
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 994
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 995
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    #@5
    if-eq v1, p1, :cond_0

    #@7
    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "setMute :: turning mute "

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    if-eqz p1, :cond_1

    #@15
    const-string/jumbo v1, "on"

    #@18
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@23
    .line 997
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 1000
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@27
    invoke-virtual {v1, p1}, Lcom/android/ims/internal/ImsCallSession;->setMute(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    :cond_0
    :goto_1
    monitor-exit v2

    #@2b
    .line 993
    return-void

    #@2c
    .line 996
    :cond_1
    :try_start_2
    const-string/jumbo v1, "off"

    #@2f
    goto :goto_0

    #@30
    .line 1001
    :catch_0
    move-exception v0

    #@31
    .line 1002
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "setMute :: "

    #@34
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    .line 1003
    const/4 v1, 0x0

    #@38
    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1

    #@3c
    .line 994
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@3d
    monitor-exit v2

    #@3e
    throw v1
.end method

.method public start(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "start(1) :: session="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@17
    .line 1042
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v2

    #@1a
    .line 1043
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1046
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@23
    .line 1047
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@25
    invoke-virtual {p1, p2, v1}, Lcom/android/ims/internal/ImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 1039
    return-void

    #@2a
    .line 1048
    :catch_0
    move-exception v0

    #@2b
    .line 1049
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "start(1) :: "

    #@2e
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    .line 1050
    new-instance v1, Lcom/android/ims/ImsException;

    #@33
    const-string/jumbo v3, "start(1)"

    #@36
    const/4 v4, 0x0

    #@37
    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@3a
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    .line 1042
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1
.end method

.method public start(Lcom/android/ims/internal/ImsCallSession;[Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "start(n) :: session="

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@17
    .line 1067
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v2

    #@1a
    .line 1068
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 1071
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p1, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@23
    .line 1072
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@25
    invoke-virtual {p1, p2, v1}, Lcom/android/ims/internal/ImsCallSession;->start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit v2

    #@29
    .line 1064
    return-void

    #@2a
    .line 1073
    :catch_0
    move-exception v0

    #@2b
    .line 1074
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "start(n) :: "

    #@2e
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    .line 1075
    new-instance v1, Lcom/android/ims/ImsException;

    #@33
    const-string/jumbo v3, "start(n)"

    #@36
    const/4 v4, 0x0

    #@37
    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@3a
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    .line 1067
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit v2

    #@3d
    throw v1
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "startDtmf :: code="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@17
    .line 1512
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1513
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 1514
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@20
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->startDtmf(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    monitor-exit v1

    #@24
    .line 1509
    return-void

    #@25
    .line 1512
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public stopDtmf()V
    .locals 2

    #@0
    .prologue
    .line 1523
    const-string/jumbo v0, "stopDtmf :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1525
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 1526
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1527
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@f
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->stopDtmf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 1522
    return-void

    #@14
    .line 1525
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0
.end method

.method public terminate(I)V
    .locals 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "terminate :: reason="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@17
    .line 1178
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1179
    const/4 v0, 0x0

    #@1b
    :try_start_0
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@1d
    .line 1180
    const/4 v0, 0x0

    #@1e
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@20
    .line 1181
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    #@23
    .line 1183
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 1203
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@29
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->terminate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_0
    monitor-exit v1

    #@2d
    .line 1175
    return-void

    #@2e
    .line 1178
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public terminate(II)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "overrideReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "terminate :: reason="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " ; overrideReadon="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@22
    .line 1165
    iput p2, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    #@24
    .line 1166
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->terminate(I)V

    #@27
    .line 1163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 3193
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3194
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsCall objId:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 3195
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    .line 3196
    const-string/jumbo v1, " onHold:"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 3197
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    const-string/jumbo v1, "Y"

    #@21
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 3198
    const-string/jumbo v1, " mute:"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 3199
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMuted()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_3

    #@30
    const-string/jumbo v1, "Y"

    #@33
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 3200
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@38
    if-eqz v1, :cond_0

    #@3a
    .line 3201
    const-string/jumbo v1, " tech:"

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 3202
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@42
    const-string/jumbo v2, "CallRadioTech"

    #@45
    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 3204
    :cond_0
    const-string/jumbo v1, " updateRequest:"

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 3205
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@54
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    .line 3206
    const-string/jumbo v1, " merging:"

    #@5e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 3207
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    #@64
    move-result v1

    #@65
    if-eqz v1, :cond_4

    #@67
    const-string/jumbo v1, "Y"

    #@6a
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    .line 3208
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    #@70
    move-result v1

    #@71
    if-eqz v1, :cond_1

    #@73
    .line 3209
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_5

    #@79
    .line 3210
    const-string/jumbo v1, "P"

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 3215
    :cond_1
    :goto_3
    const-string/jumbo v1, " merge action pending:"

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 3216
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@88
    move-result v1

    #@89
    if-eqz v1, :cond_6

    #@8b
    const-string/jumbo v1, "Y"

    #@8e
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    .line 3217
    const-string/jumbo v1, " merged:"

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 3218
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMerged()Z

    #@9a
    move-result v1

    #@9b
    if-eqz v1, :cond_7

    #@9d
    const-string/jumbo v1, "Y"

    #@a0
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 3219
    const-string/jumbo v1, " multiParty:"

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    .line 3220
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@ac
    move-result v1

    #@ad
    if-eqz v1, :cond_8

    #@af
    const-string/jumbo v1, "Y"

    #@b2
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    .line 3221
    const-string/jumbo v1, " confHost:"

    #@b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    .line 3222
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    #@be
    move-result v1

    #@bf
    if-eqz v1, :cond_9

    #@c1
    const-string/jumbo v1, "Y"

    #@c4
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    .line 3223
    const-string/jumbo v1, " buried term:"

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    .line 3224
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@cf
    if-eqz v1, :cond_a

    #@d1
    const-string/jumbo v1, "Y"

    #@d4
    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    .line 3225
    const-string/jumbo v1, " wasVideo: "

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    .line 3226
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    #@df
    if-eqz v1, :cond_b

    #@e1
    const-string/jumbo v1, "Y"

    #@e4
    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    .line 3227
    const-string/jumbo v1, " session:"

    #@ea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    .line 3228
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@ef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f2
    .line 3229
    const-string/jumbo v1, " transientSession:"

    #@f5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    .line 3230
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fd
    .line 3231
    const-string/jumbo v1, "]"

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    .line 3232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v1

    #@107
    return-object v1

    #@108
    .line 3197
    :cond_2
    const-string/jumbo v1, "N"

    #@10b
    goto/16 :goto_0

    #@10d
    .line 3199
    :cond_3
    const-string/jumbo v1, "N"

    #@110
    goto/16 :goto_1

    #@112
    .line 3207
    :cond_4
    const-string/jumbo v1, "N"

    #@115
    goto/16 :goto_2

    #@117
    .line 3212
    :cond_5
    const-string/jumbo v1, "H"

    #@11a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    goto/16 :goto_3

    #@11f
    .line 3216
    :cond_6
    const-string/jumbo v1, "N"

    #@122
    goto/16 :goto_4

    #@124
    .line 3218
    :cond_7
    const-string/jumbo v1, "N"

    #@127
    goto/16 :goto_5

    #@129
    .line 3220
    :cond_8
    const-string/jumbo v1, "N"

    #@12c
    goto :goto_6

    #@12d
    .line 3222
    :cond_9
    const-string/jumbo v1, "N"

    #@130
    goto :goto_7

    #@131
    .line 3224
    :cond_a
    const-string/jumbo v1, "N"

    #@134
    goto :goto_8

    #@135
    .line 3226
    :cond_b
    const-string/jumbo v1, "N"

    #@138
    goto :goto_9
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "mediaProfile"    # Lcom/android/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v2, 0x66

    #@2
    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v1, "update :: callType="

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", mediaProfile="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@24
    .line 1382
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 1383
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@2c
    if-eqz v0, :cond_0

    #@2e
    .line 1384
    const-string/jumbo v0, "update :: call is on hold"

    #@31
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@34
    .line 1386
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    #@36
    const-string/jumbo v1, "Not in a call to update call"

    #@39
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@3c
    throw v0

    #@3d
    .line 1390
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@3f
    monitor-enter v1

    #@40
    .line 1391
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@42
    if-eqz v0, :cond_3

    #@44
    .line 1392
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@46
    if-eqz v0, :cond_2

    #@48
    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v2, "update :: update is in progress; request="

    #@50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 1394
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@56
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 1393
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@65
    .line 1396
    :cond_2
    new-instance v0, Lcom/android/ims/ImsException;

    #@67
    const-string/jumbo v2, "Call update is in progress"

    #@6a
    .line 1397
    const/16 v3, 0x66

    #@6c
    .line 1396
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@6f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    .line 1390
    :catchall_0
    move-exception v0

    #@71
    monitor-exit v1

    #@72
    throw v0

    #@73
    .line 1400
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@75
    if-nez v0, :cond_4

    #@77
    .line 1401
    const-string/jumbo v0, "update :: "

    #@7a
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@7d
    .line 1402
    new-instance v0, Lcom/android/ims/ImsException;

    #@7f
    const-string/jumbo v2, "No call session"

    #@82
    .line 1403
    const/16 v3, 0x94

    #@84
    .line 1402
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@87
    throw v0

    #@88
    .line 1406
    :cond_4
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@8a
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V

    #@8d
    .line 1407
    const/4 v0, 0x6

    #@8e
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    monitor-exit v1

    #@91
    .line 1379
    return-void
.end method

.method public wasVideoCall()Z
    .locals 1

    #@0
    .prologue
    .line 3270
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    #@2
    return v0
.end method
