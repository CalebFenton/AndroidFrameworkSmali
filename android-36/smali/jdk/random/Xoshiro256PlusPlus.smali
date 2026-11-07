.class public final Ljdk/random/Xoshiro256PlusPlus;
.super Ljava/lang/Object;
.source "Xoshiro256PlusPlus.java"

# interfaces
.implements Ljava/util/random/RandomGenerator$LeapableGenerator;


# annotations
.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x3
    group = "Xoshiro"
    i = 0x100
    j = 0x1
    k = 0x0
    name = "Xoshiro256PlusPlus"
.end annotation


# static fields
.field private static final blacklist DEFAULT_GEN:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final blacklist JUMP_TABLE:[J

.field private static final blacklist LEAP_TABLE:[J


# instance fields
.field private blacklist x0:J

.field private blacklist x1:J

.field private blacklist x2:J

.field private blacklist x3:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->initialSeed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljdk/random/Xoshiro256PlusPlus;->DEFAULT_GEN:Ljava/util/concurrent/atomic/AtomicLong;

    .line 272
    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_1c

    sput-object v1, Ljdk/random/Xoshiro256PlusPlus;->JUMP_TABLE:[J

    .line 275
    new-array v0, v0, [J

    fill-array-data v0, :array_30

    sput-object v0, Ljdk/random/Xoshiro256PlusPlus;->LEAP_TABLE:[J

    return-void

    nop

    :array_1c
    .array-data 8
        0x180ec6d33cfd0abaL    # 8.43207159256317E-193
        -0x2a59ed990f36c6d4L    # -3.954830756454273E104
        -0x56a7d9e71fc03656L
        0x39abdc4529b1661cL    # 6.868126343460595E-31
    .end array-data

    :array_30
    .array-data 8
        0x76e15d3efefdcbbfL    # 4.374234364833243E264
        -0x3affb1bbe3add04dL    # -2.4640517648551173E24
        0x77710069854ee241L    # 2.1928363393984684E267
        0x39109bb02acbe635L    # 7.996536648537558E-34
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 191
    sget-object v0, Ljdk/random/Xoshiro256PlusPlus;->DEFAULT_GEN:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x61c8864680b583ebL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljdk/random/Xoshiro256PlusPlus;-><init>(J)V

    .line 192
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 14
    .param p1, "seed"    # J

    .line 177
    const-wide v0, 0x6a09e667f3bcc909L    # 6.344059688352416E202

    xor-long/2addr v0, p1

    move-wide p1, v0

    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v3

    const-wide v0, -0x61c8864680b583ebL

    add-long v5, p1, v0

    move-wide p1, v5

    .line 178
    invoke-static {v5, v6}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v5

    add-long v7, p1, v0

    move-wide p1, v7

    .line 179
    invoke-static {v7, v8}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v7

    add-long/2addr v0, p1

    .line 180
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v9

    .line 177
    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Ljdk/random/Xoshiro256PlusPlus;-><init>(JJJJ)V

    .line 181
    return-void
.end method

.method public constructor blacklist <init>(JJJJ)V
    .registers 13
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # J
    .param p7, "x3"    # J

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-wide p1, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    .line 149
    iput-wide p3, p0, Ljdk/random/Xoshiro256PlusPlus;->x1:J

    .line 150
    iput-wide p5, p0, Ljdk/random/Xoshiro256PlusPlus;->x2:J

    .line 151
    iput-wide p7, p0, Ljdk/random/Xoshiro256PlusPlus;->x3:J

    .line 153
    or-long v0, p1, p3

    or-long/2addr v0, p5

    or-long/2addr v0, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_31

    .line 155
    const-wide v0, -0x61c8864680b583ebL

    add-long v2, p1, v0

    move-wide p1, v2

    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    .line 156
    add-long v2, p1, v0

    move-wide p1, v2

    iput-wide v2, p0, Ljdk/random/Xoshiro256PlusPlus;->x1:J

    .line 157
    add-long v2, p1, v0

    move-wide p1, v2

    iput-wide v2, p0, Ljdk/random/Xoshiro256PlusPlus;->x2:J

    .line 158
    add-long/2addr v0, p1

    move-wide p1, v0

    iput-wide v0, p0, Ljdk/random/Xoshiro256PlusPlus;->x3:J

    .line 160
    :cond_31
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 11
    .param p1, "seed"    # [B

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x4

    invoke-static {p1, v0, v0}, Ljdk/internal/util/random/RandomSupport;->convertSeedBytesToLongs([BII)[J

    move-result-object v0

    .line 204
    .local v0, "data":[J
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v3, v0, v3

    .local v3, "x1":J
    const/4 v5, 0x2

    aget-wide v5, v0, v5

    .local v5, "x2":J
    const/4 v7, 0x3

    aget-wide v7, v0, v7

    .line 205
    .local v7, "x3":J
    iput-wide v1, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    .line 206
    iput-wide v3, p0, Ljdk/random/Xoshiro256PlusPlus;->x1:J

    .line 207
    iput-wide v5, p0, Ljdk/random/Xoshiro256PlusPlus;->x2:J

    .line 208
    iput-wide v7, p0, Ljdk/random/Xoshiro256PlusPlus;->x3:J

    .line 209
    return-void
.end method

.method private blacklist jumpAlgorithm([J)V
    .registers 16
    .param p1, "table"    # [J

    .line 289
    const-wide/16 v0, 0x0

    .local v0, "s0":J
    const-wide/16 v2, 0x0

    .local v2, "s1":J
    const-wide/16 v4, 0x0

    .local v4, "s2":J
    const-wide/16 v6, 0x0

    .line 290
    .local v6, "s3":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_9
    array-length v9, p1

    if-ge v8, v9, :cond_32

    .line 291
    const/4 v9, 0x0

    .local v9, "b":I
    :goto_d
    const/16 v10, 0x40

    if-ge v9, v10, :cond_2f

    .line 292
    aget-wide v10, p1, v8

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v9

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_29

    .line 293
    iget-wide v10, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    xor-long/2addr v0, v10

    .line 294
    iget-wide v10, p0, Ljdk/random/Xoshiro256PlusPlus;->x1:J

    xor-long/2addr v2, v10

    .line 295
    iget-wide v10, p0, Ljdk/random/Xoshiro256PlusPlus;->x2:J

    xor-long/2addr v4, v10

    .line 296
    iget-wide v10, p0, Ljdk/random/Xoshiro256PlusPlus;->x3:J

    xor-long/2addr v6, v10

    .line 298
    :cond_29
    invoke-virtual {p0}, Ljdk/random/Xoshiro256PlusPlus;->nextLong()J

    .line 291
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 290
    .end local v9    # "b":I
    :cond_2f
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 301
    .end local v8    # "i":I
    :cond_32
    iput-wide v0, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    .line 302
    iput-wide v2, p0, Ljdk/random/Xoshiro256PlusPlus;->x1:J

    .line 303
    iput-wide v4, p0, Ljdk/random/Xoshiro256PlusPlus;->x2:J

    .line 304
    iput-wide v6, p0, Ljdk/random/Xoshiro256PlusPlus;->x3:J

    .line 305
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$JumpableGenerator;
    .registers 2

    .line 90
    invoke-virtual {p0}, Ljdk/random/Xoshiro256PlusPlus;->copy()Ljdk/random/Xoshiro256PlusPlus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$LeapableGenerator;
    .registers 2

    .line 90
    invoke-virtual {p0}, Ljdk/random/Xoshiro256PlusPlus;->copy()Ljdk/random/Xoshiro256PlusPlus;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copy()Ljdk/random/Xoshiro256PlusPlus;
    .registers 10

    .line 214
    new-instance v0, Ljdk/random/Xoshiro256PlusPlus;

    iget-wide v1, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    iget-wide v3, p0, Ljdk/random/Xoshiro256PlusPlus;->x1:J

    iget-wide v5, p0, Ljdk/random/Xoshiro256PlusPlus;->x2:J

    iget-wide v7, p0, Ljdk/random/Xoshiro256PlusPlus;->x3:J

    invoke-direct/range {v0 .. v8}, Ljdk/random/Xoshiro256PlusPlus;-><init>(JJJJ)V

    return-object v0
.end method

.method public whitelist test-api jump()V
    .registers 2

    .line 280
    sget-object v0, Ljdk/random/Xoshiro256PlusPlus;->JUMP_TABLE:[J

    invoke-direct {p0, v0}, Ljdk/random/Xoshiro256PlusPlus;->jumpAlgorithm([J)V

    .line 281
    return-void
.end method

.method public whitelist test-api jumpDistance()D
    .registers 3

    .line 264
    const-wide/high16 v0, 0x47f0000000000000L    # 3.402823669209385E38

    return-wide v0
.end method

.method public whitelist test-api leap()V
    .registers 2

    .line 285
    sget-object v0, Ljdk/random/Xoshiro256PlusPlus;->LEAP_TABLE:[J

    invoke-direct {p0, v0}, Ljdk/random/Xoshiro256PlusPlus;->jumpAlgorithm([J)V

    .line 286
    return-void
.end method

.method public whitelist test-api leapDistance()D
    .registers 3

    .line 269
    const-wide/high16 v0, 0x4bf0000000000000L    # 6.277101735386681E57

    return-wide v0
.end method

.method public whitelist test-api nextLong()J
    .registers 14

    .line 246
    iget-wide v0, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    iget-wide v2, p0, Ljdk/random/Xoshiro256PlusPlus;->x3:J

    add-long/2addr v0, v2

    const/16 v2, 0x17

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iget-wide v2, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    add-long/2addr v0, v2

    .line 248
    .local v0, "result":J
    iget-wide v2, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    .local v2, "q0":J
    iget-wide v4, p0, Ljdk/random/Xoshiro256PlusPlus;->x1:J

    .local v4, "q1":J
    iget-wide v6, p0, Ljdk/random/Xoshiro256PlusPlus;->x2:J

    .local v6, "q2":J
    iget-wide v8, p0, Ljdk/random/Xoshiro256PlusPlus;->x3:J

    .line 250
    .local v8, "q3":J
    const/16 v10, 0x11

    shl-long v10, v4, v10

    .line 251
    .local v10, "t":J
    xor-long/2addr v6, v2

    .line 252
    xor-long/2addr v8, v4

    .line 253
    xor-long/2addr v4, v6

    .line 254
    xor-long/2addr v2, v8

    .line 255
    xor-long/2addr v6, v10

    .line 256
    const/16 v12, 0x2d

    invoke-static {v8, v9, v12}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    .line 258
    .end local v10    # "t":J
    iput-wide v2, p0, Ljdk/random/Xoshiro256PlusPlus;->x0:J

    iput-wide v4, p0, Ljdk/random/Xoshiro256PlusPlus;->x1:J

    iput-wide v6, p0, Ljdk/random/Xoshiro256PlusPlus;->x2:J

    iput-wide v8, p0, Ljdk/random/Xoshiro256PlusPlus;->x3:J

    .line 259
    return-wide v0
.end method
