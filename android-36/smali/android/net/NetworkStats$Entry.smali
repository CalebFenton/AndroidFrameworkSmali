.class public Landroid/net/NetworkStats$Entry;
.super Ljava/lang/Object;
.source "NetworkStats.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public greylist-max-o defaultNetwork:I

.field public greylist-max-r iface:Ljava/lang/String;

.field public greylist-max-o metered:I

.field public greylist-max-r operations:J

.field public greylist-max-o roaming:I

.field public greylist rxBytes:J

.field public greylist-max-r rxPackets:J

.field public greylist set:I

.field public greylist-max-r tag:I

.field public greylist txBytes:J

.field public greylist-max-r txPackets:J

.field public greylist uid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetKeys(Landroid/net/NetworkStats$Entry;Ljava/lang/String;IIIIII)Landroid/net/NetworkStats$Entry;
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/net/NetworkStats$Entry;->setKeys(Ljava/lang/String;IIIIII)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetValues(Landroid/net/NetworkStats$Entry;JJJJJ)Landroid/net/NetworkStats$Entry;
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/net/NetworkStats$Entry;->setValues(JJJJJ)Landroid/net/NetworkStats$Entry;

    move-result-object p0

    return-object p0
.end method

.method public constructor greylist-max-r <init>()V
    .registers 19

    .line 309
    sget-object v1, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 311
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;IIIIIIJJJJJ)V
    .registers 34
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I
    .param p8, "rxBytes"    # J
    .param p10, "rxPackets"    # J
    .param p12, "txBytes"    # J
    .param p14, "txPackets"    # J
    .param p16, "operations"    # J

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 340
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 341
    move/from16 v2, p2

    iput v2, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 342
    move/from16 v3, p3

    iput v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 343
    move/from16 v4, p4

    iput v4, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 344
    move/from16 v5, p5

    iput v5, v0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 345
    move/from16 v6, p6

    iput v6, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 346
    move/from16 v7, p7

    iput v7, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 347
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 348
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 349
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 350
    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 351
    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 352
    return-void
.end method

.method private blacklist setKeys(Ljava/lang/String;IIIIII)Landroid/net/NetworkStats$Entry;
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "metered"    # I
    .param p6, "roaming"    # I
    .param p7, "defaultNetwork"    # I

    .line 471
    iput-object p1, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 472
    iput p2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 473
    iput p3, p0, Landroid/net/NetworkStats$Entry;->set:I

    .line 474
    iput p4, p0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 475
    iput p5, p0, Landroid/net/NetworkStats$Entry;->metered:I

    .line 476
    iput p6, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 477
    iput p7, p0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    .line 478
    return-object p0
.end method

.method private blacklist setValues(JJJJJ)Landroid/net/NetworkStats$Entry;
    .registers 11
    .param p1, "rxBytes"    # J
    .param p3, "rxPackets"    # J
    .param p5, "txBytes"    # J
    .param p7, "txPackets"    # J
    .param p9, "operations"    # J

    .line 489
    iput-wide p1, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 490
    iput-wide p3, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 491
    iput-wide p5, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 492
    iput-wide p7, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 493
    iput-wide p9, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 494
    return-object p0
.end method


# virtual methods
.method public greylist-max-o add(Landroid/net/NetworkStats$Entry;)V
    .registers 6
    .param p1, "another"    # Landroid/net/NetworkStats$Entry;

    .line 367
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 368
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 369
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 370
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 371
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v2, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 372
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 518
    instance-of v0, p1, Landroid/net/NetworkStats$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    .line 519
    move-object v0, p1

    check-cast v0, Landroid/net/NetworkStats$Entry;

    .line 520
    .local v0, "e":Landroid/net/NetworkStats$Entry;
    iget v2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, v3, :cond_60

    iget v2, p0, Landroid/net/NetworkStats$Entry;->set:I

    iget v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    if-ne v2, v3, :cond_60

    iget v2, p0, Landroid/net/NetworkStats$Entry;->tag:I

    iget v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne v2, v3, :cond_60

    iget v2, p0, Landroid/net/NetworkStats$Entry;->metered:I

    iget v3, v0, Landroid/net/NetworkStats$Entry;->metered:I

    if-ne v2, v3, :cond_60

    iget v2, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    iget v3, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    if-ne v2, v3, :cond_60

    iget v2, p0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    iget v3, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    if-ne v2, v3, :cond_60

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_60

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_60

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_60

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_60

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_60

    iget-object v2, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 524
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_60

    const/4 v1, 0x1

    goto :goto_61

    :cond_60
    nop

    .line 520
    :goto_61
    return v1

    .line 526
    .end local v0    # "e":Landroid/net/NetworkStats$Entry;
    :cond_62
    return v1
.end method

.method public whitelist getDefaultNetwork()I
    .registers 2

    .line 424
    iget v0, p0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    return v0
.end method

.method public blacklist getIface()Ljava/lang/String;
    .registers 2

    .line 379
    iget-object v0, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMetered()I
    .registers 2

    .line 408
    iget v0, p0, Landroid/net/NetworkStats$Entry;->metered:I

    return v0
.end method

.method public whitelist getOperations()J
    .registers 3

    .line 459
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    return-wide v0
.end method

.method public whitelist getRoaming()I
    .registers 2

    .line 416
    iget v0, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    return v0
.end method

.method public whitelist getRxBytes()J
    .registers 3

    .line 431
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    return-wide v0
.end method

.method public whitelist getRxPackets()J
    .registers 3

    .line 438
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    return-wide v0
.end method

.method public whitelist getSet()I
    .registers 2

    .line 393
    iget v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    return v0
.end method

.method public whitelist getTag()I
    .registers 2

    .line 400
    iget v0, p0, Landroid/net/NetworkStats$Entry;->tag:I

    return v0
.end method

.method public whitelist getTxBytes()J
    .registers 3

    .line 445
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    return-wide v0
.end method

.method public whitelist getTxPackets()J
    .registers 3

    .line 452
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    return-wide v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 386
    iget v0, p0, Landroid/net/NetworkStats$Entry;->uid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 532
    iget v0, p0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/net/NetworkStats$Entry;->set:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/net/NetworkStats$Entry;->metered:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 5

    .line 361
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public greylist-max-o isNegative()Z
    .registers 5

    .line 356
    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    iget-wide v0, p0, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, " set="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->set:I

    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v1, " metered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->metered:I

    invoke-static {v2}, Landroid/net/NetworkStats;->meteredToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v1, " roaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->roaming:I

    invoke-static {v2}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v1, " defaultNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    invoke-static {v2}, Landroid/net/NetworkStats;->defaultNetworkToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v1, " rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    const-string v1, " rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 509
    const-string v1, " txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 510
    const-string v1, " txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 511
    const-string v1, " operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
