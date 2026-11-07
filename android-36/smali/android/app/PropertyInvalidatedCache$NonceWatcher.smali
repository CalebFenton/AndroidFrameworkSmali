.class public Landroid/app/PropertyInvalidatedCache$NonceWatcher;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonceWatcher"
.end annotation


# instance fields
.field private final blacklist mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

.field private blacklist mLastSeen:J

.field private final blacklist mSem:Ljava/util/concurrent/Semaphore;


# direct methods
.method private constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;)V
    .registers 4
    .param p1, "handler"    # Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    .line 1069
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    .line 1078
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1079
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->registerWatcher(Ljava/util/concurrent/Semaphore;)V

    .line 1080
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;Landroid/app/PropertyInvalidatedCache-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$NonceWatcher;-><init>(Landroid/app/PropertyInvalidatedCache$NonceHandler;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 1089
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->unregisterWatcher(Ljava/util/concurrent/Semaphore;)V

    .line 1090
    return-void
.end method

.method public blacklist isChanged()Z
    .registers 5

    .line 1106
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mHandler:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->getNonce()J

    move-result-wide v0

    .line 1107
    .local v0, "current":J
    iget-wide v2, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    .line 1108
    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    .line 1109
    const/4 v2, 0x1

    return v2

    .line 1111
    :cond_10
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist lastSeen()J
    .registers 3

    .line 1097
    iget-wide v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mLastSeen:J

    return-wide v0
.end method

.method public blacklist waitForChange()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1122
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 1123
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist waitForChange(JLjava/util/concurrent/TimeUnit;)I
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1136
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    add-int/2addr v0, v1

    return v0

    .line 1138
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist wakeUp()V
    .registers 2

    .line 1148
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$NonceWatcher;->mSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1149
    return-void
.end method
