.class public final Landroid/os/StrictMode$ThreadPolicy$Builder;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode$ThreadPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListener:Landroid/os/StrictMode$OnThreadViolationListener;

.field private greylist-max-o mMask:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 509
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 510
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .registers 3
    .param p1, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 514
    iget v0, p1, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 515
    iget-object v0, p1, Landroid/os/StrictMode$ThreadPolicy;->mListener:Landroid/os/StrictMode$OnThreadViolationListener;

    iput-object v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mListener:Landroid/os/StrictMode$OnThreadViolationListener;

    .line 516
    iget-object v0, p1, Landroid/os/StrictMode$ThreadPolicy;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 517
    return-void
.end method

.method private greylist-max-o disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 4
    .param p1, "mask"    # I

    .line 713
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 714
    return-object p0
.end method

.method private greylist-max-o enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 3
    .param p1, "mask"    # I

    .line 708
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    .line 709
    return-object p0
.end method


# virtual methods
.method public whitelist build()Landroid/os/StrictMode$ThreadPolicy;
    .registers 6

    .line 726
    iget-object v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mListener:Landroid/os/StrictMode$OnThreadViolationListener;

    if-nez v0, :cond_12

    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    const/high16 v1, 0x74000000

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    .line 734
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 736
    :cond_12
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    iget v1, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    iget-object v2, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mListener:Landroid/os/StrictMode$OnThreadViolationListener;

    iget-object v3, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;Landroid/os/StrictMode-IA;)V

    return-object v0
.end method

.method public whitelist detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 4

    .line 527
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 528
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 529
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 531
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 532
    .local v0, "targetSdk":I
    const/16 v1, 0xb

    if-lt v0, v1, :cond_18

    .line 533
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 535
    :cond_18
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1f

    .line 536
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 538
    :cond_1f
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_26

    .line 539
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 541
    :cond_26
    const-wide/32 v1, 0x33e3c4

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 542
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectExplicitGc()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 544
    :cond_32
    return-object p0
.end method

.method public whitelist detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 574
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 564
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 615
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectExplicitGc()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 627
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 554
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 610
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist detectUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 589
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 654
    const/high16 v0, 0x10000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDeathOnNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 665
    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDialog()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 642
    const/high16 v0, 0x20000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 684
    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 670
    const/high16 v0, 0x8000000

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist penaltyListener(Landroid/os/StrictMode$OnThreadViolationListener;Ljava/util/concurrent/Executor;)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 4
    .param p1, "listener"    # Landroid/os/StrictMode$OnThreadViolationListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 704
    invoke-virtual {p0, p2, p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnThreadViolationListener;)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist penaltyListener(Ljava/util/concurrent/Executor;Landroid/os/StrictMode$OnThreadViolationListener;)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/StrictMode$OnThreadViolationListener;

    .line 693
    if-eqz p1, :cond_7

    .line 696
    iput-object p2, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mListener:Landroid/os/StrictMode$OnThreadViolationListener;

    .line 697
    iput-object p1, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 698
    return-object p0

    .line 694
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 675
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 549
    const v0, 0xffff

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 579
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 569
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 620
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitExplicitGc()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 634
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 559
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 584
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .registers 2

    .line 594
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    return-object v0
.end method
