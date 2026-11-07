.class public final Ljdk/random/L128X1024MixRandom;
.super Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
.source "L128X1024MixRandom.java"


# annotations
.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x1
    group = "LXM"
    i = 0x400
    j = 0x1
    k = 0x80
    name = "L128X1024MixRandom"
.end annotation


# static fields
.field private static final blacklist ML:J = -0x29fa444a73754403L

.field private static final blacklist N:I = 0x10

.field private static final blacklist defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final blacklist ah:J

.field private final blacklist al:J

.field private blacklist p:I

.field private blacklist sh:J

.field private blacklist sl:J

.field private final blacklist x:[J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->initialSeed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljdk/random/L128X1024MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 270
    sget-object v0, Ljdk/random/L128X1024MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x61c8864680b583ebL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljdk/random/L128X1024MixRandom;-><init>(J)V

    .line 271
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 48
    .param p1, "seed"    # J

    .line 240
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

    .line 241
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v7

    .line 244
    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v13

    add-long v9, v2, v0

    move-wide v2, v9

    .line 245
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v15

    add-long v9, v2, v0

    move-wide v2, v9

    .line 246
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v17

    add-long v9, v2, v0

    move-wide v2, v9

    .line 247
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v19

    add-long v9, v2, v0

    move-wide v2, v9

    .line 248
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v21

    add-long v9, v2, v0

    move-wide v2, v9

    .line 249
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v23

    add-long v9, v2, v0

    move-wide v2, v9

    .line 250
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v25

    add-long v9, v2, v0

    move-wide v2, v9

    .line 251
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v27

    add-long v9, v2, v0

    move-wide v2, v9

    .line 252
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v29

    add-long v9, v2, v0

    move-wide v2, v9

    .line 253
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v31

    add-long v9, v2, v0

    move-wide v2, v9

    .line 254
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v33

    add-long v9, v2, v0

    move-wide v2, v9

    .line 255
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v35

    add-long v9, v2, v0

    move-wide v2, v9

    .line 256
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v37

    add-long v9, v2, v0

    move-wide v2, v9

    .line 257
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v39

    add-long v9, v2, v0

    move-wide v2, v9

    .line 258
    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v41

    add-long/2addr v0, v2

    .line 259
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v43

    .line 240
    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v44}, Ljdk/random/L128X1024MixRandom;-><init>(JJJJJJJJJJJJJJJJJJJJ)V

    .line 260
    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJJJJJJJJJJJJJ)V
    .registers 52
    .param p1, "ah"    # J
    .param p3, "al"    # J
    .param p5, "sh"    # J
    .param p7, "sl"    # J
    .param p9, "x0"    # J
    .param p11, "x1"    # J
    .param p13, "x2"    # J
    .param p15, "x3"    # J
    .param p17, "x4"    # J
    .param p19, "x5"    # J
    .param p21, "x6"    # J
    .param p23, "x7"    # J
    .param p25, "x8"    # J
    .param p27, "x9"    # J
    .param p29, "x10"    # J
    .param p31, "x11"    # J
    .param p33, "x12"    # J
    .param p35, "x13"    # J
    .param p37, "x14"    # J
    .param p39, "x15"    # J

    .line 189
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 155
    const/16 v0, 0xf

    iput v0, p0, Ljdk/random/L128X1024MixRandom;->p:I

    .line 191
    iput-wide p1, p0, Ljdk/random/L128X1024MixRandom;->ah:J

    .line 192
    const-wide/16 v1, 0x1

    or-long/2addr v1, p3

    iput-wide v1, p0, Ljdk/random/L128X1024MixRandom;->al:J

    .line 193
    move-wide/from16 v1, p5

    iput-wide v1, p0, Ljdk/random/L128X1024MixRandom;->sh:J

    .line 194
    move-wide/from16 v3, p7

    iput-wide v3, p0, Ljdk/random/L128X1024MixRandom;->sl:J

    .line 195
    const/16 v5, 0x10

    new-array v6, v5, [J

    iput-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    .line 196
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/4 v7, 0x0

    aput-wide p9, v6, v7

    .line 197
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/4 v7, 0x1

    aput-wide p11, v6, v7

    .line 198
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/4 v7, 0x2

    aput-wide p13, v6, v7

    .line 199
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/4 v7, 0x3

    aput-wide p15, v6, v7

    .line 200
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/4 v7, 0x4

    aput-wide p17, v6, v7

    .line 201
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/4 v7, 0x5

    aput-wide p19, v6, v7

    .line 202
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/4 v7, 0x6

    aput-wide p21, v6, v7

    .line 203
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/4 v7, 0x7

    aput-wide p23, v6, v7

    .line 204
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/16 v7, 0x8

    aput-wide p25, v6, v7

    .line 205
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/16 v7, 0x9

    aput-wide p27, v6, v7

    .line 206
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/16 v7, 0xa

    aput-wide p29, v6, v7

    .line 207
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/16 v7, 0xb

    aput-wide p31, v6, v7

    .line 208
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/16 v7, 0xc

    aput-wide p33, v6, v7

    .line 209
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/16 v7, 0xd

    aput-wide p35, v6, v7

    .line 210
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/16 v7, 0xe

    aput-wide p37, v6, v7

    .line 211
    iget-object v6, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    aput-wide p39, v6, v0

    .line 213
    or-long v6, p9, p11

    or-long v6, v6, p13

    or-long v6, v6, p15

    or-long v6, v6, p17

    or-long v6, v6, p19

    or-long v6, v6, p21

    or-long v6, v6, p23

    or-long v6, v6, p25

    or-long v6, v6, p27

    or-long v6, v6, p29

    or-long v6, v6, p31

    or-long v6, v6, p33

    or-long v6, v6, p35

    or-long v6, v6, p37

    or-long v6, v6, p39

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_ad

    .line 214
    move-wide/from16 v6, p5

    .line 216
    .local v6, "v":J
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_99
    if-ge v0, v5, :cond_ad

    .line 217
    iget-object v8, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    const-wide v9, -0x61c8864680b583ebL

    add-long/2addr v9, v6

    move-wide v6, v9

    invoke-static {v9, v10}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v9

    aput-wide v9, v8, v0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 220
    .end local v0    # "j":I
    .end local v6    # "v":J
    :cond_ad
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 16
    .param p1, "seed"    # [B

    .line 280
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 155
    const/16 v0, 0xf

    iput v0, p0, Ljdk/random/L128X1024MixRandom;->p:I

    .line 282
    const/16 v0, 0x14

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Ljdk/internal/util/random/RandomSupport;->convertSeedBytesToLongs([BII)[J

    move-result-object v0

    .line 283
    .local v0, "data":[J
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    .local v2, "ah":J
    const/4 v4, 0x1

    aget-wide v4, v0, v4

    .local v4, "al":J
    const/4 v6, 0x2

    aget-wide v6, v0, v6

    .local v6, "sh":J
    const/4 v8, 0x3

    aget-wide v8, v0, v8

    .line 285
    .local v8, "sl":J
    iput-wide v2, p0, Ljdk/random/L128X1024MixRandom;->ah:J

    .line 286
    const-wide/16 v10, 0x1

    or-long/2addr v10, v4

    iput-wide v10, p0, Ljdk/random/L128X1024MixRandom;->al:J

    .line 287
    iput-wide v6, p0, Ljdk/random/L128X1024MixRandom;->sh:J

    .line 288
    iput-wide v8, p0, Ljdk/random/L128X1024MixRandom;->sl:J

    .line 289
    new-array v10, v1, [J

    iput-object v10, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    .line 290
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2b
    if-ge v10, v1, :cond_38

    .line 291
    iget-object v11, p0, Ljdk/random/L128X1024MixRandom;->x:[J

    add-int/lit8 v12, v10, 0x4

    aget-wide v12, v0, v12

    aput-wide v12, v11, v10

    .line 290
    add-int/lit8 v10, v10, 0x1

    goto :goto_2b

    .line 293
    .end local v10    # "j":I
    :cond_38
    return-void
.end method


# virtual methods
.method public whitelist test-api nextLong()J
    .registers 21

    .line 315
    move-object/from16 v0, p0

    iget v1, v0, Ljdk/random/L128X1024MixRandom;->p:I

    .line 316
    .local v1, "q":I
    iget-object v2, v0, Ljdk/random/L128X1024MixRandom;->x:[J

    iget v3, v0, Ljdk/random/L128X1024MixRandom;->p:I

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v3, v3, 0xf

    iput v3, v0, Ljdk/random/L128X1024MixRandom;->p:I

    aget-wide v2, v2, v3

    .line 317
    .local v2, "s0":J
    iget-object v4, v0, Ljdk/random/L128X1024MixRandom;->x:[J

    aget-wide v4, v4, v1

    .line 321
    .local v4, "s15":J
    iget-wide v6, v0, Ljdk/random/L128X1024MixRandom;->sh:J

    add-long/2addr v6, v2

    invoke-static {v6, v7}, Ljdk/internal/util/random/RandomSupport;->mixLea64(J)J

    move-result-wide v6

    .line 325
    .local v6, "result":J
    iget-wide v8, v0, Ljdk/random/L128X1024MixRandom;->sl:J

    const-wide v10, -0x29fa444a73754403L    # -2.4922576746783497E106

    mul-long/2addr v8, v10

    .line 336
    .local v8, "u":J
    iget-wide v12, v0, Ljdk/random/L128X1024MixRandom;->sh:J

    mul-long/2addr v12, v10

    iget-wide v14, v0, Ljdk/random/L128X1024MixRandom;->sl:J

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    move-wide/from16 v18, v10

    iget-wide v10, v0, Ljdk/random/L128X1024MixRandom;->sl:J

    and-long v10, v10, v16

    add-long/2addr v14, v10

    iget-wide v10, v0, Ljdk/random/L128X1024MixRandom;->sl:J

    const/16 v16, 0x3f

    shr-long v10, v10, v16

    and-long v10, v10, v18

    add-long/2addr v14, v10

    add-long/2addr v12, v14

    iget-wide v10, v0, Ljdk/random/L128X1024MixRandom;->sl:J

    add-long/2addr v12, v10

    iget-wide v10, v0, Ljdk/random/L128X1024MixRandom;->ah:J

    add-long/2addr v12, v10

    iput-wide v12, v0, Ljdk/random/L128X1024MixRandom;->sh:J

    .line 337
    iget-wide v10, v0, Ljdk/random/L128X1024MixRandom;->al:J

    add-long/2addr v10, v8

    iput-wide v10, v0, Ljdk/random/L128X1024MixRandom;->sl:J

    .line 338
    iget-wide v10, v0, Ljdk/random/L128X1024MixRandom;->sl:J

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v10

    if-gez v10, :cond_5b

    iget-wide v10, v0, Ljdk/random/L128X1024MixRandom;->sh:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v0, Ljdk/random/L128X1024MixRandom;->sh:J

    .line 341
    :cond_5b
    xor-long/2addr v4, v2

    .line 342
    iget-object v10, v0, Ljdk/random/L128X1024MixRandom;->x:[J

    const/16 v11, 0x19

    invoke-static {v2, v3, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    xor-long/2addr v11, v4

    const/16 v13, 0x1b

    shl-long v13, v4, v13

    xor-long/2addr v11, v13

    aput-wide v11, v10, v1

    .line 343
    iget-object v10, v0, Ljdk/random/L128X1024MixRandom;->x:[J

    iget v11, v0, Ljdk/random/L128X1024MixRandom;->p:I

    const/16 v12, 0x24

    invoke-static {v4, v5, v12}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 345
    return-wide v6
.end method

.method public blacklist split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 45
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "brine"    # J

    .line 300
    new-instance v0, Ljdk/random/L128X1024MixRandom;

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v1

    const/4 v3, 0x1

    shl-long v3, p2, v3

    .line 301
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v7

    .line 302
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v9

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v11

    .line 303
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v13

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v15

    .line 304
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v17

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v19

    .line 305
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v21

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v23

    .line 306
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v25

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v27

    .line 307
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v29

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v31

    .line 308
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v33

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v35

    .line 309
    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v37

    invoke-interface/range {p1 .. p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v39

    invoke-direct/range {v0 .. v40}, Ljdk/random/L128X1024MixRandom;-><init>(JJJJJJJJJJJJJJJJJJJJ)V

    .line 300
    return-object v0
.end method
