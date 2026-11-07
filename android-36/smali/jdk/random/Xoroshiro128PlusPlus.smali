.class public final Ljdk/random/Xoroshiro128PlusPlus;
.super Ljava/lang/Object;
.source "Xoroshiro128PlusPlus.java"

# interfaces
.implements Ljava/util/random/RandomGenerator$LeapableGenerator;


# annotations
.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x1
    group = "Xoroshiro"
    i = 0x80
    j = 0x1
    k = 0x0
    name = "Xoroshiro128PlusPlus"
.end annotation


# static fields
.field private static final blacklist GROUP:Ljava/lang/String; = "Xoroshiro"

.field private static final blacklist JUMP_TABLE:[J

.field private static final blacklist LEAP_TABLE:[J

.field private static final blacklist defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private blacklist x0:J

.field private blacklist x1:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->initialSeed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljdk/random/Xoroshiro128PlusPlus;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 248
    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_1c

    sput-object v1, Ljdk/random/Xoroshiro128PlusPlus;->JUMP_TABLE:[J

    .line 250
    new-array v0, v0, [J

    fill-array-data v0, :array_28

    sput-object v0, Ljdk/random/Xoroshiro128PlusPlus;->LEAP_TABLE:[J

    return-void

    nop

    :array_1c
    .array-data 8
        0x2bd7a6a6e99c2ddcL    # 1.730097724252529E-97
        0x992ccaf6a6fca05L
    .end array-data

    :array_28
    .array-data 8
        0x360fd5f2cf8d5d99L    # 2.722861835633101E-48
        -0x639197888c93b91dL    # -9.835611795244487E-172
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 173
    sget-object v0, Ljdk/random/Xoroshiro128PlusPlus;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x61c8864680b583ebL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljdk/random/Xoroshiro128PlusPlus;-><init>(J)V

    .line 174
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 7
    .param p1, "seed"    # J

    .line 161
    const-wide v0, 0x6a09e667f3bcc909L    # 6.344059688352416E202

    xor-long/2addr v0, p1

    move-wide p1, v0

    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v0

    const-wide v2, -0x61c8864680b583ebL

    add-long/2addr v2, p1

    .line 162
    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v2

    .line 161
    invoke-direct {p0, v0, v1, v2, v3}, Ljdk/random/Xoroshiro128PlusPlus;-><init>(JJ)V

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .registers 9
    .param p1, "x0"    # J
    .param p3, "x1"    # J

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-wide p1, p0, Ljdk/random/Xoroshiro128PlusPlus;->x0:J

    .line 138
    iput-wide p3, p0, Ljdk/random/Xoroshiro128PlusPlus;->x1:J

    .line 140
    or-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 141
    const-wide v0, -0x61c8864680b583ebL

    iput-wide v0, p0, Ljdk/random/Xoroshiro128PlusPlus;->x0:J

    .line 142
    const-wide v0, 0x6a09e667f3bcc909L    # 6.344059688352416E202

    iput-wide v0, p0, Ljdk/random/Xoroshiro128PlusPlus;->x1:J

    .line 144
    :cond_1d
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 7
    .param p1, "seed"    # [B

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x2

    invoke-static {p1, v0, v0}, Ljdk/internal/util/random/RandomSupport;->convertSeedBytesToLongs([BII)[J

    move-result-object v0

    .line 186
    .local v0, "data":[J
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v3, v0, v3

    .line 187
    .local v3, "x1":J
    iput-wide v1, p0, Ljdk/random/Xoroshiro128PlusPlus;->x0:J

    .line 188
    iput-wide v3, p0, Ljdk/random/Xoroshiro128PlusPlus;->x1:J

    .line 189
    return-void
.end method

.method private blacklist jumpAlgorithm([J)V
    .registers 12
    .param p1, "table"    # [J

    .line 263
    const-wide/16 v0, 0x0

    .local v0, "s0":J
    const-wide/16 v2, 0x0

    .line 264
    .local v2, "s1":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    array-length v5, p1

    if-ge v4, v5, :cond_28

    .line 265
    const/4 v5, 0x0

    .local v5, "b":I
    :goto_9
    const/16 v6, 0x40

    if-ge v5, v6, :cond_25

    .line 266
    aget-wide v6, p1, v4

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1f

    .line 267
    iget-wide v6, p0, Ljdk/random/Xoroshiro128PlusPlus;->x0:J

    xor-long/2addr v0, v6

    .line 268
    iget-wide v6, p0, Ljdk/random/Xoroshiro128PlusPlus;->x1:J

    xor-long/2addr v2, v6

    .line 270
    :cond_1f
    invoke-virtual {p0}, Ljdk/random/Xoroshiro128PlusPlus;->nextLong()J

    .line 265
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 264
    .end local v5    # "b":I
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 273
    .end local v4    # "i":I
    :cond_28
    iput-wide v0, p0, Ljdk/random/Xoroshiro128PlusPlus;->x0:J

    .line 274
    iput-wide v2, p0, Ljdk/random/Xoroshiro128PlusPlus;->x1:J

    .line 275
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$JumpableGenerator;
    .registers 2

    .line 75
    invoke-virtual {p0}, Ljdk/random/Xoroshiro128PlusPlus;->copy()Ljdk/random/Xoroshiro128PlusPlus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api copy()Ljava/util/random/RandomGenerator$LeapableGenerator;
    .registers 2

    .line 75
    invoke-virtual {p0}, Ljdk/random/Xoroshiro128PlusPlus;->copy()Ljdk/random/Xoroshiro128PlusPlus;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copy()Ljdk/random/Xoroshiro128PlusPlus;
    .registers 6

    .line 194
    new-instance v0, Ljdk/random/Xoroshiro128PlusPlus;

    iget-wide v1, p0, Ljdk/random/Xoroshiro128PlusPlus;->x0:J

    iget-wide v3, p0, Ljdk/random/Xoroshiro128PlusPlus;->x1:J

    invoke-direct {v0, v1, v2, v3, v4}, Ljdk/random/Xoroshiro128PlusPlus;-><init>(JJ)V

    return-object v0
.end method

.method public whitelist test-api jump()V
    .registers 2

    .line 254
    sget-object v0, Ljdk/random/Xoroshiro128PlusPlus;->JUMP_TABLE:[J

    invoke-direct {p0, v0}, Ljdk/random/Xoroshiro128PlusPlus;->jumpAlgorithm([J)V

    .line 255
    return-void
.end method

.method public whitelist test-api jumpDistance()D
    .registers 3

    .line 240
    const-wide/high16 v0, 0x43f0000000000000L    # 1.8446744073709552E19

    return-wide v0
.end method

.method public whitelist test-api leap()V
    .registers 2

    .line 259
    sget-object v0, Ljdk/random/Xoroshiro128PlusPlus;->LEAP_TABLE:[J

    invoke-direct {p0, v0}, Ljdk/random/Xoroshiro128PlusPlus;->jumpAlgorithm([J)V

    .line 260
    return-void
.end method

.method public whitelist test-api leapDistance()D
    .registers 3

    .line 245
    const-wide/high16 v0, 0x45f0000000000000L    # 7.922816251426434E28

    return-wide v0
.end method

.method public whitelist test-api nextLong()J
    .registers 11

    .line 225
    iget-wide v0, p0, Ljdk/random/Xoroshiro128PlusPlus;->x0:J

    .line 226
    .local v0, "s0":J
    iget-wide v2, p0, Ljdk/random/Xoroshiro128PlusPlus;->x1:J

    .line 229
    .local v2, "s1":J
    add-long v4, v0, v2

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 231
    .local v4, "result":J
    xor-long/2addr v2, v0

    .line 232
    const/16 v6, 0x31

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v6

    xor-long/2addr v6, v2

    const/16 v8, 0x15

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    iput-wide v6, p0, Ljdk/random/Xoroshiro128PlusPlus;->x0:J

    .line 233
    const/16 v6, 0x1c

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v6

    iput-wide v6, p0, Ljdk/random/Xoroshiro128PlusPlus;->x1:J

    .line 235
    return-wide v4
.end method
