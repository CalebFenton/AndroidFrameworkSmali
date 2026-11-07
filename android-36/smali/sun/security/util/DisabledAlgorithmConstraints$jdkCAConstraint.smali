.class Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;
.super Lsun/security/util/DisabledAlgorithmConstraints$Constraint;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "jdkCAConstraint"
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "algo"    # Ljava/lang/String;

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;-><init>(Lsun/security/util/DisabledAlgorithmConstraints-IA;)V

    .line 435
    iput-object p1, p0, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;->algorithm:Ljava/lang/String;

    .line 436
    return-void
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

    .line 445
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 446
    invoke-static {}, Lsun/security/util/DisabledAlgorithmConstraints;->-$$Nest$sfgetdebug()Lsun/security/util/Debug;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jdkCAConstraints.permits(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;->algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 450
    :cond_22
    invoke-virtual {p1}, Lsun/security/util/CertConstraintParameters;->isTrustedMatch()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 451
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    if-eqz v0, :cond_32

    .line 452
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints$jdkCAConstraint;->nextConstraint:Lsun/security/util/DisabledAlgorithmConstraints$Constraint;

    invoke-virtual {v0, p1}, Lsun/security/util/DisabledAlgorithmConstraints$Constraint;->permits(Lsun/security/util/CertConstraintParameters;)V

    .line 453
    return-void

    .line 455
    :cond_32
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const/4 v5, -0x1

    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->ALGORITHM_CONSTRAINED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    const-string v2, "Algorithm constraints check failed on certificate anchor limits"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v1

    .line 460
    :cond_3f
    return-void
.end method
