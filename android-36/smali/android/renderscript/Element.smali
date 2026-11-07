.class public Landroid/renderscript/Element;
.super Landroid/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Element$DataType;,
        Landroid/renderscript/Element$DataKind;,
        Landroid/renderscript/Element$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mArraySizes:[I

.field greylist-max-o mElementNames:[Ljava/lang/String;

.field greylist-max-o mElements:[Landroid/renderscript/Element;

.field greylist-max-o mKind:Landroid/renderscript/Element$DataKind;

.field greylist-max-o mNormalized:Z

.field greylist-max-o mOffsetInBytes:[I

.field greylist-max-o mSize:I

.field greylist-max-o mType:Landroid/renderscript/Element$DataType;

.field greylist-max-o mVectorSize:I

.field greylist-max-o mVisibleElementMap:[I


# direct methods
.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 1103
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 1104
    return-void
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V
    .registers 9
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "dt"    # Landroid/renderscript/Element$DataType;
    .param p5, "dk"    # Landroid/renderscript/Element$DataKind;
    .param p6, "norm"    # Z
    .param p7, "size"    # I

    .line 1084
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 1085
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1f

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1f

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1f

    .line 1088
    const/4 v0, 0x3

    if-ne p7, v0, :cond_19

    .line 1089
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_23

    .line 1091
    :cond_19
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p7

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    goto :goto_23

    .line 1094
    :cond_1f
    iget v0, p4, Landroid/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    .line 1096
    :goto_23
    iput-object p4, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 1097
    iput-object p5, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 1098
    iput-boolean p6, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 1099
    iput p7, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 1100
    return-void
.end method

.method constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;[Landroid/renderscript/Element;[Ljava/lang/String;[I)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;
    .param p4, "e"    # [Landroid/renderscript/Element;
    .param p5, "n"    # [Ljava/lang/String;
    .param p6, "as"    # [I

    .line 1067
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 1068
    const/4 v0, 0x0

    iput v0, p0, Landroid/renderscript/Element;->mSize:I

    .line 1069
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 1070
    iput-object p4, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 1071
    iput-object p5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 1072
    iput-object p6, p0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 1073
    sget-object v0, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    iput-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 1074
    sget-object v0, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    iput-object v0, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 1075
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 1076
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1f
    iget-object v1, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_3d

    .line 1077
    iget-object v1, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/renderscript/Element;->mSize:I

    aput v2, v1, v0

    .line 1078
    iget v1, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/renderscript/Element;->mSize:I

    .line 1076
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1080
    .end local v0    # "ct":I
    :cond_3d
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    .line 1081
    return-void
.end method

.method public static whitelist ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 489
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 490
    monitor-enter p0

    .line 491
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 492
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    .line 494
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 496
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 588
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 589
    monitor-enter p0

    .line 590
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 591
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    .line 593
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 595
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_A_8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist BOOLEAN(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 321
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 322
    monitor-enter p0

    .line 323
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 324
    sget-object v0, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    .line 326
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 328
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist ELEMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 467
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 468
    monitor-enter p0

    .line 469
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 470
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_ELEMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    .line 472
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 474
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ELEMENT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 434
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 435
    monitor-enter p0

    .line 436
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 437
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    .line 439
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 441
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 654
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 655
    monitor-enter p0

    .line 656
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 657
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    .line 659
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 661
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 665
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 666
    monitor-enter p0

    .line 667
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 668
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    .line 670
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 672
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 676
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 677
    monitor-enter p0

    .line 678
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 679
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    .line 681
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 683
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_HALF_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 445
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 446
    monitor-enter p0

    .line 447
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 448
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    .line 450
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 452
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 687
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 688
    monitor-enter p0

    .line 689
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 690
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    .line 692
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 694
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 698
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 699
    monitor-enter p0

    .line 700
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 701
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    .line 703
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 705
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 709
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 710
    monitor-enter p0

    .line 711
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 712
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    .line 714
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 716
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 456
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 457
    monitor-enter p0

    .line 458
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 459
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    .line 461
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 463
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_F64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 720
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 721
    monitor-enter p0

    .line 722
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 723
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    .line 725
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 727
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 731
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 732
    monitor-enter p0

    .line 733
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 734
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    .line 736
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 738
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist F64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 742
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 743
    monitor-enter p0

    .line 744
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 745
    sget-object v0, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    .line 747
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 749
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist FONT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 577
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 578
    monitor-enter p0

    .line 579
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 580
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_FONT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    .line 582
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 584
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_FONT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 379
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 380
    monitor-enter p0

    .line 381
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 382
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    .line 384
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 386
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 852
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 853
    monitor-enter p0

    .line 854
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 855
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    .line 857
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 859
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 863
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 864
    monitor-enter p0

    .line 865
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 866
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    .line 868
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 870
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 874
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 875
    monitor-enter p0

    .line 876
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 877
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    .line 879
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 881
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SHORT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 401
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 402
    monitor-enter p0

    .line 403
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 404
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    .line 406
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 408
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 918
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 919
    monitor-enter p0

    .line 920
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 921
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    .line 923
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 925
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 929
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 930
    monitor-enter p0

    .line 931
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 932
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    .line 934
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 936
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 940
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 941
    monitor-enter p0

    .line 942
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 943
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    .line 945
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 947
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_INT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 423
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 424
    monitor-enter p0

    .line 425
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 426
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    .line 428
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 430
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 984
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 985
    monitor-enter p0

    .line 986
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 987
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    .line 989
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 991
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 995
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 996
    monitor-enter p0

    .line 997
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 998
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    .line 1000
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 1002
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 1006
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 1007
    monitor-enter p0

    .line 1008
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 1009
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    .line 1011
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 1013
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_LONG_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 357
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 358
    monitor-enter p0

    .line 359
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 360
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    .line 362
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 364
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_I8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 786
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 787
    monitor-enter p0

    .line 788
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 789
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    .line 791
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 793
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 797
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 798
    monitor-enter p0

    .line 799
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 800
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    .line 802
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 804
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist I8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 808
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 809
    monitor-enter p0

    .line 810
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 811
    sget-object v0, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    .line 813
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 815
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_CHAR_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 1041
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist MATRIX_2X2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 1056
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 1057
    monitor-enter p0

    .line 1058
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 1059
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_2X2:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    .line 1061
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 1063
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist MATRIX_3X3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 1045
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 1046
    monitor-enter p0

    .line 1047
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 1048
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_3X3:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    .line 1050
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 1052
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 1028
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 1029
    monitor-enter p0

    .line 1030
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 1031
    sget-object v0, Landroid/renderscript/Element$DataType;->MATRIX_4X4:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    .line 1033
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 1035
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 522
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 523
    monitor-enter p0

    .line 524
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 525
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_MESH:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    .line 527
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 529
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_MESH:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist PROGRAM_FRAGMENT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 533
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 534
    monitor-enter p0

    .line 535
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 536
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_FRAGMENT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    .line 538
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 540
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist PROGRAM_RASTER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 555
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 556
    monitor-enter p0

    .line 557
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 558
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_RASTER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    .line 560
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 562
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 566
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 567
    monitor-enter p0

    .line 568
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 569
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_STORE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    .line 571
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 573
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_STORE:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist PROGRAM_VERTEX(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 544
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 545
    monitor-enter p0

    .line 546
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 547
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_PROGRAM_VERTEX:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    .line 549
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 551
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist RGBA_4444(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 632
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 633
    monitor-enter p0

    .line 634
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 635
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    .line 637
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 639
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist RGBA_5551(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 621
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 622
    monitor-enter p0

    .line 623
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 624
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    .line 626
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 628
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist RGBA_8888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 643
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 644
    monitor-enter p0

    .line 645
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 646
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    .line 648
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 650
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist RGB_565(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 599
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 600
    monitor-enter p0

    .line 601
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 602
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    .line 604
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 606
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_565:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist RGB_888(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 610
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 611
    monitor-enter p0

    .line 612
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 613
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    .line 615
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 617
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_RGB_888:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist SAMPLER(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 500
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 501
    monitor-enter p0

    .line 502
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 503
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SAMPLER:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    .line 505
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 507
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SAMPLER:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist SCRIPT(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 511
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 512
    monitor-enter p0

    .line 513
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 514
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_SCRIPT:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    .line 516
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 518
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_SCRIPT:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist TYPE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 478
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 479
    monitor-enter p0

    .line 480
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 481
    sget-object v0, Landroid/renderscript/Element$DataType;->RS_TYPE:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    .line 483
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 485
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_TYPE:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U16(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 368
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 369
    monitor-enter p0

    .line 370
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 371
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    .line 373
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 375
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U16:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U16_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 819
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 820
    monitor-enter p0

    .line 821
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 822
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    .line 824
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 826
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U16_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 830
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 831
    monitor-enter p0

    .line 832
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 833
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    .line 835
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 837
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U16_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 841
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 842
    monitor-enter p0

    .line 843
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 844
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    .line 846
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 848
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_USHORT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 390
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 391
    monitor-enter p0

    .line 392
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 393
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    .line 395
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 397
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U32:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 885
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 886
    monitor-enter p0

    .line 887
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 888
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    .line 890
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 892
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 896
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 897
    monitor-enter p0

    .line 898
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 899
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    .line 901
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 903
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 907
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 908
    monitor-enter p0

    .line 909
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 910
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    .line 912
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 914
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UINT_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 412
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 413
    monitor-enter p0

    .line 414
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 415
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    .line 417
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 419
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U64:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 951
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 952
    monitor-enter p0

    .line 953
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 954
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    .line 956
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 958
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U64_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 962
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 963
    monitor-enter p0

    .line 964
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 965
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    .line 967
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 969
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U64_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 973
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 974
    monitor-enter p0

    .line 975
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 976
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    .line 978
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 980
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_ULONG_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 2
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 339
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_16

    .line 340
    monitor-enter p0

    .line 341
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    if-nez v0, :cond_11

    .line 342
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/renderscript/Element;->createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    .line 344
    :cond_11
    monitor-exit p0

    goto :goto_16

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 346
    :cond_16
    :goto_16
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_U8:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 753
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 754
    monitor-enter p0

    .line 755
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 756
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    .line 758
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 760
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 764
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 765
    monitor-enter p0

    .line 766
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 767
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    .line 769
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 771
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 775
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_17

    .line 776
    monitor-enter p0

    .line 777
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    if-nez v0, :cond_12

    .line 778
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    .line 780
    :cond_12
    monitor-exit p0

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0

    .line 782
    :cond_17
    :goto_17
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist YUV(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 3
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 1017
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_18

    .line 1018
    monitor-enter p0

    .line 1019
    :try_start_5
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    if-nez v0, :cond_13

    .line 1020
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    .line 1022
    :cond_13
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v0

    .line 1024
    :cond_18
    :goto_18
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mElement_YUV:Landroid/renderscript/Element;

    return-object v0
.end method

.method public static whitelist createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;
    .registers 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/renderscript/Element$DataKind;

    .line 1223
    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_L:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_A:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    if-eq p2, v0, :cond_25

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_1d

    goto :goto_25

    .line 1230
    :cond_1d
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported DataKind"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    :cond_25
    :goto_25
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-eq p1, v0, :cond_42

    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_3a

    goto :goto_42

    .line 1237
    :cond_3a
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Unsupported DataType"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_42
    :goto_42
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/renderscript/Element$DataType;

    const-string v1, "Bad kind and type combo"

    if-ne p1, v0, :cond_53

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_4d

    goto :goto_53

    .line 1240
    :cond_4d
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1242
    :cond_53
    :goto_53
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_62

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_5c

    goto :goto_62

    .line 1243
    :cond_5c
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_62
    :goto_62
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_71

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_6b

    goto :goto_71

    .line 1246
    :cond_6b
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_71
    :goto_71
    sget-object v0, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    if-ne p1, v0, :cond_80

    sget-object v0, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    if-ne p2, v0, :cond_7a

    goto :goto_80

    .line 1250
    :cond_7a
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_80
    :goto_80
    const/4 v0, 0x1

    .line 1254
    .local v0, "size":I
    invoke-virtual {p2}, Landroid/renderscript/Element$DataKind;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_ae

    move v6, v0

    goto :goto_95

    .line 1265
    :pswitch_8a
    const/4 v0, 0x2

    move v6, v0

    goto :goto_95

    .line 1262
    :pswitch_8d
    const/4 v0, 0x4

    .line 1263
    move v6, v0

    goto :goto_95

    .line 1259
    :pswitch_90
    const/4 v0, 0x3

    .line 1260
    move v6, v0

    goto :goto_95

    .line 1256
    :pswitch_93
    const/4 v0, 0x2

    .line 1257
    move v6, v0

    .line 1269
    .end local v0    # "size":I
    .local v6, "size":I
    :goto_95
    const/4 v5, 0x1

    .line 1270
    .local v5, "norm":Z
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v2, v0

    iget v4, p2, Landroid/renderscript/Element$DataKind;->mID:I

    move-object v1, p0

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .local v1, "rs":Landroid/renderscript/RenderScript;
    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v2

    .line 1271
    .local v2, "id":J
    move-object v4, v1

    .end local v1    # "rs":Landroid/renderscript/RenderScript;
    .local v4, "rs":Landroid/renderscript/RenderScript;
    new-instance v1, Landroid/renderscript/Element;

    move v7, v5

    move v8, v6

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "dt":Landroid/renderscript/Element$DataType;
    .end local p2    # "dk":Landroid/renderscript/Element$DataKind;
    .local v5, "dt":Landroid/renderscript/Element$DataType;
    .local v6, "dk":Landroid/renderscript/Element$DataKind;
    .local v7, "norm":Z
    .local v8, "size":I
    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    move-object p0, v1

    move-object v1, v4

    .end local v4    # "rs":Landroid/renderscript/RenderScript;
    .restart local v1    # "rs":Landroid/renderscript/RenderScript;
    return-object p0

    nop

    :pswitch_data_ae
    .packed-switch 0x3
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
    .end packed-switch
.end method

.method static greylist createUser(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;)Landroid/renderscript/Element;
    .registers 14
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;

    .line 1158
    sget-object v5, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 1159
    .local v5, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v6, 0x0

    .line 1160
    .local v6, "norm":Z
    const/4 v7, 0x1

    .line 1161
    .local v7, "vecSize":I
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v0, v0

    iget v9, v5, Landroid/renderscript/Element$DataKind;->mID:I

    move v10, v6

    move v11, v7

    move-object v6, p0

    move-wide v7, v0

    .end local v7    # "vecSize":I
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .local v6, "rs":Landroid/renderscript/RenderScript;
    .local v10, "norm":Z
    .local v11, "vecSize":I
    invoke-virtual/range {v6 .. v11}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v1

    .line 1162
    move-object v3, v6

    move v6, v10

    move v7, v11

    .end local v10    # "norm":Z
    .end local v11    # "vecSize":I
    .local v1, "id":J
    .local v3, "rs":Landroid/renderscript/RenderScript;
    .local v6, "norm":Z
    .restart local v7    # "vecSize":I
    new-instance v0, Landroid/renderscript/Element;

    move-object v4, p1

    .end local p1    # "dt":Landroid/renderscript/Element$DataType;
    .local v4, "dt":Landroid/renderscript/Element$DataType;
    invoke-direct/range {v0 .. v7}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    return-object v0
.end method

.method public static whitelist createVector(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;I)Landroid/renderscript/Element;
    .registers 12
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/renderscript/Element$DataType;
    .param p2, "size"    # I

    .line 1179
    const/4 v0, 0x2

    if-lt p2, v0, :cond_30

    const/4 v0, 0x4

    if-gt p2, v0, :cond_30

    .line 1183
    invoke-virtual {p1}, Landroid/renderscript/Element$DataType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 1204
    move-object v0, p0

    move-object v5, p1

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "dt":Landroid/renderscript/Element$DataType;
    .local v0, "rs":Landroid/renderscript/RenderScript;
    .local v5, "dt":Landroid/renderscript/Element$DataType;
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Cannot create vector of non-primitive type."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1197
    .end local v0    # "rs":Landroid/renderscript/RenderScript;
    .end local v5    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "dt":Landroid/renderscript/Element$DataType;
    :pswitch_17
    sget-object v6, Landroid/renderscript/Element$DataKind;->USER:Landroid/renderscript/Element$DataKind;

    .line 1198
    .local v6, "dk":Landroid/renderscript/Element$DataKind;
    const/4 v4, 0x0

    .line 1199
    .local v4, "norm":Z
    iget v0, p1, Landroid/renderscript/Element$DataType;->mID:I

    int-to-long v1, v0

    iget v3, v6, Landroid/renderscript/Element$DataKind;->mID:I

    move-object v0, p0

    move v5, p2

    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p2    # "size":I
    .restart local v0    # "rs":Landroid/renderscript/RenderScript;
    .local v5, "size":I
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v2

    .line 1200
    .local v2, "id":J
    new-instance v1, Landroid/renderscript/Element;

    move v7, v4

    move v8, v5

    move-object v5, p1

    move-object v4, v0

    .end local v0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "dt":Landroid/renderscript/Element$DataType;
    .local v4, "rs":Landroid/renderscript/RenderScript;
    .local v5, "dt":Landroid/renderscript/Element$DataType;
    .local v7, "norm":Z
    .local v8, "size":I
    invoke-direct/range {v1 .. v8}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;ZI)V

    move v4, v7

    .end local v7    # "norm":Z
    .restart local v0    # "rs":Landroid/renderscript/RenderScript;
    .local v4, "norm":Z
    return-object v1

    .line 1179
    .end local v0    # "rs":Landroid/renderscript/RenderScript;
    .end local v2    # "id":J
    .end local v4    # "norm":Z
    .end local v5    # "dt":Landroid/renderscript/Element$DataType;
    .end local v6    # "dk":Landroid/renderscript/Element$DataKind;
    .end local v8    # "size":I
    .restart local p0    # "rs":Landroid/renderscript/RenderScript;
    .restart local p1    # "dt":Landroid/renderscript/Element$DataType;
    .restart local p2    # "size":I
    :cond_30
    move-object v0, p0

    move-object v5, p1

    move v8, p2

    .line 1180
    .end local p0    # "rs":Landroid/renderscript/RenderScript;
    .end local p1    # "dt":Landroid/renderscript/Element$DataType;
    .end local p2    # "size":I
    .restart local v0    # "rs":Landroid/renderscript/RenderScript;
    .restart local v5    # "dt":Landroid/renderscript/Element$DataType;
    .restart local v8    # "size":I
    new-instance p0, Landroid/renderscript/RSIllegalArgumentException;

    const-string p1, "Vector size out of range 2-4."

    invoke-direct {p0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private greylist-max-o updateVisibleSubElements()V
    .registers 9

    .line 75
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-nez v0, :cond_5

    .line 76
    return-void

    .line 79
    :cond_5
    const/4 v0, 0x0

    .line 80
    .local v0, "noPaddingFieldCount":I
    iget-object v1, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v1, v1

    .line 82
    .local v1, "fieldCount":I
    const/4 v2, 0x0

    .local v2, "ct":I
    :goto_a
    const/16 v3, 0x23

    const/4 v4, 0x0

    if-ge v2, v1, :cond_1e

    .line 83
    iget-object v5, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_1b

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 82
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 87
    .end local v2    # "ct":I
    :cond_1e
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    .line 90
    const/4 v2, 0x0

    .restart local v2    # "ct":I
    const/4 v5, 0x0

    .local v5, "ctNoPadding":I
    :goto_24
    if-ge v2, v1, :cond_3a

    .line 91
    iget-object v6, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_37

    .line 92
    iget-object v6, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "ctNoPadding":I
    .local v7, "ctNoPadding":I
    aput v2, v6, v5

    move v5, v7

    .line 90
    .end local v7    # "ctNoPadding":I
    .restart local v5    # "ctNoPadding":I
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 95
    .end local v2    # "ct":I
    .end local v5    # "ctNoPadding":I
    :cond_3a
    return-void
.end method


# virtual methods
.method public whitelist getBytesSize()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    return v0
.end method

.method public whitelist getDataKind()Landroid/renderscript/Element$DataKind;
    .registers 2

    .line 310
    iget-object v0, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    return-object v0
.end method

.method public whitelist getDataType()Landroid/renderscript/Element$DataType;
    .registers 2

    .line 303
    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    return-object v0
.end method

.method public whitelist getSubElement(I)Landroid/renderscript/Element;
    .registers 4
    .param p1, "index"    # I

    .line 241
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1c

    .line 244
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 247
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 245
    :cond_14
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1c
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubElementArraySize(I)I
    .registers 4
    .param p1, "index"    # I

    .line 274
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1c

    .line 277
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 280
    iget-object v0, p0, Landroid/renderscript/Element;->mArraySizes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0

    .line 278
    :cond_14
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1c
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubElementCount()I
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_6

    .line 229
    const/4 v0, 0x0

    return v0

    .line 231
    :cond_6
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    return v0
.end method

.method public whitelist getSubElementName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 257
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1c

    .line 260
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 263
    iget-object v0, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 261
    :cond_14
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_1c
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubElementOffsetBytes(I)I
    .registers 4
    .param p1, "index"    # I

    .line 290
    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    if-eqz v0, :cond_1c

    .line 293
    if-ltz p1, :cond_14

    iget-object v0, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-ge p1, v0, :cond_14

    .line 296
    iget-object v0, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget-object v1, p0, Landroid/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0

    .line 294
    :cond_14
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1c
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getVectorSize()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public whitelist isCompatible(Landroid/renderscript/Element;)Z
    .registers 5
    .param p1, "e"    # Landroid/renderscript/Element;

    .line 1287
    invoke-virtual {p0, p1}, Landroid/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1288
    return v1

    .line 1295
    :cond_8
    iget v0, p0, Landroid/renderscript/Element;->mSize:I

    iget v2, p1, Landroid/renderscript/Element;->mSize:I

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    sget-object v2, Landroid/renderscript/Element$DataType;->NONE:Landroid/renderscript/Element$DataType;

    if-eq v0, v2, :cond_21

    iget-object v0, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    if-ne v0, v2, :cond_21

    iget v0, p0, Landroid/renderscript/Element;->mVectorSize:I

    iget v2, p1, Landroid/renderscript/Element;->mVectorSize:I

    if-ne v0, v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public whitelist isComplex()Z
    .registers 4

    .line 209
    iget-object v0, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 210
    return v1

    .line 212
    :cond_6
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_7
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 213
    iget-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    if-eqz v2, :cond_16

    .line 214
    const/4 v1, 0x1

    return v1

    .line 212
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 217
    .end local v0    # "ct":I
    :cond_19
    return v1
.end method

.method greylist-max-o updateFromNative()V
    .registers 10

    .line 1108
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 1111
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 1112
    .local v0, "dataBuffer":[I
    iget-object v1, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/renderscript/RenderScript;->nElementGetNativeData(J[I)V

    .line 1114
    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    move v1, v3

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    iput-boolean v1, p0, Landroid/renderscript/Element;->mNormalized:Z

    .line 1115
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Landroid/renderscript/Element;->mVectorSize:I

    .line 1116
    iput v2, p0, Landroid/renderscript/Element;->mSize:I

    .line 1117
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v1

    array-length v4, v1

    move v5, v2

    :goto_2a
    if-ge v5, v4, :cond_42

    aget-object v6, v1, v5

    .line 1118
    .local v6, "dt":Landroid/renderscript/Element$DataType;
    iget v7, v6, Landroid/renderscript/Element$DataType;->mID:I

    aget v8, v0, v2

    if-ne v7, v8, :cond_3f

    .line 1119
    iput-object v6, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    .line 1120
    iget-object v7, p0, Landroid/renderscript/Element;->mType:Landroid/renderscript/Element$DataType;

    iget v7, v7, Landroid/renderscript/Element$DataType;->mSize:I

    iget v8, p0, Landroid/renderscript/Element;->mVectorSize:I

    mul-int/2addr v7, v8

    iput v7, p0, Landroid/renderscript/Element;->mSize:I

    .line 1117
    .end local v6    # "dt":Landroid/renderscript/Element$DataType;
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 1123
    :cond_42
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v1

    array-length v4, v1

    :goto_47
    if-ge v2, v4, :cond_56

    aget-object v5, v1, v2

    .line 1124
    .local v5, "dk":Landroid/renderscript/Element$DataKind;
    iget v6, v5, Landroid/renderscript/Element$DataKind;->mID:I

    aget v7, v0, v3

    if-ne v6, v7, :cond_53

    .line 1125
    iput-object v5, p0, Landroid/renderscript/Element;->mKind:Landroid/renderscript/Element$DataKind;

    .line 1123
    .end local v5    # "dk":Landroid/renderscript/Element$DataKind;
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1129
    :cond_56
    const/4 v1, 0x4

    aget v1, v0, v1

    .line 1130
    .local v1, "numSubElements":I
    if-lez v1, :cond_ac

    .line 1131
    new-array v2, v1, [Landroid/renderscript/Element;

    iput-object v2, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    .line 1132
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 1133
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/renderscript/Element;->mArraySizes:[I

    .line 1134
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    .line 1136
    new-array v6, v1, [J

    .line 1137
    .local v6, "subElementIds":[J
    iget-object v3, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v7, p0, Landroid/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v8, p0, Landroid/renderscript/Element;->mArraySizes:[I

    invoke-virtual/range {v3 .. v8}, Landroid/renderscript/RenderScript;->nElementGetSubElements(J[J[Ljava/lang/String;[I)V

    .line 1138
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7d
    if-ge v2, v1, :cond_ac

    .line 1139
    iget-object v3, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    new-instance v4, Landroid/renderscript/Element;

    aget-wide v7, v6, v2

    iget-object v5, p0, Landroid/renderscript/Element;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v4, v7, v8, v5}, Landroid/renderscript/Element;-><init>(JLandroid/renderscript/RenderScript;)V

    aput-object v4, v3, v2

    .line 1140
    iget-object v3, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/renderscript/Element;->updateFromNative()V

    .line 1141
    iget-object v3, p0, Landroid/renderscript/Element;->mOffsetInBytes:[I

    iget v4, p0, Landroid/renderscript/Element;->mSize:I

    aput v4, v3, v2

    .line 1142
    iget v3, p0, Landroid/renderscript/Element;->mSize:I

    iget-object v4, p0, Landroid/renderscript/Element;->mElements:[Landroid/renderscript/Element;

    aget-object v4, v4, v2

    iget v4, v4, Landroid/renderscript/Element;->mSize:I

    iget-object v5, p0, Landroid/renderscript/Element;->mArraySizes:[I

    aget v5, v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p0, Landroid/renderscript/Element;->mSize:I

    .line 1138
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 1145
    .end local v2    # "i":I
    .end local v6    # "subElementIds":[J
    :cond_ac
    invoke-direct {p0}, Landroid/renderscript/Element;->updateVisibleSubElements()V

    .line 1146
    return-void
.end method
