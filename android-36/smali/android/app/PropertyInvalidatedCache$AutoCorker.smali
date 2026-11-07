.class public final Landroid/app/PropertyInvalidatedCache$AutoCorker;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoCorker"
.end annotation


# static fields
.field public static final blacklist DEFAULT_AUTO_CORK_DELAY_MS:I = 0x32


# instance fields
.field private final blacklist mAutoCorkDelayMs:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

.field private final blacklist mPropertyName:Ljava/lang/String;

.field private blacklist mUncorkDeadlineMs:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1950
    const/16 v0, 0x32

    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;-><init>(Ljava/lang/String;I)V

    .line 1951
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "autoCorkDelayMs"    # I

    .line 1953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1941
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    .line 1942
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    .line 1954
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->separatePermissionNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1958
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    .line 1959
    iput p2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mAutoCorkDelayMs:I

    .line 1963
    return-void

    .line 1955
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AutoCorking is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getHandlerLocked()Landroid/os/Handler;
    .registers 3

    .line 2031
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 2032
    new-instance v0, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;

    invoke-static {}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;-><init>(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mHandler:Landroid/os/Handler;

    .line 2039
    :cond_f
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static blacklist getLooper()Landroid/os/Looper;
    .registers 1

    .line 2047
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 2000
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2007
    :try_start_3
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_d

    .line 2008
    monitor-exit v0

    return-void

    .line 2010
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2011
    .local v1, "nowMs":J
    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_29

    .line 2012
    iget v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mAutoCorkDelayMs:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    .line 2018
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getHandlerLocked()Landroid/os/Handler;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 2019
    monitor-exit v0

    return-void

    .line 2024
    :cond_29
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    .line 2025
    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v3}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->uncork()V

    .line 2026
    .end local v1    # "nowMs":J
    monitor-exit v0

    .line 2027
    return-void

    .line 2026
    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public blacklist autoCork()V
    .registers 8

    .line 1966
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1967
    :try_start_3
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    if-nez v1, :cond_f

    .line 1968
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$smgetNonceHandler(Ljava/lang/String;)Landroid/app/PropertyInvalidatedCache$NonceHandler;

    move-result-object v1

    iput-object v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    .line 1970
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_50

    .line 1972
    invoke-static {}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 1978
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1979
    return-void

    .line 1981
    :cond_1c
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1982
    :try_start_1f
    iget-wide v2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    if-ltz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    move v0, v2

    .line 1988
    .local v0, "alreadyQueued":Z
    :goto_2b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget v5, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mAutoCorkDelayMs:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    .line 1989
    if-nez v0, :cond_46

    .line 1990
    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getHandlerLocked()Landroid/os/Handler;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1991
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->cork()V

    goto :goto_4b

    .line 1994
    :cond_46
    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mNonce:Landroid/app/PropertyInvalidatedCache$NonceHandler;

    invoke-virtual {v2}, Landroid/app/PropertyInvalidatedCache$NonceHandler;->invalidate()V

    .line 1996
    .end local v0    # "alreadyQueued":Z
    :goto_4b
    monitor-exit v1

    .line 1997
    return-void

    .line 1996
    :catchall_4d
    move-exception v0

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_1f .. :try_end_4f} :catchall_4d

    throw v0

    .line 1970
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v1
.end method
