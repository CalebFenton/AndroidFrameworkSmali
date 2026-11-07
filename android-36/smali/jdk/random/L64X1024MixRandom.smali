.class public final Ljdk/random/L64X1024MixRandom;
.super Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
.source "L64X1024MixRandom.java"


# annotations
.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x10
    group = "LXM"
    i = 0x400
    j = 0x1
    k = 0x40
    name = "L64X1024MixRandom"
.end annotation


# static fields
.field private static final blacklist M:J = -0x2ecbdabc217d106bL

.field private static final blacklist N:I = 0x10

.field private static final blacklist defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final blacklist a:J

.field private blacklist p:I

.field private blacklist s:J

.field private final blacklist x:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->initialSeed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljdk/random/L64X1024MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 259
    sget-object v0, Ljdk/random/L64X1024MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x61c8864680b583ebL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljdk/random/L64X1024MixRandom;-><init>(J)V

    .line 260
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 44
    .param p1, "seed"    # J

    .line 231
    const-wide v0, 0x6a09e667f3bcc909L    # 6.344059688352416E202

    xor-long v0, p1, v0

    move-wide v2, v0

    .end local p1    # "seed":J
    .local v2, "seed":J
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v5

    .line 233
    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v9

    const-wide v0, -0x61c8864680b583ebL

    add-long v7, v2, v0

    move-wide v2, v7

    .line 234
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v11

    add-long v7, v2, v0

    move-wide v2, v7

    .line 235
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    add-long v7, v2, v0

    move-wide v2, v7

    .line 236
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v15

    add-long v7, v2, v0

    move-wide v2, v7

    .line 237
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v17

    add-long v7, v2, v0

    move-wide v2, v7

    .line 238
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v19

    add-long v7, v2, v0

    move-wide v2, v7

    .line 239
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v21

    add-long v7, v2, v0

    move-wide v2, v7

    .line 240
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v23

    add-long v7, v2, v0

    move-wide v2, v7

    .line 241
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v25

    add-long v7, v2, v0

    move-wide v2, v7

    .line 242
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v27

    add-long v7, v2, v0

    move-wide v2, v7

    .line 243
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v29

    add-long v7, v2, v0

    move-wide v2, v7

    .line 244
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v31

    add-long v7, v2, v0

    move-wide v2, v7

    .line 245
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v33

    add-long v7, v2, v0

    move-wide v2, v7

    .line 246
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v35

    add-long v7, v2, v0

    move-wide v2, v7

    .line 247
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v37

    add-long/2addr v0, v2

    .line 248
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v39

    .line 231
    const-wide/16 v7, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v40}, Ljdk/random/L64X1024MixRandom;-><init>(JJJJJJJJJJJJJJJJJJ)V

    .line 249
    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJJJJJJJJJJJ)V
    .registers 44
    .param p1, "a"    # J
    .param p3, "s"    # J
    .param p5, "x0"    # J
    .param p7, "x1"    # J
    .param p9, "x2"    # J
    .param p11, "x3"    # J
    .param p13, "x4"    # J
    .param p15, "x5"    # J
    .param p17, "x6"    # J
    .param p19, "x7"    # J
    .param p21, "x8"    # J
    .param p23, "x9"    # J
    .param p25, "x10"    # J
    .param p27, "x11"    # J
    .param p29, "x12"    # J
    .param p31, "x13"    # J
    .param p33, "x14"    # J
    .param p35, "x15"    # J

    .line 182
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 150
    const/16 v0, 0xf

    iput v0, p0, Ljdk/random/L64X1024MixRandom;->p:I

    .line 184
    const-wide/16 v1, 0x1

    or-long/2addr v1, p1

    iput-wide v1, p0, Ljdk/random/L64X1024MixRandom;->a:J

    .line 185
    iput-wide p3, p0, Ljdk/random/L64X1024MixRandom;->s:J

    .line 186
    const/16 v1, 0x10

    new-array v2, v1, [J

    iput-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    .line 187
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/4 v3, 0x0

    aput-wide p5, v2, v3

    .line 188
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/4 v3, 0x1

    aput-wide p7, v2, v3

    .line 189
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/4 v3, 0x2

    aput-wide p9, v2, v3

    .line 190
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/4 v3, 0x3

    aput-wide p11, v2, v3

    .line 191
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/4 v3, 0x4

    aput-wide p13, v2, v3

    .line 192
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/4 v3, 0x5

    aput-wide p15, v2, v3

    .line 193
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/4 v3, 0x6

    aput-wide p17, v2, v3

    .line 194
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/4 v3, 0x7

    aput-wide p19, v2, v3

    .line 195
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/16 v3, 0x8

    aput-wide p21, v2, v3

    .line 196
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/16 v3, 0x9

    aput-wide p23, v2, v3

    .line 197
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/16 v3, 0xa

    aput-wide p25, v2, v3

    .line 198
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/16 v3, 0xb

    aput-wide p27, v2, v3

    .line 199
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/16 v3, 0xc

    aput-wide p29, v2, v3

    .line 200
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/16 v3, 0xd

    aput-wide p31, v2, v3

    .line 201
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/16 v3, 0xe

    aput-wide p33, v2, v3

    .line 202
    iget-object v2, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    aput-wide p35, v2, v0

    .line 204
    or-long v2, p5, p7

    or-long v2, v2, p9

    or-long v2, v2, p11

    or-long v2, v2, p13

    or-long v2, v2, p15

    or-long v2, v2, p17

    or-long v2, v2, p19

    or-long v2, v2, p21

    or-long v2, v2, p23

    or-long v2, v2, p25

    or-long v2, v2, p27

    or-long v2, v2, p29

    or-long v2, v2, p31

    or-long v2, v2, p33

    or-long v2, v2, p35

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_a4

    .line 205
    move-wide v2, p3

    .line 207
    .local v2, "v":J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_90
    if-ge v0, v1, :cond_a4

    .line 208
    iget-object v4, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const-wide v5, -0x61c8864680b583ebL

    add-long/2addr v5, v2

    move-wide v2, v5

    invoke-static {v5, v6}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v5

    aput-wide v5, v4, v0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 211
    .end local v0    # "j":I
    .end local v2    # "v":J
    :cond_a4
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 12
    .param p1, "seed"    # [B

    .line 269
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 150
    const/16 v0, 0xf

    iput v0, p0, Ljdk/random/L64X1024MixRandom;->p:I

    .line 271
    const/16 v0, 0x12

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Ljdk/internal/util/random/RandomSupport;->convertSeedBytesToLongs([BII)[J

    move-result-object v0

    .line 272
    .local v0, "data":[J
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    .local v2, "a":J
    const/4 v4, 0x1

    aget-wide v4, v0, v4

    .line 274
    .local v4, "s":J
    const-wide/16 v6, 0x1

    or-long/2addr v6, v2

    iput-wide v6, p0, Ljdk/random/L64X1024MixRandom;->a:J

    .line 275
    iput-wide v4, p0, Ljdk/random/L64X1024MixRandom;->s:J

    .line 276
    new-array v6, v1, [J

    iput-object v6, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    .line 277
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_21
    if-ge v6, v1, :cond_2e

    .line 278
    iget-object v7, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    add-int/lit8 v8, v6, 0x2

    aget-wide v8, v0, v8

    aput-wide v8, v7, v6

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 280
    .end local v6    # "j":I
    :cond_2e
    return-void
.end method


# virtual methods
.method public whitelist test-api nextLong()J
    .registers 13

    .line 301
    iget v0, p0, Ljdk/random/L64X1024MixRandom;->p:I

    .line 302
    .local v0, "q":I
    iget-object v1, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    iget v2, p0, Ljdk/random/L64X1024MixRandom;->p:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0xf

    iput v2, p0, Ljdk/random/L64X1024MixRandom;->p:I

    aget-wide v1, v1, v2

    .line 303
    .local v1, "s0":J
    iget-object v3, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    aget-wide v3, v3, v0

    .line 308
    .local v3, "s15":J
    iget-wide v5, p0, Ljdk/random/L64X1024MixRandom;->s:J

    add-long/2addr v5, v1

    invoke-static {v5, v6}, Ljdk/internal/util/random/RandomSupport;->mixLea64(J)J

    move-result-wide v5

    .line 311
    .local v5, "result":J
    const-wide v7, -0x2ecbdabc217d106bL    # -1.5287564858916588E83

    iget-wide v9, p0, Ljdk/random/L64X1024MixRandom;->s:J

    mul-long/2addr v9, v7

    iget-wide v7, p0, Ljdk/random/L64X1024MixRandom;->a:J

    add-long/2addr v9, v7

    iput-wide v9, p0, Ljdk/random/L64X1024MixRandom;->s:J

    .line 314
    xor-long/2addr v3, v1

    .line 315
    iget-object v7, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    const/16 v8, 0x19

    invoke-static {v1, v2, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    xor-long/2addr v8, v3

    const/16 v10, 0x1b

    shl-long v10, v3, v10

    xor-long/2addr v8, v10

    aput-wide v8, v7, v0

    .line 316
    iget-object v7, p0, Ljdk/random/L64X1024MixRandom;->x:[J

    iget v8, p0, Ljdk/random/L64X1024MixRandom;->p:I

    const/16 v9, 0x24

    invoke-static {v3, v4, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 318
    return-wide v5
.end method

.method public blacklist split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 41
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "brine"    # J

    .line 287
    new-instance v0, Ljdk/random/L64X1024MixRandom;

    const/4 v1, 0x1

    shl-long v1, p2, v1

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v3

    .line 288
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v7

    .line 289
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v11

    .line 290
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v13

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v15

    .line 291
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v17

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v19

    .line 292
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v21

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v23

    .line 293
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v25

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v27

    .line 294
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v29

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v31

    .line 295
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v33

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v35

    invoke-direct/range {v0 .. v36}, Ljdk/random/L64X1024MixRandom;-><init>(JJJJJJJJJJJJJJJJJJ)V

    .line 287
    return-object v0
.end method
