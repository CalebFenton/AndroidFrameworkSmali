.class public Landroid/os/StrictMode$ViolationInfo;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViolationInfo"
.end annotation


# instance fields
.field public broadcastIntentAction:Ljava/lang/String;

.field public final crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

.field public durationMillis:I

.field public message:Ljava/lang/String;

.field public numAnimationsRunning:I

.field public numInstances:J

.field public final policy:I

.field public tags:[Ljava/lang/String;

.field public violationNumThisLoop:I

.field public violationUptimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2339
    const/4 v0, -0x1

    #@5
    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@7
    .line 2344
    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@9
    .line 2376
    const-wide/16 v0, -0x1

    #@b
    iput-wide v0, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    #@d
    .line 2382
    const/4 v0, 0x0

    #@e
    iput-object v0, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@10
    .line 2383
    iput v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@12
    .line 2381
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 2447
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    #@4
    .line 2446
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Z)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "unsetGatheringBit"    # Z

    #@0
    .prologue
    .line 2456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2339
    const/4 v1, -0x1

    #@4
    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@6
    .line 2344
    const/4 v1, 0x0

    #@7
    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@9
    .line 2376
    const-wide/16 v2, -0x1

    #@b
    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    #@d
    .line 2457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    #@13
    .line 2458
    new-instance v1, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@15
    invoke-direct {v1, p1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    #@18
    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@1a
    .line 2459
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    .line 2460
    .local v0, "rawPolicy":I
    if-eqz p2, :cond_0

    #@20
    .line 2461
    const v1, -0x400001

    #@23
    and-int/2addr v1, v0

    #@24
    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@26
    .line 2465
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v1

    #@2a
    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@2c
    .line 2466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v1

    #@30
    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    #@32
    .line 2467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v1

    #@36
    iput v1, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@38
    .line 2468
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3b
    move-result-wide v2

    #@3c
    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    #@3e
    .line 2469
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@41
    move-result-wide v2

    #@42
    iput-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    #@44
    .line 2470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    #@4a
    .line 2471
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    iput-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@50
    .line 2456
    return-void

    #@51
    .line 2463
    :cond_0
    iput v0, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@53
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;
    .param p3, "policy"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2339
    const/4 v5, -0x1

    #@5
    iput v5, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@7
    .line 2344
    iput v6, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@9
    .line 2376
    const-wide/16 v6, -0x1

    #@b
    iput-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    #@d
    .line 2394
    iput-object p1, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    #@f
    .line 2395
    new-instance v5, Landroid/app/ApplicationErrorReport$CrashInfo;

    #@11
    invoke-direct {v5, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    #@14
    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@16
    .line 2396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@19
    move-result-wide v6

    #@1a
    iput-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    #@1c
    .line 2397
    iput p3, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@1e
    .line 2398
    invoke-static {}, Landroid/animation/ValueAnimator;->getCurrentAnimationsCount()I

    #@21
    move-result v5

    #@22
    iput v5, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@24
    .line 2399
    invoke-static {}, Landroid/app/ActivityThread;->getIntentBeingBroadcast()Landroid/content/Intent;

    #@27
    move-result-object v0

    #@28
    .line 2400
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    #@2a
    .line 2401
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    #@30
    .line 2403
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->-get5()Ljava/lang/ThreadLocal;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Landroid/os/StrictMode$ThreadSpanState;

    #@3a
    .line 2404
    .local v4, "state":Landroid/os/StrictMode$ThreadSpanState;
    instance-of v5, p2, Landroid/os/StrictMode$InstanceCountViolation;

    #@3c
    if-eqz v5, :cond_1

    #@3e
    .line 2405
    check-cast p2, Landroid/os/StrictMode$InstanceCountViolation;

    #@40
    .end local p2    # "tr":Ljava/lang/Throwable;
    iget-wide v6, p2, Landroid/os/StrictMode$InstanceCountViolation;->mInstances:J

    #@42
    iput-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    #@44
    .line 2407
    :cond_1
    monitor-enter v4

    #@45
    .line 2408
    :try_start_0
    iget v3, v4, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    #@47
    .line 2409
    .local v3, "spanActiveCount":I
    const/16 v5, 0x14

    #@49
    if-le v3, v5, :cond_2

    #@4b
    .line 2410
    const/16 v3, 0x14

    #@4d
    .line 2412
    :cond_2
    if-eqz v3, :cond_3

    #@4f
    .line 2413
    new-array v5, v3, [Ljava/lang/String;

    #@51
    iput-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@53
    .line 2414
    iget-object v2, v4, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    #@55
    .line 2415
    .local v2, "iter":Landroid/os/StrictMode$Span;
    const/4 v1, 0x0

    #@56
    .line 2416
    .local v1, "index":I
    :goto_0
    if-eqz v2, :cond_3

    #@58
    if-ge v1, v3, :cond_3

    #@5a
    .line 2417
    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@5c
    invoke-static {v2}, Landroid/os/StrictMode$Span;->-get0(Landroid/os/StrictMode$Span;)Ljava/lang/String;

    #@5f
    move-result-object v6

    #@60
    aput-object v6, v5, v1

    #@62
    .line 2418
    add-int/lit8 v1, v1, 0x1

    #@64
    .line 2419
    invoke-static {v2}, Landroid/os/StrictMode$Span;->-get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@67
    move-result-object v2

    #@68
    goto :goto_0

    #@69
    .end local v1    # "index":I
    .end local v2    # "iter":Landroid/os/StrictMode$Span;
    :cond_3
    monitor-exit v4

    #@6a
    .line 2393
    return-void

    #@6b
    .line 2407
    .end local v3    # "spanActiveCount":I
    :catchall_0
    move-exception v5

    #@6c
    monitor-exit v4

    #@6d
    throw v5
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "policy"    # I

    #@0
    .prologue
    .line 2387
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    #@4
    .line 2386
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2507
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@3
    invoke-virtual {v4, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@6
    .line 2508
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    const-string/jumbo v5, "policy: "

    #@12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v4

    #@16
    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@23
    .line 2509
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@25
    const/4 v5, -0x1

    #@26
    if-eq v4, v5, :cond_0

    #@28
    .line 2510
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    const-string/jumbo v5, "durationMillis: "

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@45
    .line 2512
    :cond_0
    iget-wide v4, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    #@47
    const-wide/16 v6, -0x1

    #@49
    cmp-long v4, v4, v6

    #@4b
    if-eqz v4, :cond_1

    #@4d
    .line 2513
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    const-string/jumbo v5, "numInstances: "

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    iget-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    #@5f
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@6a
    .line 2515
    :cond_1
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    #@6c
    if-eqz v4, :cond_2

    #@6e
    .line 2516
    new-instance v4, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    const-string/jumbo v5, "violationNumThisLoop: "

    #@7a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    #@80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@8b
    .line 2518
    :cond_2
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@8d
    if-eqz v4, :cond_3

    #@8f
    .line 2519
    new-instance v4, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    const-string/jumbo v5, "numAnimationsRunning: "

    #@9b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v4

    #@9f
    iget v5, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@a1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v4

    #@a9
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@ac
    .line 2521
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v4

    #@b5
    const-string/jumbo v5, "violationUptimeMillis: "

    #@b8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v4

    #@bc
    iget-wide v6, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    #@be
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v4

    #@c2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v4

    #@c6
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@c9
    .line 2522
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    #@cb
    if-eqz v4, :cond_4

    #@cd
    .line 2523
    new-instance v4, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v4

    #@d6
    const-string/jumbo v5, "broadcastIntentAction: "

    #@d9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v4

    #@dd
    iget-object v5, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    #@df
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v4

    #@e3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v4

    #@e7
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@ea
    .line 2525
    :cond_4
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@ec
    if-eqz v4, :cond_5

    #@ee
    .line 2526
    const/4 v0, 0x0

    #@ef
    .line 2527
    .local v0, "index":I
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@f1
    array-length v5, v4

    #@f2
    move v1, v0

    #@f3
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v3, v5, :cond_5

    #@f5
    aget-object v2, v4, v3

    #@f7
    .line 2528
    .local v2, "tag":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@f9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@fc
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v6

    #@100
    const-string/jumbo v7, "tag["

    #@103
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v6

    #@107
    add-int/lit8 v0, v1, 0x1

    #@109
    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v6

    #@10d
    const-string/jumbo v7, "]: "

    #@110
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v6

    #@114
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v6

    #@118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v6

    #@11c
    invoke-interface {p1, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@11f
    .line 2527
    add-int/lit8 v3, v3, 0x1

    #@121
    move v1, v0

    #@122
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    #@123
    .line 2506
    .end local v1    # "index":I
    .end local v2    # "tag":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public hashCode()I
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2428
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@3
    iget-object v3, v3, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    #@5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@8
    move-result v3

    #@9
    add-int/lit16 v0, v3, 0x275

    #@b
    .line 2429
    .local v0, "result":I
    iget v3, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 2430
    mul-int/lit8 v0, v0, 0x25

    #@11
    .line 2432
    :cond_0
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 2433
    mul-int/lit8 v3, v0, 0x25

    #@17
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    #@19
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    #@1c
    move-result v4

    #@1d
    add-int v0, v3, v4

    #@1f
    .line 2435
    :cond_1
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 2436
    iget-object v3, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@25
    array-length v4, v3

    #@26
    :goto_0
    if-ge v2, v4, :cond_2

    #@28
    aget-object v1, v3, v2

    #@2a
    .line 2437
    .local v1, "tag":Ljava/lang/String;
    mul-int/lit8 v5, v0, 0x25

    #@2c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@2f
    move-result v6

    #@30
    add-int v0, v5, v6

    #@32
    .line 2436
    add-int/lit8 v2, v2, 0x1

    #@34
    goto :goto_0

    #@35
    .line 2440
    .end local v1    # "tag":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 2478
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->message:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 2479
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    #@7
    invoke-virtual {v2, p1, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@a
    .line 2480
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@d
    move-result v0

    #@e
    .line 2481
    .local v0, "start":I
    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 2482
    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@15
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 2483
    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    #@1a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 2484
    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 2485
    iget-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    #@24
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@27
    .line 2486
    iget-wide v2, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    #@29
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@2c
    .line 2487
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    #@2e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@31
    .line 2488
    iget-object v2, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@33
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@36
    .line 2489
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@39
    move-result v2

    #@3a
    sub-int v1, v2, v0

    #@3c
    .line 2490
    .local v1, "total":I
    const/16 v2, 0x2800

    #@3e
    if-le v1, v2, :cond_0

    #@40
    .line 2491
    const-string/jumbo v2, "StrictMode"

    #@43
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    const-string/jumbo v4, "VIO: policy="

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    const-string/jumbo v4, " dur="

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    #@5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@61
    move-result-object v3

    #@62
    .line 2492
    const-string/jumbo v4, " numLoop="

    #@65
    .line 2491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    .line 2492
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    #@6b
    .line 2491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    .line 2493
    const-string/jumbo v4, " anim="

    #@72
    .line 2491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    .line 2493
    iget v4, p0, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    #@78
    .line 2491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v3

    #@7c
    .line 2494
    const-string/jumbo v4, " uptime="

    #@7f
    .line 2491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    .line 2494
    iget-wide v4, p0, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    #@85
    .line 2491
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@88
    move-result-object v3

    #@89
    .line 2495
    const-string/jumbo v4, " numInst="

    #@8c
    .line 2491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v3

    #@90
    .line 2495
    iget-wide v4, p0, Landroid/os/StrictMode$ViolationInfo;->numInstances:J

    #@92
    .line 2491
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    .line 2496
    const-string/jumbo v2, "StrictMode"

    #@a0
    new-instance v3, Ljava/lang/StringBuilder;

    #@a2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a5
    const-string/jumbo v4, "VIO: action="

    #@a8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v3

    #@ac
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    #@ae
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v3

    #@b6
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    .line 2497
    const-string/jumbo v2, "StrictMode"

    #@bc
    new-instance v3, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string/jumbo v4, "VIO: tags="

    #@c4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v3

    #@c8
    iget-object v4, p0, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    #@ca
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@cd
    move-result-object v4

    #@ce
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v3

    #@d2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v3

    #@d6
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d9
    .line 2498
    const-string/jumbo v2, "StrictMode"

    #@dc
    new-instance v3, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v4, "VIO: TOTAL BYTES WRITTEN: "

    #@e4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v3

    #@e8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@eb
    move-result v4

    #@ec
    sub-int/2addr v4, v0

    #@ed
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v3

    #@f1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v3

    #@f5
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f8
    .line 2477
    :cond_0
    return-void
.end method
