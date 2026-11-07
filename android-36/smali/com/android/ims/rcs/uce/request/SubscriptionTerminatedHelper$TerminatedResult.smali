.class Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;
.super Ljava/lang/Object;
.source "SubscriptionTerminatedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TerminatedResult"
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

.field private final blacklist mRetryAfterMillis:J


# direct methods
.method public constructor blacklist <init>(Ljava/util/Optional;J)V
    .registers 4
    .param p2, "retryAfterMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    .line 51
    .local p1, "errorCode":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->mErrorCode:Ljava/util/Optional;

    .line 53
    iput-wide p2, p0, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->mRetryAfterMillis:J

    .line 54
    return-void
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

    .line 61
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->mErrorCode:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getRetryAfterMillis()J
    .registers 3

    .line 65
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->mRetryAfterMillis:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "TerminatedResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    const-string v2, "errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->mErrorCode:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string v2, ", retryAfterMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/ims/rcs/uce/request/SubscriptionTerminatedHelper$TerminatedResult;->mRetryAfterMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
