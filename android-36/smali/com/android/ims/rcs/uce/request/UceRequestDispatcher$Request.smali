.class Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;
.super Ljava/lang/Object;
.source "UceRequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field private final blacklist mCoordinatorId:J

.field private blacklist mExecutingTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTaskId:J


# direct methods
.method public constructor blacklist <init>(JJ)V
    .registers 6
    .param p1, "coordinatorId"    # J
    .param p3, "taskId"    # J

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p3, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->mTaskId:J

    .line 47
    iput-wide p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->mCoordinatorId:J

    .line 48
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->mExecutingTime:Ljava/util/Optional;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist getCoordinatorId()J
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->mCoordinatorId:J

    return-wide v0
.end method

.method public blacklist getExecutingTime()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->mExecutingTime:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getTaskId()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->mTaskId:J

    return-wide v0
.end method

.method public blacklist setExecutingTime(Ljava/time/Instant;)V
    .registers 3
    .param p1, "instant"    # Ljava/time/Instant;

    .line 60
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$Request;->mExecutingTime:Ljava/util/Optional;

    .line 61
    return-void
.end method
