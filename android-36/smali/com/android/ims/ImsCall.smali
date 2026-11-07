.class public Lcom/android/ims/ImsCall;
.super Ljava/lang/Object;
.source "ImsCall.java"

# interfaces
.implements Lcom/android/ims/internal/ICall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCall$Listener;,
        Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
    }
.end annotation


# static fields
.field private static final blacklist CONF_DBG:Z = true

.field private static final blacklist DBG:Z

.field private static final blacklist FORCE_DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ImsCall"

.field private static final blacklist UPDATE_EXTEND_TO_CONFERENCE:I = 0x5

.field private static final blacklist UPDATE_HOLD:I = 0x1

.field private static final blacklist UPDATE_HOLD_MERGE:I = 0x2

.field private static final blacklist UPDATE_MERGE:I = 0x4

.field private static final blacklist UPDATE_NONE:I = 0x0

.field private static final blacklist UPDATE_RESUME:I = 0x3

.field private static final blacklist UPDATE_UNSPECIFIED:I = 0x6

.field public static final blacklist USSD_MODE_NOTIFY:I = 0x0

.field public static final blacklist USSD_MODE_REQUEST:I = 0x1

.field private static final blacklist VDBG:Z

.field private static final blacklist sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist mAnswerWithRtt:Z

.field private blacklist mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private blacklist mCallSessionMergePending:Z

.field private blacklist mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHold:Z

.field private blacklist mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

.field private blacklist mInCall:Z

.field private blacklist mIsConferenceHost:Z

.field private blacklist mIsMerged:Z

.field private blacklist mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mListener:Lcom/android/ims/ImsCall$Listener;

.field private blacklist mLockObj:Ljava/lang/Object;

.field private blacklist mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

.field private blacklist mMergeHost:Lcom/android/ims/ImsCall;

.field private blacklist mMergePeer:Lcom/android/ims/ImsCall;

.field private blacklist mMergeRequestedByConference:Z

.field private blacklist mMute:Z

.field private blacklist mOverrideReason:I

.field private blacklist mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field private blacklist mSession:Landroid/telephony/ims/ImsCallSession;

.field private blacklist mSessionEndDuringMerge:Z

.field private blacklist mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mTerminationRequestPending:Z

.field private blacklist mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

.field private blacklist mUpdateRequest:I

.field private blacklist mWasVideoCall:Z

.field public final blacklist uniqueId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallProfile(Lcom/android/ims/ImsCall;)Landroid/telephony/ims/ImsCallProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsConferenceHost(Lcom/android/ims/ImsCall;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLockObj(Lcom/android/ims/ImsCall;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMergeHost(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOverrideReason(Lcom/android/ims/ImsCall;)I
    .registers 1

    iget p0, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdateRequest(Lcom/android/ims/ImsCall;)I
    .registers 1

    iget p0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHold(Lcom/android/ims/ImsCall;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsConferenceHost(Lcom/android/ims/ImsCall;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastReasonInfo(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProposedCallProfile(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUpdateRequest(Lcom/android/ims/ImsCall;I)V
    .registers 2

    iput p1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateNewCall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->createNewCall(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misMergeHost(Lcom/android/ims/ImsCall;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misTransientConferenceSession(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsCallSession;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmergeInternal(Lcom/android/ims/ImsCall;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->mergeInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessMergeComplete(Lcom/android/ims/ImsCall;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetCallSessionMergePending(Lcom/android/ims/ImsCall;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetVDBG()Z
    .registers 1

    sget-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 81
    const/4 v0, 0x3

    const-string v1, "ImsCall"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    .line 82
    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    .line 664
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    .line 572
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 576
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 578
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mMute:Z

    .line 580
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 582
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 585
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 587
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 591
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    .line 593
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 596
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 600
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 601
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 604
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 608
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 614
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 618
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 622
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 628
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 637
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 650
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 659
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    .line 683
    iput v0, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    .line 689
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    .line 698
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    .line 699
    invoke-virtual {p0, p2}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 700
    sget-object v0, Lcom/android/ims/ImsCall;->sUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/ims/ImsCall;->uniqueId:I

    .line 701
    return-void
.end method

.method private blacklist appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3851
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3852
    const-string v1, " ImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3853
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist clear(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "lastReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 1901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1902
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1903
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1904
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1905
    return-void
.end method

.method private blacklist clearMergeInfo()V
    .registers 4

    .line 3608
    const-string v0, "clearMergeInfo :: clearing all merge info"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3612
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    .line 3613
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput-object v1, v0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3614
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 3615
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput-boolean v2, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3617
    :cond_17
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_27

    .line 3618
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-object v1, v0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3619
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 3620
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-boolean v2, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3622
    :cond_27
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3623
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3624
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 3625
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3626
    return-void
.end method

.method private blacklist clearSessionTerminationFlags()V
    .registers 2

    .line 2430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 2431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2432
    return-void
.end method

.method private blacklist createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;
    .registers 2

    .line 1911
    new-instance v0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    invoke-direct {v0, p0}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;)V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    .line 1912
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    return-object v0
.end method

.method private blacklist createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .registers 4

    .line 1949
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1951
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_a

    .line 1952
    return-object v0

    .line 1955
    :cond_a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1956
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1957
    const/4 v1, 0x2

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1959
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_23

    .line 1960
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1963
    :cond_23
    return-object v0
.end method

.method private blacklist createNewCall(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .registers 5
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 1932
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1935
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_7
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->attachSession(Landroid/telephony/ims/ImsCallSession;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_7 .. :try_end_a} :catch_b

    .line 1941
    goto :goto_11

    .line 1936
    :catch_b
    move-exception v1

    .line 1937
    .local v1, "e":Lcom/android/ims/ImsException;
    nop

    .line 1938
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 1939
    const/4 v0, 0x0

    .line 1945
    .end local v1    # "e":Lcom/android/ims/ImsException;
    :goto_11
    return-object v0
.end method

.method private blacklist createResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .registers 4

    .line 1967
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1969
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_a

    .line 1970
    return-object v0

    .line 1973
    :cond_a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1974
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1975
    const/4 v1, 0x3

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1977
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_23

    .line 1978
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1981
    :cond_23
    return-object v0
.end method

.method private blacklist enforceConversationMode()V
    .registers 2

    .line 1985
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_9

    .line 1986
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1987
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1989
    :cond_9
    return-void
.end method

.method private blacklist isMergeHost()Z
    .registers 2

    .line 3671
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist isMergePeer()Z
    .registers 2

    .line 3680
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist isMerging()Z
    .registers 2

    .line 3662
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public static blacklist isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z
    .registers 2
    .param p0, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 758
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist isTransientConferenceSession(Landroid/telephony/ims/ImsCallSession;)Z
    .registers 3
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;

    .line 2137
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-ne p1, v0, :cond_c

    .line 2138
    const/4 v0, 0x1

    return v0

    .line 2140
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isUpdatePending(Lcom/android/ims/ImsCall;)Z
    .registers 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 1500
    if-eqz p1, :cond_24

    iget v0, p1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_24

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge :: update is in progress; request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1502
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1501
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1503
    const/4 v0, 0x1

    return v0

    .line 1505
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3961
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3962
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3977
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3978
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 3986
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3987
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3953
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 3969
    const-string v0, "ImsCall"

    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    return-void
.end method

.method private blacklist markCallAsMerged(Z)V
    .registers 6
    .param p1, "playDisconnectTone"    # Z

    .line 2152
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2155
    const-string v0, "markCallAsMerged"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2156
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 2159
    const/4 v0, 0x0

    .line 2160
    .local v0, "reasonCode":I
    if-eqz p1, :cond_1b

    .line 2161
    const/16 v0, 0x1fe

    .line 2162
    const-string v1, "Call ended by network"

    .local v1, "reasonInfo":Ljava/lang/String;
    goto :goto_1f

    .line 2164
    .end local v1    # "reasonInfo":Ljava/lang/String;
    :cond_1b
    const/16 v0, 0x6c

    .line 2165
    const-string v1, "Call ended during conference merge process."

    .line 2167
    .restart local v1    # "reasonInfo":Ljava/lang/String;
    :goto_1f
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2170
    .end local v0    # "reasonCode":I
    .end local v1    # "reasonInfo":Ljava/lang/String;
    :cond_27
    return-void
.end method

.method private blacklist merge()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1515
    const-string v0, "merge :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1517
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1520
    :try_start_8
    invoke-direct {p0, p0}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eqz v1, :cond_2e

    .line 1521
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1522
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1523
    :cond_1d
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1524
    :cond_26
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1530
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_2e
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-nez v1, :cond_b0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->isUpdatePending(Lcom/android/ims/ImsCall;)Z

    move-result v1

    if-eqz v1, :cond_40

    goto/16 :goto_b0

    .line 1538
    :cond_40
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_a1

    .line 1546
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    if-nez v1, :cond_68

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11102cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_68

    .line 1569
    :cond_58
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1570
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1571
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    goto :goto_9f

    .line 1549
    :cond_68
    :goto_68
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    const/4 v2, 0x4

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_82

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_82

    .line 1557
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1558
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput v2, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    goto :goto_9a

    .line 1559
    :cond_82
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_9a

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_9a

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_9a

    .line 1560
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1561
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iput v2, v1, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1564
    :cond_9a
    :goto_9a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->merge()V

    .line 1573
    :goto_9f
    monitor-exit v0

    .line 1574
    return-void

    .line 1539
    :cond_a1
    const-string v1, "merge :: no call session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1540
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1531
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_b0
    :goto_b0
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1532
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_bc

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1533
    :cond_bc
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_c5

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1534
    :cond_c5
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "Peer or host call update is in progress"

    invoke-direct {v1, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1573
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_cd
    move-exception v1

    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_8 .. :try_end_cf} :catchall_cd

    throw v1
.end method

.method private blacklist mergeInternal()V
    .registers 2

    .line 1993
    const-string v0, "mergeInternal :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1996
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->merge()V

    .line 1997
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1998
    return-void
.end method

.method private blacklist notifyConferenceSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2001
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2002
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2004
    if-eqz v0, :cond_11

    .line 2006
    :try_start_7
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 2009
    goto :goto_11

    .line 2007
    :catchall_b
    move-exception v1

    .line 2008
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "notifyConferenceSessionTerminated :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2011
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_11
    :goto_11
    return-void
.end method

.method private blacklist notifyConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .registers 4
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 2014
    if-eqz p1, :cond_24

    iget-object v0, p1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    if-nez v0, :cond_7

    goto :goto_24

    .line 2018
    :cond_7
    invoke-static {p1}, Lcom/android/ims/ImsCall;->parseConferenceState(Landroid/telephony/ims/ImsConferenceState;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    .line 2020
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    if-eqz v0, :cond_23

    .line 2022
    :try_start_15
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    .line 2025
    goto :goto_23

    .line 2023
    :catchall_1d
    move-exception v0

    .line 2024
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "notifyConferenceStateUpdated :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2027
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_23
    :goto_23
    return-void

    .line 2015
    :cond_24
    :goto_24
    return-void
.end method

.method private blacklist notifySessionTerminatedDuringMerge()V
    .registers 6

    .line 2402
    const/4 v0, 0x0

    .line 2403
    .local v0, "notifyFailure":Z
    const/4 v1, 0x0

    .line 2405
    .local v1, "notifyFailureReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    monitor-enter p0

    .line 2406
    :try_start_3
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2407
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-boolean v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v3, :cond_12

    .line 2412
    const-string v3, "notifySessionTerminatedDuringMerge ::reporting terminate during merge"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2414
    const/4 v0, 0x1

    .line 2415
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    move-object v1, v3

    .line 2417
    :cond_12
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 2418
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_25

    .line 2420
    if-eqz v2, :cond_24

    if-eqz v0, :cond_24

    .line 2422
    :try_start_1a
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    .line 2425
    goto :goto_24

    .line 2423
    :catchall_1e
    move-exception v3

    .line 2424
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "notifySessionTerminatedDuringMerge :: "

    invoke-direct {p0, v4, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2427
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_24
    :goto_24
    return-void

    .line 2418
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public static blacklist parseConferenceState(Landroid/telephony/ims/ImsConferenceState;)Ljava/util/List;
    .registers 16
    .param p0, "state"    # Landroid/telephony/ims/ImsConferenceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/ImsConferenceState;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 2030
    iget-object v0, p0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 2032
    .local v0, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_d

    .line 2033
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2036
    :cond_d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2037
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2038
    .local v2, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/internal/ConferenceParticipant;>;"
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 2039
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2041
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2042
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 2043
    .local v5, "confInfo":Landroid/os/Bundle;
    const-string v6, "status"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2044
    .local v6, "status":Ljava/lang/String;
    const-string v7, "user"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2045
    .local v7, "user":Ljava/lang/String;
    const-string v8, "display-text"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2046
    .local v11, "displayName":Ljava/lang/String;
    const-string v8, "endpoint"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2049
    .local v8, "endpoint":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyConferenceStateUpdated :: key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ImsCall"

    invoke-static {v10, v4}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", status="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", user="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2051
    invoke-static {v10, v7}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", displayName= "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2052
    invoke-static {v10, v11}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", endpoint="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2053
    invoke-static {v10, v8}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2049
    invoke-static {v10, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2057
    .local v10, "handle":Landroid/net/Uri;
    if-nez v8, :cond_a2

    .line 2058
    const-string v8, ""

    .line 2060
    :cond_a2
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 2061
    .local v12, "endpointUri":Landroid/net/Uri;
    invoke-static {v6}, Landroid/telephony/ims/ImsConferenceState;->getConnectionStateForStatus(Ljava/lang/String;)I

    move-result v13

    .line 2063
    .local v13, "connectionState":I
    const/4 v9, 0x6

    if-eq v13, v9, :cond_b6

    .line 2064
    new-instance v9, Lcom/android/ims/internal/ConferenceParticipant;

    const/4 v14, -0x1

    invoke-direct/range {v9 .. v14}, Lcom/android/ims/internal/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 2066
    .local v9, "conferenceParticipant":Lcom/android/ims/internal/ConferenceParticipant;
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2068
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "confInfo":Landroid/os/Bundle;
    .end local v6    # "status":Ljava/lang/String;
    .end local v7    # "user":Ljava/lang/String;
    .end local v8    # "endpoint":Ljava/lang/String;
    .end local v9    # "conferenceParticipant":Lcom/android/ims/internal/ConferenceParticipant;
    .end local v10    # "handle":Landroid/net/Uri;
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v12    # "endpointUri":Landroid/net/Uri;
    .end local v13    # "connectionState":I
    :cond_b6
    goto/16 :goto_1a

    .line 2069
    :cond_b8
    return-object v2
.end method

.method private blacklist processCallTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallTerminated :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userInitiated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2085
    const/4 v0, 0x0

    .line 2086
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-enter p0

    .line 2091
    :try_start_24
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    if-nez v1, :cond_3a

    .line 2099
    const-string v1, "processCallTerminated :: burying termination during ongoing merge."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 2102
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 2103
    monitor-exit p0

    return-void

    .line 2107
    :cond_3a
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 2108
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2109
    monitor-exit p0

    return-void

    .line 2111
    :cond_45
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object v0, v1

    .line 2112
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2114
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_59

    .line 2116
    if-eqz v0, :cond_58

    .line 2118
    :try_start_4e
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    .line 2121
    goto :goto_58

    .line 2119
    :catchall_52
    move-exception v1

    .line 2120
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "processCallTerminated :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2123
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_58
    :goto_58
    return-void

    .line 2114
    :catchall_59
    move-exception v1

    :try_start_5a
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v1
.end method

.method private blacklist processMergeComplete()V
    .registers 8

    .line 2211
    const-string v0, "processMergeComplete :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2215
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2216
    const-string v0, "processMergeComplete :: We are not the merge host!"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2217
    return-void

    .line 2221
    :cond_11
    const/4 v0, 0x0

    .line 2226
    .local v0, "swapRequired":Z
    monitor-enter p0

    .line 2227
    :try_start_13
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2f

    .line 2228
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2231
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    if-nez v1, :cond_25

    .line 2234
    iput-boolean v3, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2235
    const/4 v0, 0x1

    .line 2237
    :cond_25
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v3}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2238
    move-object v1, p0

    .line 2239
    .local v1, "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .local v3, "finalPeerCall":Lcom/android/ims/ImsCall;
    goto/16 :goto_ea

    .line 2246
    .end local v1    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_2f
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_3a

    .line 2247
    const-string v1, "processMergeComplete :: No transient session!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2248
    monitor-exit p0

    return-void

    .line 2250
    :cond_3a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_45

    .line 2251
    const-string v1, "processMergeComplete :: No merge peer!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2252
    monitor-exit p0

    return-void

    .line 2257
    :cond_45
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2258
    .local v1, "transientConferenceSession":Landroid/telephony/ims/ImsCallSession;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2262
    invoke-virtual {v1, v4, v4}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 2272
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_8c

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 2281
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iput-boolean v3, v4, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2282
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 2283
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-eqz v4, :cond_79

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_79

    .line 2284
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    iget-object v5, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    iput-object v5, v4, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    .line 2293
    :cond_79
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2294
    .local v4, "finalHostCall":Lcom/android/ims/ImsCall;
    move-object v5, p0

    .line 2295
    .local v5, "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v0, 0x1

    .line 2296
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2297
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v6, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2299
    const-string v3, "processMergeComplete :: transient will transfer to merge peer"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_ca

    .line 2301
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_8c
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_b3

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2302
    invoke-virtual {v4}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 2307
    move-object v4, p0

    .line 2308
    .restart local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2309
    .restart local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v0, 0x0

    .line 2310
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2311
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v6, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2313
    const-string v3, "processMergeComplete :: transient will stay with the merge host"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_ca

    .line 2320
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_b3
    move-object v4, p0

    .line 2321
    .restart local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 2322
    .restart local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v6, v3}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2323
    const/4 v0, 0x0

    .line 2324
    invoke-virtual {p0, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2325
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v3, v2}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2327
    const-string v3, "processMergeComplete :: transient will stay with us (I\'m the host)."

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    move-object v3, v5

    .line 2332
    .end local v5    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .restart local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :goto_ca
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMergeComplete :: call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is the final host"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2337
    invoke-direct {v4, v1}, Lcom/android/ims/ImsCall;->setTransientSessionAsPrimary(Landroid/telephony/ims/ImsCallSession;)V

    move-object v1, v4

    .line 2340
    .end local v4    # "finalHostCall":Lcom/android/ims/ImsCall;
    .local v1, "finalHostCall":Lcom/android/ims/ImsCall;
    :goto_ea
    iget-object v4, v1, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2342
    .local v4, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    .line 2343
    invoke-static {v1}, Lcom/android/ims/ImsCall;->updateCallProfile(Lcom/android/ims/ImsCall;)V

    .line 2346
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 2350
    invoke-direct {v3}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 2353
    invoke-direct {v1}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    .line 2359
    iput-boolean v2, v1, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    .line 2360
    monitor-exit p0
    :try_end_fe
    .catchall {:try_start_13 .. :try_end_fe} :catchall_123

    .line 2361
    if-eqz v4, :cond_122

    .line 2366
    :try_start_100
    invoke-virtual {v4, v1, v3, v0}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_104

    .line 2369
    goto :goto_10a

    .line 2367
    :catchall_104
    move-exception v2

    .line 2368
    .local v2, "t":Ljava/lang/Throwable;
    const-string v5, "processMergeComplete :: "

    invoke-direct {p0, v5, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2370
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_10a
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-eqz v2, :cond_122

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_122

    .line 2372
    :try_start_116
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v4, v1, v2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_11b
    .catchall {:try_start_116 .. :try_end_11b} :catchall_11c

    .line 2376
    goto :goto_122

    .line 2374
    :catchall_11c
    move-exception v2

    .line 2375
    .restart local v2    # "t":Ljava/lang/Throwable;
    const-string v5, "processMergeComplete :: "

    invoke-direct {p0, v5, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2379
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_122
    :goto_122
    return-void

    .line 2360
    .end local v1    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v3    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .end local v4    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_123
    move-exception v1

    :try_start_124
    monitor-exit p0
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw v1
.end method

.method private blacklist processMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMergeFailed :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 2447
    monitor-enter p0

    .line 2450
    :try_start_17
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2451
    const-string v0, "processMergeFailed :: We are not the merge host!"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2452
    monitor-exit p0

    return-void

    .line 2456
    :cond_24
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v0, :cond_30

    .line 2457
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 2458
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    .line 2461
    :cond_30
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2465
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2466
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2467
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    .line 2470
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    if-eqz v3, :cond_51

    .line 2471
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v3, v1}, Lcom/android/ims/ImsCall;->markCallAsMerged(Z)V

    .line 2472
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1, v2}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 2473
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-direct {v1}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    goto :goto_56

    .line 2475
    :cond_51
    const-string v1, "processMergeFailed :: No merge peer!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 2479
    :goto_56
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    .line 2480
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_17 .. :try_end_5a} :catchall_67

    .line 2481
    if-eqz v0, :cond_66

    .line 2483
    :try_start_5c
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_60

    .line 2486
    goto :goto_66

    .line 2484
    :catchall_60
    move-exception v1

    .line 2485
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "processMergeFailed :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2489
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_66
    :goto_66
    return-void

    .line 2480
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_67
    move-exception v0

    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw v0
.end method

.method private blacklist setCallSessionMergePending(Z)V
    .registers 2
    .param p1, "callSessionMergePending"    # Z

    .line 3699
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    .line 3700
    return-void
.end method

.method private blacklist setMergePeer(Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "mergePeer"    # Lcom/android/ims/ImsCall;

    .line 3635
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3638
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3639
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3640
    return-void
.end method

.method private blacklist setTransientSessionAsPrimary(Landroid/telephony/ims/ImsCallSession;)V
    .registers 5
    .param p1, "transientSession"    # Landroid/telephony/ims/ImsCallSession;

    .line 2144
    monitor-enter p0

    .line 2145
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 2146
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 2147
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 2148
    monitor-exit p0

    .line 2149
    return-void

    .line 2148
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private blacklist shouldProcessConferenceResult()Z
    .registers 6

    .line 3717
    const/4 v0, 0x0

    .line 3719
    .local v0, "areMergeTriggersDone":Z
    monitor-enter p0

    .line 3723
    :try_start_2
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-nez v1, :cond_16

    .line 3725
    const-string v1, "shouldProcessConferenceResult :: no merge in progress"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 3727
    monitor-exit p0

    return v2

    .line 3733
    :cond_16
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_5a

    .line 3735
    const-string v1, "shouldProcessConferenceResult :: We are a merge host"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge peer="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3738
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_4a

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3739
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_4a

    move v2, v3

    goto :goto_4b

    :cond_4a
    nop

    :goto_4b
    move v0, v2

    .line 3740
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_ad

    .line 3742
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_ad

    .line 3744
    :cond_5a
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 3746
    const-string v1, "shouldProcessConferenceResult :: We are a merge peer"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldProcessConferenceResult :: Here is the merge host="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3749
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3750
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    if-nez v1, :cond_8d

    move v2, v3

    goto :goto_8e

    :cond_8d
    nop

    :goto_8e
    move v0, v2

    .line 3751
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_a1

    .line 3753
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    iget-object v1, v1, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_ad

    .line 3765
    :cond_a1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v1

    xor-int/2addr v1, v3

    move v0, v1

    .end local v0    # "areMergeTriggersDone":Z
    .local v1, "areMergeTriggersDone":Z
    goto :goto_ad

    .line 3769
    .end local v1    # "areMergeTriggersDone":Z
    .restart local v0    # "areMergeTriggersDone":Z
    :cond_a8
    const-string v1, "shouldProcessConferenceResult : merge in progress but call is neither host nor peer."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 3773
    :cond_ad
    :goto_ad
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldProcessConferenceResult :: returning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3774
    if-eqz v0, :cond_bd

    const-string v2, "true"

    goto :goto_bf

    :cond_bd
    const-string v2, "false"

    :goto_bf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3773
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 3776
    monitor-exit p0

    .line 3777
    return v0

    .line 3776
    :catchall_cc
    move-exception v1

    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_2 .. :try_end_ce} :catchall_cc

    throw v1
.end method

.method private blacklist throwImsException(Ljava/lang/Throwable;I)V
    .registers 5
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3837
    instance-of v0, p1, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_8

    .line 3838
    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsException;

    throw v0

    .line 3840
    :cond_8
    new-instance v0, Lcom/android/ims/ImsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method private blacklist trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3863
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    .line 3864
    return-void
.end method

.method private blacklist updateCallProfile()V
    .registers 3

    .line 2389
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2390
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_10

    .line 2391
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/ImsCall;->setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2393
    :cond_10
    monitor-exit v0

    .line 2394
    return-void

    .line 2393
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static blacklist updateCallProfile(Lcom/android/ims/ImsCall;)V
    .registers 1
    .param p0, "call"    # Lcom/android/ims/ImsCall;

    .line 2383
    if-eqz p0, :cond_5

    .line 2384
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->updateCallProfile()V

    .line 2386
    :cond_5
    return-void
.end method

.method private blacklist updateRequestToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "updateRequest"    # I

    .line 3582
    packed-switch p1, :pswitch_data_1c

    .line 3598
    const-string v0, "UNKNOWN"

    return-object v0

    .line 3596
    :pswitch_6
    const-string v0, "UNSPECIFIED"

    return-object v0

    .line 3594
    :pswitch_9
    const-string v0, "EXTEND_TO_CONFERENCE"

    return-object v0

    .line 3592
    :pswitch_c
    const-string v0, "MERGE"

    return-object v0

    .line 3590
    :pswitch_f
    const-string v0, "RESUME"

    return-object v0

    .line 3588
    :pswitch_12
    const-string v0, "HOLD_MERGE"

    return-object v0

    .line 3586
    :pswitch_15
    const-string v0, "HOLD"

    return-object v0

    .line 3584
    :pswitch_18
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public blacklist accept(I)V
    .registers 3
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1224
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1225
    return-void
.end method

.method public blacklist accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 8
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept :: callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1238
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    if-eqz v0, :cond_2c

    .line 1239
    const/4 v0, 0x1

    iput v0, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    .line 1240
    const-string v0, "accept :: changing media profile RTT mode to full"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1243
    :cond_2c
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1244
    :try_start_2f
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_7c

    if-eqz v1, :cond_72

    .line 1250
    const/4 v1, 0x0

    :try_start_34
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/ImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_64

    .line 1254
    nop

    .line 1256
    :try_start_3a
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v2, :cond_57

    .line 1257
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_4b

    .line 1258
    const-string v2, "accept :: call profile will be updated"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1261
    :cond_4b
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1262
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1263
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1267
    :cond_57
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v2, :cond_62

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_62

    .line 1268
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1270
    :cond_62
    monitor-exit v0

    .line 1271
    return-void

    .line 1251
    :catchall_64
    move-exception v2

    .line 1252
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "accept :: "

    invoke-direct {p0, v3, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1253
    new-instance v3, Lcom/android/ims/ImsException;

    const-string v4, "accept()"

    invoke-direct {v3, v4, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v3

    .line 1245
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_72
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to answer"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v1

    .line 1270
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "profile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3a .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public blacklist attachSession(Landroid/telephony/ims/ImsCallSession;)V
    .registers 6
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachSession :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_19
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_37

    .line 1156
    :try_start_1b
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2b

    .line 1160
    goto :goto_35

    .line 1157
    :catchall_2b
    move-exception v1

    .line 1158
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2c
    const-string v2, "attachSession :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1159
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    .line 1161
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_35
    monitor-exit v0

    .line 1162
    return-void

    .line 1161
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_37

    throw v1
.end method

.method public blacklist callSessionNotifyAnbr(III)V
    .registers 6
    .param p1, "mediaType"    # I
    .param p2, "direction"    # I
    .param p3, "bitsPerSecond"    # I

    .line 915
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_d

    .line 917
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2, p3}, Landroid/telephony/ims/ImsCallSession;->callSessionNotifyAnbr(III)V

    goto :goto_12

    .line 919
    :cond_d
    const-string v1, "callSessionNotifyAnbr : session - null"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 921
    :goto_12
    monitor-exit v0

    .line 922
    return-void

    .line 921
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist checkIfRemoteUserIsSame(Ljava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;

    .line 731
    if-nez p1, :cond_4

    .line 732
    const/4 v0, 0x0

    return v0

    .line 735
    :cond_4
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "remote_uri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist close()V
    .registers 4

    .line 708
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 710
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->close()V

    .line 711
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    goto :goto_15

    .line 713
    :cond_10
    const-string v1, "close :: Cannot close Null call session!"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 716
    :goto_15
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 717
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 718
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 719
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 720
    monitor-exit v0

    .line 721
    return-void

    .line 720
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public blacklist conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .registers 5
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 3561
    monitor-enter p0

    .line 3562
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 3563
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3564
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_14

    .line 3566
    if-eqz v0, :cond_13

    .line 3568
    :try_start_9
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    .line 3571
    goto :goto_13

    .line 3569
    :catchall_d
    move-exception v1

    .line 3570
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "callSessionConferenceStateUpdated :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3573
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_13
    :goto_13
    return-void

    .line 3564
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public blacklist consultativeTransfer(Lcom/android/ims/ImsCall;)V
    .registers 7
    .param p1, "transferToImsCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consultativeTransfer :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", other call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1365
    :try_start_25
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_4e

    if-eqz v1, :cond_44

    .line 1371
    :try_start_29
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->transfer(Landroid/telephony/ims/ImsCallSession;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_35

    .line 1375
    nop

    .line 1376
    :try_start_33
    monitor-exit v0

    .line 1377
    return-void

    .line 1372
    :catchall_35
    move-exception v1

    .line 1373
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "consultativeTransfer :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1374
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "consultativeTransfer()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    throw v2

    .line 1366
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    :cond_44
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to transfer"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    throw v1

    .line 1376
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "transferToImsCall":Lcom/android/ims/ImsCall;
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public greylist-max-r deflect(Ljava/lang/String;)V
    .registers 7
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deflect :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImsCall"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1283
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1284
    :try_start_2b
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_50

    if-eqz v1, :cond_46

    .line 1290
    :try_start_2f
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_37

    .line 1294
    nop

    .line 1295
    :try_start_35
    monitor-exit v0

    .line 1296
    return-void

    .line 1291
    :catchall_37
    move-exception v1

    .line 1292
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "deflect :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1293
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "deflect()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "number":Ljava/lang/String;
    throw v2

    .line 1285
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_46
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to deflect"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "number":Ljava/lang/String;
    throw v1

    .line 1295
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "number":Ljava/lang/String;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public blacklist equalsTo(Lcom/android/ims/internal/ICall;)Z
    .registers 4
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .line 746
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 747
    return v0

    .line 750
    :cond_4
    instance-of v1, p1, Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_d

    .line 751
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 754
    :cond_d
    return v0
.end method

.method public blacklist extendToConference([Ljava/lang/String;)V
    .registers 6
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1658
    const-string v0, "extendToConference ::"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_1e

    .line 1661
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_16

    .line 1662
    const-string v0, "extendToConference :: call is on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1664
    :cond_16
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Not in a call to extend a call to conference"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1668
    :cond_1e
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1669
    :try_start_21
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v2, :cond_42

    .line 1678
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_33

    .line 1684
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    .line 1685
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1686
    monitor-exit v0

    .line 1687
    return-void

    .line 1679
    :cond_33
    const-string v1, "extendToConference :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1680
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v1

    .line 1671
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendToConference :: update is in progress; request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1672
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1671
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1674
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v2

    .line 1686
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_21 .. :try_end_68} :catchall_66

    throw v1
.end method

.method public blacklist getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 927
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 929
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_1e

    .line 935
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    :try_start_d
    monitor-exit v0

    return-object v1

    .line 936
    :catchall_f
    move-exception v1

    .line 937
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getCallExtra :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 938
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getCallExtra()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "name":Ljava/lang/String;
    throw v2

    .line 930
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1e
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "name":Ljava/lang/String;
    throw v1

    .line 940
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 767
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 768
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-exit v0

    return-object v1

    .line 769
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getCallSession()Landroid/telephony/ims/ImsCallSession;
    .registers 3

    .line 886
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    .line 888
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getConferenceParticipants()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConferenceParticipants :: mConferenceParticipants"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 853
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-nez v1, :cond_22

    .line 854
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 856
    :cond_22
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 857
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v0

    return-object v1

    .line 859
    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 860
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public blacklist getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
    .registers 2

    .line 1920
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mImsCallSessionListenerProxy:Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    return-object v0
.end method

.method public blacklist getLastReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .registers 3

    .line 949
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    monitor-exit v0

    return-object v1

    .line 951
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getListener()Lcom/android/ims/ImsCall$Listener;
    .registers 2

    .line 1928
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method public blacklist getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 793
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_1e

    .line 799
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    :try_start_d
    monitor-exit v0

    return-object v1

    .line 800
    :catchall_f
    move-exception v1

    .line 801
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getLocalCallProfile :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 802
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getLocalCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v2

    .line 794
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_1e
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 804
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist getMediaSession()Lcom/android/ims/internal/ImsStreamMediaSession;
    .registers 3

    .line 899
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    monitor-exit v0

    return-object v1

    .line 901
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getNetworkType()I
    .registers 6

    .line 3907
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3908
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 3909
    monitor-exit v0

    return v2

    .line 3911
    :cond_a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v1

    .line 3913
    .local v1, "networkType":I
    if-nez v1, :cond_37

    .line 3915
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallRadioTech"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3916
    .local v2, "oldRatType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3917
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "callRadioTech"

    invoke-virtual {v3, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_39

    move-object v2, v3

    .line 3920
    :cond_2b
    :try_start_2b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3921
    .local v3, "oldRatTypeConverted":I
    invoke-static {v3}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v4
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_33} :catch_35
    .catchall {:try_start_2b .. :try_end_33} :catchall_39

    move v1, v4

    .line 3924
    .end local v3    # "oldRatTypeConverted":I
    goto :goto_37

    .line 3922
    :catch_35
    move-exception v3

    .line 3923
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .line 3926
    .end local v2    # "oldRatType":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_37
    :goto_37
    :try_start_37
    monitor-exit v0

    return v1

    .line 3927
    .end local v1    # "networkType":I
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public blacklist getProposedCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    .line 834
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 835
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isInCall()Z

    move-result v1

    if-nez v1, :cond_c

    .line 836
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 839
    :cond_c
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-exit v0

    return-object v1

    .line 840
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_28

    if-eqz v1, :cond_1e

    .line 820
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_f

    :try_start_d
    monitor-exit v0

    return-object v1

    .line 821
    :catchall_f
    move-exception v1

    .line 822
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "getRemoteCallProfile :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 823
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getRemoteCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v2

    .line 815
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_1e
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 825
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public blacklist getSession()Landroid/telephony/ims/ImsCallSession;
    .registers 3

    .line 2199
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2200
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    .line 2201
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getState()I
    .registers 3

    .line 870
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 871
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_a

    .line 872
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 875
    :cond_a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 876
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist hasPendingUpdate()Z
    .registers 3

    .line 960
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_3
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 962
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist hold()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1432
    const-string v0, "hold :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1435
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_14

    .line 1436
    const-string v0, "hold :: call is already on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1438
    :cond_14
    return-void

    .line 1441
    :cond_15
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1442
    :try_start_18
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v1, :cond_3a

    .line 1449
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_30

    .line 1456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1457
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1458
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1459
    monitor-exit v0

    .line 1460
    return-void

    .line 1450
    :cond_30
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1443
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hold :: update is in progress; request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1444
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1443
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1445
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1459
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_18 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public blacklist inviteParticipants([Ljava/lang/String;)V
    .registers 6
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1694
    const-string v0, "inviteParticipants ::"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1696
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1697
    :try_start_8
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_13

    .line 1703
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    .line 1704
    monitor-exit v0

    .line 1705
    return-void

    .line 1698
    :cond_13
    const-string v1, "inviteParticipants :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1699
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v1

    .line 1704
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist isCallSessionMergePending()Z
    .registers 2

    .line 3689
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    return v0
.end method

.method public blacklist isConferenceHost()Z
    .registers 3

    .line 1034
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1035
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 1036
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist isCrossSimCall()Z
    .registers 5

    .line 3938
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3939
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 3940
    monitor-exit v0

    return v2

    .line 3942
    :cond_a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3945
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist isInCall()Z
    .registers 3

    .line 982
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 983
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    monitor-exit v0

    return v1

    .line 984
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isMergeRequestedByConf()Z
    .registers 3

    .line 2178
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2179
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    monitor-exit v0

    return v1

    .line 2180
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isMerged()Z
    .registers 2

    .line 1053
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    return v0
.end method

.method public greylist-max-r isMultiparty()Z
    .registers 3

    .line 1016
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1017
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_a

    .line 1018
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 1021
    :cond_a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->isMultiparty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1022
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist isMuted()Z
    .registers 3

    .line 993
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 994
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    monitor-exit v0

    return v1

    .line 995
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isOnHold()Z
    .registers 3

    .line 1004
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1005
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    monitor-exit v0

    return v1

    .line 1006
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist isPendingHold()Z
    .registers 4

    .line 971
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_3
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    monitor-exit v0

    return v2

    .line 973
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist isVideoCall()Z
    .registers 3

    .line 3878
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3879
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 3880
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist isWifiCall()Z
    .registers 5

    .line 3894
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 3895
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 3896
    monitor-exit v0

    return v2

    .line 3898
    :cond_a
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getNetworkType()I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_13

    const/4 v2, 0x1

    :cond_13
    monitor-exit v0

    return v2

    .line 3899
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public blacklist merge(Lcom/android/ims/ImsCall;)V
    .registers 5
    .param p1, "bgCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge(1) :: bgImsCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1586
    if-eqz p1, :cond_51

    .line 1591
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1593
    const/4 v1, 0x1

    :try_start_1c
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1594
    invoke-direct {p1, v1}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    .line 1596
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_2e
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1602
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setMergePeer(Lcom/android/ims/ImsCall;)V

    goto :goto_3b

    .line 1605
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setMergeHost(Lcom/android/ims/ImsCall;)V

    .line 1607
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_4e

    .line 1609
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1610
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    goto :goto_4a

    .line 1612
    :cond_45
    const-string v0, "merge : mMergeRequestedByConference not set"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1614
    :goto_4a
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->merge()V

    .line 1615
    return-void

    .line 1607
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1

    .line 1587
    :cond_51
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "No background call"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public greylist-max-r reject(I)V
    .registers 5
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1310
    :try_start_19
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_22

    .line 1311
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->reject(I)V

    .line 1314
    :cond_22
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_36

    .line 1315
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_33

    .line 1316
    const-string v1, "reject :: call profile is not updated; destroy it..."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1319
    :cond_33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 1323
    :cond_36
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_42

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_42

    .line 1324
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1326
    :cond_42
    monitor-exit v0

    .line 1327
    return-void

    .line 1326
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_44

    throw v1
.end method

.method public blacklist removeParticipants([Ljava/lang/String;)V
    .registers 6
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeParticipants :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1713
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1714
    :try_start_1b
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_26

    .line 1720
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->removeParticipants([Ljava/lang/String;)V

    .line 1722
    monitor-exit v0

    .line 1723
    return-void

    .line 1715
    :cond_26
    const-string v1, "removeParticipants :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1716
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "participants":[Ljava/lang/String;
    throw v1

    .line 1722
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "participants":[Ljava/lang/String;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_35

    throw v1
.end method

.method public blacklist resetIsMergeRequestedByConf(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 2188
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 2189
    :try_start_3
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    .line 2190
    monitor-exit v0

    .line 2191
    return-void

    .line 2190
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist resume()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1469
    const-string v0, "resume :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1472
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_14

    .line 1473
    const-string v0, "resume :: call is not being held"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1475
    :cond_14
    return-void

    .line 1478
    :cond_15
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1479
    :try_start_18
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-nez v1, :cond_3d

    .line 1486
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2e

    .line 1494
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1495
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createResumeMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1496
    monitor-exit v0

    .line 1497
    return-void

    .line 1487
    :cond_2e
    const-string v1, "resume :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1488
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1480
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume :: update is in progress; request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1481
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1480
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1482
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    throw v1

    .line 1496
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_18 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .registers 5
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 1734
    const-string v0, "sendDtmf :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1737
    :try_start_8
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_11

    .line 1738
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->sendDtmf(CLandroid/os/Message;)V

    .line 1740
    :cond_11
    monitor-exit v0

    .line 1741
    return-void

    .line 1740
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1887
    .local p1, "rtpHeaderExtensions":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRtpHeaderExtensions; extensionsSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1888
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1889
    :try_start_1d
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_26

    .line 1890
    const-string v1, "sendRtpHeaderExtensions::no session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1892
    :cond_26
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRtpHeaderExtensions(Ljava/util/Set;)V

    .line 1893
    monitor-exit v0

    .line 1894
    return-void

    .line 1893
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public blacklist sendRttMessage(Ljava/lang/String;)V
    .registers 4
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 1793
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1794
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_e

    .line 1795
    const-string v1, "sendRttMessage::no session, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1796
    monitor-exit v0

    return-void

    .line 1798
    :cond_e
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_19

    goto :goto_31

    .line 1802
    :cond_19
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 1803
    const-string v1, "sendRttMessage::Not an rtt call, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1804
    monitor-exit v0

    return-void

    .line 1806
    :cond_2a
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttMessage(Ljava/lang/String;)V

    .line 1807
    monitor-exit v0

    .line 1808
    return-void

    .line 1799
    :cond_31
    :goto_31
    const-string v1, "sendRttMessage:: no valid call profile, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1800
    monitor-exit v0

    return-void

    .line 1807
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public blacklist sendRttModifyRequest(Z)V
    .registers 7
    .param p1, "rttOn"    # Z

    .line 1815
    const-string v0, "sendRttModifyRequest"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1817
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1818
    :try_start_8
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_13

    .line 1819
    const-string v1, "sendRttModifyRequest::no session, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1820
    monitor-exit v0

    return-void

    .line 1822
    :cond_13
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_1e

    goto :goto_67

    .line 1826
    :cond_1e
    if-eqz p1, :cond_31

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1827
    const-string v1, "sendRttModifyRequest::Already RTT call, ignoring request to turn on."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1828
    monitor-exit v0

    return-void

    .line 1829
    :cond_31
    if-nez p1, :cond_44

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-nez v1, :cond_44

    .line 1830
    const-string v1, "sendRttModifyRequest::Not RTT call, ignoring request to turn off."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1831
    monitor-exit v0

    return-void

    .line 1834
    :cond_44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1835
    .local v1, "p":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1836
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1837
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(Landroid/os/Parcel;)V

    .line 1838
    .local v2, "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v4, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz p1, :cond_5c

    .line 1839
    const/4 v3, 0x1

    goto :goto_5d

    .line 1840
    :cond_5c
    nop

    .line 1838
    :goto_5d
    invoke-virtual {v4, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1842
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v3, v2}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1843
    .end local v1    # "p":Landroid/os/Parcel;
    .end local v2    # "requestedProfile":Landroid/telephony/ims/ImsCallProfile;
    monitor-exit v0

    .line 1844
    return-void

    .line 1823
    :cond_67
    :goto_67
    const-string v1, "sendRttModifyRequest:: no valid call profile, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1824
    monitor-exit v0

    return-void

    .line 1843
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_8 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public blacklist sendRttModifyResponse(Z)V
    .registers 4
    .param p1, "status"    # Z

    .line 1853
    const-string v0, "sendRttModifyResponse"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1855
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1856
    :try_start_8
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_13

    .line 1857
    const-string v1, "sendRttModifyResponse::no session"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1858
    monitor-exit v0

    return-void

    .line 1860
    :cond_13
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_1e

    goto :goto_36

    .line 1864
    :cond_1e
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1865
    const-string v1, "sendRttModifyResponse::Already RTT call, ignoring."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1866
    monitor-exit v0

    return-void

    .line 1868
    :cond_2f
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyResponse(Z)V

    .line 1869
    monitor-exit v0

    .line 1870
    return-void

    .line 1861
    :cond_36
    :goto_36
    const-string v1, "sendRttModifyResponse:: no valid call profile, ignoring"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1862
    monitor-exit v0

    return-void

    .line 1869
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_8 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public blacklist sendUssd(Ljava/lang/String;)V
    .registers 6
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUssd :: ussdMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1781
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1782
    :try_start_19
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_24

    .line 1788
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendUssd(Ljava/lang/String;)V

    .line 1789
    monitor-exit v0

    .line 1790
    return-void

    .line 1783
    :cond_24
    const-string v1, "sendUssd :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1784
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "ussdMessage":Ljava/lang/String;
    throw v1

    .line 1789
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "ussdMessage":Ljava/lang/String;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public blacklist setAnswerWithRtt()V
    .registers 2

    .line 1897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mAnswerWithRtt:Z

    .line 1898
    return-void
.end method

.method public blacklist setCallProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 780
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_3
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 782
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->trackVideoStateHistory(Landroid/telephony/ims/ImsCallProfile;)V

    .line 783
    monitor-exit v0

    .line 784
    return-void

    .line 783
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist setIsMerged(Z)V
    .registers 2
    .param p1, "isMerged"    # Z

    .line 1046
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 1047
    return-void
.end method

.method public blacklist setListener(Lcom/android/ims/ImsCall$Listener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;

    .line 1064
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;Z)V

    .line 1065
    return-void
.end method

.method public blacklist setListener(Lcom/android/ims/ImsCall$Listener;Z)V
    .registers 9
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .param p2, "callbackImmediately"    # Z

    .line 1082
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1083
    :try_start_3
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1085
    if-eqz p1, :cond_3d

    if-nez p2, :cond_a

    goto :goto_3d

    .line 1089
    :cond_a
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1090
    .local v1, "inCall":Z
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1091
    .local v2, "onHold":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getState()I

    move-result v3

    .line 1092
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 1093
    .local v4, "lastReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_3f

    .line 1096
    if-eqz v4, :cond_1d

    .line 1097
    :try_start_17
    invoke-virtual {p1, p0, v4}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3b

    .line 1117
    :catchall_1b
    move-exception v0

    goto :goto_35

    .line 1098
    :cond_1d
    if-eqz v1, :cond_29

    .line 1099
    if-eqz v2, :cond_25

    .line 1100
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    goto :goto_3b

    .line 1102
    :cond_25
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    goto :goto_3b

    .line 1105
    :cond_29
    sparse-switch v3, :sswitch_data_42

    goto :goto_3b

    .line 1110
    :sswitch_2d
    invoke-virtual {p1, p0, v4}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1111
    goto :goto_3b

    .line 1107
    :sswitch_31
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_34
    .catchall {:try_start_17 .. :try_end_34} :catchall_1b

    .line 1108
    goto :goto_3b

    .line 1118
    .local v0, "t":Ljava/lang/Throwable;
    :goto_35
    const-string v5, "setListener() :: "

    invoke-direct {p0, v5, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3c

    .line 1119
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_3b
    nop

    .line 1120
    :goto_3c
    return-void

    .line 1086
    .end local v1    # "inCall":Z
    .end local v2    # "onHold":Z
    .end local v3    # "state":I
    .end local v4    # "lastReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    :cond_3d
    :goto_3d
    :try_start_3d
    monitor-exit v0

    return-void

    .line 1093
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v1

    :sswitch_data_42
    .sparse-switch
        0x3 -> :sswitch_31
        0x8 -> :sswitch_2d
    .end sparse-switch
.end method

.method public blacklist setMergeHost(Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "mergeHost"    # Lcom/android/ims/ImsCall;

    .line 3649
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3652
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    .line 3653
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    .line 3654
    return-void
.end method

.method public blacklist setMute(Z)V
    .registers 5
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1128
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1129
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    if-eq v1, p1, :cond_36

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMute :: turning mute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_17

    const-string v2, "on"

    goto :goto_19

    :cond_17
    const-string v2, "off"

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1131
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_38

    .line 1134
    :try_start_26
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->setMute(Z)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2c

    .line 1138
    goto :goto_36

    .line 1135
    :catchall_2c
    move-exception v1

    .line 1136
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2d
    const-string v2, "setMute :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1137
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    .line 1140
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_36
    :goto_36
    monitor-exit v0

    .line 1141
    return-void

    .line 1140
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public blacklist start(Landroid/telephony/ims/ImsCallSession;Ljava/lang/String;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(1) :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_19
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_3f

    .line 1180
    :try_start_1b
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 1181
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Landroid/telephony/ims/ImsCallSession;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_30

    .line 1185
    nop

    .line 1186
    :try_start_2e
    monitor-exit v0

    .line 1187
    return-void

    .line 1182
    :catchall_30
    move-exception v1

    .line 1183
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "start(1) :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1184
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "start(1)"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .end local p2    # "callee":Ljava/lang/String;
    throw v2

    .line 1186
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .restart local p2    # "callee":Ljava/lang/String;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_2e .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public blacklist start(Landroid/telephony/ims/ImsCallSession;[Ljava/lang/String;)V
    .registers 8
    .param p1, "session"    # Landroid/telephony/ims/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start(n) :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_19
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    .line 1203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_42

    .line 1206
    :try_start_1e
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;Ljava/util/concurrent/Executor;)V

    .line 1207
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Landroid/telephony/ims/ImsCallSession;->start([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_33

    .line 1211
    nop

    .line 1212
    :try_start_31
    monitor-exit v0

    .line 1213
    return-void

    .line 1208
    :catchall_33
    move-exception v1

    .line 1209
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "start(n) :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1210
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "start(n)"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .end local p2    # "participants":[Ljava/lang/String;
    throw v2

    .line 1212
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "session":Landroid/telephony/ims/ImsCallSession;
    .restart local p2    # "participants":[Ljava/lang/String;
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public blacklist startDtmf(C)V
    .registers 4
    .param p1, "c"    # C

    .line 1751
    const-string v0, "startDtmf :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1753
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1754
    :try_start_8
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_11

    .line 1755
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->startDtmf(C)V

    .line 1757
    :cond_11
    monitor-exit v0

    .line 1758
    return-void

    .line 1757
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public blacklist stopDtmf()V
    .registers 3

    .line 1764
    const-string v0, "stopDtmf :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1766
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1767
    :try_start_8
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_11

    .line 1768
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->stopDtmf()V

    .line 1770
    :cond_11
    monitor-exit v0

    .line 1771
    return-void

    .line 1770
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public greylist-max-r terminate(I)V
    .registers 4
    .param p1, "reason"    # I

    .line 1392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    const/4 v1, 0x0

    :try_start_1a
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1396
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1397
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    .line 1399
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2a

    .line 1419
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V

    .line 1421
    :cond_2a
    monitor-exit v0

    .line 1422
    return-void

    .line 1421
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public blacklist terminate(II)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "overrideReason"    # I

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; overrideReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1381
    iput p2, p0, Lcom/android/ims/ImsCall;->mOverrideReason:I

    .line 1382
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 1383
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 3788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3789
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCall objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3790
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3791
    const-string v1, " onHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3792
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v1

    const-string v2, "Y"

    const-string v3, "N"

    if-eqz v1, :cond_22

    move-object v1, v2

    goto :goto_23

    :cond_22
    move-object v1, v3

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3793
    const-string v1, " mute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3794
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_33

    move-object v1, v2

    goto :goto_34

    :cond_33
    move-object v1, v3

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3795
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 3796
    .local v1, "imsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    if-eqz v1, :cond_5d

    .line 3797
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mCallProfile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3798
    const-string v4, " networkType:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3799
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getNetworkType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3801
    :cond_5d
    const-string v4, " updateRequest:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3802
    iget v4, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-direct {p0, v4}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3803
    const-string v4, " merging:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3804
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v4

    if-eqz v4, :cond_78

    move-object v4, v2

    goto :goto_79

    :cond_78
    move-object v4, v3

    :goto_79
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3805
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 3806
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 3807
    const-string v4, "P"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    .line 3809
    :cond_8e
    const-string v4, "H"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3812
    :cond_93
    :goto_93
    const-string v4, " merge action pending:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3813
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    move-result v4

    if-eqz v4, :cond_a0

    move-object v4, v2

    goto :goto_a1

    :cond_a0
    move-object v4, v3

    :goto_a1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3814
    const-string v4, " merged:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3815
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMerged()Z

    move-result v4

    if-eqz v4, :cond_b1

    move-object v4, v2

    goto :goto_b2

    :cond_b1
    move-object v4, v3

    :goto_b2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3816
    const-string v4, " multiParty:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3817
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_c2

    move-object v4, v2

    goto :goto_c3

    :cond_c2
    move-object v4, v3

    :goto_c3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3818
    const-string v4, " confHost:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3819
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v4

    if-eqz v4, :cond_d3

    move-object v4, v2

    goto :goto_d4

    :cond_d3
    move-object v4, v3

    :goto_d4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    const-string v4, " buried term:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3821
    iget-boolean v4, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v4, :cond_e2

    move-object v4, v2

    goto :goto_e3

    :cond_e2
    move-object v4, v3

    :goto_e3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3822
    const-string v4, " isVideo: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3823
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_f3

    move-object v4, v2

    goto :goto_f4

    :cond_f3
    move-object v4, v3

    :goto_f4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3824
    const-string v4, " wasVideo: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3825
    iget-boolean v4, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    if-eqz v4, :cond_102

    move-object v4, v2

    goto :goto_103

    :cond_102
    move-object v4, v3

    :goto_103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3826
    const-string v4, " isWifi: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3827
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v4

    if-eqz v4, :cond_112

    goto :goto_113

    :cond_112
    move-object v2, v3

    :goto_113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3828
    const-string v2, " session:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3829
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3830
    const-string v2, " transientSession:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3831
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3832
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3833
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transfer :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImsCall"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConfirmationRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_35
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_5a

    if-eqz v1, :cond_50

    .line 1347
    :try_start_39
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->transfer(Ljava/lang/String;Z)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_41

    .line 1351
    nop

    .line 1352
    :try_start_3f
    monitor-exit v0

    .line 1353
    return-void

    .line 1348
    :catchall_41
    move-exception v1

    .line 1349
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "transfer :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1350
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "transfer()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "number":Ljava/lang/String;
    .end local p2    # "isConfirmationRequired":Z
    throw v2

    .line 1342
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "number":Ljava/lang/String;
    .restart local p2    # "isConfirmationRequired":Z
    :cond_50
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call to transfer"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "number":Ljava/lang/String;
    .end local p2    # "isConfirmationRequired":Z
    throw v1

    .line 1352
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "number":Ljava/lang/String;
    .restart local p2    # "isConfirmationRequired":Z
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3f .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public blacklist update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 7
    .param p1, "callType"    # I
    .param p2, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update :: callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_39

    .line 1624
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_31

    .line 1625
    const-string v0, "update :: call is on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1627
    :cond_31
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Not in a call to update call"

    invoke-direct {v0, v2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1631
    :cond_39
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1632
    :try_start_3c
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v2, :cond_68

    .line 1633
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_60

    .line 1634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update :: update is in progress; request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1635
    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1634
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    .line 1637
    :cond_60
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "Call update is in progress"

    invoke-direct {v2, v3, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v2

    .line 1641
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_68
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_76

    .line 1647
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallSession;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1648
    const/4 v1, 0x6

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1649
    monitor-exit v0

    .line 1650
    return-void

    .line 1642
    :cond_76
    const-string v1, "update :: "

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1643
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lcom/android/ims/ImsCall;
    .end local p1    # "callType":I
    .end local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    throw v1

    .line 1649
    .restart local p0    # "this":Lcom/android/ims/ImsCall;
    .restart local p1    # "callType":I
    .restart local p2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_3c .. :try_end_87} :catchall_85

    throw v1
.end method

.method public blacklist wasVideoCall()Z
    .registers 2

    .line 3871
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mWasVideoCall:Z

    return v0
.end method
