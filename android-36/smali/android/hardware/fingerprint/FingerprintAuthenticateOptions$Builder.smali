.class public final Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
.super Ljava/lang/Object;
.source "FingerprintAuthenticateOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDisplayState:I

.field private blacklist mIgnoreEnrollmentState:Z

.field private blacklist mIsMandatoryBiometrics:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mSensorId:I

.field private blacklist mUserId:I

.field private blacklist mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 402
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 539
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 543
    return-void

    .line 540
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .registers 11

    .line 502
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    .line 503
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 505
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 506
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultUserId()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mUserId:I

    .line 508
    :cond_1b
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 509
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultSensorId()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mSensorId:I

    .line 511
    :cond_2a
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 512
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultIgnoreEnrollmentState()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIgnoreEnrollmentState:Z

    .line 514
    :cond_39
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_48

    .line 515
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultDisplayState()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mDisplayState:I

    .line 517
    :cond_48
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_57

    .line 518
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    .line 520
    :cond_57
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_66

    .line 521
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    .line 523
    :cond_66
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_75

    .line 524
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 526
    :cond_75
    new-instance v1, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mUserId:I

    iget v3, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mSensorId:I

    iget-boolean v4, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIgnoreEnrollmentState:Z

    iget v5, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mDisplayState:I

    iget-object v6, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    iget-boolean v9, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIsMandatoryBiometrics:Z

    invoke-direct/range {v1 .. v9}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;-><init>(IIZILjava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;Z)V

    .line 535
    .local v1, "o":Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    return-object v1
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 469
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    .line 470
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 471
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    .line 472
    return-object p0
.end method

.method public blacklist setDisplayState(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 442
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    .line 443
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 444
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mDisplayState:I

    .line 445
    return-object p0
.end method

.method public blacklist setIgnoreEnrollmentState(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Z

    .line 431
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    .line 432
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 433
    iput-boolean p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIgnoreEnrollmentState:Z

    .line 434
    return-object p0
.end method

.method public blacklist setIsMandatoryBiometrics(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Z

    .line 494
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    .line 495
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 496
    iput-boolean p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIsMandatoryBiometrics:Z

    .line 497
    return-object p0
.end method

.method public blacklist setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 456
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    .line 457
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 458
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    .line 459
    return-object p0
.end method

.method public blacklist setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 420
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    .line 421
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 422
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mSensorId:I

    .line 423
    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 409
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    .line 410
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 411
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mUserId:I

    .line 412
    return-object p0
.end method

.method public blacklist setVendorReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .registers 6
    .param p1, "value"    # Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 483
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    .line 484
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    .line 485
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    .line 486
    return-object p0
.end method
