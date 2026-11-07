.class public final Landroid/app/ambientcontext/AmbientContextEvent$Builder;
.super Ljava/lang/Object;
.source "AmbientContextEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ambientcontext/AmbientContextEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I

.field private blacklist mDensityLevel:I

.field private blacklist mEndTime:Ljava/time/Instant;

.field private blacklist mEventType:I

.field private blacklist mStartTime:Ljava/time/Instant;

.field private blacklist mVendorData:Landroid/os/PersistableBundle;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 456
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 562
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 566
    return-void

    .line 563
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/app/ambientcontext/AmbientContextEvent;
    .registers 9

    .line 530
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 531
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 533
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 534
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultEventType()I

    move-result v0

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEventType:I

    .line 536
    :cond_1b
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 537
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultStartTime()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mStartTime:Ljava/time/Instant;

    .line 539
    :cond_2a
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 540
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultEndTime()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEndTime:Ljava/time/Instant;

    .line 542
    :cond_39
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_48

    .line 543
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mConfidenceLevel:I

    .line 545
    :cond_48
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_57

    .line 546
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultDensityLevel()I

    move-result v0

    iput v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mDensityLevel:I

    .line 548
    :cond_57
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_66

    .line 549
    invoke-static {}, Landroid/app/ambientcontext/AmbientContextEvent;->-$$Nest$smdefaultVendorData()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mVendorData:Landroid/os/PersistableBundle;

    .line 551
    :cond_66
    new-instance v1, Landroid/app/ambientcontext/AmbientContextEvent;

    iget v2, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEventType:I

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mStartTime:Ljava/time/Instant;

    iget-object v4, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEndTime:Ljava/time/Instant;

    iget v5, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mConfidenceLevel:I

    iget v6, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mDensityLevel:I

    iget-object v7, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mVendorData:Landroid/os/PersistableBundle;

    invoke-direct/range {v1 .. v7}, Landroid/app/ambientcontext/AmbientContextEvent;-><init>(ILjava/time/Instant;Ljava/time/Instant;IILandroid/os/PersistableBundle;)V

    .line 558
    .local v1, "o":Landroid/app/ambientcontext/AmbientContextEvent;
    return-object v1
.end method

.method public whitelist setConfidenceLevel(I)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 494
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 495
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 496
    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mConfidenceLevel:I

    .line 497
    return-object p0
.end method

.method public whitelist setDensityLevel(I)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 506
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 507
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 508
    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mDensityLevel:I

    .line 509
    return-object p0
.end method

.method public whitelist setEndTime(Ljava/time/Instant;)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .registers 6
    .param p1, "value"    # Ljava/time/Instant;

    .line 482
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 483
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 484
    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEndTime:Ljava/time/Instant;

    .line 485
    return-object p0
.end method

.method public whitelist setEventType(I)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 460
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 461
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 462
    iput p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mEventType:I

    .line 463
    return-object p0
.end method

.method public whitelist setStartTime(Ljava/time/Instant;)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .registers 6
    .param p1, "value"    # Ljava/time/Instant;

    .line 471
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 472
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 473
    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mStartTime:Ljava/time/Instant;

    .line 474
    return-object p0
.end method

.method public whitelist setVendorData(Landroid/os/PersistableBundle;)Landroid/app/ambientcontext/AmbientContextEvent$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/PersistableBundle;

    .line 522
    invoke-direct {p0}, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->checkNotUsed()V

    .line 523
    iget-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mBuilderFieldsSet:J

    .line 524
    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextEvent$Builder;->mVendorData:Landroid/os/PersistableBundle;

    .line 525
    return-object p0
.end method
