.class Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
.super Ljava/lang/Object;
.source "UceRequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestResult"
.end annotation


# instance fields
.field private final blacklist mErrorCode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsSuccess:Ljava/lang/Boolean;

.field private final blacklist mRetryMillis:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSipDetails:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/telephony/ims/SipDetails;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTaskId:Ljava/lang/Long;


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 4
    .param p1, "taskId"    # J

    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;-><init>(JLandroid/telephony/ims/SipDetails;)V

    .line 180
    return-void
.end method

.method private constructor blacklist <init>(JIJ)V
    .registers 13
    .param p1, "taskId"    # J
    .param p3, "errorCode"    # I
    .param p4, "retryMillis"    # J

    .line 201
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    .end local p1    # "taskId":J
    .end local p3    # "errorCode":I
    .end local p4    # "retryMillis":J
    .local v1, "taskId":J
    .local v3, "errorCode":I
    .local v4, "retryMillis":J
    invoke-direct/range {v0 .. v6}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;-><init>(JIJLandroid/telephony/ims/SipDetails;)V

    .line 202
    return-void
.end method

.method private constructor blacklist <init>(JIJLandroid/telephony/ims/SipDetails;)V
    .registers 8
    .param p1, "taskId"    # J
    .param p3, "errorCode"    # I
    .param p4, "retryMillis"    # J
    .param p6, "details"    # Landroid/telephony/ims/SipDetails;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mTaskId:Ljava/lang/Long;

    .line 209
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mIsSuccess:Ljava/lang/Boolean;

    .line 210
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mErrorCode:Ljava/util/Optional;

    .line 211
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mRetryMillis:Ljava/util/Optional;

    .line 212
    if-nez p6, :cond_2d

    .line 213
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mSipDetails:Ljava/util/Optional;

    goto :goto_33

    .line 215
    :cond_2d
    invoke-static {p6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mSipDetails:Ljava/util/Optional;

    .line 217
    :goto_33
    return-void
.end method

.method private constructor blacklist <init>(JLandroid/telephony/ims/SipDetails;)V
    .registers 5
    .param p1, "taskId"    # J
    .param p3, "details"    # Landroid/telephony/ims/SipDetails;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mTaskId:Ljava/lang/Long;

    .line 187
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mIsSuccess:Ljava/lang/Boolean;

    .line 188
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mErrorCode:Ljava/util/Optional;

    .line 189
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mRetryMillis:Ljava/util/Optional;

    .line 190
    if-nez p3, :cond_25

    .line 191
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mSipDetails:Ljava/util/Optional;

    goto :goto_2b

    .line 193
    :cond_25
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mSipDetails:Ljava/util/Optional;

    .line 195
    :goto_2b
    return-void
.end method

.method public static blacklist createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 11
    .param p0, "taskId"    # J
    .param p2, "errorCode"    # I
    .param p3, "retry"    # J

    .line 154
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-wide v1, p0

    move v3, p2

    move-wide v4, p3

    .end local p0    # "taskId":J
    .end local p2    # "errorCode":I
    .end local p3    # "retry":J
    .local v1, "taskId":J
    .local v3, "errorCode":I
    .local v4, "retry":J
    invoke-direct/range {v0 .. v5}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;-><init>(JIJ)V

    return-object v0
.end method

.method public static blacklist createFailedResult(JIJLandroid/telephony/ims/SipDetails;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 13
    .param p0, "taskId"    # J
    .param p2, "errorCode"    # I
    .param p3, "retry"    # J
    .param p5, "details"    # Landroid/telephony/ims/SipDetails;

    .line 166
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-wide v1, p0

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .end local p0    # "taskId":J
    .end local p2    # "errorCode":I
    .end local p3    # "retry":J
    .end local p5    # "details":Landroid/telephony/ims/SipDetails;
    .local v1, "taskId":J
    .local v3, "errorCode":I
    .local v4, "retry":J
    .local v6, "details":Landroid/telephony/ims/SipDetails;
    invoke-direct/range {v0 .. v6}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;-><init>(JIJLandroid/telephony/ims/SipDetails;)V

    return-object v0
.end method

.method public static blacklist createSuccessResult(J)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 3
    .param p0, "taskId"    # J

    .line 135
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;-><init>(J)V

    return-object v0
.end method

.method public static blacklist createSuccessResult(JLandroid/telephony/ims/SipDetails;)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 4
    .param p0, "taskId"    # J
    .param p2, "details"    # Landroid/telephony/ims/SipDetails;

    .line 144
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;-><init>(JLandroid/telephony/ims/SipDetails;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getErrorCode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mErrorCode:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getRetryMillis()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mRetryMillis:Ljava/util/Optional;

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

    .line 236
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mSipDetails:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getTaskId()J
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mTaskId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isRequestSuccess()Z
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mIsSuccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
