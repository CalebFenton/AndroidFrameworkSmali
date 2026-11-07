.class public final Ljdk/random/L64X256MixRandom;
.super Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
.source "L64X256MixRandom.java"


# annotations
.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x4
    group = "LXM"
    i = 0x100
    j = 0x1
    k = 0x40
    name = "L64X256MixRandom"
.end annotation


# static fields
.field private static final blacklist M:J = -0x2ecbdabc217d106bL

.field private static final blacklist defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final blacklist a:J

.field private blacklist s:J

.field private blacklist x0:J

.field private blacklist x1:J

.field private blacklist x2:J

.field private blacklist x3:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->initialSeed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljdk/random/L64X256MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 211
    sget-object v0, Ljdk/random/L64X256MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x61c8864680b583ebL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljdk/random/L64X256MixRandom;-><init>(J)V

    .line 212
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 20
    .param p1, "seed"    # J

    .line 195
    const-wide v0, 0x6a09e667f3bcc909L    # 6.344059688352416E202

    xor-long v0, p1, v0

    move-wide v2, v0

    .end local p1    # "seed":J
    .local v2, "seed":J
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v5

    .line 197
    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v9

    const-wide v0, -0x61c8864680b583ebL

    add-long v7, v2, v0

    move-wide v2, v7

    .line 198
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v11

    add-long v7, v2, v0

    move-wide v2, v7

    .line 199
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    add-long/2addr v0, v2

    .line 200
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v15

    .line 195
    const-wide/16 v7, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Ljdk/random/L64X256MixRandom;-><init>(JJJJJJ)V

    .line 201
    return-void
.end method

.method public constructor blacklist <init>(JJJJJJ)V
    .registers 32
    .param p1, "a"    # J
    .param p3, "s"    # J
    .param p5, "x0"    # J
    .param p7, "x1"    # J
    .param p9, "x2"    # J
    .param p11, "x3"    # J

    .line 158
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    invoke-direct {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 160
    const-wide/16 v9, 0x1

    or-long v9, p1, v9

    iput-wide v9, v0, Ljdk/random/L64X256MixRandom;->a:J

    .line 161
    move-wide/from16 v9, p3

    iput-wide v9, v0, Ljdk/random/L64X256MixRandom;->s:J

    .line 162
    iput-wide v1, v0, Ljdk/random/L64X256MixRandom;->x0:J

    .line 163
    iput-wide v3, v0, Ljdk/random/L64X256MixRandom;->x1:J

    .line 164
    iput-wide v5, v0, Ljdk/random/L64X256MixRandom;->x2:J

    .line 165
    iput-wide v7, v0, Ljdk/random/L64X256MixRandom;->x3:J

    .line 167
    or-long v11, v1, v3

    or-long/2addr v11, v5

    or-long/2addr v11, v7

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_55

    .line 168
    move-wide/from16 v11, p3

    .line 170
    .local v11, "v":J
    const-wide v13, -0x61c8864680b583ebL

    add-long v15, v11, v13

    move-wide v11, v15

    move-wide/from16 v17, v13

    invoke-static/range {v15 .. v16}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    iput-wide v13, v0, Ljdk/random/L64X256MixRandom;->x0:J

    .line 171
    add-long v13, v11, v17

    move-wide v11, v13

    invoke-static {v13, v14}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    iput-wide v13, v0, Ljdk/random/L64X256MixRandom;->x1:J

    .line 172
    add-long v13, v11, v17

    move-wide v11, v13

    invoke-static {v13, v14}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    iput-wide v13, v0, Ljdk/random/L64X256MixRandom;->x2:J

    .line 173
    add-long v13, v11, v17

    invoke-static {v13, v14}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    iput-wide v13, v0, Ljdk/random/L64X256MixRandom;->x3:J

    .line 175
    .end local v11    # "v":J
    :cond_55
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 21
    .param p1, "seed"    # [B

    .line 221
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 223
    const/4 v1, 0x6

    const/4 v2, 0x4

    move-object/from16 v3, p1

    invoke-static {v3, v1, v2}, Ljdk/internal/util/random/RandomSupport;->convertSeedBytesToLongs([BII)[J

    move-result-object v1

    .line 224
    .local v1, "data":[J
    const/4 v4, 0x0

    aget-wide v4, v1, v4

    .local v4, "a":J
    const/4 v6, 0x1

    aget-wide v6, v1, v6

    .local v6, "s":J
    const/4 v8, 0x2

    aget-wide v8, v1, v8

    .local v8, "x0":J
    const/4 v10, 0x3

    aget-wide v10, v1, v10

    .local v10, "x1":J
    aget-wide v12, v1, v2

    .local v12, "x2":J
    const/4 v2, 0x5

    aget-wide v14, v1, v2

    .line 226
    .local v14, "x3":J
    const-wide/16 v16, 0x1

    move-object/from16 v18, v1

    .end local v1    # "data":[J
    .local v18, "data":[J
    or-long v1, v4, v16

    iput-wide v1, v0, Ljdk/random/L64X256MixRandom;->a:J

    .line 227
    iput-wide v6, v0, Ljdk/random/L64X256MixRandom;->s:J

    .line 228
    iput-wide v8, v0, Ljdk/random/L64X256MixRandom;->x0:J

    .line 229
    iput-wide v10, v0, Ljdk/random/L64X256MixRandom;->x1:J

    .line 230
    iput-wide v12, v0, Ljdk/random/L64X256MixRandom;->x2:J

    .line 231
    iput-wide v14, v0, Ljdk/random/L64X256MixRandom;->x3:J

    .line 232
    return-void
.end method


# virtual methods
.method public whitelist test-api nextLong()J
    .registers 14

    .line 248
    iget-wide v0, p0, Ljdk/random/L64X256MixRandom;->s:J

    iget-wide v2, p0, Ljdk/random/L64X256MixRandom;->x0:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixLea64(J)J

    move-result-wide v0

    .line 251
    .local v0, "result":J
    const-wide v2, -0x2ecbdabc217d106bL    # -1.5287564858916588E83

    iget-wide v4, p0, Ljdk/random/L64X256MixRandom;->s:J

    mul-long/2addr v4, v2

    iget-wide v2, p0, Ljdk/random/L64X256MixRandom;->a:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljdk/random/L64X256MixRandom;->s:J

    .line 254
    iget-wide v2, p0, Ljdk/random/L64X256MixRandom;->x0:J

    .local v2, "q0":J
    iget-wide v4, p0, Ljdk/random/L64X256MixRandom;->x1:J

    .local v4, "q1":J
    iget-wide v6, p0, Ljdk/random/L64X256MixRandom;->x2:J

    .local v6, "q2":J
    iget-wide v8, p0, Ljdk/random/L64X256MixRandom;->x3:J

    .line 256
    .local v8, "q3":J
    const/16 v10, 0x11

    shl-long v10, v4, v10

    .line 257
    .local v10, "t":J
    xor-long/2addr v6, v2

    .line 258
    xor-long/2addr v8, v4

    .line 259
    xor-long/2addr v4, v6

    .line 260
    xor-long/2addr v2, v8

    .line 261
    xor-long/2addr v6, v10

    .line 262
    const/16 v12, 0x2d

    invoke-static {v8, v9, v12}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    .line 264
    .end local v10    # "t":J
    iput-wide v2, p0, Ljdk/random/L64X256MixRandom;->x0:J

    iput-wide v4, p0, Ljdk/random/L64X256MixRandom;->x1:J

    iput-wide v6, p0, Ljdk/random/L64X256MixRandom;->x2:J

    iput-wide v8, p0, Ljdk/random/L64X256MixRandom;->x3:J

    .line 266
    return-wide v0
.end method

.method public blacklist split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 17
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "brine"    # J

    .line 239
    new-instance v0, Ljdk/random/L64X256MixRandom;

    const/4 v1, 0x1

    shl-long v1, p2, v1

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v3

    .line 240
    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v5

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v7

    .line 241
    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v9

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v11

    invoke-direct/range {v0 .. v12}, Ljdk/random/L64X256MixRandom;-><init>(JJJJJJ)V

    .line 239
    return-object v0
.end method
