.class public Landroid/hardware/face/FaceAuthenticateOptions$Builder;
.super Ljava/lang/Object;
.source "FaceAuthenticateOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceAuthenticateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private blacklist mAuthenticateReason:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDisplayState:I

.field private blacklist mIsMandatoryBiometrics:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mSensorId:I

.field private blacklist mUserId:I

.field private blacklist mWakeReason:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 515
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 653
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 657
    return-void

    .line 654
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/face/FaceAuthenticateOptions;
    .registers 11

    .line 616
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 617
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 619
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 620
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultUserId()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mUserId:I

    .line 622
    :cond_1b
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 623
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultSensorId()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mSensorId:I

    .line 625
    :cond_2a
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 626
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultDisplayState()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mDisplayState:I

    .line 628
    :cond_39
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_48

    .line 629
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultAuthenticateReason()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAuthenticateReason:I

    .line 631
    :cond_48
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_57

    .line 632
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultWakeReason()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mWakeReason:I

    .line 634
    :cond_57
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_66

    .line 635
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    .line 637
    :cond_66
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_75

    .line 638
    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    .line 640
    :cond_75
    new-instance v1, Landroid/hardware/face/FaceAuthenticateOptions;

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mUserId:I

    iget v3, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mSensorId:I

    iget v4, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mDisplayState:I

    iget v5, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAuthenticateReason:I

    iget v6, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mWakeReason:I

    iget-object v7, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    iget-boolean v9, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mIsMandatoryBiometrics:Z

    invoke-direct/range {v1 .. v9}, Landroid/hardware/face/FaceAuthenticateOptions;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Z)V

    .line 649
    .local v1, "o":Landroid/hardware/face/FaceAuthenticateOptions;
    return-object v1
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 597
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 598
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 599
    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    .line 600
    return-object p0
.end method

.method public blacklist setAuthenticateReason(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 559
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 560
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 561
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAuthenticateReason:I

    .line 562
    return-object p0
.end method

.method public blacklist setDisplayState(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 544
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 545
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 546
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mDisplayState:I

    .line 547
    return-object p0
.end method

.method public blacklist setIsMandatoryBiometrics(Z)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Z

    .line 608
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 609
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 610
    iput-boolean p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mIsMandatoryBiometrics:Z

    .line 611
    return-object p0
.end method

.method public blacklist setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 584
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 585
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 586
    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    .line 587
    return-object p0
.end method

.method public blacklist setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 533
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 534
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 535
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mSensorId:I

    .line 536
    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 522
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 523
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 524
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mUserId:I

    .line 525
    return-object p0
.end method

.method public blacklist setWakeReason(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 570
    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    .line 571
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 572
    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mWakeReason:I

    .line 573
    return-object p0
.end method
