.class public final Landroid/view/ContentRecordingSession$Builder;
.super Ljava/lang/Object;
.source "ContentRecordingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentRecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mContentToRecord:I

.field private blacklist mDisplayToRecord:I

.field private blacklist mTargetUid:I

.field private blacklist mTaskId:I

.field private blacklist mTokenToRecord:Landroid/os/IBinder;

.field private blacklist mVirtualDisplayId:I

.field private blacklist mWaitingForConsent:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 546
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 674
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 678
    return-void

    .line 675
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/view/ContentRecordingSession;
    .registers 10

    .line 638
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 639
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 641
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_18

    .line 642
    iput v1, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    .line 644
    :cond_18
    iget-wide v4, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x2

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_23

    .line 645
    iput v1, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    .line 647
    :cond_23
    iget-wide v4, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_2f

    .line 648
    iput v4, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    .line 650
    :cond_2f
    iget-wide v5, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v7, 0x8

    and-long/2addr v5, v7

    cmp-long v0, v5, v2

    if-nez v0, :cond_3a

    .line 651
    iput v1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    .line 653
    :cond_3a
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v5, 0x10

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    .line 656
    :cond_46
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v5, 0x20

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-nez v0, :cond_51

    .line 657
    iput-boolean v4, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    .line 659
    :cond_51
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    .line 660
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    .line 662
    :cond_5d
    new-instance v1, Landroid/view/ContentRecordingSession;

    iget v2, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    iget v3, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    iget v4, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    iget v5, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    iget-object v6, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    iget-boolean v7, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    iget v8, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    invoke-direct/range {v1 .. v8}, Landroid/view/ContentRecordingSession;-><init>(IIIILandroid/os/IBinder;ZI)V

    .line 670
    .local v1, "o":Landroid/view/ContentRecordingSession;
    return-object v1
.end method

.method public blacklist setContentToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 577
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 578
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 579
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mContentToRecord:I

    .line 580
    return-object p0
.end method

.method public blacklist setDisplayToRecord(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 591
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 592
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 593
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mDisplayToRecord:I

    .line 594
    return-object p0
.end method

.method public blacklist setTargetUid(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 630
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 631
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 632
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTargetUid:I

    .line 633
    return-object p0
.end method

.method public blacklist setTaskId(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 554
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 555
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 556
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTaskId:I

    .line 557
    return-object p0
.end method

.method public blacklist setTokenToRecord(Landroid/os/IBinder;)Landroid/view/ContentRecordingSession$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/IBinder;

    .line 605
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 606
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 607
    iput-object p1, p0, Landroid/view/ContentRecordingSession$Builder;->mTokenToRecord:Landroid/os/IBinder;

    .line 608
    return-object p0
.end method

.method public blacklist setVirtualDisplayId(I)Landroid/view/ContentRecordingSession$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 566
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 567
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 568
    iput p1, p0, Landroid/view/ContentRecordingSession$Builder;->mVirtualDisplayId:I

    .line 569
    return-object p0
.end method

.method public blacklist setWaitingForConsent(Z)Landroid/view/ContentRecordingSession$Builder;
    .registers 6
    .param p1, "value"    # Z

    .line 619
    invoke-direct {p0}, Landroid/view/ContentRecordingSession$Builder;->checkNotUsed()V

    .line 620
    iget-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ContentRecordingSession$Builder;->mBuilderFieldsSet:J

    .line 621
    iput-boolean p1, p0, Landroid/view/ContentRecordingSession$Builder;->mWaitingForConsent:Z

    .line 622
    return-object p0
.end method
