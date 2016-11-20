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
.field private mMask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 381
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@6
    .line 390
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@8
    .line 389
    return-void
.end method

.method public constructor <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    #@0
    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 381
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@6
    .line 397
    iget v0, p1, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    #@8
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@a
    .line 396
    return-void
.end method

.method private disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 2
    .param p1, "bit"    # I

    #@0
    .prologue
    .line 562
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v0, v1

    #@4
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@6
    .line 563
    return-object p0
.end method

.method private enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1
    .param p1, "bit"    # I

    #@0
    .prologue
    .line 557
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@5
    .line 558
    return-object p0
.end method


# virtual methods
.method public build()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    #@0
    .prologue
    .line 576
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 577
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@6
    const/high16 v1, 0x270000

    #@8
    and-int/2addr v0, v1

    #@9
    if-nez v0, :cond_0

    #@b
    .line 579
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@e
    .line 581
    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    #@10
    iget v1, p0, Landroid/os/StrictMode$ThreadPolicy$Builder;->mMask:I

    #@12
    const/4 v2, 0x0

    #@13
    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$ThreadPolicy;)V

    #@16
    return-object v0
.end method

.method public detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 407
    const/16 v0, 0x1f

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 449
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 435
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 489
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 421
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 482
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 517
    const/high16 v0, 0x40000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyDeathOnNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 529
    const/high16 v0, 0x1000000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyDialog()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 504
    const/high16 v0, 0x20000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyDropBox()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 553
    const/high16 v0, 0x200000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 536
    const/high16 v0, 0x100000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 543
    const/high16 v0, 0x10000

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->enable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 414
    const/16 v0, 0x1f

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 456
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 442
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 496
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 428
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public permitResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;
    .locals 1

    #@0
    .prologue
    .line 464
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->disable(I)Landroid/os/StrictMode$ThreadPolicy$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
