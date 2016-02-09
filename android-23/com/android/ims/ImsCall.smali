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

.field private mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mSession:Lcom/android/ims/internal/ImsCallSession;

.field private mSessionEndDuringMerge:Z

.field private mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

.field private mTerminationRequestPending:Z

.field private mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

.field private mUpdateRequest:I


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

.method static synthetic -get6(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/ims/ImsCall;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Lcom/android/ims/ImsCall;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)Lcom/android/ims/ImsReasonInfo;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lcom/android/ims/ImsCall;I)I
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

.method static synthetic -wrap11(Lcom/android/ims/ImsCall;Z)V
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
    .line 65
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
    .line 66
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
    .line 47
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
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 443
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@c
    .line 447
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@e
    .line 451
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@10
    .line 453
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    #@12
    .line 455
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@14
    .line 457
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@16
    .line 460
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@18
    .line 462
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@1a
    .line 466
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    #@1c
    .line 468
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1e
    .line 471
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@20
    .line 475
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@22
    .line 476
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@24
    .line 479
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    #@26
    .line 483
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@28
    .line 489
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@2a
    .line 493
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@2c
    .line 497
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    #@2e
    .line 503
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@30
    .line 512
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    #@32
    .line 525
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z

    #@34
    .line 534
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    #@36
    .line 535
    iput-object p2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@38
    .line 533
    return-void
.end method

.method private appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3089
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3090
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    .line 3091
    const-string/jumbo v1, " ImsCall="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 3092
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    .line 3093
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
    .line 1479
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@3
    .line 1480
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@5
    .line 1481
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@7
    .line 1482
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@9
    .line 1478
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
    .line 2859
    const-string/jumbo v0, "clearMergeInfo :: clearing all merge info"

    #@5
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@8
    .line 2863
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2864
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@e
    iput-object v2, v0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@10
    .line 2865
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@12
    iput v1, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@14
    .line 2866
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@16
    iput-boolean v1, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@18
    .line 2868
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 2869
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@1e
    iput-object v2, v0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@20
    .line 2870
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@22
    iput v1, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@24
    .line 2871
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@26
    iput-boolean v1, v0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@28
    .line 2873
    :cond_1
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@2a
    .line 2874
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@2c
    .line 2875
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@2e
    .line 2876
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@30
    .line 2857
    return-void
.end method

.method private clearSessionTerminationFlags()V
    .locals 1

    #@0
    .prologue
    .line 1950
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@3
    .line 1951
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@6
    .line 1949
    return-void
.end method

.method private createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 2

    #@0
    .prologue
    .line 1489
    new-instance v0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;)V

    #@6
    return-object v0
.end method

.method private createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1510
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    #@3
    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    #@6
    .line 1512
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1513
    return-object v0

    #@b
    .line 1516
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@d
    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@f
    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@11
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@13
    .line 1517
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@15
    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@17
    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@19
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@1b
    .line 1518
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@1d
    .line 1520
    iget v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 1521
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@23
    .line 1524
    :cond_1
    return-object v0
.end method

.method private createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 1493
    new-instance v0, Lcom/android/ims/ImsCall;

    #@2
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v2, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    #@7
    .line 1496
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->attachSession(Lcom/android/ims/internal/ImsCallSession;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1506
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    :cond_0
    :goto_0
    return-object v0

    #@b
    .line 1497
    .restart local v0    # "call":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v1

    #@c
    .line 1498
    .local v1, "e":Lcom/android/ims/ImsException;
    if-eqz v0, :cond_0

    #@e
    .line 1499
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    #@11
    .line 1500
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
    .line 1528
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    #@3
    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    #@6
    .line 1530
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1531
    return-object v0

    #@b
    .line 1534
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@d
    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@f
    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@11
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    #@13
    .line 1535
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@15
    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@17
    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@19
    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@1b
    .line 1536
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    #@1d
    .line 1538
    iget v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 1539
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@23
    .line 1542
    :cond_1
    return-object v0
.end method

.method private enforceConversationMode()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1546
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1547
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@7
    .line 1548
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@9
    .line 1545
    :cond_0
    return-void
.end method

.method private isCallSessionMergePending()Z
    .locals 1

    #@0
    .prologue
    .line 2940
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
    .line 2922
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
    .line 2931
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
    .line 2913
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
    .line 593
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
    .line 1693
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
    .line 1694
    const/4 v0, 0x1

    #@b
    return v0

    #@c
    .line 1696
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
    .line 3109
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 3108
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3125
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 3124
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 3134
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a
    .line 3133
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3101
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 3100
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3117
    const-string/jumbo v0, "ImsCall"

    #@3
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->appendImsCallInfoToString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 3116
    return-void
.end method

.method private maybeMarkPeerAsMerged()V
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1708
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@4
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@6
    invoke-static {v0}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 1711
    const-string/jumbo v0, "maybeMarkPeerAsMerged"

    #@f
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@12
    .line 1712
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@17
    .line 1713
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@19
    iput-boolean v1, v0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@1b
    .line 1714
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@1d
    new-instance v1, Lcom/android/ims/ImsReasonInfo;

    #@1f
    .line 1716
    const-string/jumbo v2, "Call ended during conference merge process."

    #@22
    .line 1714
    invoke-direct {v1, v3, v3, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    #@25
    iput-object v1, v0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@27
    .line 1707
    :cond_0
    return-void
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
    .line 1217
    const-string/jumbo v0, "merge :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1219
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 1220
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1221
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
    .line 1222
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@1b
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    .line 1221
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
    .line 1223
    new-instance v0, Lcom/android/ims/ImsException;

    #@2c
    const-string/jumbo v2, "Call update is in progress"

    #@2f
    .line 1224
    const/16 v3, 0x66

    #@31
    .line 1223
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@34
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    .line 1219
    :catchall_0
    move-exception v0

    #@36
    monitor-exit v1

    #@37
    throw v0

    #@38
    .line 1227
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@3a
    if-nez v0, :cond_1

    #@3c
    .line 1228
    const-string/jumbo v0, "merge :: no call session"

    #@3f
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@42
    .line 1229
    new-instance v0, Lcom/android/ims/ImsException;

    #@44
    const-string/jumbo v2, "No call session"

    #@47
    .line 1230
    const/16 v3, 0x94

    #@49
    .line 1229
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@4c
    throw v0

    #@4d
    .line 1235
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
    .line 1236
    const v2, 0x1120081

    #@5a
    .line 1235
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@5d
    move-result v0

    #@5e
    if-eqz v0, :cond_5

    #@60
    .line 1238
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
    .line 1250
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
    .line 1216
    return-void

    #@73
    .line 1238
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@76
    move-result v0

    #@77
    if-nez v0, :cond_3

    #@79
    .line 1246
    const/4 v0, 0x4

    #@7a
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@7c
    .line 1247
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@7e
    const/4 v2, 0x4

    #@7f
    iput v2, v0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@81
    goto :goto_0

    #@82
    .line 1255
    :cond_5
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@84
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    #@8b
    .line 1256
    const/4 v0, 0x1

    #@8c
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@8e
    .line 1257
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
    .line 1554
    const-string/jumbo v0, "mergeInternal :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1557
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@8
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->merge()V

    #@b
    .line 1558
    const/4 v0, 0x4

    #@c
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@e
    .line 1552
    return-void
.end method

.method private notifyConferenceSessionTerminated(Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@2
    .line 1563
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V

    #@5
    .line 1565
    if-eqz v0, :cond_0

    #@7
    .line 1567
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1561
    :cond_0
    :goto_0
    return-void

    #@b
    .line 1568
    :catch_0
    move-exception v1

    #@c
    .line 1569
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
    .line 1575
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@4
    move-object/from16 v17, v0

    #@6
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v13

    #@a
    .line 1577
    .local v13, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-nez v13, :cond_0

    #@c
    .line 1578
    return-void

    #@d
    .line 1581
    :cond_0
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v11

    #@11
    .line 1582
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v17, Ljava/util/ArrayList;

    #@13
    invoke-interface {v13}, Ljava/util/Set;->size()I

    #@16
    move-result v18

    #@17
    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(I)V

    #@1a
    move-object/from16 v0, v17

    #@1c
    move-object/from16 v1, p0

    #@1e
    iput-object v0, v1, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@20
    .line 1583
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v17

    #@24
    if-eqz v17, :cond_3

    #@26
    .line 1584
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v9

    #@2a
    check-cast v9, Ljava/util/Map$Entry;

    #@2c
    .line 1586
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2f
    move-result-object v12

    #@30
    check-cast v12, Ljava/lang/String;

    #@32
    .line 1587
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Landroid/os/Bundle;

    #@38
    .line 1588
    .local v3, "confInfo":Landroid/os/Bundle;
    const-string/jumbo v17, "status"

    #@3b
    move-object/from16 v0, v17

    #@3d
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v14

    #@41
    .line 1589
    .local v14, "status":Ljava/lang/String;
    const-string/jumbo v17, "user"

    #@44
    move-object/from16 v0, v17

    #@46
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@49
    move-result-object v16

    #@4a
    .line 1590
    .local v16, "user":Ljava/lang/String;
    const-string/jumbo v17, "display-text"

    #@4d
    move-object/from16 v0, v17

    #@4f
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 1591
    .local v6, "displayName":Ljava/lang/String;
    const-string/jumbo v17, "endpoint"

    #@56
    move-object/from16 v0, v17

    #@58
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5b
    move-result-object v7

    #@5c
    .line 1594
    .local v7, "endpoint":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v18, "notifyConferenceStateUpdated :: key="

    #@64
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v17

    #@68
    move-object/from16 v0, v17

    #@6a
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v17

    #@6e
    .line 1595
    const-string/jumbo v18, ", status="

    #@71
    .line 1594
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v17

    #@75
    move-object/from16 v0, v17

    #@77
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v17

    #@7b
    .line 1596
    const-string/jumbo v18, ", user="

    #@7e
    .line 1594
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v17

    #@82
    move-object/from16 v0, v17

    #@84
    move-object/from16 v1, v16

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v17

    #@8a
    .line 1597
    const-string/jumbo v18, ", displayName= "

    #@8d
    .line 1594
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v17

    #@91
    move-object/from16 v0, v17

    #@93
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v17

    #@97
    .line 1598
    const-string/jumbo v18, ", endpoint="

    #@9a
    .line 1594
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v17

    #@9e
    move-object/from16 v0, v17

    #@a0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v17

    #@a4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v17

    #@a8
    move-object/from16 v0, p0

    #@aa
    move-object/from16 v1, v17

    #@ac
    invoke-direct {v0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@af
    .line 1601
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@b2
    move-result-object v10

    #@b3
    .line 1602
    .local v10, "handle":Landroid/net/Uri;
    if-nez v7, :cond_2

    #@b5
    .line 1603
    const-string/jumbo v7, ""

    #@b8
    .line 1605
    :cond_2
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@bb
    move-result-object v8

    #@bc
    .line 1606
    .local v8, "endpointUri":Landroid/net/Uri;
    invoke-static {v14}, Lcom/android/ims/ImsConferenceState;->getConnectionStateForStatus(Ljava/lang/String;)I

    #@bf
    move-result v5

    #@c0
    .line 1608
    .local v5, "connectionState":I
    const/16 v17, 0x6

    #@c2
    move/from16 v0, v17

    #@c4
    if-eq v5, v0, :cond_1

    #@c6
    .line 1609
    new-instance v4, Landroid/telecom/ConferenceParticipant;

    #@c8
    invoke-direct {v4, v10, v6, v8, v5}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V

    #@cb
    .line 1611
    .local v4, "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    move-object/from16 v0, p0

    #@cd
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@cf
    move-object/from16 v17, v0

    #@d1
    move-object/from16 v0, v17

    #@d3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d6
    goto/16 :goto_0

    #@d8
    .line 1615
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
    :cond_3
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@dc
    move-object/from16 v17, v0

    #@de
    if-eqz v17, :cond_4

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@e4
    move-object/from16 v17, v0

    #@e6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    #@e9
    move-result v17

    #@ea
    if-eqz v17, :cond_5

    #@ec
    .line 1574
    :cond_4
    :goto_1
    return-void

    #@ed
    .line 1616
    :cond_5
    move-object/from16 v0, p0

    #@ef
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@f1
    move-object/from16 v17, v0

    #@f3
    if-eqz v17, :cond_4

    #@f5
    .line 1618
    :try_start_0
    move-object/from16 v0, p0

    #@f7
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@f9
    move-object/from16 v17, v0

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget-object v0, v0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@ff
    move-object/from16 v18, v0

    #@101
    move-object/from16 v0, v17

    #@103
    move-object/from16 v1, p0

    #@105
    move-object/from16 v2, v18

    #@107
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@10a
    goto :goto_1

    #@10b
    .line 1619
    :catch_0
    move-exception v15

    #@10c
    .line 1620
    .local v15, "t":Ljava/lang/Throwable;
    const-string/jumbo v17, "notifyConferenceStateUpdated :: "

    #@10f
    move-object/from16 v0, p0

    #@111
    move-object/from16 v1, v17

    #@113
    invoke-direct {v0, v1, v15}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@116
    goto :goto_1
.end method

.method private notifySessionTerminatedDuringMerge()V
    .locals 5

    #@0
    .prologue
    .line 1922
    const/4 v1, 0x0

    #@1
    .line 1923
    .local v1, "notifyFailure":Z
    const/4 v2, 0x0

    #@2
    .line 1925
    .local v2, "notifyFailureReasonInfo":Lcom/android/ims/ImsReasonInfo;
    monitor-enter p0

    #@3
    .line 1926
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@5
    .line 1927
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-boolean v4, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 1932
    const-string/jumbo v4, "notifySessionTerminatedDuringMerge ::reporting terminate during merge"

    #@c
    invoke-direct {p0, v4}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@f
    .line 1934
    const/4 v1, 0x1

    #@10
    .line 1935
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@12
    .line 1937
    .end local v2    # "notifyFailureReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 1940
    if-eqz v0, :cond_1

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 1942
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@1d
    .line 1920
    :cond_1
    :goto_0
    return-void

    #@1e
    .line 1925
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v4

    #@1f
    monitor-exit p0

    #@20
    throw v4

    #@21
    .line 1943
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v3

    #@22
    .line 1944
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
    .line 1635
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
    .line 1636
    iget-boolean v3, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    #@19
    .line 1635
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
    .line 1638
    const/4 v0, 0x0

    #@25
    .line 1639
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-enter p0

    #@26
    .line 1644
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_0

    #@2c
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    #@2e
    if-eqz v2, :cond_2

    #@30
    .line 1657
    :cond_0
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 1659
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    #@37
    .line 1663
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .line 1664
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceSessionTerminated(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    monitor-exit p0

    #@41
    .line 1665
    return-void

    #@42
    .line 1652
    :cond_2
    :try_start_1
    const-string/jumbo v2, "processCallTerminated :: burying termination during ongoing merge."

    #@45
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@48
    .line 1654
    const/4 v2, 0x1

    #@49
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@4b
    .line 1655
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    monitor-exit p0

    #@4e
    .line 1656
    return-void

    #@4f
    .line 1667
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@51
    .line 1668
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@54
    monitor-exit p0

    #@55
    .line 1672
    if-eqz v0, :cond_4

    #@57
    .line 1674
    :try_start_3
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    #@5a
    .line 1634
    :cond_4
    :goto_0
    return-void

    #@5b
    .line 1639
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5c
    monitor-exit p0

    #@5d
    throw v2

    #@5e
    .line 1675
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@5f
    .line 1676
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "processCallTerminated :: "

    #@62
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@65
    goto :goto_0
.end method

.method private processMergeComplete()V
    .locals 8

    #@0
    .prologue
    .line 1759
    const-string/jumbo v6, "processMergeComplete :: "

    #@3
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1763
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    #@9
    move-result v6

    #@a
    if-nez v6, :cond_0

    #@c
    .line 1764
    const-string/jumbo v6, "processMergeComplete :: We are not the merge host!"

    #@f
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@12
    .line 1765
    return-void

    #@13
    .line 1769
    :cond_0
    const/4 v3, 0x0

    #@14
    .line 1774
    .local v3, "swapRequired":Z
    monitor-enter p0

    #@15
    .line 1775
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_3

    #@1b
    .line 1776
    const/4 v6, 0x0

    #@1c
    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@1f
    .line 1779
    iget-boolean v6, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    #@21
    if-nez v6, :cond_1

    #@23
    .line 1782
    const/4 v6, 0x0

    #@24
    iput-boolean v6, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@26
    .line 1783
    const/4 v3, 0x1

    #@27
    .line 1785
    :cond_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->maybeMarkPeerAsMerged()V

    #@2a
    .line 1786
    move-object v0, p0

    #@2b
    .line 1787
    .local v0, "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@2d
    .line 1878
    .local v1, "finalPeerCall":Lcom/android/ims/ImsCall;
    :goto_0
    iget-object v2, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@2f
    .line 1881
    .local v2, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V

    #@32
    .line 1885
    invoke-direct {v1}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    #@35
    .line 1888
    invoke-direct {v0}, Lcom/android/ims/ImsCall;->clearSessionTerminationFlags()V

    #@38
    .line 1894
    const/4 v6, 0x1

    #@39
    iput-boolean v6, v0, Lcom/android/ims/ImsCall;->mIsConferenceHost:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    monitor-exit p0

    #@3c
    .line 1896
    if-eqz v2, :cond_2

    #@3e
    .line 1901
    :try_start_1
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@41
    .line 1905
    :goto_1
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@43
    if-eqz v6, :cond_2

    #@45
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@47
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@4a
    move-result v6

    #@4b
    if-eqz v6, :cond_9

    #@4d
    .line 1913
    :cond_2
    :goto_2
    return-void

    #@4e
    .line 1794
    .end local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .end local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@50
    if-nez v6, :cond_4

    #@52
    .line 1795
    const-string/jumbo v6, "processMergeComplete :: No transient session!"

    #@55
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@58
    monitor-exit p0

    #@59
    .line 1796
    return-void

    #@5a
    .line 1798
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@5c
    if-nez v6, :cond_5

    #@5e
    .line 1799
    const-string/jumbo v6, "processMergeComplete :: No merge peer!"

    #@61
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@64
    monitor-exit p0

    #@65
    .line 1800
    return-void

    #@66
    .line 1805
    :cond_5
    :try_start_4
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@68
    .line 1806
    .local v5, "transientConferenceSession":Lcom/android/ims/internal/ImsCallSession;
    const/4 v6, 0x0

    #@69
    iput-object v6, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@6b
    .line 1810
    const/4 v6, 0x0

    #@6c
    invoke-virtual {v5, v6}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@6f
    .line 1820
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@71
    invoke-static {v6}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@74
    move-result v6

    #@75
    if-eqz v6, :cond_6

    #@77
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@79
    invoke-virtual {v6}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@7c
    move-result-object v6

    #@7d
    invoke-static {v6}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@80
    move-result v6

    #@81
    if-eqz v6, :cond_7

    #@83
    .line 1839
    :cond_6
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@85
    invoke-static {v6}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@88
    move-result v6

    #@89
    if-nez v6, :cond_8

    #@8b
    .line 1840
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@8d
    invoke-virtual {v6}, Lcom/android/ims/ImsCall;->getCallSession()Lcom/android/ims/internal/ImsCallSession;

    #@90
    move-result-object v6

    #@91
    invoke-static {v6}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@94
    move-result v6

    #@95
    .line 1839
    if-eqz v6, :cond_8

    #@97
    .line 1845
    move-object v0, p0

    #@98
    .line 1846
    .restart local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@9a
    .line 1847
    .restart local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v3, 0x0

    #@9b
    .line 1848
    const/4 v6, 0x0

    #@9c
    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@9f
    .line 1849
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@a1
    const/4 v7, 0x0

    #@a2
    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@a5
    .line 1851
    const-string/jumbo v6, "processMergeComplete :: transient will stay with the merge host"

    #@a8
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@ab
    .line 1870
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string/jumbo v7, "processMergeComplete :: call="

    #@b3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v6

    #@b7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v6

    #@bb
    const-string/jumbo v7, " is the final host"

    #@be
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v6

    #@c2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v6

    #@c6
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@c9
    .line 1875
    invoke-direct {v0, v5}, Lcom/android/ims/ImsCall;->setTransientSessionAsPrimary(Lcom/android/ims/internal/ImsCallSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@cc
    goto/16 :goto_0

    #@ce
    .line 1774
    .end local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    .end local v5    # "transientConferenceSession":Lcom/android/ims/internal/ImsCallSession;
    :catchall_0
    move-exception v6

    #@cf
    monitor-exit p0

    #@d0
    throw v6

    #@d1
    .line 1829
    .restart local v5    # "transientConferenceSession":Lcom/android/ims/internal/ImsCallSession;
    :cond_7
    :try_start_5
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@d3
    const/4 v7, 0x0

    #@d4
    iput-boolean v7, v6, Lcom/android/ims/ImsCall;->mHold:Z

    #@d6
    .line 1830
    const/4 v6, 0x1

    #@d7
    iput-boolean v6, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@d9
    .line 1831
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@db
    .line 1832
    .restart local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    move-object v1, p0

    #@dc
    .line 1833
    .restart local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    const/4 v3, 0x1

    #@dd
    .line 1834
    const/4 v6, 0x0

    #@de
    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@e1
    .line 1835
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@e3
    const/4 v7, 0x0

    #@e4
    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@e7
    .line 1837
    const-string/jumbo v6, "processMergeComplete :: transient will transfer to merge peer"

    #@ea
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@ed
    goto :goto_3

    #@ee
    .line 1858
    .end local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    .end local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    :cond_8
    move-object v0, p0

    #@ef
    .line 1859
    .restart local v0    # "finalHostCall":Lcom/android/ims/ImsCall;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@f1
    .line 1860
    .restart local v1    # "finalPeerCall":Lcom/android/ims/ImsCall;
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->maybeMarkPeerAsMerged()V

    #@f4
    .line 1861
    const/4 v3, 0x0

    #@f5
    .line 1862
    const/4 v6, 0x0

    #@f6
    invoke-virtual {p0, v6}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@f9
    .line 1863
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@fb
    const/4 v7, 0x1

    #@fc
    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@ff
    .line 1865
    const-string/jumbo v6, "processMergeComplete :: transient will stay with us (I\'m the host)."

    #@102
    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@105
    goto :goto_3

    #@106
    .line 1902
    .end local v5    # "transientConferenceSession":Lcom/android/ims/internal/ImsCallSession;
    .restart local v2    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v4

    #@107
    .line 1903
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "processMergeComplete :: "

    #@10a
    invoke-direct {p0, v6, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10d
    goto/16 :goto_1

    #@10f
    .line 1907
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_9
    :try_start_6
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@111
    invoke-virtual {v2, p0, v6}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    #@114
    goto/16 :goto_2

    #@116
    .line 1908
    :catch_1
    move-exception v4

    #@117
    .line 1909
    .restart local v4    # "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "processMergeComplete :: "

    #@11a
    invoke-direct {p0, v6, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11d
    goto/16 :goto_2
.end method

.method private processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1964
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
    .line 1967
    monitor-enter p0

    #@18
    .line 1970
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_0

    #@1e
    .line 1971
    const-string/jumbo v2, "processMergeFailed :: We are not the merge host!"

    #@21
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit p0

    #@25
    .line 1972
    return-void

    #@26
    .line 1976
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@28
    if-eqz v2, :cond_1

    #@2a
    .line 1977
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@2c
    const/4 v3, 0x0

    #@2d
    invoke-virtual {v2, v3}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@30
    .line 1978
    const/4 v2, 0x0

    #@31
    iput-object v2, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@33
    .line 1981
    :cond_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@35
    .line 1985
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    const/4 v2, 0x0

    #@36
    invoke-virtual {p0, v2}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@39
    .line 1986
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    #@3c
    .line 1988
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@3e
    if-eqz v2, :cond_3

    #@40
    .line 1990
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@42
    const/4 v3, 0x0

    #@43
    invoke-virtual {v2, v3}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    #@46
    .line 1991
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@48
    invoke-direct {v2}, Lcom/android/ims/ImsCall;->notifySessionTerminatedDuringMerge()V

    #@4b
    .line 1997
    :goto_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->clearMergeInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    monitor-exit p0

    #@4f
    .line 1999
    if-eqz v0, :cond_2

    #@51
    .line 2001
    :try_start_2
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@54
    .line 2007
    :cond_2
    :goto_1
    return-void

    #@55
    .line 1993
    :cond_3
    :try_start_3
    const-string/jumbo v2, "processMergeFailed :: No merge peer!"

    #@58
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5b
    goto :goto_0

    #@5c
    .line 1967
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@5d
    monitor-exit p0

    #@5e
    throw v2

    #@5f
    .line 2002
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@60
    .line 2003
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "processMergeFailed :: "

    #@63
    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@66
    goto :goto_1
.end method

.method private setCallSessionMergePending(Z)V
    .locals 0
    .param p1, "callSessionMergePending"    # Z

    #@0
    .prologue
    .line 2950
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mCallSessionMergePending:Z

    #@2
    .line 2949
    return-void
.end method

.method private setMergePeer(Lcom/android/ims/ImsCall;)V
    .locals 1
    .param p1, "mergePeer"    # Lcom/android/ims/ImsCall;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2886
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@3
    .line 2887
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@5
    .line 2889
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@7
    .line 2890
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@9
    .line 2885
    return-void
.end method

.method private setTransientSessionAsPrimary(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 2
    .param p1, "transientSession"    # Lcom/android/ims/internal/ImsCallSession;

    #@0
    .prologue
    .line 1700
    monitor-enter p0

    #@1
    .line 1701
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@7
    .line 1702
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@9
    .line 1703
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
    .line 1699
    return-void

    #@14
    .line 1700
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
    .line 2968
    const/4 v0, 0x0

    #@1
    .line 2970
    .local v0, "areMergeTriggersDone":Z
    monitor-enter p0

    #@2
    .line 2974
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
    .line 2984
    :cond_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergeHost()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_5

    #@14
    .line 2986
    const-string/jumbo v1, "shouldProcessConferenceResult :: We are a merge host"

    #@17
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@1a
    .line 2987
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
    .line 2989
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@36
    move-result v1

    #@37
    if-nez v1, :cond_4

    #@39
    .line 2990
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
    .line 2991
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@45
    move-result v1

    #@46
    if-nez v1, :cond_1

    #@48
    .line 2993
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@4a
    invoke-static {v1}, Lcom/android/ims/ImsCall;->isSessionAlive(Lcom/android/ims/internal/ImsCallSession;)Z

    #@4d
    move-result v1

    #@4e
    and-int/2addr v0, v1

    #@4f
    .line 3024
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
    .line 3025
    if-eqz v0, :cond_b

    #@5d
    const-string/jumbo v1, "true"

    #@60
    .line 3024
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
    .line 3028
    return v0

    #@6d
    .line 2976
    .restart local v0    # "areMergeTriggersDone":Z
    :cond_2
    :try_start_1
    const-string/jumbo v1, "shouldProcessConferenceResult :: no merge in progress"

    #@70
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    .line 2978
    const/4 v1, 0x0

    #@74
    monitor-exit p0

    #@75
    return v1

    #@76
    .line 2990
    :cond_3
    const/4 v0, 0x1

    #@77
    goto :goto_0

    #@78
    .line 2989
    :cond_4
    const/4 v0, 0x0

    #@79
    goto :goto_0

    #@7a
    .line 2995
    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_a

    #@80
    .line 2997
    const-string/jumbo v1, "shouldProcessConferenceResult :: We are a merge peer"

    #@83
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@86
    .line 2998
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
    .line 3000
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@a2
    move-result v1

    #@a3
    if-nez v1, :cond_7

    #@a5
    .line 3001
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
    .line 3002
    :goto_3
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@b0
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@b3
    move-result v1

    #@b4
    if-nez v1, :cond_8

    #@b6
    .line 3004
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
    .line 3001
    .local v0, "areMergeTriggersDone":Z
    :cond_6
    const/4 v0, 0x1

    #@c1
    goto :goto_3

    #@c2
    .line 3000
    :cond_7
    const/4 v0, 0x0

    #@c3
    goto :goto_3

    #@c4
    .line 3016
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
    .line 3020
    :cond_a
    const-string/jumbo v1, "shouldProcessConferenceResult : merge in progress but call is neither host nor peer."

    #@d1
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@d4
    goto/16 :goto_1

    #@d6
    .line 2970
    .end local v0    # "areMergeTriggersDone":Z
    :catchall_0
    move-exception v1

    #@d7
    monitor-exit p0

    #@d8
    throw v1

    #@d9
    .line 3025
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
    .line 3076
    instance-of v0, p1, Lcom/android/ims/ImsException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3077
    check-cast p1, Lcom/android/ims/ImsException;

    #@6
    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    #@7
    .line 3079
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

.method private updateRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "updateRequest"    # I

    #@0
    .prologue
    .line 2833
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2849
    const-string/jumbo v0, "UNKNOWN"

    #@6
    return-object v0

    #@7
    .line 2835
    :pswitch_0
    const-string/jumbo v0, "NONE"

    #@a
    return-object v0

    #@b
    .line 2837
    :pswitch_1
    const-string/jumbo v0, "HOLD"

    #@e
    return-object v0

    #@f
    .line 2839
    :pswitch_2
    const-string/jumbo v0, "HOLD_MERGE"

    #@12
    return-object v0

    #@13
    .line 2841
    :pswitch_3
    const-string/jumbo v0, "RESUME"

    #@16
    return-object v0

    #@17
    .line 2843
    :pswitch_4
    const-string/jumbo v0, "MERGE"

    #@1a
    return-object v0

    #@1b
    .line 2845
    :pswitch_5
    const-string/jumbo v0, "EXTEND_TO_CONFERENCE"

    #@1e
    return-object v0

    #@1f
    .line 2847
    :pswitch_6
    const-string/jumbo v0, "UNSPECIFIED"

    #@22
    return-object v0

    #@23
    .line 2833
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
    .line 1023
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    #@2
    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V

    #@8
    .line 1022
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
    .line 1035
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
    .line 1037
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@24
    monitor-enter v2

    #@25
    .line 1038
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@27
    if-nez v1, :cond_0

    #@29
    .line 1039
    new-instance v1, Lcom/android/ims/ImsException;

    #@2b
    const-string/jumbo v3, "No call to answer"

    #@2e
    .line 1040
    const/16 v4, 0x94

    #@30
    .line 1039
    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@33
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 1037
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1

    #@37
    .line 1044
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@39
    invoke-virtual {v1, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 1050
    :try_start_2
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@3e
    if-eqz v1, :cond_2

    #@40
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@42
    if-eqz v1, :cond_2

    #@44
    .line 1051
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    #@46
    if-eqz v1, :cond_1

    #@48
    .line 1052
    const-string/jumbo v1, "accept :: call profile will be updated"

    #@4b
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@4e
    .line 1055
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@50
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@52
    .line 1056
    const/4 v1, 0x0

    #@53
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@55
    .line 1060
    :cond_2
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@57
    if-eqz v1, :cond_3

    #@59
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@5b
    const/4 v3, 0x6

    #@5c
    if-ne v1, v3, :cond_3

    #@5e
    .line 1061
    const/4 v1, 0x0

    #@5f
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    :cond_3
    monitor-exit v2

    #@62
    .line 1034
    return-void

    #@63
    .line 1045
    :catch_0
    move-exception v0

    #@64
    .line 1046
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v1, "accept :: "

    #@67
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6a
    .line 1047
    new-instance v1, Lcom/android/ims/ImsException;

    #@6c
    const-string/jumbo v3, "accept()"

    #@6f
    const/4 v4, 0x0

    #@70
    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@73
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
    .line 950
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
    .line 952
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v2

    #@1a
    .line 953
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 956
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
    .line 949
    return-void

    #@27
    .line 957
    :catch_0
    move-exception v0

    #@28
    .line 958
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "attachSession :: "

    #@2b
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    .line 959
    const/4 v1, 0x0

    #@2f
    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 952
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
    .line 566
    if-nez p1, :cond_0

    #@2
    .line 567
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    .line 570
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
    .line 543
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 545
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@9
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->close()V

    #@c
    .line 546
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@f
    .line 551
    :goto_0
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@12
    .line 552
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@15
    .line 553
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    #@18
    .line 554
    const/4 v0, 0x0

    #@19
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 542
    return-void

    #@1d
    .line 548
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
    .line 543
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
    .line 2812
    monitor-enter p0

    #@1
    .line 2813
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    #@4
    .line 2814
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit p0

    #@7
    .line 2817
    if-eqz v0, :cond_0

    #@9
    .line 2819
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsConferenceState;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@c
    .line 2809
    :cond_0
    :goto_0
    return-void

    #@d
    .line 2812
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    #@e
    monitor-exit p0

    #@f
    throw v2

    #@10
    .line 2820
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    #@11
    .line 2821
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
    .line 581
    if-nez p1, :cond_0

    #@3
    .line 582
    return v1

    #@4
    .line 585
    :cond_0
    instance-of v0, p1, Lcom/android/ims/ImsCall;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 586
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0

    #@d
    .line 589
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
    .line 1344
    const-string/jumbo v0, "extendToConference ::"

    #@5
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@8
    .line 1346
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1347
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 1348
    const-string/jumbo v0, "extendToConference :: call is on hold"

    #@15
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@18
    .line 1350
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    #@1a
    const-string/jumbo v1, "Not in a call to extend a call to conference"

    #@1d
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@20
    throw v0

    #@21
    .line 1354
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@23
    monitor-enter v1

    #@24
    .line 1355
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@26
    if-eqz v0, :cond_2

    #@28
    .line 1357
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
    .line 1358
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@36
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    .line 1357
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
    .line 1360
    new-instance v0, Lcom/android/ims/ImsException;

    #@47
    const-string/jumbo v2, "Call update is in progress"

    #@4a
    .line 1361
    const/16 v3, 0x66

    #@4c
    .line 1360
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@4f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@50
    .line 1354
    :catchall_0
    move-exception v0

    #@51
    monitor-exit v1

    #@52
    throw v0

    #@53
    .line 1364
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@55
    if-nez v0, :cond_3

    #@57
    .line 1365
    const-string/jumbo v0, "extendToConference :: "

    #@5a
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@5d
    .line 1366
    new-instance v0, Lcom/android/ims/ImsException;

    #@5f
    const-string/jumbo v2, "No call session"

    #@62
    .line 1367
    const/16 v3, 0x94

    #@64
    .line 1366
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@67
    throw v0

    #@68
    .line 1370
    :cond_3
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@6a
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    #@6d
    .line 1371
    const/4 v0, 0x5

    #@6e
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@70
    monitor-exit v1

    #@71
    .line 1343
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
    .line 728
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 730
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 731
    new-instance v1, Lcom/android/ims/ImsException;

    #@9
    const-string/jumbo v3, "No call session"

    #@c
    .line 732
    const/16 v4, 0x94

    #@e
    .line 731
    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 728
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 736
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
    .line 737
    :catch_0
    move-exception v0

    #@1e
    .line 738
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "getCallExtra :: "

    #@21
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    .line 739
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
    .line 602
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 602
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
    .line 701
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 701
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 3
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
    .line 671
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 672
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "getConferenceParticipants :: mConferenceParticipants"

    #@b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    .line 673
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    #@11
    .line 672
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@1c
    .line 674
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v1

    #@1f
    return-object v0

    #@20
    .line 671
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method public getLastReasonInfo()Lcom/android/ims/ImsReasonInfo;
    .locals 2

    #@0
    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 751
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 750
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
    .line 613
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 615
    new-instance v1, Lcom/android/ims/ImsException;

    #@9
    const-string/jumbo v3, "No call session"

    #@c
    .line 616
    const/16 v4, 0x94

    #@e
    .line 615
    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 613
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 620
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
    .line 621
    :catch_0
    move-exception v0

    #@1e
    .line 622
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "getLocalCallProfile :: "

    #@21
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    .line 623
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
    .line 714
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 714
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
    .line 655
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 656
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isInCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 657
    const/4 v0, 0x0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    .line 660
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
    .line 655
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
    .line 634
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 636
    new-instance v1, Lcom/android/ims/ImsException;

    #@9
    const-string/jumbo v3, "No call session"

    #@c
    .line 637
    const/16 v4, 0x94

    #@e
    .line 636
    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 634
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1

    #@15
    .line 641
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
    .line 642
    :catch_0
    move-exception v0

    #@1e
    .line 643
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "getRemoteCallProfile :: "

    #@21
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    .line 644
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
    .line 1747
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1748
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 1747
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
    .line 685
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 687
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 690
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
    .line 685
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
    .line 761
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 762
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
    .line 761
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
    .line 1143
    const-string/jumbo v0, "hold :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1145
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 1146
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1147
    const-string/jumbo v0, "hold :: call is already on hold"

    #@13
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@16
    .line 1149
    :cond_0
    return-void

    #@17
    .line 1152
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1153
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1154
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
    .line 1155
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@2c
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1154
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
    .line 1156
    new-instance v0, Lcom/android/ims/ImsException;

    #@3d
    const-string/jumbo v2, "Call update is in progress"

    #@40
    .line 1157
    const/16 v3, 0x66

    #@42
    .line 1156
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@45
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 1152
    :catchall_0
    move-exception v0

    #@47
    monitor-exit v1

    #@48
    throw v0

    #@49
    .line 1160
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@4b
    if-nez v0, :cond_3

    #@4d
    .line 1161
    new-instance v0, Lcom/android/ims/ImsException;

    #@4f
    const-string/jumbo v2, "No call session"

    #@52
    .line 1162
    const/16 v3, 0x94

    #@54
    .line 1161
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@57
    throw v0

    #@58
    .line 1165
    :cond_3
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@5a
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    #@61
    .line 1168
    const/4 v0, 0x1

    #@62
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@64
    .line 1169
    const/4 v0, 0x1

    #@65
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    monitor-exit v1

    #@68
    .line 1142
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
    .line 1380
    const-string/jumbo v0, "inviteParticipants ::"

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1382
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 1383
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1384
    const-string/jumbo v0, "inviteParticipants :: "

    #@10
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@13
    .line 1385
    new-instance v0, Lcom/android/ims/ImsException;

    #@15
    const-string/jumbo v2, "No call session"

    #@18
    .line 1386
    const/16 v3, 0x94

    #@1a
    .line 1385
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@1d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 1382
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0

    #@21
    .line 1389
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
    .line 1379
    return-void
.end method

.method public isConferenceHost()Z
    .locals 2

    #@0
    .prologue
    .line 834
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 835
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
    .line 834
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
    .line 783
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 784
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 783
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
    .line 1726
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1727
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 1726
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
    .line 853
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    #@2
    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    #@0
    .prologue
    .line 816
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 818
    const/4 v0, 0x0

    #@8
    monitor-exit v1

    #@9
    return v0

    #@a
    .line 821
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
    .line 816
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
    .line 794
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 795
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 794
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
    .line 805
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 806
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 805
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
    .line 772
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 773
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
    .line 772
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
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
    .line 1270
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
    .line 1272
    if-nez p1, :cond_0

    #@1a
    .line 1273
    new-instance v0, Lcom/android/ims/ImsException;

    #@1c
    const-string/jumbo v1, "No background call"

    #@1f
    .line 1274
    const/16 v2, 0x65

    #@21
    .line 1273
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@24
    throw v0

    #@25
    .line 1277
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@27
    monitor-enter v1

    #@28
    .line 1279
    const/4 v0, 0x1

    #@29
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    #@2c
    .line 1280
    const/4 v0, 0x1

    #@2d
    invoke-direct {p1, v0}, Lcom/android/ims/ImsCall;->setCallSessionMergePending(Z)V

    #@30
    .line 1282
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
    .line 1288
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->setMergePeer(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    :goto_0
    monitor-exit v1

    #@46
    .line 1295
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_4

    #@4c
    .line 1296
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z

    #@4e
    .line 1300
    :goto_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->merge()V

    #@51
    .line 1269
    return-void

    #@52
    .line 1291
    :cond_3
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->setMergeHost(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    goto :goto_0

    #@56
    .line 1277
    :catchall_0
    move-exception v0

    #@57
    monitor-exit v1

    #@58
    throw v0

    #@59
    .line 1298
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
    .line 1074
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
    .line 1076
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1077
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 1078
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@20
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->reject(I)V

    #@23
    .line 1081
    :cond_0
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@25
    if-eqz v0, :cond_2

    #@27
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@29
    if-eqz v0, :cond_2

    #@2b
    .line 1082
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 1083
    const-string/jumbo v0, "reject :: call profile is not updated; destroy it..."

    #@32
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@35
    .line 1086
    :cond_1
    const/4 v0, 0x0

    #@36
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    #@38
    .line 1090
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
    .line 1091
    const/4 v0, 0x0

    #@42
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    :cond_3
    monitor-exit v1

    #@45
    .line 1073
    return-void

    #@46
    .line 1076
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
    .line 1398
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
    .line 1399
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@1b
    monitor-enter v1

    #@1c
    .line 1400
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1e
    if-nez v0, :cond_0

    #@20
    .line 1401
    const-string/jumbo v0, "removeParticipants :: "

    #@23
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@26
    .line 1402
    new-instance v0, Lcom/android/ims/ImsException;

    #@28
    const-string/jumbo v2, "No call session"

    #@2b
    .line 1403
    const/16 v3, 0x94

    #@2d
    .line 1402
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@30
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    .line 1399
    :catchall_0
    move-exception v0

    #@32
    monitor-exit v1

    #@33
    throw v0

    #@34
    .line 1406
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
    .line 1397
    return-void
.end method

.method public resetIsMergeRequestedByConf(Z)V
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1736
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 1737
    :try_start_0
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMergeRequestedByConference:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 1735
    return-void

    #@7
    .line 1736
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
    .line 1180
    const-string/jumbo v0, "resume :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1182
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    .line 1183
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1184
    const-string/jumbo v0, "resume :: call is not being held"

    #@13
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@16
    .line 1186
    :cond_0
    return-void

    #@17
    .line 1189
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1190
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@1c
    if-eqz v0, :cond_2

    #@1e
    .line 1191
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
    .line 1192
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@2c
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    .line 1191
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
    .line 1193
    new-instance v0, Lcom/android/ims/ImsException;

    #@3d
    const-string/jumbo v2, "Call update is in progress"

    #@40
    .line 1194
    const/16 v3, 0x66

    #@42
    .line 1193
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@45
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@46
    .line 1189
    :catchall_0
    move-exception v0

    #@47
    monitor-exit v1

    #@48
    throw v0

    #@49
    .line 1197
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@4b
    if-nez v0, :cond_3

    #@4d
    .line 1198
    const-string/jumbo v0, "resume :: "

    #@50
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@53
    .line 1199
    new-instance v0, Lcom/android/ims/ImsException;

    #@55
    const-string/jumbo v2, "No call session"

    #@58
    .line 1200
    const/16 v3, 0x94

    #@5a
    .line 1199
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@5d
    throw v0

    #@5e
    .line 1205
    :cond_3
    const/4 v0, 0x3

    #@5f
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@61
    .line 1206
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
    .line 1179
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1420
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
    .line 1422
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1423
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 1424
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@20
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    monitor-exit v1

    #@24
    .line 1419
    return-void

    #@25
    .line 1422
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
    .line 1465
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
    .line 1467
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1468
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1c
    if-nez v0, :cond_0

    #@1e
    .line 1469
    const-string/jumbo v0, "sendUssd :: "

    #@21
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@24
    .line 1470
    new-instance v0, Lcom/android/ims/ImsException;

    #@26
    const-string/jumbo v2, "No call session"

    #@29
    .line 1471
    const/16 v3, 0x94

    #@2b
    .line 1470
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@2e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 1467
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0

    #@32
    .line 1474
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
    .line 1464
    return-void
.end method

.method public setIsMerged(Z)V
    .locals 0
    .param p1, "isMerged"    # Z

    #@0
    .prologue
    .line 846
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    #@2
    .line 845
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;

    #@0
    .prologue
    .line 864
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;Z)V

    #@4
    .line 863
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;Z)V
    .locals 7
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .param p2, "callbackImmediately"    # Z

    #@0
    .prologue
    .line 882
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v6

    #@3
    .line 883
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    #@5
    .line 885
    if-eqz p1, :cond_0

    #@7
    if-eqz p2, :cond_0

    #@9
    .line 889
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@b
    .line 890
    .local v0, "inCall":Z
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@d
    .line 891
    .local v2, "onHold":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getState()I

    #@10
    move-result v3

    #@11
    .line 892
    .local v3, "state":I
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .local v1, "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    monitor-exit v6

    #@14
    .line 896
    if-eqz v1, :cond_1

    #@16
    .line 897
    :try_start_1
    invoke-virtual {p1, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@19
    .line 876
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
    .line 886
    return-void

    #@1c
    .line 882
    :catchall_0
    move-exception v5

    #@1d
    monitor-exit v6

    #@1e
    throw v5

    #@1f
    .line 898
    .restart local v0    # "inCall":Z
    .restart local v1    # "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v2    # "onHold":Z
    .restart local v3    # "state":I
    :cond_1
    if-eqz v0, :cond_3

    #@21
    .line 899
    if-eqz v2, :cond_2

    #@23
    .line 900
    :try_start_2
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@26
    goto :goto_0

    #@27
    .line 917
    :catch_0
    move-exception v4

    #@28
    .line 918
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "setListener() :: "

    #@2b
    invoke-direct {p0, v5, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2e
    goto :goto_0

    #@2f
    .line 902
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_3
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    #@32
    goto :goto_0

    #@33
    .line 905
    :cond_3
    sparse-switch v3, :sswitch_data_0

    #@36
    goto :goto_0

    #@37
    .line 907
    :sswitch_0
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V

    #@3a
    goto :goto_0

    #@3b
    .line 910
    :sswitch_1
    invoke-virtual {p1, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    #@3e
    goto :goto_0

    #@3f
    .line 905
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
    .line 2900
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@3
    .line 2901
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@5
    .line 2903
    iput-object v0, p1, Lcom/android/ims/ImsCall;->mMergeHost:Lcom/android/ims/ImsCall;

    #@7
    .line 2904
    iput-object p0, p1, Lcom/android/ims/ImsCall;->mMergePeer:Lcom/android/ims/ImsCall;

    #@9
    .line 2899
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
    .line 928
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 929
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    #@5
    if-eq v1, p1, :cond_0

    #@7
    .line 930
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
    .line 931
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 934
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
    .line 927
    return-void

    #@2c
    .line 930
    :cond_1
    :try_start_2
    const-string/jumbo v1, "off"

    #@2f
    goto :goto_0

    #@30
    .line 935
    :catch_0
    move-exception v0

    #@31
    .line 936
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "setMute :: "

    #@34
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    .line 937
    const/4 v1, 0x0

    #@38
    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1

    #@3c
    .line 928
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
    .line 974
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
    const-string/jumbo v2, ", callee="

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@22
    .line 976
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@24
    monitor-enter v2

    #@25
    .line 977
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 980
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p1, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@2e
    .line 981
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@30
    invoke-virtual {p1, p2, v1}, Lcom/android/ims/internal/ImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit v2

    #@34
    .line 973
    return-void

    #@35
    .line 982
    :catch_0
    move-exception v0

    #@36
    .line 983
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "start(1) :: "

    #@39
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    .line 984
    new-instance v1, Lcom/android/ims/ImsException;

    #@3e
    const-string/jumbo v3, "start(1)"

    #@41
    const/4 v4, 0x0

    #@42
    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@45
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 976
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@47
    monitor-exit v2

    #@48
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
    .line 999
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
    const-string/jumbo v2, ", callee="

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
    .line 1001
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@24
    monitor-enter v2

    #@25
    .line 1002
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    .line 1005
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {p1, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    #@2e
    .line 1006
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    #@30
    invoke-virtual {p1, p2, v1}, Lcom/android/ims/internal/ImsCallSession;->start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit v2

    #@34
    .line 998
    return-void

    #@35
    .line 1007
    :catch_0
    move-exception v0

    #@36
    .line 1008
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v1, "start(n) :: "

    #@39
    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    .line 1009
    new-instance v1, Lcom/android/ims/ImsException;

    #@3e
    const-string/jumbo v3, "start(n)"

    #@41
    const/4 v4, 0x0

    #@42
    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@45
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    .line 1001
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@47
    monitor-exit v2

    #@48
    throw v1
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1437
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
    .line 1439
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1440
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 1441
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@20
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->startDtmf(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    :cond_0
    monitor-exit v1

    #@24
    .line 1436
    return-void

    #@25
    .line 1439
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
    .line 1450
    const-string/jumbo v0, "stopDtmf :: "

    #@3
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@6
    .line 1452
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 1453
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 1454
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@f
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->stopDtmf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    monitor-exit v1

    #@13
    .line 1449
    return-void

    #@14
    .line 1452
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
    .line 1103
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
    .line 1105
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@19
    monitor-enter v1

    #@1a
    .line 1106
    const/4 v0, 0x0

    #@1b
    :try_start_0
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    #@1d
    .line 1107
    const/4 v0, 0x0

    #@1e
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    #@20
    .line 1108
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mTerminationRequestPending:Z

    #@23
    .line 1110
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 1130
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@29
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->terminate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    :cond_0
    monitor-exit v1

    #@2d
    .line 1102
    return-void

    #@2e
    .line 1105
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 3039
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3040
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[ImsCall objId:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 3041
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@e
    move-result v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    .line 3042
    const-string/jumbo v1, " onHold:"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 3043
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    const-string/jumbo v1, "Y"

    #@21
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 3044
    const-string/jumbo v1, " mute:"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 3045
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMuted()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    const-string/jumbo v1, "Y"

    #@33
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 3046
    const-string/jumbo v1, " updateRequest:"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 3047
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@3e
    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 3048
    const-string/jumbo v1, " merging:"

    #@48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    .line 3049
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_3

    #@51
    const-string/jumbo v1, "Y"

    #@54
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    .line 3050
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMerging()Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_0

    #@5d
    .line 3051
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isMergePeer()Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_4

    #@63
    .line 3052
    const-string/jumbo v1, "P"

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 3057
    :cond_0
    :goto_3
    const-string/jumbo v1, " merge action pending:"

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 3058
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->isCallSessionMergePending()Z

    #@72
    move-result v1

    #@73
    if-eqz v1, :cond_5

    #@75
    const-string/jumbo v1, "Y"

    #@78
    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    .line 3059
    const-string/jumbo v1, " merged:"

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    .line 3060
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMerged()Z

    #@84
    move-result v1

    #@85
    if-eqz v1, :cond_6

    #@87
    const-string/jumbo v1, "Y"

    #@8a
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    .line 3061
    const-string/jumbo v1, " multiParty:"

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 3062
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_7

    #@99
    const-string/jumbo v1, "Y"

    #@9c
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    .line 3063
    const-string/jumbo v1, " confHost:"

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    .line 3064
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    #@a8
    move-result v1

    #@a9
    if-eqz v1, :cond_8

    #@ab
    const-string/jumbo v1, "Y"

    #@ae
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    .line 3065
    const-string/jumbo v1, " buried term:"

    #@b4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    .line 3066
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    #@b9
    if-eqz v1, :cond_9

    #@bb
    const-string/jumbo v1, "Y"

    #@be
    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    .line 3067
    const-string/jumbo v1, " session:"

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    .line 3068
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cc
    .line 3069
    const-string/jumbo v1, " transientSession:"

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    .line 3070
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    #@d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    .line 3071
    const-string/jumbo v1, "]"

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    .line 3072
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v1

    #@e1
    return-object v1

    #@e2
    .line 3043
    :cond_1
    const-string/jumbo v1, "N"

    #@e5
    goto/16 :goto_0

    #@e7
    .line 3045
    :cond_2
    const-string/jumbo v1, "N"

    #@ea
    goto/16 :goto_1

    #@ec
    .line 3049
    :cond_3
    const-string/jumbo v1, "N"

    #@ef
    goto/16 :goto_2

    #@f1
    .line 3054
    :cond_4
    const-string/jumbo v1, "H"

    #@f4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    goto/16 :goto_3

    #@f9
    .line 3058
    :cond_5
    const-string/jumbo v1, "N"

    #@fc
    goto/16 :goto_4

    #@fe
    .line 3060
    :cond_6
    const-string/jumbo v1, "N"

    #@101
    goto :goto_5

    #@102
    .line 3062
    :cond_7
    const-string/jumbo v1, "N"

    #@105
    goto :goto_6

    #@106
    .line 3064
    :cond_8
    const-string/jumbo v1, "N"

    #@109
    goto :goto_7

    #@10a
    .line 3066
    :cond_9
    const-string/jumbo v1, "N"

    #@10d
    goto :goto_8
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
    .line 1307
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
    .line 1309
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 1310
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@2c
    if-eqz v0, :cond_0

    #@2e
    .line 1311
    const-string/jumbo v0, "update :: call is on hold"

    #@31
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->logi(Ljava/lang/String;)V

    #@34
    .line 1313
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    #@36
    const-string/jumbo v1, "Not in a call to update call"

    #@39
    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@3c
    throw v0

    #@3d
    .line 1317
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    #@3f
    monitor-enter v1

    #@40
    .line 1318
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@42
    if-eqz v0, :cond_3

    #@44
    .line 1319
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    #@46
    if-eqz v0, :cond_2

    #@48
    .line 1320
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
    .line 1321
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    #@56
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 1320
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
    .line 1323
    :cond_2
    new-instance v0, Lcom/android/ims/ImsException;

    #@67
    const-string/jumbo v2, "Call update is in progress"

    #@6a
    .line 1324
    const/16 v3, 0x66

    #@6c
    .line 1323
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@6f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@70
    .line 1317
    :catchall_0
    move-exception v0

    #@71
    monitor-exit v1

    #@72
    throw v0

    #@73
    .line 1327
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@75
    if-nez v0, :cond_4

    #@77
    .line 1328
    const-string/jumbo v0, "update :: "

    #@7a
    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    #@7d
    .line 1329
    new-instance v0, Lcom/android/ims/ImsException;

    #@7f
    const-string/jumbo v2, "No call session"

    #@82
    .line 1330
    const/16 v3, 0x94

    #@84
    .line 1329
    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    #@87
    throw v0

    #@88
    .line 1333
    :cond_4
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    #@8a
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V

    #@8d
    .line 1334
    const/4 v0, 0x6

    #@8e
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@90
    monitor-exit v1

    #@91
    .line 1306
    return-void
.end method
