.class final Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;
.super Ljava/lang/Object;
.source "CronetUrlRequestContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CronetInitializedInfoLogger"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

.field private final blacklist mCronetLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

.field private final blacklist mStartUptimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 198
    const-class v0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;JJ)V
    .registers 7
    .param p1, "cronetLogger"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
    .param p2, "cronetInitializationRef"    # J
    .param p4, "startUptimeMillis"    # J

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    .line 206
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 207
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    iput-wide p2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->cronetInitializationRef:J

    .line 208
    iput-wide p4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mStartUptimeMillis:J

    .line 209
    return-void
.end method

.method private blacklist getElapsedTime()I
    .registers 5

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mStartUptimeMillis:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 245
    .local v0, "elapsedTime":I
    nop

    .line 246
    return v0
.end method

.method private blacklist maybeLog()V
    .registers 3

    .line 236
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    iget v0, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->engineCreationLatencyMillis:I

    if-ltz v0, :cond_15

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    iget v0, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->engineAsyncLatencyMillis:I

    if-gez v0, :cond_d

    goto :goto_15

    .line 240
    :cond_d
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->logCronetInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;)V

    .line 241
    return-void

    .line 238
    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public blacklist onInitThreadDone(Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;)V
    .registers 5
    .param p1, "libraryLoaderInfo"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;

    .line 221
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    iget v1, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsLatencyMillis:I

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->httpFlagsLatencyMillis:I

    .line 223
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    iget-object v1, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsSuccessful:Ljava/lang/Boolean;

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->httpFlagsSuccessful:Ljava/lang/Boolean;

    .line 224
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    iget-object v1, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsNames:Ljava/util/List;

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->httpFlagsNames:Ljava/util/List;

    .line 225
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    iget-object v1, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsValues:Ljava/util/List;

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->httpFlagsValues:Ljava/util/List;

    .line 227
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->getElapsedTime()I

    move-result v0

    .line 228
    .local v0, "elapsedTime":I
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    monitor-enter v1

    .line 229
    nop

    .line 230
    :try_start_20
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    iput v0, v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->engineAsyncLatencyMillis:I

    .line 231
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->maybeLog()V

    .line 232
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2b

    throw v2

    :catchall_2b
    move-exception v2

    goto :goto_29
.end method

.method public blacklist onUserThreadDone()V
    .registers 4

    .line 212
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->getElapsedTime()I

    move-result v0

    .line 213
    .local v0, "elapsedTime":I
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    monitor-enter v1

    .line 214
    nop

    .line 215
    :try_start_8
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->mCronetInitializedInfo:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    iput v0, v2, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->engineCreationLatencyMillis:I

    .line 216
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetUrlRequestContext$CronetInitializedInfoLogger;->maybeLog()V

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :goto_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_13

    throw v2

    :catchall_13
    move-exception v2

    goto :goto_11
.end method
