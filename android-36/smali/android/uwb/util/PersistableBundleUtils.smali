.class public Landroid/uwb/util/PersistableBundleUtils;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getHashCode(Landroid/os/PersistableBundle;)I
    .registers 8
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 507
    if-nez p0, :cond_4

    .line 508
    const/4 v0, -0x1

    return v0

    .line 511
    :cond_4
    const/4 v0, 0x0

    .line 512
    .local v0, "iterativeHashcode":I
    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 513
    .local v1, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 514
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 515
    .local v4, "val":Ljava/lang/Object;
    instance-of v5, v4, Landroid/os/PersistableBundle;

    if-eqz v5, :cond_3f

    .line 516
    nop

    .line 517
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Landroid/os/PersistableBundle;

    invoke-static {v6}, Landroid/uwb/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v5, v3, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    goto :goto_4b

    .line 519
    :cond_3f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 521
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/Object;
    :goto_4b
    goto :goto_12

    .line 523
    :cond_4c
    return v0
.end method

.method public static blacklist isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .registers 10
    .param p0, "left"    # Landroid/os/PersistableBundle;
    .param p1, "right"    # Landroid/os/PersistableBundle;

    .line 530
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 531
    return v1

    .line 535
    :cond_8
    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_14

    .line 536
    return v3

    .line 539
    :cond_14
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 540
    return v3

    .line 543
    :cond_23
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 544
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 545
    .local v4, "leftVal":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 548
    .local v5, "rightVal":Ljava/lang/Object;
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 549
    goto :goto_2b

    .line 550
    :cond_46
    invoke-static {v4}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v5}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eq v6, v7, :cond_51

    .line 552
    return v3

    .line 553
    :cond_51
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 555
    return v3

    .line 557
    :cond_60
    instance-of v6, v4, Landroid/os/PersistableBundle;

    if-eqz v6, :cond_71

    .line 558
    move-object v6, v4

    check-cast v6, Landroid/os/PersistableBundle;

    move-object v7, v5

    check-cast v7, Landroid/os/PersistableBundle;

    invoke-static {v6, v7}, Landroid/uwb/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 559
    return v3

    .line 561
    :cond_71
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 562
    instance-of v6, v4, [Z

    if-eqz v6, :cond_8c

    .line 563
    move-object v6, v4

    check-cast v6, [Z

    move-object v7, v5

    check-cast v7, [Z

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 564
    return v3

    .line 566
    :cond_8c
    instance-of v6, v4, [D

    if-eqz v6, :cond_9d

    .line 567
    move-object v6, v4

    check-cast v6, [D

    move-object v7, v5

    check-cast v7, [D

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 568
    return v3

    .line 570
    :cond_9d
    instance-of v6, v4, [I

    if-eqz v6, :cond_ae

    .line 571
    move-object v6, v4

    check-cast v6, [I

    move-object v7, v5

    check-cast v7, [I

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 572
    return v3

    .line 574
    :cond_ae
    instance-of v6, v4, [J

    if-eqz v6, :cond_bf

    .line 575
    move-object v6, v4

    check-cast v6, [J

    move-object v7, v5

    check-cast v7, [J

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 576
    return v3

    .line 578
    :cond_bf
    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    move-object v7, v5

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 579
    return v3

    .line 582
    :cond_cc
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d3

    .line 583
    return v3

    .line 586
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "leftVal":Ljava/lang/Object;
    .end local v5    # "rightVal":Ljava/lang/Object;
    :cond_d3
    goto/16 :goto_2b

    .line 588
    :cond_d5
    return v1
.end method
