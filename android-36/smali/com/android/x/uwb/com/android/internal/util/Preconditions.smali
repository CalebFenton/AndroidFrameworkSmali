.class public Lcom/android/x/uwb/com/android/internal/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkArgument(Z)V
    .registers 2
    .param p0, "expression"    # Z

    .line 46
    if-eqz p0, :cond_3

    .line 49
    return-void

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist checkArgument(ZLjava/lang/Object;)V
    .registers 4
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .line 63
    if-eqz p0, :cond_3

    .line 66
    return-void

    .line 64
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .line 81
    if-eqz p0, :cond_3

    .line 84
    return-void

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentFinite(FLjava/lang/String;)F
    .registers 5
    .param p0, "value"    # F
    .param p1, "valueName"    # Ljava/lang/String;

    .line 444
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_26

    .line 446
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_d

    .line 450
    return p0

    .line 447
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be infinite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be NaN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentInRange(DDDLjava/lang/String;)D
    .registers 10
    .param p0, "value"    # D
    .param p2, "lower"    # D
    .param p4, "upper"    # D
    .param p6, "valueName"    # Ljava/lang/String;

    .line 502
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 504
    cmpg-double v0, p0, p2

    if-ltz v0, :cond_27

    .line 508
    cmpl-double v0, p0, p4

    if-gtz v0, :cond_f

    .line 514
    return-wide p0

    .line 509
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 511
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {p6, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 510
    const-string v2, "%s is out of range of [%f, %f] (too high)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 507
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {p6, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 506
    const-string v2, "%s is out of range of [%f, %f] (too low)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be NaN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentInRange(FFFLjava/lang/String;)F
    .registers 7
    .param p0, "value"    # F
    .param p1, "lower"    # F
    .param p2, "upper"    # F
    .param p3, "valueName"    # Ljava/lang/String;

    .line 470
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 472
    cmpg-float v0, p0, p1

    if-ltz v0, :cond_27

    .line 476
    cmpl-float v0, p0, p2

    if-gtz v0, :cond_f

    .line 482
    return p0

    .line 477
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 479
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {p3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 478
    const-string v2, "%s is out of range of [%f, %f] (too high)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 475
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {p3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 474
    const-string v2, "%s is out of range of [%f, %f] (too low)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be NaN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentInRange(IIILjava/lang/String;)I
    .registers 7
    .param p0, "value"    # I
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "valueName"    # Ljava/lang/String;

    .line 532
    if-lt p0, p1, :cond_1d

    .line 536
    if-gt p0, p2, :cond_5

    .line 542
    return p0

    .line 537
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 538
    const-string v2, "%s is out of range of [%d, %d] (too high)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 535
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 534
    const-string v2, "%s is out of range of [%d, %d] (too low)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentInRange(JJJLjava/lang/String;)J
    .registers 10
    .param p0, "value"    # J
    .param p2, "lower"    # J
    .param p4, "upper"    # J
    .param p6, "valueName"    # Ljava/lang/String;

    .line 559
    cmp-long v0, p0, p2

    if-ltz v0, :cond_21

    .line 563
    cmp-long v0, p0, p4

    if-gtz v0, :cond_9

    .line 569
    return-wide p0

    .line 564
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 566
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p6, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 565
    const-string v2, "%s is out of range of [%d, %d] (too high)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 562
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {p6, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 561
    const-string v2, "%s is out of range of [%d, %d] (too low)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentIsSupported([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "supportedValues"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 684
    invoke-static {p1}, Lcom/android/x/uwb/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-static {p0}, Lcom/android/x/uwb/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-static {p0, p1}, Lcom/android/x/uwb/com/android/internal/util/Preconditions;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 691
    return-object p1

    .line 688
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 689
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentNonNegative(FLjava/lang/String;)F
    .registers 3
    .param p0, "value"    # F
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 408
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_6

    .line 412
    return p0

    .line 409
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentNonnegative(I)I
    .registers 2
    .param p0, "value"    # I

    .line 346
    if-ltz p0, :cond_3

    .line 350
    return p0

    .line 347
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist checkArgumentNonnegative(ILjava/lang/String;)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 330
    if-ltz p0, :cond_3

    .line 334
    return p0

    .line 331
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentNonnegative(J)J
    .registers 4
    .param p0, "value"    # J

    .line 361
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_7

    .line 365
    return-wide p0

    .line 362
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist checkArgumentNonnegative(JLjava/lang/String;)J
    .registers 5
    .param p0, "value"    # J
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 377
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_7

    .line 381
    return-wide p0

    .line 378
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentPositive(FLjava/lang/String;)F
    .registers 3
    .param p0, "value"    # F
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 423
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_6

    .line 427
    return p0

    .line 424
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArgumentPositive(ILjava/lang/String;)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 393
    if-lez p0, :cond_3

    .line 397
    return p0

    .line 394
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkArrayElementsInRange([FFFLjava/lang/String;)[F
    .registers 11
    .param p0, "value"    # [F
    .param p1, "lower"    # F
    .param p2, "upper"    # F
    .param p3, "valueName"    # Ljava/lang/String;

    .line 724
    const-string v0, "%s must not be null"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/x/uwb/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v1, p0

    if-ge v0, v1, :cond_83

    .line 727
    aget v1, p0, v0

    .line 729
    .local v1, "v":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_60

    .line 731
    cmpg-float v2, v1, p1

    if-ltz v2, :cond_40

    .line 735
    cmpl-float v2, v1, p2

    if-gtz v2, :cond_20

    .line 726
    .end local v1    # "v":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 736
    .restart local v1    # "v":F
    :cond_20
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 738
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {p3, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 737
    const-string v4, "%s[%d]: %f is out of range of [%f, %f] (too high)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 732
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 734
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {p3, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 733
    const-string v4, "%s[%d]: %f is out of range of [%f, %f] (too low)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 730
    :cond_60
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] must not be NaN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    .end local v0    # "i":I
    .end local v1    # "v":F
    :cond_83
    return-object p0
.end method

.method public static blacklist checkArrayElementsInRange([IIILjava/lang/String;)[I
    .registers 11
    .param p0, "value"    # [I
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "valueName"    # Ljava/lang/String;

    .line 760
    const-string v0, "%s must not be null"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/x/uwb/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v1, p0

    if-ge v0, v1, :cond_56

    .line 763
    aget v1, p0, v0

    .line 765
    .local v1, "v":I
    if-lt v1, p1, :cond_36

    .line 769
    if-gt v1, p2, :cond_16

    .line 762
    .end local v1    # "v":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 770
    .restart local v1    # "v":I
    :cond_16
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 772
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {p3, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 771
    const-string v4, "%s[%d]: %d is out of range of [%d, %d] (too high)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 766
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 768
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {p3, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 767
    const-string v4, "%s[%d]: %d is out of range of [%d, %d] (too low)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 776
    .end local v0    # "i":I
    .end local v1    # "v":I
    :cond_56
    return-object p0
.end method

.method public static blacklist checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 6
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            ")[TT;"
        }
    .end annotation

    .line 583
    .local p0, "value":[Ljava/lang/Object;, "[TT;"
    if-eqz p0, :cond_22

    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_21

    .line 588
    aget-object v1, p0, v0

    if-eqz v1, :cond_d

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 589
    :cond_d
    new-instance v1, Ljava/lang/NullPointerException;

    .line 590
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s[%d] must not be null"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 594
    .end local v0    # "i":I
    :cond_21
    return-object p0

    .line 584
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkByteArrayNotEmpty([BLjava/lang/String;)[B
    .registers 5
    .param p0, "value"    # [B
    .param p1, "valueName"    # Ljava/lang/String;

    .line 661
    if-eqz p0, :cond_1f

    .line 664
    array-length v0, p0

    if-eqz v0, :cond_6

    .line 667
    return-object p0

    .line 665
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkCallAuthorization(Z)V
    .registers 3
    .param p0, "expression"    # Z

    .line 253
    if-eqz p0, :cond_3

    .line 256
    return-void

    .line 254
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling identity is not authorized"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkCallAuthorization(ZLjava/lang/String;)V
    .registers 3
    .param p0, "expression"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 267
    if-eqz p0, :cond_3

    .line 270
    return-void

    .line 268
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist checkCallAuthorization(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .line 286
    if-eqz p0, :cond_3

    .line 289
    return-void

    .line 287
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkCallingUser(Z)V
    .registers 3
    .param p0, "expression"    # Z

    .line 299
    if-eqz p0, :cond_3

    .line 302
    return-void

    .line 300
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling user is not authorized"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .registers 8
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TC;",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .line 610
    .local p0, "value":Ljava/util/Collection;, "TC;"
    if-eqz p0, :cond_2d

    .line 614
    const-wide/16 v0, 0x0

    .line 615
    .local v0, "ctr":J
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 616
    .local v3, "elem":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_18

    .line 620
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 621
    .end local v3    # "elem":Ljava/lang/Object;, "TT;"
    goto :goto_8

    .line 617
    .restart local v3    # "elem":Ljava/lang/Object;, "TT;"
    :cond_18
    new-instance v2, Ljava/lang/NullPointerException;

    .line 618
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s[%d] must not be null"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 623
    .end local v3    # "elem":Ljava/lang/Object;, "TT;"
    :cond_2c
    return-object p0

    .line 611
    .end local v0    # "ctr":J
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkCollectionNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .registers 5
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 639
    .local p0, "value":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_22

    .line 642
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 645
    return-object p0

    .line 643
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkFlagsArgument(II)I
    .registers 5
    .param p0, "requestedFlags"    # I
    .param p1, "allowedFlags"    # I

    .line 311
    and-int v0, p0, p1

    if-ne v0, p0, :cond_5

    .line 317
    return p0

    .line 312
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested flags 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but only 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " are allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 154
    return-object p0

    .line 152
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static blacklist checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 176
    return-object p0

    .line 174
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "messageArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 192
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 195
    return-object p0

    .line 193
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkState(Z)V
    .registers 2
    .param p0, "expression"    # Z

    .line 207
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/x/uwb/com/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 208
    return-void
.end method

.method public static blacklist checkState(ZLjava/lang/String;)V
    .registers 3
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 221
    if-eqz p0, :cond_3

    .line 224
    return-void

    .line 222
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist checkState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "expression"    # Z
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "messageArgs"    # [Ljava/lang/Object;

    .line 240
    if-eqz p0, :cond_3

    .line 243
    return-void

    .line 241
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 95
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 98
    return-object p0

    .line 96
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 113
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 116
    return-object p0

    .line 114
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs blacklist checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "messageTemplate"    # Ljava/lang/String;
    .param p2, "messageArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 133
    .local p0, "string":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 136
    return-object p0

    .line 134
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 695
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 696
    return v0

    .line 698
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 699
    aget-object v2, p0, v1

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 700
    const/4 v0, 0x1

    return v0

    .line 698
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 703
    .end local v1    # "i":I
    :cond_15
    return v0
.end method

.method public static blacklist requireNonNullViaRavenwoodRule(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 784
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_3

    .line 788
    return-object p0

    .line 785
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation requires that a RavenwoodRule be configured to accurately define the expected test environment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
