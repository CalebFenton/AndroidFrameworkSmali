.class public Ljava/util/zip/Inflater;
.super Ljava/lang/Object;
.source "Inflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/Inflater$InflaterZStreamRef;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o bytesRead:J

.field private greylist-max-o bytesWritten:J

.field private greylist-max-r finished:Z

.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private blacklist input:Ljava/nio/ByteBuffer;

.field private blacklist inputArray:[B

.field private blacklist inputConsumed:I

.field private blacklist inputLim:I

.field private blacklist inputPos:I

.field private greylist-max-r needDict:Z

.field private blacklist outputConsumed:I

.field private final blacklist zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smend(J)V
    .registers 2

    invoke-static {p0, p1}, Ljava/util/zip/Inflater;->end(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 99
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 151
    return-void
.end method

.method public constructor whitelist test-api <init>(Z)V
    .registers 6
    .param p1, "nowrap"    # Z

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Ljava/util/zip/ZipUtils;->defaultBuf:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Ljava/util/zip/Inflater;->input:Ljava/nio/ByteBuffer;

    .line 111
    nop

    .line 112
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    .line 141
    new-instance v0, Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-static {p1}, Ljava/util/zip/Inflater;->init(Z)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/util/zip/Inflater$InflaterZStreamRef;-><init>(Ljava/util/zip/Inflater;JLjava/util/zip/Inflater-IA;)V

    iput-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    .line 143
    iget-object v0, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private static native greylist-max-o end(J)V
.end method

.method private greylist-max-o ensureOpen()V
    .registers 5

    .line 728
    nop

    .line 729
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 731
    return-void

    .line 730
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Inflater has been closed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o getAdler(J)I
.end method

.method private native blacklist inflateBufferBuffer(JJIJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method

.method private native blacklist inflateBufferBytes(JJI[BII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method

.method private native blacklist inflateBytesBuffer(J[BIIJI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method

.method private native blacklist inflateBytesBytes(J[BII[BII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation
.end method

.method private static native greylist-max-o init(Z)J
.end method

.method private static native greylist-max-o reset(J)V
.end method

.method private static native greylist-max-o setDictionary(J[BII)V
.end method

.method private static native blacklist setDictionaryBuffer(JJI)V
.end method


# virtual methods
.method public whitelist test-api end()V
    .registers 3

    .line 717
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 718
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/Inflater$InflaterZStreamRef;->clean()V

    .line 720
    iget-object v1, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 721
    sget-object v1, Ljava/util/zip/ZipUtils;->defaultBuf:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Ljava/util/zip/Inflater;->input:Ljava/nio/ByteBuffer;

    .line 722
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/Inflater;->inputArray:[B

    .line 723
    monitor-exit v0

    .line 724
    return-void

    .line 723
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist test-api finished()Z
    .registers 3

    .line 337
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 338
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->finished:Z

    monitor-exit v0

    return v1

    .line 339
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api getAdler()I
    .registers 4

    .line 634
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 635
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 636
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/zip/Inflater;->getAdler(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 637
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api getBytesRead()J
    .registers 4

    .line 660
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 661
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 662
    iget-wide v1, p0, Ljava/util/zip/Inflater;->bytesRead:J

    monitor-exit v0

    return-wide v1

    .line 663
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api getBytesWritten()J
    .registers 4

    .line 686
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 687
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 688
    iget-wide v1, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    monitor-exit v0

    return-wide v1

    .line 689
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api getRemaining()I
    .registers 5

    .line 299
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 300
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/Inflater;->input:Ljava/nio/ByteBuffer;

    .line 301
    .local v1, "input":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_d

    iget v2, p0, Ljava/util/zip/Inflater;->inputLim:I

    iget v3, p0, Ljava/util/zip/Inflater;->inputPos:I

    sub-int/2addr v2, v3

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    :goto_11
    monitor-exit v0

    return v2

    .line 302
    .end local v1    # "input":Ljava/nio/ByteBuffer;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist test-api getTotalIn()I
    .registers 3

    .line 650
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api getTotalOut()I
    .registers 3

    .line 676
    invoke-virtual {p0}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api inflate(Ljava/nio/ByteBuffer;)I
    .registers 22
    .param p1, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 514
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_197

    .line 517
    iget-object v11, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v11

    .line 518
    :try_start_d
    invoke-direct {v1}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 519
    iget-object v0, v1, Ljava/util/zip/Inflater;->input:Ljava/nio/ByteBuffer;

    move-object v12, v0

    .line 522
    .local v12, "input":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v13, v0

    .line 523
    .local v13, "outputPos":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v13

    const/4 v14, 0x0

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v9
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_194

    .line 525
    .local v9, "outputRem":I
    if-nez v12, :cond_74

    .line 526
    :try_start_24
    iget v5, v1, Ljava/util/zip/Inflater;->inputPos:I
    :try_end_26
    .catch Ljava/util/zip/DataFormatException; {:try_start_24 .. :try_end_26} :catch_178
    .catchall {:try_start_24 .. :try_end_26} :catchall_194

    .line 528
    .local v5, "inputPos":I
    :try_start_26
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 529
    move-object v0, v10

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2
    :try_end_33
    .catch Ljava/util/zip/DataFormatException; {:try_start_26 .. :try_end_33} :catch_6c
    .catchall {:try_start_26 .. :try_end_33} :catchall_194

    move-wide v15, v2

    .line 531
    .local v15, "outputAddress":J
    :try_start_34
    iget-object v0, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v2

    iget-object v4, v1, Ljava/util/zip/Inflater;->inputArray:[B

    iget v0, v1, Ljava/util/zip/Inflater;->inputLim:I

    sub-int v6, v0, v5

    int-to-long v7, v13

    add-long/2addr v7, v15

    invoke-direct/range {v1 .. v9}, Ljava/util/zip/Inflater;->inflateBytesBuffer(J[BIIJI)J

    move-result-wide v2
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_4b

    .line 535
    .local v2, "result":J
    :try_start_46
    invoke-static {v10}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 536
    nop

    .line 537
    .end local v15    # "outputAddress":J
    goto :goto_6a

    .line 535
    .end local v2    # "result":J
    .restart local v15    # "outputAddress":J
    :catchall_4b
    move-exception v0

    invoke-static {v10}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 536
    nop

    .end local v5    # "inputPos":I
    .end local v9    # "outputRem":I
    .end local v12    # "input":Ljava/nio/ByteBuffer;
    .end local v13    # "outputPos":I
    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 538
    .end local v15    # "outputAddress":J
    .restart local v5    # "inputPos":I
    .restart local v9    # "outputRem":I
    .restart local v12    # "input":Ljava/nio/ByteBuffer;
    .restart local v13    # "outputPos":I
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :cond_51
    invoke-static {v10}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 539
    .local v7, "outputArray":[B
    invoke-static {v10}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 540
    .local v0, "outputOffset":I
    iget-object v2, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v2

    iget-object v4, v1, Ljava/util/zip/Inflater;->inputArray:[B

    iget v6, v1, Ljava/util/zip/Inflater;->inputLim:I

    sub-int/2addr v6, v5

    add-int v8, v0, v13

    invoke-direct/range {v1 .. v9}, Ljava/util/zip/Inflater;->inflateBytesBytes(J[BII[BII)J

    move-result-wide v2
    :try_end_6a
    .catch Ljava/util/zip/DataFormatException; {:try_start_46 .. :try_end_6a} :catch_6c
    .catchall {:try_start_46 .. :try_end_6a} :catchall_194

    .line 547
    .end local v0    # "outputOffset":I
    .end local v7    # "outputArray":[B
    .restart local v2    # "result":J
    :goto_6a
    goto/16 :goto_127

    .line 544
    .end local v2    # "result":J
    :catch_6c
    move-exception v0

    .line 545
    .local v0, "e":Ljava/util/zip/DataFormatException;
    :try_start_6d
    iget v2, v1, Ljava/util/zip/Inflater;->inputConsumed:I

    add-int/2addr v2, v5

    iput v2, v1, Ljava/util/zip/Inflater;->inputPos:I

    .line 546
    nop

    .end local v9    # "outputRem":I
    .end local v12    # "input":Ljava/nio/ByteBuffer;
    .end local v13    # "outputPos":I
    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 549
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .end local v5    # "inputPos":I
    .restart local v9    # "outputRem":I
    .restart local v12    # "input":Ljava/nio/ByteBuffer;
    .restart local v13    # "outputPos":I
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :cond_74
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v15, v0

    .line 550
    .local v15, "inputPos":I
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v15

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v6
    :try_end_82
    .catch Ljava/util/zip/DataFormatException; {:try_start_6d .. :try_end_82} :catch_178
    .catchall {:try_start_6d .. :try_end_82} :catchall_194

    .line 552
    .local v6, "inputRem":I
    :try_start_82
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 553
    move-object v0, v12

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2
    :try_end_8f
    .catch Ljava/util/zip/DataFormatException; {:try_start_82 .. :try_end_8f} :catch_16f
    .catchall {:try_start_82 .. :try_end_8f} :catchall_194

    move-wide/from16 v16, v2

    .line 555
    .local v16, "inputAddress":J
    :try_start_91
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 556
    move-object v0, v10

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2
    :try_end_9e
    .catchall {:try_start_91 .. :try_end_9e} :catchall_d7

    move-wide/from16 v18, v2

    .line 558
    .local v18, "outputAddress":J
    :try_start_a0
    iget-object v0, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v2

    int-to-long v4, v15

    add-long v4, v16, v4

    int-to-long v7, v13

    add-long v7, v18, v7

    invoke-direct/range {v1 .. v9}, Ljava/util/zip/Inflater;->inflateBufferBuffer(JJIJI)J

    move-result-wide v2
    :try_end_b0
    .catchall {:try_start_a0 .. :try_end_b0} :catchall_b5

    .line 562
    .restart local v2    # "result":J
    :try_start_b0
    invoke-static {v10}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 563
    nop

    .line 564
    .end local v18    # "outputAddress":J
    goto :goto_d2

    .line 562
    .end local v2    # "result":J
    .restart local v18    # "outputAddress":J
    :catchall_b5
    move-exception v0

    invoke-static {v10}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 563
    nop

    .end local v6    # "inputRem":I
    .end local v9    # "outputRem":I
    .end local v12    # "input":Ljava/nio/ByteBuffer;
    .end local v13    # "outputPos":I
    .end local v15    # "inputPos":I
    .end local v16    # "inputAddress":J
    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 565
    .end local v18    # "outputAddress":J
    .restart local v6    # "inputRem":I
    .restart local v9    # "outputRem":I
    .restart local v12    # "input":Ljava/nio/ByteBuffer;
    .restart local v13    # "outputPos":I
    .restart local v15    # "inputPos":I
    .restart local v16    # "inputAddress":J
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :cond_bb
    invoke-static {v10}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 566
    .restart local v7    # "outputArray":[B
    invoke-static {v10}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 567
    .local v0, "outputOffset":I
    iget-object v2, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v2

    int-to-long v4, v15

    add-long v4, v16, v4

    add-int v8, v0, v13

    invoke-direct/range {v1 .. v9}, Ljava/util/zip/Inflater;->inflateBufferBytes(JJI[BII)J

    move-result-wide v2
    :try_end_d2
    .catchall {:try_start_b0 .. :try_end_d2} :catchall_d7

    .line 572
    .end local v0    # "outputOffset":I
    .end local v7    # "outputArray":[B
    .restart local v2    # "result":J
    :goto_d2
    :try_start_d2
    invoke-static {v12}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 573
    nop

    .line 574
    .end local v16    # "inputAddress":J
    goto :goto_126

    .line 572
    .end local v2    # "result":J
    .restart local v16    # "inputAddress":J
    :catchall_d7
    move-exception v0

    invoke-static {v12}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 573
    nop

    .end local v6    # "inputRem":I
    .end local v9    # "outputRem":I
    .end local v12    # "input":Ljava/nio/ByteBuffer;
    .end local v13    # "outputPos":I
    .end local v15    # "inputPos":I
    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 575
    .end local v16    # "inputAddress":J
    .restart local v6    # "inputRem":I
    .restart local v9    # "outputRem":I
    .restart local v12    # "input":Ljava/nio/ByteBuffer;
    .restart local v13    # "outputPos":I
    .restart local v15    # "inputPos":I
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :cond_dd
    invoke-static {v12}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 576
    .local v4, "inputArray":[B
    invoke-static {v12}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    move/from16 v16, v0

    .line 577
    .local v16, "inputOffset":I
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 578
    move-object v0, v10

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2
    :try_end_f4
    .catch Ljava/util/zip/DataFormatException; {:try_start_d2 .. :try_end_f4} :catch_16f
    .catchall {:try_start_d2 .. :try_end_f4} :catchall_194

    move-wide/from16 v17, v2

    .line 580
    .local v17, "outputAddress":J
    :try_start_f6
    iget-object v0, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v2

    add-int v5, v16, v15

    int-to-long v7, v13

    add-long v7, v17, v7

    invoke-direct/range {v1 .. v9}, Ljava/util/zip/Inflater;->inflateBytesBuffer(J[BIIJI)J

    move-result-wide v2
    :try_end_105
    .catchall {:try_start_f6 .. :try_end_105} :catchall_10a

    .line 584
    .restart local v2    # "result":J
    :try_start_105
    invoke-static {v10}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 585
    nop

    .line 586
    .end local v17    # "outputAddress":J
    goto :goto_126

    .line 584
    .end local v2    # "result":J
    .restart local v17    # "outputAddress":J
    :catchall_10a
    move-exception v0

    invoke-static {v10}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 585
    nop

    .end local v6    # "inputRem":I
    .end local v9    # "outputRem":I
    .end local v12    # "input":Ljava/nio/ByteBuffer;
    .end local v13    # "outputPos":I
    .end local v15    # "inputPos":I
    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 587
    .end local v17    # "outputAddress":J
    .restart local v6    # "inputRem":I
    .restart local v9    # "outputRem":I
    .restart local v12    # "input":Ljava/nio/ByteBuffer;
    .restart local v13    # "outputPos":I
    .restart local v15    # "inputPos":I
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :cond_110
    invoke-static {v10}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 588
    .restart local v7    # "outputArray":[B
    invoke-static {v10}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 589
    .restart local v0    # "outputOffset":I
    iget-object v2, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v2

    add-int v5, v16, v15

    add-int v8, v0, v13

    invoke-direct/range {v1 .. v9}, Ljava/util/zip/Inflater;->inflateBytesBytes(J[BII[BII)J

    move-result-wide v2
    :try_end_126
    .catch Ljava/util/zip/DataFormatException; {:try_start_105 .. :try_end_126} :catch_16f
    .catchall {:try_start_105 .. :try_end_126} :catchall_194

    .line 597
    .end local v0    # "outputOffset":I
    .end local v4    # "inputArray":[B
    .end local v7    # "outputArray":[B
    .end local v16    # "inputOffset":I
    .restart local v2    # "result":J
    :goto_126
    move v5, v15

    .line 607
    .end local v6    # "inputRem":I
    .end local v15    # "inputPos":I
    .restart local v5    # "inputPos":I
    :goto_127
    nop

    .line 608
    const-wide/32 v6, 0x7fffffff

    and-long v14, v2, v6

    long-to-int v0, v14

    .line 609
    .local v0, "read":I
    const/16 v4, 0x1f

    ushr-long v14, v2, v4

    and-long/2addr v6, v14

    long-to-int v4, v6

    .line 610
    .local v4, "written":I
    const/16 v6, 0x3e

    ushr-long v6, v2, v6

    const-wide/16 v14, 0x1

    and-long/2addr v6, v14

    const-wide/16 v16, 0x0

    cmp-long v6, v6, v16

    const/4 v7, 0x1

    if-eqz v6, :cond_144

    .line 611
    :try_start_142
    iput-boolean v7, v1, Ljava/util/zip/Inflater;->finished:Z

    .line 613
    :cond_144
    const/16 v6, 0x3f

    ushr-long v18, v2, v6

    and-long v14, v18, v14

    cmp-long v6, v14, v16

    if-eqz v6, :cond_150

    .line 614
    iput-boolean v7, v1, Ljava/util/zip/Inflater;->needDict:Z

    .line 616
    :cond_150
    if-eqz v12, :cond_158

    .line 617
    add-int v6, v5, v0

    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_15c

    .line 619
    :cond_158
    add-int v6, v5, v0

    iput v6, v1, Ljava/util/zip/Inflater;->inputPos:I

    .line 622
    :goto_15c
    add-int v6, v13, v4

    invoke-virtual {v10, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 623
    iget-wide v6, v1, Ljava/util/zip/Inflater;->bytesWritten:J

    int-to-long v14, v4

    add-long/2addr v6, v14

    iput-wide v6, v1, Ljava/util/zip/Inflater;->bytesWritten:J

    .line 624
    iget-wide v6, v1, Ljava/util/zip/Inflater;->bytesRead:J

    int-to-long v14, v0

    add-long/2addr v6, v14

    iput-wide v6, v1, Ljava/util/zip/Inflater;->bytesRead:J

    .line 625
    monitor-exit v11
    :try_end_16e
    .catchall {:try_start_142 .. :try_end_16e} :catchall_194

    return v4

    .line 594
    .end local v0    # "read":I
    .end local v2    # "result":J
    .end local v4    # "written":I
    .end local v5    # "inputPos":I
    .restart local v6    # "inputRem":I
    .restart local v15    # "inputPos":I
    :catch_16f
    move-exception v0

    .line 595
    .local v0, "e":Ljava/util/zip/DataFormatException;
    :try_start_170
    iget v2, v1, Ljava/util/zip/Inflater;->inputConsumed:I

    add-int/2addr v2, v15

    invoke-virtual {v12, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 596
    nop

    .end local v9    # "outputRem":I
    .end local v12    # "input":Ljava/nio/ByteBuffer;
    .end local v13    # "outputPos":I
    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0
    :try_end_178
    .catch Ljava/util/zip/DataFormatException; {:try_start_170 .. :try_end_178} :catch_178
    .catchall {:try_start_170 .. :try_end_178} :catchall_194

    .line 599
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .end local v6    # "inputRem":I
    .end local v15    # "inputPos":I
    .restart local v9    # "outputRem":I
    .restart local v12    # "input":Ljava/nio/ByteBuffer;
    .restart local v13    # "outputPos":I
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :catch_178
    move-exception v0

    .line 600
    .restart local v0    # "e":Ljava/util/zip/DataFormatException;
    :try_start_179
    iget-wide v2, v1, Ljava/util/zip/Inflater;->bytesRead:J

    iget v4, v1, Ljava/util/zip/Inflater;->inputConsumed:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Ljava/util/zip/Inflater;->bytesRead:J

    .line 601
    iput v14, v1, Ljava/util/zip/Inflater;->inputConsumed:I

    .line 602
    iget v2, v1, Ljava/util/zip/Inflater;->outputConsumed:I

    .line 603
    .local v2, "written":I
    add-int v3, v13, v2

    invoke-virtual {v10, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 604
    iget-wide v3, v1, Ljava/util/zip/Inflater;->bytesWritten:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v1, Ljava/util/zip/Inflater;->bytesWritten:J

    .line 605
    iput v14, v1, Ljava/util/zip/Inflater;->outputConsumed:I

    .line 606
    nop

    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 626
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .end local v2    # "written":I
    .end local v9    # "outputRem":I
    .end local v12    # "input":Ljava/nio/ByteBuffer;
    .end local v13    # "outputPos":I
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :catchall_194
    move-exception v0

    monitor-exit v11
    :try_end_196
    .catchall {:try_start_179 .. :try_end_196} :catchall_194

    throw v0

    .line 515
    :cond_197
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api inflate([B)I
    .registers 4
    .param p1, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 476
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api inflate([BII)I
    .registers 20
    .param p1, "output"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 378
    move-object/from16 v1, p0

    move/from16 v8, p2

    if-ltz v8, :cond_f0

    if-ltz p3, :cond_f0

    move-object/from16 v7, p1

    array-length v0, v7

    sub-int v0, v0, p3

    if-gt v8, v0, :cond_f0

    .line 381
    iget-object v10, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v10

    .line 382
    :try_start_12
    invoke-direct {v1}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 383
    iget-object v0, v1, Ljava/util/zip/Inflater;->input:Ljava/nio/ByteBuffer;
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_ed

    move-object v11, v0

    .line 387
    .local v11, "input":Ljava/nio/ByteBuffer;
    const/4 v12, 0x0

    if-nez v11, :cond_38

    .line 388
    :try_start_1b
    iget v5, v1, Ljava/util/zip/Inflater;->inputPos:I
    :try_end_1d
    .catch Ljava/util/zip/DataFormatException; {:try_start_1b .. :try_end_1d} :catch_d6
    .catchall {:try_start_1b .. :try_end_1d} :catchall_ed

    .line 390
    .local v5, "inputPos":I
    :try_start_1d
    iget-object v0, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v2

    iget-object v4, v1, Ljava/util/zip/Inflater;->inputArray:[B

    iget v0, v1, Ljava/util/zip/Inflater;->inputLim:I

    sub-int v6, v0, v5

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/zip/Inflater;->inflateBytesBytes(J[BII[BII)J

    move-result-wide v2
    :try_end_2f
    .catch Ljava/util/zip/DataFormatException; {:try_start_1d .. :try_end_2f} :catch_30
    .catchall {:try_start_1d .. :try_end_2f} :catchall_ed

    .line 396
    .local v2, "result":J
    goto :goto_8b

    .line 393
    .end local v2    # "result":J
    :catch_30
    move-exception v0

    .line 394
    .local v0, "e":Ljava/util/zip/DataFormatException;
    :try_start_31
    iget v2, v1, Ljava/util/zip/Inflater;->inputConsumed:I

    add-int/2addr v2, v5

    iput v2, v1, Ljava/util/zip/Inflater;->inputPos:I

    .line 395
    nop

    .end local v11    # "input":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v0

    .line 398
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .end local v5    # "inputPos":I
    .restart local v11    # "input":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_38
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v0
    :try_end_3c
    .catch Ljava/util/zip/DataFormatException; {:try_start_31 .. :try_end_3c} :catch_d6
    .catchall {:try_start_31 .. :try_end_3c} :catchall_ed

    move v13, v0

    .line 400
    .local v13, "inputPos":I
    :try_start_3d
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 401
    .local v6, "inputRem":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0
    :try_end_4a
    .catch Ljava/util/zip/DataFormatException; {:try_start_3d .. :try_end_4a} :catch_cd
    .catchall {:try_start_3d .. :try_end_4a} :catchall_ed

    if-eqz v0, :cond_70

    .line 403
    :try_start_4c
    move-object v0, v11

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2

    move-wide v14, v2

    .line 404
    .local v14, "inputAddress":J
    iget-object v0, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v2

    int-to-long v4, v13

    add-long/2addr v4, v14

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/zip/Inflater;->inflateBufferBytes(JJI[BII)J

    move-result-wide v2
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_6a

    .line 408
    .end local v14    # "inputAddress":J
    .restart local v2    # "result":J
    :try_start_66
    invoke-static {v11}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 409
    goto :goto_8a

    .line 408
    .end local v2    # "result":J
    :catchall_6a
    move-exception v0

    invoke-static {v11}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 409
    nop

    .end local v11    # "input":Ljava/nio/ByteBuffer;
    .end local v13    # "inputPos":I
    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v0

    .line 411
    .restart local v11    # "input":Ljava/nio/ByteBuffer;
    .restart local v13    # "inputPos":I
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_70
    invoke-static {v11}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 412
    .local v4, "inputArray":[B
    invoke-static {v11}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 413
    .local v0, "inputOffset":I
    iget-object v2, v1, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v2

    add-int v5, v0, v13

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Ljava/util/zip/Inflater;->inflateBytesBytes(J[BII[BII)J

    move-result-wide v2
    :try_end_8a
    .catch Ljava/util/zip/DataFormatException; {:try_start_66 .. :try_end_8a} :catch_cd
    .catchall {:try_start_66 .. :try_end_8a} :catchall_ed

    .line 420
    .end local v0    # "inputOffset":I
    .end local v4    # "inputArray":[B
    .end local v6    # "inputRem":I
    .restart local v2    # "result":J
    :goto_8a
    move v5, v13

    .line 429
    .end local v13    # "inputPos":I
    .restart local v5    # "inputPos":I
    :goto_8b
    nop

    .line 430
    const-wide/32 v6, 0x7fffffff

    and-long v8, v2, v6

    long-to-int v0, v8

    .line 431
    .local v0, "read":I
    const/16 v4, 0x1f

    ushr-long v8, v2, v4

    and-long/2addr v6, v8

    long-to-int v4, v6

    .line 432
    .local v4, "written":I
    const/16 v6, 0x3e

    ushr-long v6, v2, v6

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    const/4 v7, 0x1

    if-eqz v6, :cond_a8

    .line 433
    :try_start_a6
    iput-boolean v7, v1, Ljava/util/zip/Inflater;->finished:Z

    .line 435
    :cond_a8
    const/16 v6, 0x3f

    ushr-long v14, v2, v6

    and-long/2addr v8, v14

    cmp-long v6, v8, v12

    if-eqz v6, :cond_b3

    .line 436
    iput-boolean v7, v1, Ljava/util/zip/Inflater;->needDict:Z

    .line 438
    :cond_b3
    if-eqz v11, :cond_bb

    .line 439
    add-int v6, v5, v0

    invoke-virtual {v11, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_bf

    .line 441
    :cond_bb
    add-int v6, v5, v0

    iput v6, v1, Ljava/util/zip/Inflater;->inputPos:I

    .line 443
    :goto_bf
    iget-wide v6, v1, Ljava/util/zip/Inflater;->bytesWritten:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, v1, Ljava/util/zip/Inflater;->bytesWritten:J

    .line 444
    iget-wide v6, v1, Ljava/util/zip/Inflater;->bytesRead:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Ljava/util/zip/Inflater;->bytesRead:J

    .line 445
    monitor-exit v10
    :try_end_cc
    .catchall {:try_start_a6 .. :try_end_cc} :catchall_ed

    return v4

    .line 417
    .end local v0    # "read":I
    .end local v2    # "result":J
    .end local v4    # "written":I
    .end local v5    # "inputPos":I
    .restart local v13    # "inputPos":I
    :catch_cd
    move-exception v0

    .line 418
    .local v0, "e":Ljava/util/zip/DataFormatException;
    :try_start_ce
    iget v2, v1, Ljava/util/zip/Inflater;->inputConsumed:I

    add-int/2addr v2, v13

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 419
    nop

    .end local v11    # "input":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v0
    :try_end_d6
    .catch Ljava/util/zip/DataFormatException; {:try_start_ce .. :try_end_d6} :catch_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_ed

    .line 422
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .end local v13    # "inputPos":I
    .restart local v11    # "input":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catch_d6
    move-exception v0

    .line 423
    .restart local v0    # "e":Ljava/util/zip/DataFormatException;
    :try_start_d7
    iget-wide v2, v1, Ljava/util/zip/Inflater;->bytesRead:J

    iget v4, v1, Ljava/util/zip/Inflater;->inputConsumed:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Ljava/util/zip/Inflater;->bytesRead:J

    .line 424
    iput v12, v1, Ljava/util/zip/Inflater;->inputConsumed:I

    .line 425
    iget v2, v1, Ljava/util/zip/Inflater;->outputConsumed:I

    .line 426
    .local v2, "written":I
    iget-wide v3, v1, Ljava/util/zip/Inflater;->bytesWritten:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v1, Ljava/util/zip/Inflater;->bytesWritten:J

    .line 427
    iput v12, v1, Ljava/util/zip/Inflater;->outputConsumed:I

    .line 428
    nop

    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "output":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v0

    .line 446
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .end local v2    # "written":I
    .end local v11    # "input":Ljava/nio/ByteBuffer;
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "output":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_ed
    move-exception v0

    monitor-exit v10
    :try_end_ef
    .catchall {:try_start_d7 .. :try_end_ef} :catchall_ed

    throw v0

    .line 379
    :cond_f0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api needsDictionary()Z
    .registers 3

    .line 325
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Inflater;->needDict:Z

    monitor-exit v0

    return v1

    .line 327
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api needsInput()Z
    .registers 7

    .line 313
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/Inflater;->input:Ljava/nio/ByteBuffer;

    .line 315
    .local v1, "input":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    iget v4, p0, Ljava/util/zip/Inflater;->inputLim:I

    iget v5, p0, Ljava/util/zip/Inflater;->inputPos:I

    if-ne v4, v5, :cond_17

    goto :goto_16

    :cond_10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_17

    :goto_16
    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    monitor-exit v0

    return v2

    .line 316
    .end local v1    # "input":Ljava/nio/ByteBuffer;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist test-api reset()V
    .registers 4

    .line 696
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 697
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 698
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/zip/Inflater;->reset(J)V

    .line 700
    iget-object v1, p0, Ljava/util/zip/Inflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 701
    sget-object v1, Ljava/util/zip/ZipUtils;->defaultBuf:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Ljava/util/zip/Inflater;->input:Ljava/nio/ByteBuffer;

    .line 702
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/Inflater;->inputArray:[B

    .line 703
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/zip/Inflater;->finished:Z

    .line 704
    iput-boolean v1, p0, Ljava/util/zip/Inflater;->needDict:Z

    .line 705
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/zip/Inflater;->bytesWritten:J

    iput-wide v1, p0, Ljava/util/zip/Inflater;->bytesRead:J

    .line 706
    monitor-exit v0

    .line 707
    return-void

    .line 706
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public whitelist test-api setDictionary(Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p1, "dictionary"    # Ljava/nio/ByteBuffer;

    .line 271
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 272
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 273
    .local v1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 274
    .local v2, "remaining":I
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 275
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 276
    move-object v4, p1

    check-cast v4, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v4}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_53

    .line 278
    .local v4, "address":J
    :try_start_21
    iget-object v6, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v6}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v6

    int-to-long v8, v1

    add-long/2addr v8, v4

    invoke-static {v6, v7, v8, v9, v2}, Ljava/util/zip/Inflater;->setDictionaryBuffer(JJI)V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 280
    :try_start_2c
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 281
    nop

    .line 282
    .end local v4    # "address":J
    goto :goto_4a

    .line 280
    .restart local v4    # "address":J
    :catchall_31
    move-exception v3

    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 281
    nop

    .end local p0    # "this":Ljava/util/zip/Inflater;
    .end local p1    # "dictionary":Ljava/nio/ByteBuffer;
    throw v3

    .line 283
    .end local v4    # "address":J
    .restart local p0    # "this":Ljava/util/zip/Inflater;
    .restart local p1    # "dictionary":Ljava/nio/ByteBuffer;
    :cond_37
    invoke-static {p1}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 284
    .local v4, "array":[B
    invoke-static {p1}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 285
    .local v5, "offset":I
    iget-object v6, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v6}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v6

    add-int v8, v5, v1

    invoke-static {v6, v7, v4, v8, v2}, Ljava/util/zip/Inflater;->setDictionary(J[BII)V

    .line 287
    .end local v4    # "array":[B
    .end local v5    # "offset":I
    :goto_4a
    add-int v4, v1, v2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 288
    iput-boolean v3, p0, Ljava/util/zip/Inflater;->needDict:Z

    .line 289
    .end local v1    # "position":I
    .end local v2    # "remaining":I
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_53

    throw v1
.end method

.method public whitelist test-api setDictionary([B)V
    .registers 4
    .param p1, "dictionary"    # [B

    .line 253
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->setDictionary([BII)V

    .line 254
    return-void
.end method

.method public whitelist test-api setDictionary([BII)V
    .registers 7
    .param p1, "dictionary"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 233
    if-ltz p2, :cond_1f

    if-ltz p3, :cond_1f

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1f

    .line 236
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 237
    :try_start_b
    invoke-direct {p0}, Ljava/util/zip/Inflater;->ensureOpen()V

    .line 238
    iget-object v1, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/Inflater$InflaterZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, p3}, Ljava/util/zip/Inflater;->setDictionary(J[BII)V

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/zip/Inflater;->needDict:Z

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw v1

    .line 234
    :cond_1f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setInput(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 216
    :try_start_6
    iput-object p1, p0, Ljava/util/zip/Inflater;->input:Ljava/nio/ByteBuffer;

    .line 217
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/Inflater;->inputArray:[B

    .line 218
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist test-api setInput([B)V
    .registers 4
    .param p1, "input"    # [B

    .line 188
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 189
    return-void
.end method

.method public whitelist test-api setInput([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 166
    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1b

    .line 169
    iget-object v0, p0, Ljava/util/zip/Inflater;->zsRef:Ljava/util/zip/Inflater$InflaterZStreamRef;

    monitor-enter v0

    .line 170
    const/4 v1, 0x0

    :try_start_c
    iput-object v1, p0, Ljava/util/zip/Inflater;->input:Ljava/nio/ByteBuffer;

    .line 171
    iput-object p1, p0, Ljava/util/zip/Inflater;->inputArray:[B

    .line 172
    iput p2, p0, Ljava/util/zip/Inflater;->inputPos:I

    .line 173
    add-int v1, p2, p3

    iput v1, p0, Ljava/util/zip/Inflater;->inputLim:I

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw v1

    .line 167
    :cond_1b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
