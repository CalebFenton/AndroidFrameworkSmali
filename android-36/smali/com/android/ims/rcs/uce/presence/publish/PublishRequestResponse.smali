.class public Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
.super Ljava/lang/Object;
.source "PublishRequestResponse.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCmdErrorCode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist mNeedRetry:Z

.field private blacklist mNetworkRespSipCode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPidfXml:Ljava/lang/String;

.field private volatile blacklist mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

.field private blacklist mReasonHeaderCause:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReasonHeaderText:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mReasonPhrase:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mResponseCallback:Landroid/telephony/ims/aidl/IPublishResponseCallback;

.field private blacklist mResponseTimestamp:Ljava/time/Instant;

.field private blacklist mSipDetails:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTaskId:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$monCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->onCommandError(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;Landroid/telephony/ims/SipDetails;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->onNetworkResponse(Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PublishRequestResp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;JLjava/lang/String;)V
    .registers 6
    .param p1, "publishCtrlCallback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .param p2, "taskId"    # J
    .param p4, "pidfXml"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mResponseCallback:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    .line 58
    iput-wide p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mTaskId:J

    .line 59
    iput-object p4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mPidfXml:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 61
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mCmdErrorCode:Ljava/util/Optional;

    .line 62
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;

    .line 63
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonPhrase:Ljava/util/Optional;

    .line 64
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    .line 65
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    .line 66
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mSipDetails:Ljava/util/Optional;

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/telephony/ims/SipDetails;)V
    .registers 5
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "details"    # Landroid/telephony/ims/SipDetails;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mResponseCallback:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mTaskId:J

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 72
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mCmdErrorCode:Ljava/util/Optional;

    .line 74
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mPidfXml:Ljava/lang/String;

    .line 75
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mResponseTimestamp:Ljava/time/Instant;

    .line 76
    invoke-virtual {p2}, Landroid/telephony/ims/SipDetails;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;

    .line 77
    invoke-virtual {p2}, Landroid/telephony/ims/SipDetails;->getResponsePhrase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonPhrase:Ljava/util/Optional;

    .line 78
    invoke-virtual {p2}, Landroid/telephony/ims/SipDetails;->getReasonHeaderCause()I

    move-result v0

    if-eqz v0, :cond_4c

    .line 79
    invoke-virtual {p2}, Landroid/telephony/ims/SipDetails;->getReasonHeaderCause()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    goto :goto_52

    .line 81
    :cond_4c
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    .line 83
    :goto_52
    invoke-virtual {p2}, Landroid/telephony/ims/SipDetails;->getReasonHeaderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 84
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    goto :goto_6d

    .line 86
    :cond_63
    invoke-virtual {p2}, Landroid/telephony/ims/SipDetails;->getReasonHeaderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    .line 88
    :goto_6d
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mSipDetails:Ljava/util/Optional;

    .line 89
    return-void
.end method

.method private blacklist getPublishStateByCmdErrorCode()I
    .registers 3

    .line 315
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getCmdErrorCode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    .line 317
    const/4 v0, 0x5

    return v0

    .line 319
    :cond_18
    const/4 v0, 0x6

    return v0
.end method

.method private blacklist getPublishStateByNetworkResponse()I
    .registers 3

    .line 327
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->isCommandCodeNoChange()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 329
    const/16 v0, 0xc8

    .local v0, "respSipCode":I
    goto :goto_35

    .line 330
    .end local v0    # "respSipCode":I
    :cond_9
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 331
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0    # "respSipCode":I
    goto :goto_35

    .line 333
    .end local v0    # "respSipCode":I
    :cond_22
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 336
    .restart local v0    # "respSipCode":I
    :goto_35
    sparse-switch v0, :sswitch_data_40

    .line 346
    const/4 v1, 0x6

    return v1

    .line 344
    :sswitch_3a
    const/4 v1, 0x5

    return v1

    .line 342
    :sswitch_3c
    const/4 v1, 0x4

    return v1

    .line 338
    :sswitch_3e
    const/4 v1, 0x1

    return v1

    :sswitch_data_40
    .sparse-switch
        0xc8 -> :sswitch_3e
        0x193 -> :sswitch_3c
        0x194 -> :sswitch_3c
        0x198 -> :sswitch_3a
        0x1f8 -> :sswitch_3c
    .end sparse-switch
.end method

.method private blacklist isCommandCodeNoChange()Z
    .registers 3

    .line 286
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getCmdErrorCode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 288
    const/4 v0, 0x1

    return v0

    .line 290
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isCommandError()Z
    .registers 2

    .line 278
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getCmdErrorCode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->isCommandCodeNoChange()Z

    move-result v0

    if-nez v0, :cond_12

    .line 279
    const/4 v0, 0x1

    return v0

    .line 281
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic blacklist lambda$isCommandCodeNoChange$2(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "code"    # Ljava/lang/Integer;

    .line 287
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic blacklist lambda$isRequestSuccess$0(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "c"    # Ljava/lang/Integer;

    .line 263
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic blacklist lambda$isRequestSuccess$1(Ljava/lang/Integer;)Z
    .registers 3
    .param p0, "c"    # Ljava/lang/Integer;

    .line 265
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist onCommandError(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .line 190
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mResponseTimestamp:Ljava/time/Instant;

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mCmdErrorCode:Ljava/util/Optional;

    .line 192
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->updateRetryFlagByCommandError()V

    .line 194
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 195
    .local v0, "ctrlCallback":Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    if-eqz v0, :cond_1b

    .line 196
    invoke-interface {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->onRequestCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    goto :goto_33

    .line 198
    :cond_1b
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCommandError: already destroyed. error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_33
    return-void
.end method

.method private blacklist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .registers 6
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 206
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponseCode()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_e

    .line 207
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->onCommandError(I)V

    .line 208
    return-void

    .line 210
    :cond_e
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mResponseTimestamp:Ljava/time/Instant;

    .line 211
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponseCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;

    .line 212
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponsePhrase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonPhrase:Ljava/util/Optional;

    .line 213
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderCause()I

    move-result v0

    if-eqz v0, :cond_40

    .line 214
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderCause()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    .line 216
    :cond_40
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 217
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    goto :goto_5b

    .line 219
    :cond_51
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getReasonHeaderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    .line 221
    :goto_5b
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mSipDetails:Ljava/util/Optional;

    .line 222
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->updateRetryFlagByNetworkResponse()V

    .line 224
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 225
    .local v0, "ctrlCallback":Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    if-eqz v0, :cond_6c

    .line 226
    invoke-interface {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->onRequestNetworkResp(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    goto :goto_88

    .line 228
    :cond_6c
    sget-object v1, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkResponse: already destroyed. sip code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_88
    return-void
.end method

.method private blacklist updateRetryFlagByCommandError()V
    .registers 3

    .line 234
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getCmdErrorCode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    :pswitch_16
    goto :goto_1a

    .line 239
    :pswitch_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mNeedRetry:Z

    .line 242
    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x4
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist updateRetryFlagByNetworkResponse()V
    .registers 2

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mNeedRetry:Z

    .line 247
    return-void
.end method


# virtual methods
.method public blacklist getCmdErrorCode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mCmdErrorCode:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getNetworkRespSipCode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getPidfXml()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mPidfXml:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPublishState()I
    .registers 2

    .line 304
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->isCommandError()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 305
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getPublishStateByCmdErrorCode()I

    move-result v0

    return v0

    .line 307
    :cond_b
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getPublishStateByNetworkResponse()I

    move-result v0

    return v0
.end method

.method public blacklist getReasonHeaderCause()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getReasonHeaderText()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getReasonPhrase()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonPhrase:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getResponseCallback()Landroid/telephony/ims/aidl/IPublishResponseCallback;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mResponseCallback:Landroid/telephony/ims/aidl/IPublishResponseCallback;

    return-object v0
.end method

.method public blacklist getResponseReason()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderText:Ljava/util/Optional;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonPhrase:Ljava/util/Optional;

    :goto_d
    return-object v0
.end method

.method public blacklist getResponseSipCode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mReasonHeaderCause:Ljava/util/Optional;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mNetworkRespSipCode:Ljava/util/Optional;

    :goto_d
    return-object v0
.end method

.method public blacklist getResponseTimestamp()Ljava/time/Instant;
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mResponseTimestamp:Ljava/time/Instant;

    return-object v0
.end method

.method public blacklist getSipDetails()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mSipDetails:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getTaskId()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mTaskId:J

    return-wide v0
.end method

.method public blacklist isRequestSuccess()Z
    .registers 6

    .line 253
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->isCommandError()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 254
    return v1

    .line 258
    :cond_8
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->isCommandCodeNoChange()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 259
    return v2

    .line 262
    :cond_10
    const/16 v0, 0xc8

    .line 263
    .local v0, "sipCodeOk":I
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 264
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 265
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 266
    :cond_42
    return v2

    .line 268
    :cond_43
    return v1
.end method

.method public blacklist needRetry()Z
    .registers 2

    .line 297
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mNeedRetry:Z

    return v0
.end method

.method public blacklist onDestroy()V
    .registers 2

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 187
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mTaskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 357
    const-string v2, ", CmdErrorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getCmdErrorCode()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 358
    const-string v2, ", NetworkRespSipCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 359
    const-string v2, ", ReasonPhrase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getReasonPhrase()Ljava/util/Optional;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    const-string v2, ", ReasonHeaderCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getReasonHeaderCause()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    const-string v2, ", ReasonHeaderText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getReasonHeaderText()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 362
    const-string v2, ", ResponseTimestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mResponseTimestamp:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 363
    const-string v2, ", isRequestSuccess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->isRequestSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    const-string v2, ", needRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->mNeedRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
