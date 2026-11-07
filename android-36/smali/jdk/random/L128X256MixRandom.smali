.class public final Ljdk/random/L128X256MixRandom;
.super Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
.source "L128X256MixRandom.java"


# annotations
.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x1
    group = "LXM"
    i = 0x100
    j = 0x1
    k = 0x80
    name = "L128X256MixRandom"
.end annotation


# static fields
.field private static final blacklist EQUIDISTRIBUTION:I = 0x1

.field private static final blacklist ML:J = -0x29fa444a73754403L

.field private static final blacklist defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final blacklist ah:J

.field private final blacklist al:J

.field private blacklist sh:J

.field private blacklist sl:J

.field private blacklist x0:J

.field private blacklist x1:J

.field private blacklist x2:J

.field private blacklist x3:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->initialSeed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljdk/random/L128X256MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 226
    sget-object v0, Ljdk/random/L128X256MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x61c8864680b583ebL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljdk/random/L128X256MixRandom;-><init>(J)V

    .line 227
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 24
    .param p1, "seed"    # J

    .line 208
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

    .line 209
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v7

    .line 212
    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    add-long v9, v2, v0

    move-wide v2, v9

    .line 213
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v15

    add-long v9, v2, v0

    move-wide v2, v9

    .line 214
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v17

    add-long/2addr v0, v2

    .line 215
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v19

    .line 208
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v20}, Ljdk/random/L128X256MixRandom;-><init>(JJJJJJJJ)V

    .line 216
    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJ)V
    .registers 38
    .param p1, "ah"    # J
    .param p3, "al"    # J
    .param p5, "sh"    # J
    .param p7, "sl"    # J
    .param p9, "x0"    # J
    .param p11, "x1"    # J
    .param p13, "x2"    # J
    .param p15, "x3"    # J

    .line 169
    move-object/from16 v0, p0

    move-wide/from16 v1, p9

    move-wide/from16 v3, p11

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-direct {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 171
    move-wide/from16 v9, p1

    iput-wide v9, v0, Ljdk/random/L128X256MixRandom;->ah:J

    .line 172
    const-wide/16 v11, 0x1

    or-long v11, p3, v11

    iput-wide v11, v0, Ljdk/random/L128X256MixRandom;->al:J

    .line 173
    move-wide/from16 v11, p5

    iput-wide v11, v0, Ljdk/random/L128X256MixRandom;->sh:J

    .line 174
    move-wide/from16 v13, p7

    iput-wide v13, v0, Ljdk/random/L128X256MixRandom;->sl:J

    .line 175
    iput-wide v1, v0, Ljdk/random/L128X256MixRandom;->x0:J

    .line 176
    iput-wide v3, v0, Ljdk/random/L128X256MixRandom;->x1:J

    .line 177
    iput-wide v5, v0, Ljdk/random/L128X256MixRandom;->x2:J

    .line 178
    iput-wide v7, v0, Ljdk/random/L128X256MixRandom;->x3:J

    .line 180
    or-long v15, v1, v3

    or-long/2addr v15, v5

    or-long/2addr v15, v7

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_5c

    .line 181
    move-wide/from16 v15, p5

    .line 183
    .local v15, "v":J
    const-wide v17, -0x61c8864680b583ebL

    add-long v19, v15, v17

    move-wide/from16 v15, v19

    invoke-static/range {v19 .. v20}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v1

    iput-wide v1, v0, Ljdk/random/L128X256MixRandom;->x0:J

    .line 184
    add-long v1, v15, v17

    move-wide v15, v1

    invoke-static {v1, v2}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v1

    iput-wide v1, v0, Ljdk/random/L128X256MixRandom;->x1:J

    .line 185
    add-long v1, v15, v17

    move-wide v15, v1

    invoke-static {v1, v2}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v1

    iput-wide v1, v0, Ljdk/random/L128X256MixRandom;->x2:J

    .line 186
    add-long v17, v15, v17

    invoke-static/range {v17 .. v18}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v1

    iput-wide v1, v0, Ljdk/random/L128X256MixRandom;->x3:J

    .line 188
    .end local v15    # "v":J
    :cond_5c
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 26
    .param p1, "seed"    # [B

    .line 236
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 240
    const/16 v1, 0x8

    const/4 v2, 0x4

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Ljdk/internal/util/random/RandomSupport;->convertSeedBytesToLongs([BII)[J

    move-result-object v1

    .line 241
    .local v1, "data":[J
    const/4 v4, 0x0

    aget-wide v4, v1, v4

    .local v4, "ah":J
    const/4 v6, 0x1

    aget-wide v6, v1, v6

    .local v6, "al":J
    const/4 v8, 0x2

    aget-wide v8, v1, v8

    .local v8, "sh":J
    const/4 v10, 0x3

    aget-wide v10, v1, v10

    .line 242
    .local v10, "sl":J
    aget-wide v12, v1, v2

    .local v12, "x0":J
    const/4 v2, 0x5

    aget-wide v14, v1, v2

    .local v14, "x1":J
    const/4 v2, 0x6

    move-object/from16 v16, v1

    .end local v1    # "data":[J
    .local v16, "data":[J
    aget-wide v1, v16, v2

    .local v1, "x2":J
    const/16 v17, 0x7

    move-wide/from16 v18, v6

    .end local v6    # "al":J
    .local v18, "al":J
    aget-wide v6, v16, v17

    .line 244
    .local v6, "x3":J
    iput-wide v4, v0, Ljdk/random/L128X256MixRandom;->ah:J

    .line 245
    const-wide/16 v20, 0x1

    move-wide/from16 v22, v4

    .end local v4    # "ah":J
    .local v22, "ah":J
    or-long v3, v18, v20

    iput-wide v3, v0, Ljdk/random/L128X256MixRandom;->al:J

    .line 246
    iput-wide v8, v0, Ljdk/random/L128X256MixRandom;->sh:J

    .line 247
    iput-wide v10, v0, Ljdk/random/L128X256MixRandom;->sl:J

    .line 248
    iput-wide v12, v0, Ljdk/random/L128X256MixRandom;->x0:J

    .line 249
    iput-wide v14, v0, Ljdk/random/L128X256MixRandom;->x1:J

    .line 250
    iput-wide v1, v0, Ljdk/random/L128X256MixRandom;->x2:J

    .line 251
    iput-wide v6, v0, Ljdk/random/L128X256MixRandom;->x3:J

    .line 252
    return-void
.end method


# virtual methods
.method public whitelist test-api nextLong()J
    .registers 16

    .line 269
    iget-wide v0, p0, Ljdk/random/L128X256MixRandom;->sh:J

    iget-wide v2, p0, Ljdk/random/L128X256MixRandom;->x0:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixLea64(J)J

    move-result-wide v0

    .line 273
    .local v0, "result":J
    iget-wide v2, p0, Ljdk/random/L128X256MixRandom;->sl:J

    const-wide v4, -0x29fa444a73754403L    # -2.4922576746783497E106

    mul-long/2addr v2, v4

    .line 283
    .local v2, "u":J
    iget-wide v6, p0, Ljdk/random/L128X256MixRandom;->sh:J

    mul-long/2addr v6, v4

    iget-wide v8, p0, Ljdk/random/L128X256MixRandom;->sl:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v8

    const-wide/16 v10, -0x1

    iget-wide v12, p0, Ljdk/random/L128X256MixRandom;->sl:J

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    iget-wide v10, p0, Ljdk/random/L128X256MixRandom;->sl:J

    const/16 v12, 0x3f

    shr-long/2addr v10, v12

    and-long/2addr v4, v10

    add-long/2addr v8, v4

    add-long/2addr v6, v8

    iget-wide v4, p0, Ljdk/random/L128X256MixRandom;->sl:J

    add-long/2addr v6, v4

    iget-wide v4, p0, Ljdk/random/L128X256MixRandom;->ah:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Ljdk/random/L128X256MixRandom;->sh:J

    .line 284
    iget-wide v4, p0, Ljdk/random/L128X256MixRandom;->al:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljdk/random/L128X256MixRandom;->sl:J

    .line 285
    iget-wide v4, p0, Ljdk/random/L128X256MixRandom;->sl:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v4

    if-gez v4, :cond_44

    iget-wide v4, p0, Ljdk/random/L128X256MixRandom;->sh:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Ljdk/random/L128X256MixRandom;->sh:J

    .line 288
    :cond_44
    iget-wide v4, p0, Ljdk/random/L128X256MixRandom;->x0:J

    .local v4, "q0":J
    iget-wide v6, p0, Ljdk/random/L128X256MixRandom;->x1:J

    .local v6, "q1":J
    iget-wide v8, p0, Ljdk/random/L128X256MixRandom;->x2:J

    .local v8, "q2":J
    iget-wide v10, p0, Ljdk/random/L128X256MixRandom;->x3:J

    .line 290
    .local v10, "q3":J
    const/16 v12, 0x11

    shl-long v12, v6, v12

    .line 291
    .local v12, "t":J
    xor-long/2addr v8, v4

    .line 292
    xor-long/2addr v10, v6

    .line 293
    xor-long/2addr v6, v8

    .line 294
    xor-long/2addr v4, v10

    .line 295
    xor-long/2addr v8, v12

    .line 296
    const/16 v14, 0x2d

    invoke-static {v10, v11, v14}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    .line 298
    .end local v12    # "t":J
    iput-wide v4, p0, Ljdk/random/L128X256MixRandom;->x0:J

    iput-wide v6, p0, Ljdk/random/L128X256MixRandom;->x1:J

    iput-wide v8, p0, Ljdk/random/L128X256MixRandom;->x2:J

    iput-wide v10, p0, Ljdk/random/L128X256MixRandom;->x3:J

    .line 300
    return-wide v0
.end method

.method public blacklist split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 21
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "brine"    # J

    .line 259
    new-instance v0, Ljdk/random/L128X256MixRandom;

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v1

    const/4 v3, 0x1

    shl-long v3, p2, v3

    .line 260
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v7

    .line 261
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v11

    .line 262
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v13

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v15

    invoke-direct/range {v0 .. v16}, Ljdk/random/L128X256MixRandom;-><init>(JJJJJJJJ)V

    .line 259
    return-object v0
.end method
