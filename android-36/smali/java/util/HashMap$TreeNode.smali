.class final Ljava/util/HashMap$TreeNode;
.super Ljava/util/LinkedHashMap$Entry;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap$Entry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field greylist-max-o left:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o parent:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o prev:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o red:Z

.field greylist-max-o right:Ljava/util/HashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1964
    const-class v0, Ljava/util/HashMap;

    return-void
.end method

.method constructor greylist-max-o <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V
    .registers 5
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1971
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "val":Ljava/lang/Object;, "TV;"
    .local p4, "next":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/LinkedHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)V

    .line 1972
    return-void
.end method

.method static greylist-max-o balanceDeletion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2439
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    nop

    :goto_1
    if-eqz p1, :cond_ee

    if-ne p1, p0, :cond_7

    goto/16 :goto_ee

    .line 2441
    :cond_7
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    .local v1, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 2442
    iput-boolean v2, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2443
    return-object p1

    .line 2445
    :cond_10
    iget-boolean v0, p1, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v0, :cond_17

    .line 2446
    iput-boolean v2, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2447
    return-object p0

    .line 2449
    :cond_17
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v3, v0

    .local v3, "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, p1, :cond_87

    .line 2450
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v6, v0

    .local v6, "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_39

    iget-boolean v0, v6, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v0, :cond_39

    .line 2451
    iput-boolean v2, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2452
    iput-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2453
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2454
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_36

    move-object v0, v4

    goto :goto_38

    :cond_36
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    :goto_38
    move-object v6, v0

    .line 2456
    :cond_39
    if-nez v6, :cond_3d

    .line 2457
    move-object p1, v1

    goto :goto_1

    .line 2459
    :cond_3d
    iget-object v0, v6, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v0, "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v7, v6, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2460
    .local v7, "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v7, :cond_47

    iget-boolean v8, v7, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v8, :cond_4e

    :cond_47
    if-eqz v0, :cond_82

    iget-boolean v8, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v8, :cond_4e

    goto :goto_82

    .line 2466
    :cond_4e
    if-eqz v7, :cond_54

    iget-boolean v8, v7, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v8, :cond_67

    .line 2467
    :cond_54
    if-eqz v0, :cond_58

    .line 2468
    iput-boolean v2, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2469
    :cond_58
    iput-boolean v5, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2470
    invoke-static {p0, v6}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2471
    iget-object v5, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_64

    .line 2472
    goto :goto_66

    :cond_64
    iget-object v4, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    :goto_66
    move-object v6, v4

    .line 2474
    :cond_67
    if-eqz v6, :cond_78

    .line 2475
    if-nez v1, :cond_6d

    move v4, v2

    goto :goto_6f

    :cond_6d
    iget-boolean v4, v1, Ljava/util/HashMap$TreeNode;->red:Z

    :goto_6f
    iput-boolean v4, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2476
    iget-object v4, v6, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v7, v4

    if-eqz v4, :cond_78

    .line 2477
    iput-boolean v2, v7, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2479
    :cond_78
    if-eqz v1, :cond_80

    .line 2480
    iput-boolean v2, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2481
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2483
    :cond_80
    move-object p1, p0

    goto :goto_85

    .line 2462
    :cond_82
    :goto_82
    iput-boolean v5, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2463
    move-object p1, v1

    .line 2485
    .end local v0    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v7    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_85
    goto/16 :goto_1

    .line 2488
    .end local v6    # "xpr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_87
    if-eqz v3, :cond_9f

    iget-boolean v0, v3, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v0, :cond_9f

    .line 2489
    iput-boolean v2, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2490
    iput-boolean v5, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2491
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2492
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_9c

    move-object v0, v4

    goto :goto_9e

    :cond_9c
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_9e
    move-object v3, v0

    .line 2494
    :cond_9f
    if-nez v3, :cond_a4

    .line 2495
    move-object p1, v1

    goto/16 :goto_1

    .line 2497
    :cond_a4
    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .restart local v0    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v6, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2498
    .local v6, "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_ae

    iget-boolean v7, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v7, :cond_b5

    :cond_ae
    if-eqz v6, :cond_e9

    iget-boolean v7, v6, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v7, :cond_b5

    goto :goto_e9

    .line 2504
    :cond_b5
    if-eqz v0, :cond_bb

    iget-boolean v7, v0, Ljava/util/HashMap$TreeNode;->red:Z

    if-nez v7, :cond_ce

    .line 2505
    :cond_bb
    if-eqz v6, :cond_bf

    .line 2506
    iput-boolean v2, v6, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2507
    :cond_bf
    iput-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2508
    invoke-static {p0, v3}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2509
    iget-object v5, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_cb

    .line 2510
    goto :goto_cd

    :cond_cb
    iget-object v4, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    :goto_cd
    move-object v3, v4

    .line 2512
    :cond_ce
    if-eqz v3, :cond_df

    .line 2513
    if-nez v1, :cond_d4

    move v4, v2

    goto :goto_d6

    :cond_d4
    iget-boolean v4, v1, Ljava/util/HashMap$TreeNode;->red:Z

    :goto_d6
    iput-boolean v4, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2514
    iget-object v4, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v0, v4

    if-eqz v4, :cond_df

    .line 2515
    iput-boolean v2, v0, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2517
    :cond_df
    if-eqz v1, :cond_e7

    .line 2518
    iput-boolean v2, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2519
    invoke-static {p0, v1}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2521
    :cond_e7
    move-object p1, p0

    goto :goto_ec

    .line 2500
    :cond_e9
    :goto_e9
    iput-boolean v5, v3, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2501
    move-object p1, v1

    .line 2523
    .end local v0    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v6    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_ec
    goto/16 :goto_1

    .line 2440
    .end local v1    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v3    # "xpl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_ee
    :goto_ee
    return-object p0
.end method

.method static greylist-max-o balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2383
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2385
    :cond_3
    :goto_3
    iget-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v2, v1

    .local v2, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_c

    .line 2386
    iput-boolean v3, p1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2387
    return-object p1

    .line 2389
    :cond_c
    iget-boolean v1, v2, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v1, :cond_7a

    iget-object v1, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v4, v1

    .local v4, "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_17

    goto/16 :goto_7a

    .line 2391
    :cond_17
    iget-object v1, v4, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v5, v1

    .local v5, "xppl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v6, 0x0

    if-ne v2, v1, :cond_4d

    .line 2392
    iget-object v1, v4, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v7, v1

    .local v7, "xppr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_2e

    iget-boolean v1, v7, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v1, :cond_2e

    .line 2393
    iput-boolean v3, v7, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2394
    iput-boolean v3, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2395
    iput-boolean v0, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2396
    move-object p1, v4

    goto :goto_3

    .line 2399
    :cond_2e
    iget-object v1, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne p1, v1, :cond_40

    .line 2400
    move-object p1, v2

    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2401
    iget-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v6, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :goto_3f
    move-object v4, v6

    .line 2403
    :cond_40
    if-eqz v2, :cond_3

    .line 2404
    iput-boolean v3, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2405
    if-eqz v4, :cond_3

    .line 2406
    iput-boolean v0, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2407
    invoke-static {p0, v4}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    .line 2413
    .end local v7    # "xppr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_4d
    if-eqz v5, :cond_5b

    iget-boolean v1, v5, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v1, :cond_5b

    .line 2414
    iput-boolean v3, v5, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2415
    iput-boolean v3, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2416
    iput-boolean v0, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2417
    move-object p1, v4

    goto :goto_3

    .line 2420
    :cond_5b
    iget-object v1, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne p1, v1, :cond_6d

    .line 2421
    move-object p1, v2

    invoke-static {p0, v2}, Ljava/util/HashMap$TreeNode;->rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    .line 2422
    iget-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_6a

    goto :goto_6c

    :cond_6a
    iget-object v6, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    :goto_6c
    move-object v4, v6

    .line 2424
    :cond_6d
    if-eqz v2, :cond_3

    .line 2425
    iput-boolean v3, v2, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2426
    if-eqz v4, :cond_3

    .line 2427
    iput-boolean v0, v4, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2428
    invoke-static {p0, v4}, Ljava/util/HashMap$TreeNode;->rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    .line 2390
    .end local v4    # "xpp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "xppl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_7a
    :goto_7a
    return-object p0
.end method

.method static greylist-max-o checkInvariants(Ljava/util/HashMap$TreeNode;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 2532
    .local p0, "t":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .local v0, "tp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v1, p0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v1, "tl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v2, p0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2533
    .local v2, "tr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v3, p0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .local v3, "tb":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v4, p0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v4, Ljava/util/HashMap$TreeNode;

    .line 2534
    .local v4, "tn":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    if-eqz v3, :cond_14

    iget-object v6, v3, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    if-eq v6, p0, :cond_14

    .line 2535
    return v5

    .line 2536
    :cond_14
    if-eqz v4, :cond_1b

    iget-object v6, v4, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-eq v6, p0, :cond_1b

    .line 2537
    return v5

    .line 2538
    :cond_1b
    if-eqz v0, :cond_26

    iget-object v6, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eq p0, v6, :cond_26

    iget-object v6, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eq p0, v6, :cond_26

    .line 2539
    return v5

    .line 2540
    :cond_26
    if-eqz v1, :cond_33

    iget-object v6, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-ne v6, p0, :cond_32

    iget v6, v1, Ljava/util/HashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/HashMap$TreeNode;->hash:I

    if-le v6, v7, :cond_33

    .line 2541
    :cond_32
    return v5

    .line 2542
    :cond_33
    if-eqz v2, :cond_40

    iget-object v6, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-ne v6, p0, :cond_3f

    iget v6, v2, Ljava/util/HashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/HashMap$TreeNode;->hash:I

    if-ge v6, v7, :cond_40

    .line 2543
    :cond_3f
    return v5

    .line 2544
    :cond_40
    iget-boolean v6, p0, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v1, :cond_51

    iget-boolean v6, v1, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v2, :cond_51

    iget-boolean v6, v2, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    .line 2545
    return v5

    .line 2546
    :cond_51
    if-eqz v1, :cond_5a

    invoke-static {v1}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 2547
    return v5

    .line 2548
    :cond_5a
    if-eqz v2, :cond_63

    invoke-static {v2}, Ljava/util/HashMap$TreeNode;->checkInvariants(Ljava/util/HashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 2549
    return v5

    .line 2550
    :cond_63
    const/4 v5, 0x1

    return v5
.end method

.method static greylist-max-o moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1990
    .local p0, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local p1, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_2f

    if-eqz p0, :cond_2f

    array-length v0, p0

    move v1, v0

    .local v1, "n":I
    if-lez v0, :cond_2f

    .line 1991
    add-int/lit8 v0, v1, -0x1

    iget v2, p1, Ljava/util/HashMap$TreeNode;->hash:I

    and-int/2addr v0, v2

    .line 1992
    .local v0, "index":I
    aget-object v2, p0, v0

    check-cast v2, Ljava/util/HashMap$TreeNode;

    .line 1993
    .local v2, "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eq p1, v2, :cond_2e

    .line 1995
    aput-object p1, p0, v0

    .line 1996
    iget-object v3, p1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1997
    .local v3, "rp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v4, p1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    move-object v5, v4

    .local v5, "rn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-eqz v4, :cond_21

    .line 1998
    move-object v4, v5

    check-cast v4, Ljava/util/HashMap$TreeNode;

    iput-object v3, v4, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 1999
    :cond_21
    if-eqz v3, :cond_25

    .line 2000
    iput-object v5, v3, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2001
    :cond_25
    if-eqz v2, :cond_29

    .line 2002
    iput-object p1, v2, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2003
    :cond_29
    iput-object v2, p1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2004
    const/4 v4, 0x0

    iput-object v4, p1, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2006
    .end local v3    # "rp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "rn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_2e
    nop

    .line 2008
    .end local v0    # "index":I
    .end local v1    # "n":I
    .end local v2    # "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2f
    return-void
.end method

.method static greylist-max-o rotateLeft(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2348
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_29

    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    .local v1, "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_29

    .line 2349
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    iput-object v0, p1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v2, v0

    .local v2, "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 2350
    iput-object p1, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2351
    :cond_10
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1c

    .line 2352
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljava/util/HashMap$TreeNode;->red:Z

    goto :goto_25

    .line 2353
    :cond_1c
    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v0, p1, :cond_23

    .line 2354
    iput-object v1, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_25

    .line 2356
    :cond_23
    iput-object v1, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2357
    :goto_25
    iput-object p1, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2358
    iput-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2360
    .end local v1    # "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_29
    return-object p0
.end method

.method static greylist-max-o rotateRight(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2366
    .local p0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_29

    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v1, v0

    .local v1, "l":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_29

    .line 2367
    iget-object v0, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v0, p1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v2, v0

    .local v2, "lr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 2368
    iput-object p1, v2, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2369
    :cond_10
    iget-object v0, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v0, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1c

    .line 2370
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljava/util/HashMap$TreeNode;->red:Z

    goto :goto_25

    .line 2371
    :cond_1c
    iget-object v0, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne v0, p1, :cond_23

    .line 2372
    iput-object v1, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_25

    .line 2374
    :cond_23
    iput-object v1, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2375
    :goto_25
    iput-object p1, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2376
    iput-object v1, p1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2378
    .end local v1    # "l":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "lr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_29
    return-object p0
.end method

.method static greylist-max-o tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 2058
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 2059
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2060
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "d":I
    if-nez v0, :cond_29

    .line 2061
    .end local v1    # "d":I
    :cond_1b
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_27

    .line 2062
    const/4 v0, -0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x1

    :goto_28
    move v1, v0

    .line 2063
    .restart local v1    # "d":I
    :cond_29
    return v1
.end method


# virtual methods
.method final greylist-max-o find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;
    .registers 11
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2016
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 2019
    .local v0, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_1
    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v1, "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v2, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2020
    .local v2, "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget v3, v0, Ljava/util/HashMap$TreeNode;->hash:I

    move v4, v3

    .local v4, "ph":I
    if-le v3, p1, :cond_c

    .line 2021
    move-object v0, v1

    goto :goto_46

    .line 2022
    :cond_c
    if-ge v4, p1, :cond_10

    .line 2023
    move-object v0, v2

    goto :goto_46

    .line 2024
    :cond_10
    iget-object v3, v0, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "pk":Ljava/lang/Object;, "TK;"
    if-eq v3, p2, :cond_4a

    if-eqz p2, :cond_1e

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_4a

    .line 2026
    :cond_1e
    if-nez v1, :cond_22

    .line 2027
    move-object v0, v2

    goto :goto_46

    .line 2028
    :cond_22
    if-nez v2, :cond_26

    .line 2029
    move-object v0, v1

    goto :goto_46

    .line 2030
    :cond_26
    if-nez p3, :cond_2f

    .line 2031
    invoke-static {p2}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    move-object p3, v3

    if-eqz v3, :cond_3d

    .line 2032
    :cond_2f
    invoke-static {p3, p2, v5}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v6, v3

    .local v6, "dir":I
    if-eqz v3, :cond_3d

    .line 2033
    if-gez v6, :cond_3a

    move-object v3, v1

    goto :goto_3b

    :cond_3a
    move-object v3, v2

    :goto_3b
    move-object v0, v3

    .end local v0    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local v3, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_46

    .line 2034
    .end local v3    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v6    # "dir":I
    .restart local v0    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_3d
    invoke-virtual {v2, p1, p2, p3}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v3

    move-object v6, v3

    .local v6, "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_45

    .line 2035
    return-object v6

    .line 2037
    :cond_45
    move-object v0, v1

    .line 2038
    .end local v1    # "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v4    # "ph":I
    .end local v5    # "pk":Ljava/lang/Object;, "TK;"
    .end local v6    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_46
    if-nez v0, :cond_1

    .line 2039
    const/4 v1, 0x0

    return-object v1

    .line 2025
    .restart local v1    # "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "ph":I
    .restart local v5    # "pk":Ljava/lang/Object;, "TK;"
    :cond_4a
    :goto_4a
    return-object v0
.end method

.method final greylist-max-o getTreeNode(ILjava/lang/Object;)Ljava/util/HashMap$TreeNode;
    .registers 5
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2046
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p0

    :goto_a
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o putTreeVal(Ljava/util/HashMap;[Ljava/util/HashMap$Node;ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/HashMap$TreeNode;
    .registers 16
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;ITK;TV;)",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2133
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    .local p4, "k":Ljava/lang/Object;, "TK;"
    .local p5, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 2134
    .local v0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 2135
    .local v1, "searched":Z
    iget-object v2, p0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v2

    goto :goto_c

    :cond_b
    move-object v2, p0

    .line 2136
    .local v2, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_c
    move-object v3, v2

    .line 2138
    .local v3, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_d
    iget v4, v3, Ljava/util/HashMap$TreeNode;->hash:I

    move v5, v4

    .local v5, "ph":I
    if-le v4, p3, :cond_14

    .line 2139
    const/4 v4, -0x1

    .local v4, "dir":I
    goto :goto_59

    .line 2140
    .end local v4    # "dir":I
    :cond_14
    if-ge v5, p3, :cond_18

    .line 2141
    const/4 v4, 0x1

    .restart local v4    # "dir":I
    goto :goto_59

    .line 2142
    .end local v4    # "dir":I
    :cond_18
    iget-object v4, v3, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v6, v4

    .local v6, "pk":Ljava/lang/Object;, "TK;"
    if-eq v4, p4, :cond_88

    if-eqz p4, :cond_27

    invoke-virtual {p4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto/16 :goto_88

    .line 2144
    :cond_27
    if-nez v0, :cond_30

    .line 2145
    invoke-static {p4}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, v4

    if-eqz v4, :cond_37

    .line 2146
    :cond_30
    invoke-static {v0, p4, v6}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    move v7, v4

    .local v7, "dir":I
    if-nez v4, :cond_58

    .line 2147
    .end local v7    # "dir":I
    :cond_37
    if-nez v1, :cond_53

    .line 2149
    const/4 v1, 0x1

    .line 2150
    iget-object v4, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v7, v4

    .local v7, "ch":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v4, :cond_46

    .line 2151
    invoke-virtual {v7, p3, p4, v0}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v4

    move-object v8, v4

    .local v8, "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v4, :cond_52

    .end local v8    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_46
    iget-object v4, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move-object v7, v4

    if-eqz v4, :cond_53

    .line 2153
    invoke-virtual {v7, p3, p4, v0}, Ljava/util/HashMap$TreeNode;->find(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/HashMap$TreeNode;

    move-result-object v4

    move-object v8, v4

    .restart local v8    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v4, :cond_53

    .line 2154
    :cond_52
    return-object v8

    .line 2156
    .end local v7    # "ch":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v8    # "q":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_53
    invoke-static {p4, v6}, Ljava/util/HashMap$TreeNode;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .restart local v4    # "dir":I
    goto :goto_59

    .line 2146
    .end local v4    # "dir":I
    .local v7, "dir":I
    :cond_58
    move v4, v7

    .line 2159
    .end local v6    # "pk":Ljava/lang/Object;, "TK;"
    .end local v7    # "dir":I
    .restart local v4    # "dir":I
    :goto_59
    move-object v6, v3

    .line 2160
    .local v6, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-gtz v4, :cond_5f

    iget-object v7, v3, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_61

    :cond_5f
    iget-object v7, v3, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    :goto_61
    move-object v3, v7

    if-nez v7, :cond_87

    .line 2161
    iget-object v7, v6, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2162
    .local v7, "xpn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    invoke-virtual {p1, p3, p4, p5, v7}, Ljava/util/HashMap;->newTreeNode(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/HashMap$Node;)Ljava/util/HashMap$TreeNode;

    move-result-object v8

    .line 2163
    .local v8, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-gtz v4, :cond_6f

    .line 2164
    iput-object v8, v6, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_71

    .line 2166
    :cond_6f
    iput-object v8, v6, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2167
    :goto_71
    iput-object v8, v6, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2168
    iput-object v6, v8, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    iput-object v6, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2169
    if-eqz v7, :cond_7e

    .line 2170
    move-object v9, v7

    check-cast v9, Ljava/util/HashMap$TreeNode;

    iput-object v8, v9, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2171
    :cond_7e
    invoke-static {v2, v8}, Ljava/util/HashMap$TreeNode;->balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v9

    invoke-static {p2, v9}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    .line 2172
    const/4 v9, 0x0

    return-object v9

    .line 2174
    .end local v4    # "dir":I
    .end local v5    # "ph":I
    .end local v6    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v7    # "xpn":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    .end local v8    # "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_87
    goto :goto_d

    .line 2143
    .restart local v5    # "ph":I
    .local v6, "pk":Ljava/lang/Object;, "TK;"
    :cond_88
    :goto_88
    return-object v3
.end method

.method final greylist-max-o removeTreeNode(Ljava/util/HashMap;[Ljava/util/HashMap$Node;Z)V
    .registers 21
    .param p3, "movable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    .line 2190
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-eqz v1, :cond_10c

    array-length v2, v1

    move v3, v2

    .local v3, "n":I
    if-nez v2, :cond_e

    move-object/from16 v0, p1

    goto/16 :goto_10e

    .line 2192
    :cond_e
    add-int/lit8 v2, v3, -0x1

    iget v4, v0, Ljava/util/HashMap$TreeNode;->hash:I

    and-int/2addr v2, v4

    .line 2193
    .local v2, "index":I
    aget-object v4, v1, v2

    check-cast v4, Ljava/util/HashMap$TreeNode;

    .local v4, "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object v5, v4

    .line 2194
    .local v5, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v6, v0, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v6, Ljava/util/HashMap$TreeNode;

    .local v6, "succ":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v7, v0, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2195
    .local v7, "pred":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v7, :cond_24

    .line 2196
    move-object v4, v6

    aput-object v6, v1, v2

    goto :goto_26

    .line 2198
    :cond_24
    iput-object v6, v7, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2199
    :goto_26
    if-eqz v6, :cond_2a

    .line 2200
    iput-object v7, v6, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    .line 2201
    :cond_2a
    if-nez v4, :cond_2d

    .line 2202
    return-void

    .line 2203
    :cond_2d
    iget-object v8, v5, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_35

    .line 2204
    invoke-virtual {v5}, Ljava/util/HashMap$TreeNode;->root()Ljava/util/HashMap$TreeNode;

    move-result-object v5

    .line 2205
    :cond_35
    if-eqz v5, :cond_101

    if-eqz p3, :cond_4e

    iget-object v8, v5, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v8, :cond_4a

    iget-object v8, v5, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v9, v8

    .local v9, "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_46

    iget-object v8, v9, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-nez v8, :cond_4e

    :cond_46
    move/from16 v16, v2

    goto/16 :goto_103

    .end local v9    # "rl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_4a
    move/from16 v16, v2

    goto/16 :goto_103

    .line 2213
    :cond_4e
    move-object/from16 v8, p0

    .local v8, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v9, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .local v9, "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v10, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2214
    .local v10, "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v9, :cond_b3

    if-eqz v10, :cond_b3

    .line 2215
    move-object v12, v10

    .line 2216
    .local v12, "s":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_59
    iget-object v13, v12, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    move-object v14, v13

    .local v14, "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-eqz v13, :cond_60

    .line 2217
    move-object v12, v14

    goto :goto_59

    .line 2218
    :cond_60
    iget-boolean v13, v12, Ljava/util/HashMap$TreeNode;->red:Z

    .local v13, "c":Z
    iget-boolean v15, v8, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v15, v12, Ljava/util/HashMap$TreeNode;->red:Z

    iput-boolean v13, v8, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2219
    iget-object v15, v12, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2220
    .local v15, "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iget-object v11, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2221
    .local v11, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-ne v12, v10, :cond_75

    .line 2222
    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2223
    iput-object v8, v12, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    move/from16 v16, v2

    goto :goto_8f

    .line 2226
    :cond_75
    iget-object v0, v12, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2227
    .local v0, "sp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    iput-object v0, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-eqz v0, :cond_87

    .line 2228
    move/from16 v16, v2

    .end local v2    # "index":I
    .local v16, "index":I
    iget-object v2, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v12, v2, :cond_84

    .line 2229
    iput-object v8, v0, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_89

    .line 2231
    :cond_84
    iput-object v8, v0, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    goto :goto_89

    .line 2227
    .end local v16    # "index":I
    .restart local v2    # "index":I
    :cond_87
    move/from16 v16, v2

    .line 2233
    .end local v2    # "index":I
    .restart local v16    # "index":I
    :goto_89
    iput-object v10, v12, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v10, :cond_8f

    .line 2234
    iput-object v12, v10, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2236
    .end local v0    # "sp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_8f
    :goto_8f
    const/4 v0, 0x0

    iput-object v0, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2237
    iput-object v15, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-eqz v15, :cond_98

    .line 2238
    iput-object v8, v15, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2239
    :cond_98
    iput-object v9, v12, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-eqz v9, :cond_9e

    .line 2240
    iput-object v12, v9, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2241
    :cond_9e
    iput-object v11, v12, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    if-nez v11, :cond_a4

    .line 2242
    move-object v5, v12

    goto :goto_ad

    .line 2243
    :cond_a4
    iget-object v0, v11, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v8, v0, :cond_ab

    .line 2244
    iput-object v12, v11, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_ad

    .line 2246
    :cond_ab
    iput-object v12, v11, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2247
    :goto_ad
    if-eqz v15, :cond_b1

    .line 2248
    move-object v0, v15

    .local v0, "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_b2

    .line 2250
    .end local v0    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_b1
    move-object v0, v8

    .line 2251
    .end local v11    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v12    # "s":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v13    # "c":Z
    .end local v14    # "sl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v15    # "sr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .restart local v0    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_b2
    goto :goto_be

    .line 2214
    .end local v0    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "index":I
    .restart local v2    # "index":I
    :cond_b3
    move/from16 v16, v2

    .line 2252
    .end local v2    # "index":I
    .restart local v16    # "index":I
    if-eqz v9, :cond_b9

    .line 2253
    move-object v0, v9

    .restart local v0    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_be

    .line 2254
    .end local v0    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_b9
    if-eqz v10, :cond_bd

    .line 2255
    move-object v0, v10

    .restart local v0    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    goto :goto_be

    .line 2257
    .end local v0    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_bd
    move-object v0, v8

    .line 2258
    .restart local v0    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_be
    if-eq v0, v8, :cond_db

    .line 2259
    iget-object v2, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v2, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2260
    .local v2, "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_cb

    .line 2261
    move-object v5, v0

    const/4 v11, 0x0

    iput-boolean v11, v0, Ljava/util/HashMap$TreeNode;->red:Z

    goto :goto_d4

    .line 2262
    :cond_cb
    iget-object v11, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v8, v11, :cond_d2

    .line 2263
    iput-object v0, v2, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_d4

    .line 2265
    :cond_d2
    iput-object v0, v2, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2266
    :goto_d4
    const/4 v11, 0x0

    iput-object v11, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    iput-object v11, v8, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v11, v8, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2269
    .end local v2    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_db
    iget-boolean v2, v8, Ljava/util/HashMap$TreeNode;->red:Z

    if-eqz v2, :cond_e1

    move-object v2, v5

    goto :goto_e5

    :cond_e1
    invoke-static {v5, v0}, Ljava/util/HashMap$TreeNode;->balanceDeletion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v2

    .line 2271
    .local v2, "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_e5
    if-ne v0, v8, :cond_fb

    .line 2272
    iget-object v11, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2273
    .restart local v11    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v12, 0x0

    iput-object v12, v8, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2274
    if-eqz v11, :cond_fb

    .line 2275
    iget-object v13, v11, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    if-ne v8, v13, :cond_f5

    .line 2276
    iput-object v12, v11, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_fb

    .line 2277
    :cond_f5
    iget-object v13, v11, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    if-ne v8, v13, :cond_fb

    .line 2278
    iput-object v12, v11, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2281
    .end local v11    # "pp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_fb
    :goto_fb
    if-eqz p3, :cond_100

    .line 2282
    invoke-static {v1, v2}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    .line 2283
    :cond_100
    return-void

    .line 2205
    .end local v0    # "replacement":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v8    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v9    # "pl":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v10    # "pr":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "index":I
    .local v2, "index":I
    :cond_101
    move/from16 v16, v2

    .line 2210
    .end local v2    # "index":I
    .restart local v16    # "index":I
    :goto_103
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v2

    aput-object v2, v1, v16

    .line 2211
    return-void

    .line 2190
    .end local v3    # "n":I
    .end local v4    # "first":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v5    # "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v6    # "succ":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v7    # "pred":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v16    # "index":I
    :cond_10c
    move-object/from16 v0, p1

    .line 2191
    :goto_10e
    return-void
.end method

.method final greylist-max-o root()Ljava/util/HashMap$TreeNode;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1978
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object v0, p0

    .line 1979
    .local v0, "r":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_1
    iget-object v1, v0, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    move-object v2, v1

    .local v2, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_7

    .line 1980
    return-object v0

    .line 1981
    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method final greylist-max-o split(Ljava/util/HashMap;[Ljava/util/HashMap$Node;II)V
    .registers 15
    .param p3, "index"    # I
    .param p4, "bit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;[",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;II)V"
        }
    .end annotation

    .line 2296
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    .local p2, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v0, p0

    .line 2298
    .local v0, "b":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, "loHead":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 2299
    .local v2, "loTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "hiHead":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    .line 2300
    .local v4, "hiTail":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    .local v5, "lc":I
    const/4 v6, 0x0

    .line 2301
    .local v6, "hc":I
    move-object v7, v0

    .local v7, "e":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_8
    if-eqz v7, :cond_2f

    .line 2302
    iget-object v8, v7, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v8, Ljava/util/HashMap$TreeNode;

    .line 2303
    .local v8, "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v9, 0x0

    iput-object v9, v7, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2304
    iget v9, v7, Ljava/util/HashMap$TreeNode;->hash:I

    and-int/2addr v9, p4

    if-nez v9, :cond_22

    .line 2305
    iput-object v2, v7, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-nez v2, :cond_1c

    .line 2306
    move-object v1, v7

    goto :goto_1e

    .line 2308
    :cond_1c
    iput-object v7, v2, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2309
    :goto_1e
    move-object v2, v7

    .line 2310
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 2313
    :cond_22
    iput-object v4, v7, Ljava/util/HashMap$TreeNode;->prev:Ljava/util/HashMap$TreeNode;

    if-nez v4, :cond_28

    .line 2314
    move-object v3, v7

    goto :goto_2a

    .line 2316
    :cond_28
    iput-object v7, v4, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    .line 2317
    :goto_2a
    move-object v4, v7

    .line 2318
    add-int/lit8 v6, v6, 0x1

    .line 2301
    :goto_2d
    move-object v7, v8

    goto :goto_8

    .line 2322
    .end local v7    # "e":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v8    # "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_2f
    const/4 v7, 0x6

    if-eqz v1, :cond_42

    .line 2323
    if-gt v5, v7, :cond_3b

    .line 2324
    invoke-virtual {v1, p1}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v8

    aput-object v8, p2, p3

    goto :goto_42

    .line 2326
    :cond_3b
    aput-object v1, p2, p3

    .line 2327
    if-eqz v3, :cond_42

    .line 2328
    invoke-virtual {v1, p2}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    .line 2331
    :cond_42
    :goto_42
    if-eqz v3, :cond_58

    .line 2332
    if-gt v6, v7, :cond_4f

    .line 2333
    add-int v7, p3, p4

    invoke-virtual {v3, p1}, Ljava/util/HashMap$TreeNode;->untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;

    move-result-object v8

    aput-object v8, p2, v7

    goto :goto_58

    .line 2335
    :cond_4f
    add-int v7, p3, p4

    aput-object v3, p2, v7

    .line 2336
    if-eqz v1, :cond_58

    .line 2337
    invoke-virtual {v3, p2}, Ljava/util/HashMap$TreeNode;->treeify([Ljava/util/HashMap$Node;)V

    .line 2340
    :cond_58
    :goto_58
    return-void
.end method

.method final greylist-max-o treeify([Ljava/util/HashMap$Node;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2070
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "tab":[Ljava/util/HashMap$Node;, "[Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v0, 0x0

    .line 2071
    .local v0, "root":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    move-object v1, p0

    .local v1, "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_2
    if-eqz v1, :cond_5b

    .line 2072
    iget-object v2, v1, Ljava/util/HashMap$TreeNode;->next:Ljava/util/HashMap$Node;

    check-cast v2, Ljava/util/HashMap$TreeNode;

    .line 2073
    .local v2, "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, v1, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    iput-object v3, v1, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    .line 2074
    if-nez v0, :cond_16

    .line 2075
    iput-object v3, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2076
    const/4 v3, 0x0

    iput-boolean v3, v1, Ljava/util/HashMap$TreeNode;->red:Z

    .line 2077
    move-object v0, v1

    goto :goto_58

    .line 2080
    :cond_16
    iget-object v3, v1, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2081
    .local v3, "k":Ljava/lang/Object;, "TK;"
    iget v4, v1, Ljava/util/HashMap$TreeNode;->hash:I

    .line 2082
    .local v4, "h":I
    const/4 v5, 0x0

    .line 2083
    .local v5, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v0

    .line 2085
    .local v6, "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_1c
    iget-object v7, v6, Ljava/util/HashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2086
    .local v7, "pk":Ljava/lang/Object;, "TK;"
    iget v8, v6, Ljava/util/HashMap$TreeNode;->hash:I

    move v9, v8

    .local v9, "ph":I
    if-le v8, v4, :cond_25

    .line 2087
    const/4 v8, -0x1

    .local v8, "dir":I
    goto :goto_3f

    .line 2088
    .end local v8    # "dir":I
    :cond_25
    if-ge v9, v4, :cond_29

    .line 2089
    const/4 v8, 0x1

    .restart local v8    # "dir":I
    goto :goto_3f

    .line 2090
    .end local v8    # "dir":I
    :cond_29
    if-nez v5, :cond_32

    .line 2091
    invoke-static {v3}, Ljava/util/HashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v8

    move-object v5, v8

    if-eqz v8, :cond_39

    .line 2092
    :cond_32
    invoke-static {v5, v3, v7}, Ljava/util/HashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    move v10, v8

    .local v10, "dir":I
    if-nez v8, :cond_3e

    .line 2093
    .end local v10    # "dir":I
    :cond_39
    invoke-static {v3, v7}, Ljava/util/HashMap$TreeNode;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .restart local v8    # "dir":I
    goto :goto_3f

    .line 2092
    .end local v8    # "dir":I
    .restart local v10    # "dir":I
    :cond_3e
    move v8, v10

    .line 2095
    .end local v10    # "dir":I
    .restart local v8    # "dir":I
    :goto_3f
    move-object v10, v6

    .line 2096
    .local v10, "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    if-gtz v8, :cond_45

    iget-object v11, v6, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_47

    :cond_45
    iget-object v11, v6, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    :goto_47
    move-object v6, v11

    if-nez v11, :cond_5a

    .line 2097
    iput-object v10, v1, Ljava/util/HashMap$TreeNode;->parent:Ljava/util/HashMap$TreeNode;

    .line 2098
    if-gtz v8, :cond_51

    .line 2099
    iput-object v1, v10, Ljava/util/HashMap$TreeNode;->left:Ljava/util/HashMap$TreeNode;

    goto :goto_53

    .line 2101
    :cond_51
    iput-object v1, v10, Ljava/util/HashMap$TreeNode;->right:Ljava/util/HashMap$TreeNode;

    .line 2102
    :goto_53
    invoke-static {v0, v1}, Ljava/util/HashMap$TreeNode;->balanceInsertion(Ljava/util/HashMap$TreeNode;Ljava/util/HashMap$TreeNode;)Ljava/util/HashMap$TreeNode;

    move-result-object v0

    .line 2103
    nop

    .line 2071
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "h":I
    .end local v5    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v7    # "pk":Ljava/lang/Object;, "TK;"
    .end local v8    # "dir":I
    .end local v9    # "ph":I
    .end local v10    # "xp":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :goto_58
    move-object v1, v2

    goto :goto_2

    .line 2105
    .restart local v3    # "k":Ljava/lang/Object;, "TK;"
    .restart local v4    # "h":I
    .restart local v5    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_5a
    goto :goto_1c

    .line 2108
    .end local v1    # "x":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v2    # "next":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "h":I
    .end local v5    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "p":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    :cond_5b
    invoke-static {p1, v0}, Ljava/util/HashMap$TreeNode;->moveRootToFront([Ljava/util/HashMap$Node;Ljava/util/HashMap$TreeNode;)V

    .line 2109
    return-void
.end method

.method final greylist-max-o untreeify(Ljava/util/HashMap;)Ljava/util/HashMap$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TK;TV;>;)",
            "Ljava/util/HashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2116
    .local p0, "this":Ljava/util/HashMap$TreeNode;, "Ljava/util/HashMap$TreeNode<TK;TV;>;"
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "hd":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 2117
    .local v1, "tl":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    move-object v2, p0

    .local v2, "q":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :goto_3
    if-eqz v2, :cond_14

    .line 2118
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->replacementNode(Ljava/util/HashMap$Node;Ljava/util/HashMap$Node;)Ljava/util/HashMap$Node;

    move-result-object v3

    .line 2119
    .local v3, "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    if-nez v1, :cond_e

    .line 2120
    move-object v0, v3

    goto :goto_10

    .line 2122
    :cond_e
    iput-object v3, v1, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    .line 2123
    :goto_10
    move-object v1, v3

    .line 2117
    .end local v3    # "p":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    iget-object v2, v2, Ljava/util/HashMap$Node;->next:Ljava/util/HashMap$Node;

    goto :goto_3

    .line 2125
    .end local v2    # "q":Ljava/util/HashMap$Node;, "Ljava/util/HashMap$Node<TK;TV;>;"
    :cond_14
    return-object v0
.end method
