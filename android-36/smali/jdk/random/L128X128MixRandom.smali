.class public final Ljdk/random/L128X128MixRandom;
.super Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
.source "L128X128MixRandom.java"


# annotations
.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x1
    group = "LXM"
    i = 0x80
    j = 0x1
    k = 0x80
    name = "L128X128MixRandom"
.end annotation


# static fields
.field private static final blacklist ML:J = -0x29fa444a73754403L

.field private static final blacklist defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final blacklist ah:J

.field private final blacklist al:J

.field private blacklist sh:J

.field private blacklist sl:J

.field private blacklist x0:J

.field private blacklist x1:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->initialSeed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljdk/random/L128X128MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 209
    sget-object v0, Ljdk/random/L128X128MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x61c8864680b583ebL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljdk/random/L128X128MixRandom;-><init>(J)V

    .line 210
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 20
    .param p1, "seed"    # J

    .line 193
    const-wide v0, 0x6a09e667f3bcc909L    # 6.344059688352416E202

    xor-long v0, p1, v0

    move-wide v2, v0

    .end local p1    # "seed":J
    .local v2, "seed":J
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v5

    const-wide v0, -0x61c8864680b583ebL

    add-long v7, v2, v0

    move-wide v2, v7

    .line 194
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v7

    .line 197
    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    add-long/2addr v0, v2

    .line 198
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v15

    .line 193
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Ljdk/random/L128X128MixRandom;-><init>(JJJJJJ)V

    .line 199
    return-void
.end method

.method public constructor blacklist <init>(JJJJJJ)V
    .registers 32
    .param p1, "ah"    # J
    .param p3, "al"    # J
    .param p5, "sh"    # J
    .param p7, "sl"    # J
    .param p9, "x0"    # J
    .param p11, "x1"    # J

    .line 158
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    move-wide/from16 v3, p11

    invoke-direct {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 160
    move-wide/from16 v5, p1

    iput-wide v5, v0, Ljdk/random/L128X128MixRandom;->ah:J

    .line 161
    const-wide/16 v7, 0x1

    or-long v7, p3, v7

    iput-wide v7, v0, Ljdk/random/L128X128MixRandom;->al:J

    .line 162
    move-wide/from16 v7, p5

    iput-wide v7, v0, Ljdk/random/L128X128MixRandom;->sh:J

    .line 163
    move-wide/from16 v9, p7

    iput-wide v9, v0, Ljdk/random/L128X128MixRandom;->sl:J

    .line 164
    iput-wide v1, v0, Ljdk/random/L128X128MixRandom;->x0:J

    .line 165
    iput-wide v3, v0, Ljdk/random/L128X128MixRandom;->x1:J

    .line 167
    or-long v11, v1, v3

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_41

    .line 168
    move-wide/from16 v11, p5

    .line 170
    .local v11, "v":J
    const-wide v13, -0x61c8864680b583ebL

    add-long v15, v11, v13

    move-wide v11, v15

    move-wide/from16 v17, v13

    invoke-static/range {v15 .. v16}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    iput-wide v13, v0, Ljdk/random/L128X128MixRandom;->x0:J

    .line 171
    add-long v13, v11, v17

    invoke-static {v13, v14}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    iput-wide v13, v0, Ljdk/random/L128X128MixRandom;->x1:J

    .line 173
    .end local v11    # "v":J
    :cond_41
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 21
    .param p1, "seed"    # [B

    .line 219
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 221
    const/4 v1, 0x6

    const/4 v2, 0x2

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Ljdk/internal/util/random/RandomSupport;->convertSeedBytesToLongs([BII)[J

    move-result-object v1

    .line 222
    .local v1, "data":[J
    const/4 v4, 0x0

    aget-wide v4, v1, v4

    .local v4, "ah":J
    const/4 v6, 0x1

    aget-wide v6, v1, v6

    .local v6, "al":J
    aget-wide v8, v1, v2

    .local v8, "sh":J
    const/4 v2, 0x3

    aget-wide v10, v1, v2

    .local v10, "sl":J
    const/4 v2, 0x4

    aget-wide v12, v1, v2

    .local v12, "x0":J
    const/4 v2, 0x5

    aget-wide v14, v1, v2

    .line 224
    .local v14, "x1":J
    iput-wide v4, v0, Ljdk/random/L128X128MixRandom;->ah:J

    .line 225
    const-wide/16 v16, 0x1

    move-object/from16 v18, v1

    .end local v1    # "data":[J
    .local v18, "data":[J
    or-long v1, v6, v16

    iput-wide v1, v0, Ljdk/random/L128X128MixRandom;->al:J

    .line 226
    iput-wide v8, v0, Ljdk/random/L128X128MixRandom;->sh:J

    .line 227
    iput-wide v10, v0, Ljdk/random/L128X128MixRandom;->sl:J

    .line 228
    iput-wide v12, v0, Ljdk/random/L128X128MixRandom;->x0:J

    .line 229
    iput-wide v14, v0, Ljdk/random/L128X128MixRandom;->x1:J

    .line 230
    return-void
.end method


# virtual methods
.method public whitelist test-api nextLong()J
    .registers 15

    .line 246
    iget-wide v0, p0, Ljdk/random/L128X128MixRandom;->sh:J

    iget-wide v2, p0, Ljdk/random/L128X128MixRandom;->x0:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixLea64(J)J

    move-result-wide v0

    .line 250
    .local v0, "result":J
    iget-wide v2, p0, Ljdk/random/L128X128MixRandom;->sl:J

    const-wide v4, -0x29fa444a73754403L    # -2.4922576746783497E106

    mul-long/2addr v2, v4

    .line 260
    .local v2, "u":J
    iget-wide v6, p0, Ljdk/random/L128X128MixRandom;->sh:J

    mul-long/2addr v6, v4

    iget-wide v8, p0, Ljdk/random/L128X128MixRandom;->sl:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    iget-wide v12, p0, Ljdk/random/L128X128MixRandom;->sl:J

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    iget-wide v10, p0, Ljdk/random/L128X128MixRandom;->sl:J

    const/16 v12, 0x3f

    shr-long/2addr v10, v12

    and-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long/2addr v6, v8

    iget-wide v4, p0, Ljdk/random/L128X128MixRandom;->sl:J

    add-long/2addr v6, v4

    iget-wide v4, p0, Ljdk/random/L128X128MixRandom;->ah:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Ljdk/random/L128X128MixRandom;->sh:J

    .line 261
    iget-wide v4, p0, Ljdk/random/L128X128MixRandom;->al:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljdk/random/L128X128MixRandom;->sl:J

    .line 262
    iget-wide v4, p0, Ljdk/random/L128X128MixRandom;->sl:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v4

    if-gez v4, :cond_44

    iget-wide v4, p0, Ljdk/random/L128X128MixRandom;->sh:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljdk/random/L128X128MixRandom;->sh:J

    .line 264
    :cond_44
    iget-wide v4, p0, Ljdk/random/L128X128MixRandom;->x0:J

    .local v4, "q0":J
    iget-wide v6, p0, Ljdk/random/L128X128MixRandom;->x1:J

    .line 267
    .local v6, "q1":J
    xor-long/2addr v6, v4

    .line 268
    const/16 v8, 0x18

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v4

    .line 269
    xor-long v8, v4, v6

    const/16 v10, 0x10

    shl-long v10, v6, v10

    xor-long v4, v8, v10

    .line 270
    const/16 v8, 0x25

    invoke-static {v6, v7, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v6

    .line 272
    iput-wide v4, p0, Ljdk/random/L128X128MixRandom;->x0:J

    iput-wide v6, p0, Ljdk/random/L128X128MixRandom;->x1:J

    .line 274
    return-wide v0
.end method

.method public blacklist split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 17
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "brine"    # J

    .line 237
    new-instance v0, Ljdk/random/L128X128MixRandom;

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v1

    const/4 v3, 0x1

    shl-long v3, p2, v3

    .line 238
    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v5

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v7

    .line 239
    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v9

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v11

    invoke-direct/range {v0 .. v12}, Ljdk/random/L128X128MixRandom;-><init>(JJJJJJ)V

    .line 237
    return-object v0
.end method
