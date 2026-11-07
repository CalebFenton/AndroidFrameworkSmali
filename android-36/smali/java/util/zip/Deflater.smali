.class public Ljava/util/zip/Deflater;
.super Ljava/lang/Object;
.source "Deflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/Deflater$DeflaterZStreamRef;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api BEST_COMPRESSION:I = 0x9

.field public static final whitelist test-api BEST_SPEED:I = 0x1

.field public static final whitelist test-api DEFAULT_COMPRESSION:I = -0x1

.field public static final whitelist test-api DEFAULT_STRATEGY:I = 0x0

.field public static final whitelist test-api DEFLATED:I = 0x8

.field public static final whitelist test-api FILTERED:I = 0x1

.field private static final blacklist FINISH:I = 0x4

.field public static final whitelist test-api FULL_FLUSH:I = 0x3

.field public static final whitelist test-api HUFFMAN_ONLY:I = 0x2

.field public static final whitelist test-api NO_COMPRESSION:I = 0x0

.field public static final whitelist test-api NO_FLUSH:I = 0x0

.field public static final whitelist test-api SYNC_FLUSH:I = 0x2


# instance fields
.field private greylist-max-o bytesRead:J

.field private greylist-max-o bytesWritten:J

.field private greylist-max-r finish:Z

.field private greylist-max-r finished:Z

.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private blacklist input:Ljava/nio/ByteBuffer;

.field private blacklist inputArray:[B

.field private blacklist inputLim:I

.field private blacklist inputPos:I

.field private greylist-max-r level:I

.field private greylist-max-r setParams:Z

.field private greylist-max-r strategy:I

.field private final blacklist zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smend(J)V
    .registers 2

    invoke-static {p0, p1}, Ljava/util/zip/Deflater;->end(J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 99
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 229
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 230
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "level"    # I

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    .line 222
    return-void
.end method

.method public constructor whitelist test-api <init>(IZ)V
    .registers 7
    .param p1, "level"    # I
    .param p2, "nowrap"    # Z

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Ljava/util/zip/ZipUtils;->defaultBuf:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Ljava/util/zip/Deflater;->input:Ljava/nio/ByteBuffer;

    .line 112
    nop

    .line 113
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    .line 207
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 209
    new-instance v1, Ljava/util/zip/Deflater$DeflaterZStreamRef;

    .line 210
    invoke-static {p1, v0, p2}, Ljava/util/zip/Deflater;->init(IIZ)J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Ljava/util/zip/Deflater$DeflaterZStreamRef;-><init>(Ljava/util/zip/Deflater;JLjava/util/zip/Deflater-IA;)V

    iput-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    .line 212
    iget-object v0, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private native blacklist deflateBufferBuffer(JJIJIII)J
.end method

.method private native blacklist deflateBufferBytes(JJI[BIIII)J
.end method

.method private native blacklist deflateBytesBuffer(J[BIIJIII)J
.end method

.method private native blacklist deflateBytesBytes(J[BII[BIIII)J
.end method

.method private static native greylist-max-o end(J)V
.end method

.method private greylist-max-o ensureOpen()V
    .registers 5

    .line 911
    nop

    .line 912
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 914
    return-void

    .line 913
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Deflater has been closed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o getAdler(J)I
.end method

.method private static native greylist-max-o init(IIZ)J
.end method

.method private static native greylist-max-o reset(J)V
.end method

.method private static native greylist-max-o setDictionary(J[BII)V
.end method

.method private static native blacklist setDictionaryBuffer(JJI)V
.end method


# virtual methods
.method public whitelist test-api deflate(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "output"    # Ljava/nio/ByteBuffer;

    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/zip/Deflater;->deflate(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api deflate(Ljava/nio/ByteBuffer;I)I
    .registers 27
    .param p1, "output"    # Ljava/nio/ByteBuffer;
    .param p2, "flush"    # I

    .line 696
    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1ca

    .line 699
    const/4 v0, 0x3

    if-eqz v2, :cond_19

    const/4 v3, 0x2

    if-eq v2, v3, :cond_19

    if-ne v2, v0, :cond_13

    goto :goto_19

    .line 700
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 702
    :cond_19
    :goto_19
    iget-object v13, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v13

    .line 703
    :try_start_1c
    invoke-direct {v1}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 705
    iget-object v3, v1, Ljava/util/zip/Deflater;->input:Ljava/nio/ByteBuffer;

    move-object v14, v3

    .line 706
    .local v14, "input":Ljava/nio/ByteBuffer;
    iget-boolean v3, v1, Ljava/util/zip/Deflater;->finish:Z
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_1c2

    if-eqz v3, :cond_29

    .line 708
    const/4 v2, 0x4

    move v10, v2

    .end local p2    # "flush":I
    .local v2, "flush":I
    goto :goto_2a

    .line 706
    .end local v2    # "flush":I
    .restart local p2    # "flush":I
    :cond_29
    move v10, v2

    .line 711
    .end local p2    # "flush":I
    .local v10, "flush":I
    :goto_2a
    :try_start_2a
    iget-boolean v2, v1, Ljava/util/zip/Deflater;->setParams:Z

    const/4 v15, 0x1

    if-eqz v2, :cond_3a

    .line 715
    iget v2, v1, Ljava/util/zip/Deflater;->strategy:I

    shl-int/2addr v2, v15

    or-int/2addr v2, v15

    iget v3, v1, Ljava/util/zip/Deflater;->level:I

    shl-int/lit8 v0, v3, 0x3

    or-int/2addr v0, v2

    move v11, v0

    .local v0, "params":I
    goto :goto_3c

    .line 717
    .end local v0    # "params":I
    :cond_3a
    const/4 v0, 0x0

    move v11, v0

    .line 719
    .local v11, "params":I
    :goto_3c
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    move v2, v0

    .line 720
    .local v2, "outputPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 723
    .local v9, "outputRem":I
    if-nez v14, :cond_ac

    .line 724
    iget v5, v1, Ljava/util/zip/Deflater;->inputPos:I

    .line 725
    .local v5, "inputPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 726
    move-object/from16 v0, p1

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v6
    :try_end_5d
    .catchall {:try_start_2a .. :try_end_5d} :catchall_1be

    move-wide/from16 v16, v6

    .line 728
    .local v16, "outputAddress":J
    :try_start_5f
    iget-object v0, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v6

    iget-object v4, v1, Ljava/util/zip/Deflater;->inputArray:[B

    iget v0, v1, Ljava/util/zip/Deflater;->inputLim:I
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_86

    sub-int/2addr v0, v5

    move-object v8, v4

    int-to-long v3, v2

    add-long v3, v16, v3

    move v15, v2

    move-wide/from16 v20, v6

    move v6, v0

    const/4 v0, 0x0

    move-wide/from16 v22, v3

    move-object v4, v8

    move-wide/from16 v7, v22

    move-wide/from16 v2, v20

    .end local v2    # "outputPos":I
    .local v15, "outputPos":I
    :try_start_7a
    invoke-direct/range {v1 .. v11}, Ljava/util/zip/Deflater;->deflateBytesBuffer(J[BIIJIII)J

    move-result-wide v2
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_84

    .line 733
    .local v2, "result":J
    :try_start_7e
    invoke-static/range {p1 .. p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 734
    nop

    .line 735
    .end local v16    # "outputAddress":J
    goto/16 :goto_16e

    .line 733
    .end local v2    # "result":J
    .restart local v16    # "outputAddress":J
    :catchall_84
    move-exception v0

    goto :goto_88

    .end local v15    # "outputPos":I
    .local v2, "outputPos":I
    :catchall_86
    move-exception v0

    move v15, v2

    .end local v2    # "outputPos":I
    .restart local v15    # "outputPos":I
    :goto_88
    invoke-static/range {p1 .. p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 734
    nop

    .end local v10    # "flush":I
    .end local p0    # "this":Ljava/util/zip/Deflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 736
    .end local v15    # "outputPos":I
    .end local v16    # "outputAddress":J
    .restart local v2    # "outputPos":I
    .restart local v10    # "flush":I
    .restart local p0    # "this":Ljava/util/zip/Deflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :cond_8d
    move v15, v2

    move v0, v3

    .end local v2    # "outputPos":I
    .restart local v15    # "outputPos":I
    invoke-static/range {p1 .. p1}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 737
    .local v7, "outputArray":[B
    invoke-static/range {p1 .. p1}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v2

    move/from16 v16, v2

    .line 738
    .local v16, "outputOffset":I
    iget-object v2, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v2

    iget-object v4, v1, Ljava/util/zip/Deflater;->inputArray:[B

    iget v6, v1, Ljava/util/zip/Deflater;->inputLim:I

    sub-int/2addr v6, v5

    add-int v8, v16, v15

    invoke-direct/range {v1 .. v11}, Ljava/util/zip/Deflater;->deflateBytesBytes(J[BII[BIIII)J

    move-result-wide v2

    .line 742
    .end local v7    # "outputArray":[B
    .end local v16    # "outputOffset":I
    .local v2, "result":J
    goto/16 :goto_16e

    .line 744
    .end local v5    # "inputPos":I
    .end local v15    # "outputPos":I
    .local v2, "outputPos":I
    :cond_ac
    move v15, v2

    move v0, v3

    .end local v2    # "outputPos":I
    .restart local v15    # "outputPos":I
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 745
    .local v2, "inputPos":I
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 746
    .local v6, "inputRem":I
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_121

    .line 747
    move-object v3, v14

    check-cast v3, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v3
    :try_end_c8
    .catchall {:try_start_7e .. :try_end_c8} :catchall_1be

    move-wide/from16 v16, v3

    .line 749
    .local v16, "inputAddress":J
    :try_start_ca
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 750
    int-to-long v3, v15

    move-object/from16 v5, p1

    check-cast v5, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v5}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v7
    :try_end_d9
    .catchall {:try_start_ca .. :try_end_d9} :catchall_11a

    add-long/2addr v7, v3

    .line 752
    .local v7, "outputAddress":J
    :try_start_da
    iget-object v3, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v3}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v3
    :try_end_e0
    .catchall {:try_start_da .. :try_end_e0} :catchall_f3

    int-to-long v0, v2

    add-long v0, v16, v0

    move v12, v2

    move-wide v2, v3

    move-wide v4, v0

    move-object/from16 v1, p0

    .end local v2    # "inputPos":I
    .local v12, "inputPos":I
    :try_start_e8
    invoke-direct/range {v1 .. v11}, Ljava/util/zip/Deflater;->deflateBufferBuffer(JJIJIII)J

    move-result-wide v2
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_f1

    .line 757
    .local v2, "result":J
    :try_start_ec
    invoke-static/range {p1 .. p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 758
    nop

    .line 759
    .end local v7    # "outputAddress":J
    goto :goto_112

    .line 757
    .end local v2    # "result":J
    .restart local v7    # "outputAddress":J
    :catchall_f1
    move-exception v0

    goto :goto_f5

    .end local v12    # "inputPos":I
    .local v2, "inputPos":I
    :catchall_f3
    move-exception v0

    move v12, v2

    .end local v2    # "inputPos":I
    .restart local v12    # "inputPos":I
    :goto_f5
    invoke-static/range {p1 .. p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 758
    nop

    .end local v6    # "inputRem":I
    .end local v9    # "outputRem":I
    .end local v10    # "flush":I
    .end local v11    # "params":I
    .end local v12    # "inputPos":I
    .end local v14    # "input":Ljava/nio/ByteBuffer;
    .end local v15    # "outputPos":I
    .end local v16    # "inputAddress":J
    .end local p0    # "this":Ljava/util/zip/Deflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 760
    .end local v7    # "outputAddress":J
    .restart local v2    # "inputPos":I
    .restart local v6    # "inputRem":I
    .restart local v9    # "outputRem":I
    .restart local v10    # "flush":I
    .restart local v11    # "params":I
    .restart local v14    # "input":Ljava/nio/ByteBuffer;
    .restart local v15    # "outputPos":I
    .restart local v16    # "inputAddress":J
    .restart local p0    # "this":Ljava/util/zip/Deflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :cond_fa
    move v12, v2

    .end local v2    # "inputPos":I
    .restart local v12    # "inputPos":I
    invoke-static/range {p1 .. p1}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 761
    .local v7, "outputArray":[B
    invoke-static/range {p1 .. p1}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 762
    .local v0, "outputOffset":I
    iget-object v2, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v2

    int-to-long v4, v12

    add-long v4, v16, v4

    add-int v8, v0, v15

    invoke-direct/range {v1 .. v11}, Ljava/util/zip/Deflater;->deflateBufferBytes(JJI[BIIII)J

    move-result-wide v2
    :try_end_112
    .catchall {:try_start_ec .. :try_end_112} :catchall_118

    .line 768
    .end local v0    # "outputOffset":I
    .end local v7    # "outputArray":[B
    .local v2, "result":J
    :goto_112
    :try_start_112
    invoke-static {v14}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 769
    nop

    .line 770
    .end local v16    # "inputAddress":J
    move v5, v12

    goto :goto_16e

    .line 768
    .end local v2    # "result":J
    .restart local v16    # "inputAddress":J
    :catchall_118
    move-exception v0

    goto :goto_11c

    .end local v12    # "inputPos":I
    .local v2, "inputPos":I
    :catchall_11a
    move-exception v0

    move v12, v2

    .end local v2    # "inputPos":I
    .restart local v12    # "inputPos":I
    :goto_11c
    invoke-static {v14}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 769
    nop

    .end local v10    # "flush":I
    .end local p0    # "this":Ljava/util/zip/Deflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 771
    .end local v12    # "inputPos":I
    .end local v16    # "inputAddress":J
    .restart local v2    # "inputPos":I
    .restart local v10    # "flush":I
    .restart local p0    # "this":Ljava/util/zip/Deflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :cond_121
    move v12, v2

    .end local v2    # "inputPos":I
    .restart local v12    # "inputPos":I
    invoke-static {v14}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 772
    .local v4, "inputArray":[B
    invoke-static {v14}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    move/from16 v16, v0

    .line 773
    .local v16, "inputOffset":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_157

    .line 774
    move-object/from16 v0, p1

    check-cast v0, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v0}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2
    :try_end_13a
    .catchall {:try_start_112 .. :try_end_13a} :catchall_1be

    move-wide/from16 v18, v2

    .line 776
    .local v18, "outputAddress":J
    :try_start_13c
    iget-object v0, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v0}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v2

    add-int v5, v16, v12

    int-to-long v7, v15

    add-long v7, v18, v7

    invoke-direct/range {v1 .. v11}, Ljava/util/zip/Deflater;->deflateBytesBuffer(J[BIIJIII)J

    move-result-wide v2
    :try_end_14b
    .catchall {:try_start_13c .. :try_end_14b} :catchall_151

    .line 781
    .local v2, "result":J
    :try_start_14b
    invoke-static/range {p1 .. p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 782
    nop

    .line 783
    .end local v18    # "outputAddress":J
    move v5, v12

    goto :goto_16e

    .line 781
    .end local v2    # "result":J
    .restart local v18    # "outputAddress":J
    :catchall_151
    move-exception v0

    invoke-static/range {p1 .. p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 782
    nop

    .end local v10    # "flush":I
    .end local p0    # "this":Ljava/util/zip/Deflater;
    .end local p1    # "output":Ljava/nio/ByteBuffer;
    throw v0

    .line 784
    .end local v18    # "outputAddress":J
    .restart local v10    # "flush":I
    .restart local p0    # "this":Ljava/util/zip/Deflater;
    .restart local p1    # "output":Ljava/nio/ByteBuffer;
    :cond_157
    invoke-static/range {p1 .. p1}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v7

    .line 785
    .restart local v7    # "outputArray":[B
    invoke-static/range {p1 .. p1}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 786
    .restart local v0    # "outputOffset":I
    iget-object v2, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v2

    add-int v5, v16, v12

    add-int v8, v0, v15

    invoke-direct/range {v1 .. v11}, Ljava/util/zip/Deflater;->deflateBytesBytes(J[BII[BIIII)J

    move-result-wide v2

    move v5, v12

    .line 793
    .end local v0    # "outputOffset":I
    .end local v4    # "inputArray":[B
    .end local v6    # "inputRem":I
    .end local v7    # "outputArray":[B
    .end local v12    # "inputPos":I
    .end local v16    # "inputOffset":I
    .restart local v2    # "result":J
    .restart local v5    # "inputPos":I
    :goto_16e
    const-wide/32 v16, 0x7fffffff

    and-long v6, v2, v16

    long-to-int v0, v6

    .line 794
    .local v0, "read":I
    const/16 v4, 0x1f

    ushr-long v6, v2, v4

    and-long v6, v6, v16

    long-to-int v4, v6

    .line 795
    .local v4, "written":I
    const/16 v6, 0x3e

    ushr-long v6, v2, v6

    const-wide/16 v16, 0x1

    and-long v6, v6, v16

    const-wide/16 v18, 0x0

    cmp-long v6, v6, v18

    if-eqz v6, :cond_18c

    .line 796
    const/4 v6, 0x1

    iput-boolean v6, v1, Ljava/util/zip/Deflater;->finished:Z

    .line 798
    :cond_18c
    if-eqz v11, :cond_19b

    const/16 v6, 0x3f

    ushr-long v6, v2, v6

    and-long v6, v6, v16

    cmp-long v6, v6, v18

    if-nez v6, :cond_19b

    .line 799
    const/4 v6, 0x0

    iput-boolean v6, v1, Ljava/util/zip/Deflater;->setParams:Z

    .line 801
    :cond_19b
    if-eqz v14, :cond_1a3

    .line 802
    add-int v6, v5, v0

    invoke-virtual {v14, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1a7

    .line 804
    :cond_1a3
    add-int v6, v5, v0

    iput v6, v1, Ljava/util/zip/Deflater;->inputPos:I
    :try_end_1a7
    .catchall {:try_start_14b .. :try_end_1a7} :catchall_1be

    .line 806
    :goto_1a7
    add-int v6, v15, v4

    move-object/from16 v12, p1

    :try_start_1ab
    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 807
    iget-wide v6, v1, Ljava/util/zip/Deflater;->bytesWritten:J

    move-wide/from16 v16, v2

    .end local v2    # "result":J
    .local v16, "result":J
    int-to-long v2, v4

    add-long/2addr v6, v2

    iput-wide v6, v1, Ljava/util/zip/Deflater;->bytesWritten:J

    .line 808
    iget-wide v2, v1, Ljava/util/zip/Deflater;->bytesRead:J

    int-to-long v6, v0

    add-long/2addr v2, v6

    iput-wide v2, v1, Ljava/util/zip/Deflater;->bytesRead:J

    .line 809
    monitor-exit v13

    return v4

    .line 810
    .end local v0    # "read":I
    .end local v4    # "written":I
    .end local v5    # "inputPos":I
    .end local v9    # "outputRem":I
    .end local v11    # "params":I
    .end local v14    # "input":Ljava/nio/ByteBuffer;
    .end local v15    # "outputPos":I
    .end local v16    # "result":J
    :catchall_1be
    move-exception v0

    move-object/from16 v12, p1

    goto :goto_1c6

    .end local v10    # "flush":I
    .restart local p2    # "flush":I
    :catchall_1c2
    move-exception v0

    move-object/from16 v12, p1

    move v10, v2

    .end local p2    # "flush":I
    .restart local v10    # "flush":I
    :goto_1c6
    monitor-exit v13
    :try_end_1c7
    .catchall {:try_start_1ab .. :try_end_1c7} :catchall_1c8

    throw v0

    :catchall_1c8
    move-exception v0

    goto :goto_1c6

    .line 697
    .end local v10    # "flush":I
    .restart local p2    # "flush":I
    :cond_1ca
    move-object/from16 v12, p1

    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api deflate([B)I
    .registers 4
    .param p1, "output"    # [B

    .line 495
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, v0}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api deflate([BII)I
    .registers 5
    .param p1, "output"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api deflate([BIII)I
    .registers 24
    .param p1, "output"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "flush"    # I

    .line 570
    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v2, p4

    if-ltz v8, :cond_fa

    if-ltz p3, :cond_fa

    move-object/from16 v7, p1

    array-length v0, v7

    sub-int v0, v0, p3

    if-gt v8, v0, :cond_fa

    .line 573
    const/4 v0, 0x3

    if-eqz v2, :cond_20

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    if-ne v2, v0, :cond_1a

    goto :goto_20

    .line 574
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 576
    :cond_20
    :goto_20
    iget-object v12, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v12

    .line 577
    :try_start_23
    invoke-direct {v1}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 579
    iget-object v3, v1, Ljava/util/zip/Deflater;->input:Ljava/nio/ByteBuffer;

    move-object v13, v3

    .line 580
    .local v13, "input":Ljava/nio/ByteBuffer;
    iget-boolean v3, v1, Ljava/util/zip/Deflater;->finish:Z
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_f4

    if-eqz v3, :cond_30

    .line 582
    const/4 v2, 0x4

    move v10, v2

    .end local p4    # "flush":I
    .local v2, "flush":I
    goto :goto_31

    .line 580
    .end local v2    # "flush":I
    .restart local p4    # "flush":I
    :cond_30
    move v10, v2

    .line 585
    .end local p4    # "flush":I
    .local v10, "flush":I
    :goto_31
    :try_start_31
    iget-boolean v2, v1, Ljava/util/zip/Deflater;->setParams:Z

    const/4 v14, 0x1

    if-eqz v2, :cond_41

    .line 589
    iget v2, v1, Ljava/util/zip/Deflater;->strategy:I

    shl-int/2addr v2, v14

    or-int/2addr v2, v14

    iget v3, v1, Ljava/util/zip/Deflater;->level:I

    shl-int/lit8 v0, v3, 0x3

    or-int/2addr v0, v2

    move v11, v0

    .local v0, "params":I
    goto :goto_43

    .line 591
    .end local v0    # "params":I
    :cond_41
    const/4 v0, 0x0

    move v11, v0

    .line 595
    .local v11, "params":I
    :goto_43
    const/4 v0, 0x0

    if-nez v13, :cond_5a

    .line 596
    iget v5, v1, Ljava/util/zip/Deflater;->inputPos:I

    .line 597
    .local v5, "inputPos":I
    iget-object v2, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v2

    iget-object v4, v1, Ljava/util/zip/Deflater;->inputArray:[B

    iget v6, v1, Ljava/util/zip/Deflater;->inputLim:I

    sub-int/2addr v6, v5

    move/from16 v9, p3

    invoke-direct/range {v1 .. v11}, Ljava/util/zip/Deflater;->deflateBytesBytes(J[BII[BIIII)J

    move-result-wide v2

    .local v2, "result":J
    goto :goto_b2

    .line 602
    .end local v2    # "result":J
    .end local v5    # "inputPos":I
    :cond_5a
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    move v15, v2

    .line 603
    .local v15, "inputPos":I
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v15

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 604
    .local v6, "inputRem":I
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2
    :try_end_6c
    .catchall {:try_start_31 .. :try_end_6c} :catchall_f8

    if-eqz v2, :cond_95

    .line 606
    :try_start_6e
    move-object v2, v13

    check-cast v2, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v2}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v2

    move-wide/from16 v16, v2

    .line 607
    .local v16, "inputAddress":J
    iget-object v2, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v2

    int-to-long v4, v15

    add-long v4, v16, v4

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v11}, Ljava/util/zip/Deflater;->deflateBufferBytes(JJI[BIIII)J

    move-result-wide v2
    :try_end_8a
    .catchall {:try_start_6e .. :try_end_8a} :catchall_8f

    .line 612
    .end local v16    # "inputAddress":J
    .restart local v2    # "result":J
    :try_start_8a
    invoke-static {v13}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 613
    move v5, v15

    goto :goto_b2

    .line 612
    .end local v2    # "result":J
    :catchall_8f
    move-exception v0

    invoke-static {v13}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 613
    nop

    .end local v10    # "flush":I
    .end local p0    # "this":Ljava/util/zip/Deflater;
    .end local p1    # "output":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v0

    .line 615
    .restart local v10    # "flush":I
    .restart local p0    # "this":Ljava/util/zip/Deflater;
    .restart local p1    # "output":[B
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_95
    invoke-static {v13}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v4

    .line 616
    .local v4, "inputArray":[B
    invoke-static {v13}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v2

    move/from16 v16, v2

    .line 617
    .local v16, "inputOffset":I
    iget-object v2, v1, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v2}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v2

    add-int v5, v16, v15

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v1 .. v11}, Ljava/util/zip/Deflater;->deflateBytesBytes(J[BII[BIIII)J

    move-result-wide v2

    move v5, v15

    .line 623
    .end local v4    # "inputArray":[B
    .end local v6    # "inputRem":I
    .end local v15    # "inputPos":I
    .end local v16    # "inputOffset":I
    .restart local v2    # "result":J
    .restart local v5    # "inputPos":I
    :goto_b2
    const-wide/32 v6, 0x7fffffff

    and-long v8, v2, v6

    long-to-int v4, v8

    .line 624
    .local v4, "read":I
    const/16 v8, 0x1f

    ushr-long v8, v2, v8

    and-long/2addr v6, v8

    long-to-int v6, v6

    .line 625
    .local v6, "written":I
    const/16 v7, 0x3e

    ushr-long v7, v2, v7

    const-wide/16 v15, 0x1

    and-long/2addr v7, v15

    const-wide/16 v17, 0x0

    cmp-long v7, v7, v17

    if-eqz v7, :cond_cd

    .line 626
    iput-boolean v14, v1, Ljava/util/zip/Deflater;->finished:Z

    .line 628
    :cond_cd
    if-eqz v11, :cond_da

    const/16 v7, 0x3f

    ushr-long v7, v2, v7

    and-long/2addr v7, v15

    cmp-long v7, v7, v17

    if-nez v7, :cond_da

    .line 629
    iput-boolean v0, v1, Ljava/util/zip/Deflater;->setParams:Z

    .line 631
    :cond_da
    if-eqz v13, :cond_e2

    .line 632
    add-int v0, v5, v4

    invoke-virtual {v13, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_e6

    .line 634
    :cond_e2
    add-int v0, v5, v4

    iput v0, v1, Ljava/util/zip/Deflater;->inputPos:I

    .line 636
    :goto_e6
    iget-wide v7, v1, Ljava/util/zip/Deflater;->bytesWritten:J

    int-to-long v14, v6

    add-long/2addr v7, v14

    iput-wide v7, v1, Ljava/util/zip/Deflater;->bytesWritten:J

    .line 637
    iget-wide v7, v1, Ljava/util/zip/Deflater;->bytesRead:J

    int-to-long v14, v4

    add-long/2addr v7, v14

    iput-wide v7, v1, Ljava/util/zip/Deflater;->bytesRead:J

    .line 638
    monitor-exit v12

    return v6

    .line 639
    .end local v2    # "result":J
    .end local v4    # "read":I
    .end local v5    # "inputPos":I
    .end local v6    # "written":I
    .end local v10    # "flush":I
    .end local v11    # "params":I
    .end local v13    # "input":Ljava/nio/ByteBuffer;
    .restart local p4    # "flush":I
    :catchall_f4
    move-exception v0

    move v10, v2

    .end local p4    # "flush":I
    .restart local v10    # "flush":I
    :goto_f6
    monitor-exit v12
    :try_end_f7
    .catchall {:try_start_8a .. :try_end_f7} :catchall_f8

    throw v0

    :catchall_f8
    move-exception v0

    goto :goto_f6

    .line 571
    .end local v10    # "flush":I
    .restart local p4    # "flush":I
    :cond_fa
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api end()V
    .registers 3

    .line 900
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 901
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->clean()V

    .line 903
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_11

    .line 904
    iget-object v1, p0, Ljava/util/zip/Deflater;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 906
    :cond_11
    sget-object v1, Ljava/util/zip/ZipUtils;->defaultBuf:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Ljava/util/zip/Deflater;->input:Ljava/nio/ByteBuffer;

    .line 907
    monitor-exit v0

    .line 908
    return-void

    .line 907
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist test-api finish()V
    .registers 3

    .line 441
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 442
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Ljava/util/zip/Deflater;->finish:Z

    .line 443
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public whitelist test-api finished()Z
    .registers 3

    .line 453
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Deflater;->finished:Z

    monitor-exit v0

    return v1

    .line 455
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist test-api getAdler()I
    .registers 4

    .line 818
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 819
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 820
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/zip/Deflater;->getAdler(J)I

    move-result v1

    monitor-exit v0

    return v1

    .line 821
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api getBytesRead()J
    .registers 4

    .line 844
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 845
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 846
    iget-wide v1, p0, Ljava/util/zip/Deflater;->bytesRead:J

    monitor-exit v0

    return-wide v1

    .line 847
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api getBytesWritten()J
    .registers 4

    .line 870
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 871
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 872
    iget-wide v1, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    monitor-exit v0

    return-wide v1

    .line 873
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api getTotalIn()I
    .registers 3

    .line 834
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api getTotalOut()I
    .registers 3

    .line 860
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api needsInput()Z
    .registers 7

    .line 430
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/Deflater;->input:Ljava/nio/ByteBuffer;

    .line 432
    .local v1, "input":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_10

    iget v4, p0, Ljava/util/zip/Deflater;->inputLim:I

    iget v5, p0, Ljava/util/zip/Deflater;->inputPos:I

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

    .line 433
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

    .line 881
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 882
    :try_start_3
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 883
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/util/zip/Deflater;->reset(J)V

    .line 884
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/zip/Deflater;->finish:Z

    .line 885
    iput-boolean v1, p0, Ljava/util/zip/Deflater;->finished:Z

    .line 886
    sget-object v1, Ljava/util/zip/ZipUtils;->defaultBuf:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Ljava/util/zip/Deflater;->input:Ljava/nio/ByteBuffer;

    .line 887
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/Deflater;->inputArray:[B

    .line 888
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/zip/Deflater;->bytesWritten:J

    iput-wide v1, p0, Ljava/util/zip/Deflater;->bytesRead:J

    .line 889
    monitor-exit v0

    .line 890
    return-void

    .line 889
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist test-api setDictionary(Ljava/nio/ByteBuffer;)V
    .registers 11
    .param p1, "dictionary"    # Ljava/nio/ByteBuffer;

    .line 349
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 350
    :try_start_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 351
    .local v1, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 352
    .local v2, "remaining":I
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 353
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 354
    move-object v3, p1

    check-cast v3, Lsun/nio/ch/DirectBuffer;

    invoke-interface {v3}, Lsun/nio/ch/DirectBuffer;->address()J

    move-result-wide v3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_52

    .line 356
    .local v3, "address":J
    :try_start_21
    iget-object v5, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v5}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v5

    int-to-long v7, v1

    add-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8, v2}, Ljava/util/zip/Deflater;->setDictionaryBuffer(JJI)V
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_31

    .line 358
    :try_start_2c
    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 359
    nop

    .line 360
    .end local v3    # "address":J
    goto :goto_4a

    .line 358
    .restart local v3    # "address":J
    :catchall_31
    move-exception v5

    invoke-static {p1}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 359
    nop

    .end local p0    # "this":Ljava/util/zip/Deflater;
    .end local p1    # "dictionary":Ljava/nio/ByteBuffer;
    throw v5

    .line 361
    .end local v3    # "address":J
    .restart local p0    # "this":Ljava/util/zip/Deflater;
    .restart local p1    # "dictionary":Ljava/nio/ByteBuffer;
    :cond_37
    invoke-static {p1}, Ljava/util/zip/ZipUtils;->getBufferArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 362
    .local v3, "array":[B
    invoke-static {p1}, Ljava/util/zip/ZipUtils;->getBufferOffset(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 363
    .local v4, "offset":I
    iget-object v5, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v5}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v5

    add-int v7, v4, v1

    invoke-static {v5, v6, v3, v7, v2}, Ljava/util/zip/Deflater;->setDictionary(J[BII)V

    .line 365
    .end local v3    # "array":[B
    .end local v4    # "offset":I
    :goto_4a
    add-int v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 366
    nop

    .end local v1    # "position":I
    .end local v2    # "remaining":I
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_52

    throw v1
.end method

.method public whitelist test-api setDictionary([B)V
    .registers 4
    .param p1, "dictionary"    # [B

    .line 331
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setDictionary([BII)V

    .line 332
    return-void
.end method

.method public whitelist test-api setDictionary([BII)V
    .registers 7
    .param p1, "dictionary"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 311
    if-ltz p2, :cond_1c

    if-ltz p3, :cond_1c

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1c

    .line 314
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 315
    :try_start_b
    invoke-direct {p0}, Ljava/util/zip/Deflater;->ensureOpen()V

    .line 316
    iget-object v1, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    invoke-virtual {v1}, Ljava/util/zip/Deflater$DeflaterZStreamRef;->address()J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2, p3}, Ljava/util/zip/Deflater;->setDictionary(J[BII)V

    .line 317
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v1

    .line 312
    :cond_1c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setInput(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 291
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 293
    :try_start_6
    iput-object p1, p0, Ljava/util/zip/Deflater;->input:Ljava/nio/ByteBuffer;

    .line 294
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/Deflater;->inputArray:[B

    .line 295
    monitor-exit v0

    .line 296
    return-void

    .line 295
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

    .line 265
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 266
    return-void
.end method

.method public whitelist test-api setInput([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 244
    if-ltz p2, :cond_1b

    if-ltz p3, :cond_1b

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_1b

    .line 247
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 248
    const/4 v1, 0x0

    :try_start_c
    iput-object v1, p0, Ljava/util/zip/Deflater;->input:Ljava/nio/ByteBuffer;

    .line 249
    iput-object p1, p0, Ljava/util/zip/Deflater;->inputArray:[B

    .line 250
    iput p2, p0, Ljava/util/zip/Deflater;->inputPos:I

    .line 251
    add-int v1, p2, p3

    iput v1, p0, Ljava/util/zip/Deflater;->inputLim:I

    .line 252
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw v1

    .line 245
    :cond_1b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setLevel(I)V
    .registers 4
    .param p1, "level"    # I

    .line 410
    if-ltz p1, :cond_6

    const/16 v0, 0x9

    if-le p1, v0, :cond_9

    :cond_6
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    .line 413
    :cond_9
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 414
    :try_start_c
    iget v1, p0, Ljava/util/zip/Deflater;->level:I

    if-eq v1, p1, :cond_15

    .line 415
    iput p1, p0, Ljava/util/zip/Deflater;->level:I

    .line 416
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/zip/Deflater;->setParams:Z

    .line 418
    :cond_15
    monitor-exit v0

    .line 419
    return-void

    .line 418
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v1

    .line 411
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid compression level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setStrategy(I)V
    .registers 4
    .param p1, "strategy"    # I

    .line 382
    packed-switch p1, :pswitch_data_1c

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 386
    :pswitch_9
    nop

    .line 390
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 391
    :try_start_d
    iget v1, p0, Ljava/util/zip/Deflater;->strategy:I

    if-eq v1, p1, :cond_16

    .line 392
    iput p1, p0, Ljava/util/zip/Deflater;->strategy:I

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/zip/Deflater;->setParams:Z

    .line 395
    :cond_16
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw v1

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method blacklist shouldFinish()Z
    .registers 3

    .line 921
    iget-object v0, p0, Ljava/util/zip/Deflater;->zsRef:Ljava/util/zip/Deflater$DeflaterZStreamRef;

    monitor-enter v0

    .line 922
    :try_start_3
    iget-boolean v1, p0, Ljava/util/zip/Deflater;->finish:Z

    monitor-exit v0

    return v1

    .line 923
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
