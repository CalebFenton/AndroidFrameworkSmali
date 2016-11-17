.class abstract Ljava/lang/AbstractStringBuilder;
.super Ljava/lang/Object;
.source "AbstractStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field count:I

.field value:[C


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 64
    new-array v0, p1, [C

    #@5
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@7
    .line 63
    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/AbstractStringBuilder;
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    .line 606
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@7
    .line 607
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@9
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@f
    aput-char p1, v0, v1

    #@11
    .line 608
    return-object p0
.end method

.method public append(D)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 699
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Ljava/lang/FloatingDecimal;->loadDouble(D)Ljava/lang/FloatingDecimal;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->appendTo(Ljava/lang/AbstractStringBuilder;)V

    #@b
    .line 702
    return-object p0
.end method

.method public append(F)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "f"    # F

    #@0
    .prologue
    .line 679
    invoke-static {}, Ljava/lang/FloatingDecimal;->getThreadLocalInstance()Ljava/lang/FloatingDecimal;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/FloatingDecimal;->loadFloat(F)Ljava/lang/FloatingDecimal;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Ljava/lang/FloatingDecimal;->appendTo(Ljava/lang/AbstractStringBuilder;)V

    #@b
    .line 682
    return-object p0
.end method

.method public append(I)Ljava/lang/AbstractStringBuilder;
    .locals 3
    .param p1, "i"    # I

    #@0
    .prologue
    .line 625
    const/high16 v2, -0x80000000

    #@2
    if-ne p1, v2, :cond_0

    #@4
    .line 626
    const-string/jumbo v2, "-2147483648"

    #@7
    invoke-virtual {p0, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@a
    .line 627
    return-object p0

    #@b
    .line 629
    :cond_0
    if-gez p1, :cond_1

    #@d
    neg-int v2, p1

    #@e
    invoke-static {v2}, Ljava/lang/Integer;->stringSize(I)I

    #@11
    move-result v2

    #@12
    add-int/lit8 v0, v2, 0x1

    #@14
    .line 631
    .local v0, "appendedLength":I
    :goto_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@16
    add-int v1, v2, v0

    #@18
    .line 632
    .local v1, "spaceNeeded":I
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@1b
    .line 633
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1d
    invoke-static {p1, v1, v2}, Ljava/lang/Integer;->getChars(II[C)V

    #@20
    .line 634
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@22
    .line 635
    return-object p0

    #@23
    .line 630
    .end local v0    # "appendedLength":I
    .end local v1    # "spaceNeeded":I
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->stringSize(I)I

    #@26
    move-result v0

    #@27
    .restart local v0    # "appendedLength":I
    goto :goto_0
.end method

.method public append(J)Ljava/lang/AbstractStringBuilder;
    .locals 5
    .param p1, "l"    # J

    #@0
    .prologue
    .line 652
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    cmp-long v2, p1, v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 653
    const-string/jumbo v2, "-9223372036854775808"

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@c
    .line 654
    return-object p0

    #@d
    .line 656
    :cond_0
    const-wide/16 v2, 0x0

    #@f
    cmp-long v2, p1, v2

    #@11
    if-gez v2, :cond_1

    #@13
    neg-long v2, p1

    #@14
    invoke-static {v2, v3}, Ljava/lang/Long;->stringSize(J)I

    #@17
    move-result v2

    #@18
    add-int/lit8 v0, v2, 0x1

    #@1a
    .line 658
    .local v0, "appendedLength":I
    :goto_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1c
    add-int v1, v2, v0

    #@1e
    .line 659
    .local v1, "spaceNeeded":I
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@21
    .line 660
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@23
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Long;->getChars(JI[C)V

    #@26
    .line 661
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@28
    .line 662
    return-object p0

    #@29
    .line 657
    .end local v0    # "appendedLength":I
    .end local v1    # "spaceNeeded":I
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->stringSize(J)I

    #@2c
    move-result v0

    #@2d
    .restart local v0    # "appendedLength":I
    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 438
    if-nez p1, :cond_0

    #@2
    .line 439
    const-string/jumbo p1, "null"

    #@5
    .line 440
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 441
    check-cast p1, Ljava/lang/String;

    #@b
    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 442
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 443
    check-cast p1, Ljava/lang/StringBuffer;

    #@16
    .end local p1    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 444
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@1e
    move-result v0

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-virtual {p0, p1, v1, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 478
    if-nez p1, :cond_0

    #@2
    .line 479
    const-string/jumbo p1, "null"

    #@5
    .line 480
    :cond_0
    if-ltz p2, :cond_1

    #@7
    if-le p2, p3, :cond_2

    #@9
    .line 481
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    #@b
    .line 482
    new-instance v5, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v6, "start "

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    const-string/jumbo v6, ", end "

    #@1e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    const-string/jumbo v6, ", s.length() "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    .line 483
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@30
    move-result v6

    #@31
    .line 482
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    .line 481
    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v4

    #@3d
    .line 480
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@40
    move-result v4

    #@41
    if-gt p3, v4, :cond_1

    #@43
    .line 484
    sub-int v2, p3, p2

    #@45
    .line 485
    .local v2, "len":I
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@47
    add-int/2addr v4, v2

    #@48
    invoke-virtual {p0, v4}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@4b
    .line 486
    instance-of v4, p1, Ljava/lang/String;

    #@4d
    if-eqz v4, :cond_4

    #@4f
    .line 487
    check-cast p1, Ljava/lang/String;

    #@51
    .end local p1    # "s":Ljava/lang/CharSequence;
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@53
    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@55
    invoke-virtual {p1, p2, p3, v4, v5}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@58
    .line 496
    :cond_3
    :goto_0
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5a
    add-int/2addr v4, v2

    #@5b
    iput v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5d
    .line 497
    return-object p0

    #@5e
    .line 488
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_4
    instance-of v4, p1, Ljava/lang/AbstractStringBuilder;

    #@60
    if-eqz v4, :cond_5

    #@62
    move-object v3, p1

    #@63
    .line 489
    check-cast v3, Ljava/lang/AbstractStringBuilder;

    #@65
    .line 490
    .local v3, "other":Ljava/lang/AbstractStringBuilder;
    iget-object v4, v3, Ljava/lang/AbstractStringBuilder;->value:[C

    #@67
    iget-object v5, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@69
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@6b
    invoke-static {v4, p2, v5, v6, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@6e
    goto :goto_0

    #@6f
    .line 492
    .end local v3    # "other":Ljava/lang/AbstractStringBuilder;
    :cond_5
    move v0, p2

    #@70
    .local v0, "i":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@72
    .local v1, "j":I
    :goto_1
    if-ge v0, p3, :cond_3

    #@74
    .line 493
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@76
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@79
    move-result v5

    #@7a
    aput-char v5, v4, v1

    #@7c
    .line 492
    add-int/lit8 v0, v0, 0x1

    #@7e
    add-int/lit8 v1, v1, 0x1

    #@80
    goto :goto_1
.end method

.method public append(Ljava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 392
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 415
    if-nez p1, :cond_0

    #@2
    const-string/jumbo p1, "null"

    #@5
    .line 416
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    .line 417
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@b
    add-int/2addr v1, v0

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@f
    .line 418
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@11
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@13
    const/4 v3, 0x0

    #@14
    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@17
    .line 419
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@19
    add-int/2addr v1, v0

    #@1a
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1c
    .line 420
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 426
    if-nez p1, :cond_0

    #@2
    .line 427
    const-string/jumbo v1, "null"

    #@5
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->append(Ljava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@8
    move-result-object v1

    #@9
    return-object v1

    #@a
    .line 428
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    #@d
    move-result v0

    #@e
    .line 429
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@10
    add-int/2addr v1, v0

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@14
    .line 430
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@16
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@18
    const/4 v3, 0x0

    #@19
    invoke-virtual {p1, v3, v0, v1, v2}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    #@1c
    .line 431
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1e
    add-int/2addr v1, v0

    #@1f
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@21
    .line 432
    return-object p0
.end method

.method public append(Z)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "b"    # Z

    #@0
    .prologue
    const/16 v3, 0x65

    #@2
    .line 570
    if-eqz p1, :cond_0

    #@4
    .line 571
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@6
    add-int/lit8 v0, v0, 0x4

    #@8
    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@b
    .line 572
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@d
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@f
    const/16 v2, 0x74

    #@11
    aput-char v2, v0, v1

    #@13
    .line 573
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@15
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    const/16 v2, 0x72

    #@1b
    aput-char v2, v0, v1

    #@1d
    .line 574
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1f
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@21
    add-int/lit8 v1, v1, 0x2

    #@23
    const/16 v2, 0x75

    #@25
    aput-char v2, v0, v1

    #@27
    .line 575
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@29
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2b
    add-int/lit8 v1, v1, 0x3

    #@2d
    aput-char v3, v0, v1

    #@2f
    .line 576
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@31
    add-int/lit8 v0, v0, 0x4

    #@33
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@35
    .line 586
    :goto_0
    return-object p0

    #@36
    .line 578
    :cond_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@38
    add-int/lit8 v0, v0, 0x5

    #@3a
    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@3d
    .line 579
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3f
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@41
    const/16 v2, 0x66

    #@43
    aput-char v2, v0, v1

    #@45
    .line 580
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@47
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@49
    add-int/lit8 v1, v1, 0x1

    #@4b
    const/16 v2, 0x61

    #@4d
    aput-char v2, v0, v1

    #@4f
    .line 581
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@51
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@53
    add-int/lit8 v1, v1, 0x2

    #@55
    const/16 v2, 0x6c

    #@57
    aput-char v2, v0, v1

    #@59
    .line 582
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@5b
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5d
    add-int/lit8 v1, v1, 0x3

    #@5f
    const/16 v2, 0x73

    #@61
    aput-char v2, v0, v1

    #@63
    .line 583
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@65
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@67
    add-int/lit8 v1, v1, 0x4

    #@69
    aput-char v3, v0, v1

    #@6b
    .line 584
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@6d
    add-int/lit8 v0, v0, 0x5

    #@6f
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@71
    goto :goto_0
.end method

.method public append([C)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "str"    # [C

    #@0
    .prologue
    .line 518
    array-length v0, p1

    #@1
    .line 519
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@3
    add-int/2addr v1, v0

    #@4
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@7
    .line 520
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@9
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@f
    .line 521
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@11
    add-int/2addr v1, v0

    #@12
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@14
    .line 522
    return-object p0
.end method

.method public append([CII)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "str"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 549
    if-lez p3, :cond_0

    #@2
    .line 550
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    add-int/2addr v0, p3

    #@5
    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@8
    .line 551
    :cond_0
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@a
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@c
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@f
    .line 552
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@11
    add-int/2addr v0, p3

    #@12
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@14
    .line 553
    return-object p0
.end method

.method public appendCodePoint(I)Ljava/lang/AbstractStringBuilder;
    .locals 3
    .param p1, "codePoint"    # I

    #@0
    .prologue
    .line 756
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    .line 758
    .local v0, "count":I
    invoke-static {p1}, Ljava/lang/Character;->isBmpCodePoint(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 759
    add-int/lit8 v1, v0, 0x1

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@d
    .line 760
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@f
    int-to-char v2, p1

    #@10
    aput-char v2, v1, v0

    #@12
    .line 761
    add-int/lit8 v1, v0, 0x1

    #@14
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@16
    .line 769
    :goto_0
    return-object p0

    #@17
    .line 762
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 763
    add-int/lit8 v1, v0, 0x2

    #@1f
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@22
    .line 764
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@24
    invoke-static {p1, v1, v0}, Ljava/lang/Character;->toSurrogates(I[CI)V

    #@27
    .line 765
    add-int/lit8 v1, v0, 0x2

    #@29
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2b
    goto :goto_0

    #@2c
    .line 767
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2e
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@31
    throw v1
.end method

.method public capacity()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 202
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@8
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@b
    throw v0

    #@c
    .line 204
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@e
    aget-char v0, v0, p1

    #@10
    return v0
.end method

.method public codePointAt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 229
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@8
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@b
    throw v0

    #@c
    .line 232
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@e
    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt([CI)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public codePointBefore(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 257
    add-int/lit8 v0, p1, -0x1

    #@2
    .line 258
    .local v0, "i":I
    if-ltz v0, :cond_0

    #@4
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@6
    if-lt v0, v1, :cond_1

    #@8
    .line 259
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@d
    throw v1

    #@e
    .line 261
    :cond_1
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@10
    invoke-static {v1, p1}, Ljava/lang/Character;->codePointBefore([CI)I

    #@13
    move-result v1

    #@14
    return v1
.end method

.method public codePointCount(II)I
    .locals 2
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    #@0
    .prologue
    .line 285
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-le p2, v0, :cond_1

    #@6
    .line 286
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 285
    :cond_1
    if-gt p1, p2, :cond_0

    #@e
    .line 288
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@10
    sub-int v1, p2, p1

    #@12
    invoke-static {v0, p1, v1}, Ljava/lang/Character;->codePointCountImpl([CII)I

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public delete(II)Ljava/lang/AbstractStringBuilder;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 721
    if-gez p1, :cond_0

    #@2
    .line 722
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@4
    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@7
    throw v1

    #@8
    .line 723
    :cond_0
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@a
    if-le p2, v1, :cond_1

    #@c
    .line 724
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@e
    .line 725
    :cond_1
    if-le p1, p2, :cond_2

    #@10
    .line 726
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@12
    invoke-direct {v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    #@15
    throw v1

    #@16
    .line 727
    :cond_2
    sub-int v0, p2, p1

    #@18
    .line 728
    .local v0, "len":I
    if-lez v0, :cond_3

    #@1a
    .line 729
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1c
    add-int v2, p1, v0

    #@1e
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@20
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@22
    sub-int/2addr v4, p2

    #@23
    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@26
    .line 730
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@28
    sub-int/2addr v1, v0

    #@29
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2b
    .line 732
    :cond_3
    return-object p0
.end method

.method public deleteCharAt(I)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "index"    # I

    #@0
    .prologue
    .line 791
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 792
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@8
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@b
    throw v0

    #@c
    .line 793
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@e
    add-int/lit8 v1, p1, 0x1

    #@10
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@12
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@14
    sub-int/2addr v3, p1

    #@15
    add-int/lit8 v3, v3, -0x1

    #@17
    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1a
    .line 794
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1c
    add-int/lit8 v0, v0, -0x1

    #@1e
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@20
    .line 795
    return-object p0
.end method

.method public ensureCapacity(I)V
    .locals 0
    .param p1, "minimumCapacity"    # I

    #@0
    .prologue
    .line 103
    if-lez p1, :cond_0

    #@2
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@5
    .line 102
    :cond_0
    return-void
.end method

.method ensureCapacityInternal(I)V
    .locals 1
    .param p1, "minimumCapacity"    # I

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2
    array-length v0, v0

    #@3
    sub-int v0, p1, v0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 114
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->expandCapacity(I)V

    #@a
    .line 111
    :cond_0
    return-void
.end method

.method expandCapacity(I)V
    .locals 2
    .param p1, "minimumCapacity"    # I

    #@0
    .prologue
    .line 122
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2
    array-length v1, v1

    #@3
    mul-int/lit8 v1, v1, 0x2

    #@5
    add-int/lit8 v0, v1, 0x2

    #@7
    .line 123
    .local v0, "newCapacity":I
    sub-int v1, v0, p1

    #@9
    if-gez v1, :cond_0

    #@b
    .line 124
    move v0, p1

    #@c
    .line 125
    :cond_0
    if-gez v0, :cond_2

    #@e
    .line 126
    if-gez p1, :cond_1

    #@10
    .line 127
    new-instance v1, Ljava/lang/OutOfMemoryError;

    #@12
    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    #@15
    throw v1

    #@16
    .line 128
    :cond_1
    const v0, 0x7fffffff

    #@19
    .line 130
    :cond_2
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1b
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@21
    .line 121
    return-void
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    #@0
    .prologue
    .line 350
    if-gez p1, :cond_0

    #@2
    .line 351
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@7
    throw v0

    #@8
    .line 352
    :cond_0
    if-ltz p2, :cond_1

    #@a
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@c
    if-le p2, v0, :cond_2

    #@e
    .line 353
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@10
    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@13
    throw v0

    #@14
    .line 354
    :cond_2
    if-le p1, p2, :cond_3

    #@16
    .line 355
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@18
    const-string/jumbo v1, "srcBegin > srcEnd"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 356
    :cond_3
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@21
    sub-int v1, p2, p1

    #@23
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@26
    .line 348
    return-void
.end method

.method final getValue()[C
    .locals 1

    #@0
    .prologue
    .line 1449
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2
    return-object v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1311
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->indexOf(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1332
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5
    .line 1333
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    move v4, v1

    #@e
    move v6, p2

    #@f
    .line 1332
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->indexOf([CII[CIII)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public insert(IC)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "offset"    # I
    .param p2, "c"    # C

    #@0
    .prologue
    .line 1190
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@7
    .line 1191
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@9
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@b
    add-int/lit8 v2, p1, 0x1

    #@d
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@f
    sub-int/2addr v3, p1

    #@10
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@13
    .line 1192
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@15
    aput-char p2, v0, p1

    #@17
    .line 1193
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1d
    .line 1194
    return-object p0
.end method

.method public insert(ID)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "d"    # D

    #@0
    .prologue
    .line 1290
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(IF)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "f"    # F

    #@0
    .prologue
    .line 1266
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(II)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "i"    # I

    #@0
    .prologue
    .line 1218
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(IJ)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "l"    # J

    #@0
    .prologue
    .line 1242
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Ljava/lang/AbstractStringBuilder;
    .locals 2
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1073
    if-nez p2, :cond_0

    #@2
    .line 1074
    const-string/jumbo p2, "null"

    #@5
    .line 1075
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 1076
    check-cast p2, Ljava/lang/String;

    #@b
    .end local p2    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 1077
    .restart local p2    # "s":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v0

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {p0, p1, p2, v1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Ljava/lang/AbstractStringBuilder;
    .locals 7
    .param p1, "dstOffset"    # I
    .param p2, "s"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 1127
    if-nez p2, :cond_0

    #@2
    .line 1128
    const-string/jumbo p2, "null"

    #@5
    .line 1129
    :cond_0
    if-ltz p1, :cond_1

    #@7
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    #@a
    move-result v3

    #@b
    if-le p1, v3, :cond_2

    #@d
    .line 1130
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "dstOffset "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 1131
    :cond_2
    if-ltz p3, :cond_3

    #@29
    if-gez p4, :cond_4

    #@2b
    .line 1132
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@2d
    .line 1133
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "start "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    const-string/jumbo v5, ", end "

    #@40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    const-string/jumbo v5, ", s.length() "

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 1134
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@52
    move-result v5

    #@53
    .line 1133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    .line 1132
    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v3

    #@5f
    .line 1131
    :cond_4
    if-gt p3, p4, :cond_3

    #@61
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@64
    move-result v3

    #@65
    if-gt p4, v3, :cond_3

    #@67
    .line 1135
    sub-int v2, p4, p3

    #@69
    .line 1136
    .local v2, "len":I
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@6b
    add-int/2addr v3, v2

    #@6c
    invoke-virtual {p0, v3}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@6f
    .line 1137
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@71
    iget-object v4, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@73
    add-int v5, p1, v2

    #@75
    .line 1138
    iget v6, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@77
    sub-int/2addr v6, p1

    #@78
    .line 1137
    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@7b
    .line 1139
    move v1, p3

    #@7c
    .local v1, "i":I
    move v0, p1

    #@7d
    .end local p1    # "dstOffset":I
    .local v0, "dstOffset":I
    :goto_0
    if-ge v1, p4, :cond_5

    #@7f
    .line 1140
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@81
    add-int/lit8 p1, v0, 0x1

    #@83
    .end local v0    # "dstOffset":I
    .restart local p1    # "dstOffset":I
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@86
    move-result v4

    #@87
    aput-char v4, v3, v0

    #@89
    .line 1139
    add-int/lit8 v1, v1, 0x1

    #@8b
    move v0, p1

    #@8c
    .end local p1    # "dstOffset":I
    .restart local v0    # "dstOffset":I
    goto :goto_0

    #@8d
    .line 1141
    :cond_5
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@8f
    add-int/2addr v3, v2

    #@90
    iput v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@92
    .line 1142
    return-object p0
.end method

.method public insert(ILjava/lang/Object;)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 966
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1002
    if-ltz p1, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    #@6
    move-result v1

    #@7
    if-le p1, v1, :cond_1

    #@9
    .line 1003
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@b
    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@e
    throw v1

    #@f
    .line 1004
    :cond_1
    if-nez p2, :cond_2

    #@11
    .line 1005
    const-string/jumbo p2, "null"

    #@14
    .line 1006
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@17
    move-result v0

    #@18
    .line 1007
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1a
    add-int/2addr v1, v0

    #@1b
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@1e
    .line 1008
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@20
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@22
    add-int v3, p1, v0

    #@24
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@26
    sub-int/2addr v4, p1

    #@27
    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@2a
    .line 1009
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@2c
    invoke-virtual {p2, v5, v0, v1, p1}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@2f
    .line 1010
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@31
    add-int/2addr v1, v0

    #@32
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@34
    .line 1011
    return-object p0
.end method

.method public insert(IZ)Ljava/lang/AbstractStringBuilder;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "b"    # Z

    #@0
    .prologue
    .line 1166
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->insert(ILjava/lang/String;)Ljava/lang/AbstractStringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public insert(I[C)Ljava/lang/AbstractStringBuilder;
    .locals 6
    .param p1, "offset"    # I
    .param p2, "str"    # [C

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1040
    if-ltz p1, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    #@6
    move-result v1

    #@7
    if-le p1, v1, :cond_1

    #@9
    .line 1041
    :cond_0
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    #@b
    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@e
    throw v1

    #@f
    .line 1042
    :cond_1
    array-length v0, p2

    #@10
    .line 1043
    .local v0, "len":I
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@12
    add-int/2addr v1, v0

    #@13
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@16
    .line 1044
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@18
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@1a
    add-int v3, p1, v0

    #@1c
    iget v4, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1e
    sub-int/2addr v4, p1

    #@1f
    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@22
    .line 1045
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@24
    invoke-static {p2, v5, v1, p1, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@27
    .line 1046
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@29
    add-int/2addr v1, v0

    #@2a
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2c
    .line 1047
    return-object p0
.end method

.method public insert(I[CII)Ljava/lang/AbstractStringBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "str"    # [C
    .param p3, "offset"    # I
    .param p4, "len"    # I

    #@0
    .prologue
    .line 932
    if-ltz p1, :cond_0

    #@2
    invoke-virtual {p0}, Ljava/lang/AbstractStringBuilder;->length()I

    #@5
    move-result v0

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 933
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@a
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@d
    throw v0

    #@e
    .line 934
    :cond_1
    if-ltz p3, :cond_2

    #@10
    if-gez p4, :cond_3

    #@12
    .line 935
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@14
    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "offset "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, ", len "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    const-string/jumbo v2, ", str.length "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 937
    array-length v2, p2

    #@37
    .line 936
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 935
    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0

    #@43
    .line 934
    :cond_3
    array-length v0, p2

    #@44
    sub-int/2addr v0, p4

    #@45
    if-gt p3, v0, :cond_2

    #@47
    .line 938
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@49
    add-int/2addr v0, p4

    #@4a
    invoke-virtual {p0, v0}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@4d
    .line 939
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@4f
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@51
    add-int v2, p1, p4

    #@53
    iget v3, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@55
    sub-int/2addr v3, p1

    #@56
    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@59
    .line 940
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@5b
    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@5e
    .line 941
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@60
    add-int/2addr v0, p4

    #@61
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@63
    .line 942
    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1355
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1376
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@3
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5
    .line 1377
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@8
    move-result-object v3

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v5

    #@d
    move v4, v1

    #@e
    move v6, p2

    #@f
    .line 1376
    invoke-static/range {v0 .. v6}, Ljava/lang/String;->lastIndexOf([CII[CIII)I

    #@12
    move-result v0

    #@13
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 311
    if-ltz p1, :cond_0

    #@3
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v0

    #@d
    .line 314
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@f
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@11
    invoke-static {v0, v2, v1, p1, p2}, Ljava/lang/Character;->offsetByCodePointsImpl([CIIII)I

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public replace(IILjava/lang/String;)Ljava/lang/AbstractStringBuilder;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 819
    if-gez p1, :cond_0

    #@3
    .line 820
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    #@5
    invoke-direct {v2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@8
    throw v2

    #@9
    .line 821
    :cond_0
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@b
    if-le p1, v2, :cond_1

    #@d
    .line 822
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    #@f
    const-string/jumbo v3, "start > length()"

    #@12
    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 823
    :cond_1
    if-le p1, p2, :cond_2

    #@18
    .line 824
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    #@1a
    const-string/jumbo v3, "start > end"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 826
    :cond_2
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@23
    if-le p2, v2, :cond_3

    #@25
    .line 827
    iget p2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@27
    .line 828
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@2a
    move-result v0

    #@2b
    .line 829
    .local v0, "len":I
    iget v2, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2d
    add-int/2addr v2, v0

    #@2e
    sub-int v3, p2, p1

    #@30
    sub-int v1, v2, v3

    #@32
    .line 830
    .local v1, "newCount":I
    invoke-virtual {p0, v1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@35
    .line 832
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@37
    iget-object v3, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@39
    add-int v4, p1, v0

    #@3b
    iget v5, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@3d
    sub-int/2addr v5, p2

    #@3e
    invoke-static {v2, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@41
    .line 833
    iget-object v2, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@43
    invoke-virtual {p3, v6, v0, v2, p1}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    #@46
    .line 834
    iput v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@48
    .line 835
    return-object p0
.end method

.method public reverse()Ljava/lang/AbstractStringBuilder;
    .locals 13

    #@0
    .prologue
    const v12, 0xdfff

    #@3
    const v11, 0xd800

    #@6
    .line 1404
    const/4 v2, 0x0

    #@7
    .line 1405
    .local v2, "hasSurrogate":Z
    iget v9, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@9
    add-int/lit8 v6, v9, -0x1

    #@b
    .line 1406
    .local v6, "n":I
    add-int/lit8 v9, v6, -0x1

    #@d
    shr-int/lit8 v5, v9, 0x1

    #@f
    .local v5, "j":I
    :goto_0
    if-ltz v5, :cond_3

    #@11
    .line 1407
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@13
    aget-char v7, v9, v5

    #@15
    .line 1408
    .local v7, "temp":C
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@17
    sub-int v10, v6, v5

    #@19
    aget-char v8, v9, v10

    #@1b
    .line 1409
    .local v8, "temp2":C
    if-nez v2, :cond_0

    #@1d
    .line 1410
    if-lt v7, v11, :cond_1

    #@1f
    if-gt v7, v12, :cond_1

    #@21
    const/4 v2, 0x1

    #@22
    .line 1413
    :cond_0
    :goto_1
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@24
    aput-char v8, v9, v5

    #@26
    .line 1414
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@28
    sub-int v10, v6, v5

    #@2a
    aput-char v7, v9, v10

    #@2c
    .line 1406
    add-int/lit8 v5, v5, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1411
    :cond_1
    if-lt v8, v11, :cond_2

    #@31
    if-gt v8, v12, :cond_2

    #@33
    const/4 v2, 0x1

    #@34
    goto :goto_1

    #@35
    :cond_2
    const/4 v2, 0x0

    #@36
    goto :goto_1

    #@37
    .line 1416
    .end local v7    # "temp":C
    .end local v8    # "temp2":C
    :cond_3
    if-eqz v2, :cond_5

    #@39
    .line 1418
    const/4 v3, 0x0

    #@3a
    .local v3, "i":I
    :goto_2
    iget v9, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@3c
    add-int/lit8 v9, v9, -0x1

    #@3e
    if-ge v3, v9, :cond_5

    #@40
    .line 1419
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@42
    aget-char v1, v9, v3

    #@44
    .line 1420
    .local v1, "c2":C
    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    #@47
    move-result v9

    #@48
    if-eqz v9, :cond_4

    #@4a
    .line 1421
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@4c
    add-int/lit8 v10, v3, 0x1

    #@4e
    aget-char v0, v9, v10

    #@50
    .line 1422
    .local v0, "c1":C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    #@53
    move-result v9

    #@54
    if-eqz v9, :cond_4

    #@56
    .line 1423
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@58
    add-int/lit8 v4, v3, 0x1

    #@5a
    .end local v3    # "i":I
    .local v4, "i":I
    aput-char v0, v9, v3

    #@5c
    .line 1424
    iget-object v9, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@5e
    aput-char v1, v9, v4

    #@60
    move v3, v4

    #@61
    .line 1418
    .end local v0    # "c1":C
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@63
    goto :goto_2

    #@64
    .line 1429
    .end local v1    # "c2":C
    .end local v3    # "i":I
    :cond_5
    return-object p0
.end method

.method public setCharAt(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    #@0
    .prologue
    .line 374
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 375
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@8
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@b
    throw v0

    #@c
    .line 376
    :cond_1
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@e
    aput-char p2, v0, p1

    #@10
    .line 373
    return-void
.end method

.method public setLength(I)V
    .locals 3
    .param p1, "newLength"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 172
    if-gez p1, :cond_0

    #@3
    .line 173
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@8
    throw v0

    #@9
    .line 174
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->ensureCapacityInternal(I)V

    #@c
    .line 176
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@e
    if-ge v0, p1, :cond_1

    #@10
    .line 177
    :goto_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@12
    if-ge v0, p1, :cond_2

    #@14
    .line 178
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@16
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@18
    aput-char v2, v0, v1

    #@1a
    .line 177
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    iput v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@20
    goto :goto_0

    #@21
    .line 180
    :cond_1
    iput p1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@23
    .line 171
    :cond_2
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 880
    invoke-virtual {p0, p1, p2}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    #@0
    .prologue
    .line 850
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/lang/AbstractStringBuilder;->substring(II)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 898
    if-gez p1, :cond_0

    #@2
    .line 899
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@7
    throw v0

    #@8
    .line 900
    :cond_0
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@a
    if-le p2, v0, :cond_1

    #@c
    .line 901
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@e
    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@11
    throw v0

    #@12
    .line 902
    :cond_1
    if-le p1, p2, :cond_2

    #@14
    .line 903
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@16
    sub-int v1, p2, p1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    #@1b
    throw v0

    #@1c
    .line 904
    :cond_2
    new-instance v0, Ljava/lang/String;

    #@1e
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@20
    sub-int v2, p2, p1

    #@22
    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    #@25
    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public trimToSize()V
    .locals 2

    #@0
    .prologue
    .line 141
    iget v0, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@2
    iget-object v1, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 142
    iget-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@9
    iget v1, p0, Ljava/lang/AbstractStringBuilder;->count:I

    #@b
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Ljava/lang/AbstractStringBuilder;->value:[C

    #@11
    .line 140
    :cond_0
    return-void
.end method
