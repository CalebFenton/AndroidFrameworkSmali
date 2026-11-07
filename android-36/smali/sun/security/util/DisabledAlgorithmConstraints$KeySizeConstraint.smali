.class Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
.super Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySizeConstraint"
.end annotation


# instance fields
.field private greylist-max-o maxSize:I

.field private greylist-max-o minSize:I

.field private greylist-max-o prohibitedSize:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;I)V
    .registers 8
    .param p1, "algo"    # Ljava/lang/String;
    .param p2, "operator"    # Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;
    .param p3, "length"    # I

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;-><init>(Lsun/security/util/DisabledAlgorithmConstraints-IA;)V

    .line 472
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    .line 475
    iput-object p1, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    .line 476
    invoke-virtual {p2}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint$Operator;->ordinal()I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_42

    .line 504
    iput v2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 505
    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    goto :goto_40

    .line 499
    :pswitch_19
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 500
    const/4 v0, 0x1

    if-le p3, v0, :cond_20

    add-int/lit8 v3, p3, -0x1

    :cond_20
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    .line 501
    goto :goto_40

    .line 495
    :pswitch_23
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 496
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    .line 497
    goto :goto_40

    .line 491
    :pswitch_28
    add-int/lit8 v0, p3, 0x1

    iput v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 492
    iput v2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    .line 493
    goto :goto_40

    .line 487
    :pswitch_2f
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 488
    iput v2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    .line 489
    goto :goto_40

    .line 483
    :pswitch_34
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 484
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    .line 485
    goto :goto_40

    .line 478
    :pswitch_39
    iput v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    .line 479
    iput v2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    .line 480
    iput p3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    .line 481
    nop

    .line 507
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_28
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method private greylist-max-o permitsImpl(Ljava/security/Key;)Z
    .registers 6
    .param p1, "key"    # Ljava/security/Key;

    .line 547
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 548
    return v1

    .line 551
    :cond_e
    invoke-static {p1}, Lsun/security/util/KeyUtil;->getKeySize(Ljava/security/Key;)I

    move-result v0

    .line 552
    .local v0, "size":I
    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 553
    return v2

    .line 554
    :cond_16
    if-lez v0, :cond_27

    .line 555
    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->minSize:I

    if-lt v0, v3, :cond_25

    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->maxSize:I

    if-gt v0, v3, :cond_25

    iget v3, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->prohibitedSize:I

    if-eq v3, v0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    return v1

    .line 560
    :cond_27
    return v1
.end method


# virtual methods
.method public greylist-max-o permits(Lsun/security/util/CertConstraintParameters;)V
    .registers 9
    .param p1, "cp"    # Lsun/security/util/CertConstraintParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 518
    invoke-virtual {p1}, Lsun/security/util/CertConstraintParameters;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->permitsImpl(Ljava/security/Key;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 519
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_18

    .line 520
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Lsun/security/util/CertConstraintParameters;)V

    .line 521
    return-void

    .line 523
    :cond_18
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const/4 v5, -0x1

    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v2, "Algorithm constraints check failed on keysize limits"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 527
    :cond_25
    return-void
.end method

.method public greylist-max-o permits(Ljava/security/Key;)Z
    .registers 5
    .param p1, "key"    # Ljava/security/Key;

    .line 535
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Ljava/security/Key;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 536
    const/4 v0, 0x1

    return v0

    .line 538
    :cond_e
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 539
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeySizeConstraints.permits(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 542
    :cond_30
    invoke-direct {p0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->permitsImpl(Ljava/security/Key;)Z

    move-result v0

    return v0
.end method
