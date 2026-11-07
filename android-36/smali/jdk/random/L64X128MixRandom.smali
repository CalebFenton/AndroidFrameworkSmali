.class public final Ljdk/random/L64X128MixRandom;
.super Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
.source "L64X128MixRandom.java"


# annotations
.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x2
    group = "LXM"
    i = 0x80
    j = 0x1
    k = 0x40
    name = "L64X128MixRandom"
.end annotation


# static fields
.field private static final blacklist M:J = -0x2ecbdabc217d106bL

.field private static final blacklist defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final blacklist a:J

.field private blacklist s:J

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

    sput-object v0, Ljdk/random/L64X128MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 202
    sget-object v0, Ljdk/random/L64X128MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x61c8864680b583ebL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljdk/random/L64X128MixRandom;-><init>(J)V

    .line 203
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 14
    .param p1, "seed"    # J

    .line 188
    const-wide v0, 0x6a09e667f3bcc909L    # 6.344059688352416E202

    xor-long/2addr v0, p1

    move-wide p1, v0

    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v3

    .line 190
    invoke-static {p1, p2}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v7

    const-wide v0, -0x61c8864680b583ebL

    add-long/2addr v0, p1

    .line 191
    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v9

    .line 188
    const-wide/16 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Ljdk/random/L64X128MixRandom;-><init>(JJJJ)V

    .line 192
    return-void
.end method

.method public constructor blacklist <init>(JJJJ)V
    .registers 15
    .param p1, "a"    # J
    .param p3, "s"    # J
    .param p5, "x0"    # J
    .param p7, "x1"    # J

    .line 155
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 157
    const-wide/16 v0, 0x1

    or-long/2addr v0, p1

    iput-wide v0, p0, Ljdk/random/L64X128MixRandom;->a:J

    .line 158
    iput-wide p3, p0, Ljdk/random/L64X128MixRandom;->s:J

    .line 159
    iput-wide p5, p0, Ljdk/random/L64X128MixRandom;->x0:J

    .line 160
    iput-wide p7, p0, Ljdk/random/L64X128MixRandom;->x1:J

    .line 162
    or-long v0, p5, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    .line 163
    move-wide v0, p3

    .line 165
    .local v0, "v":J
    const-wide v2, -0x61c8864680b583ebL

    add-long v4, v0, v2

    move-wide v0, v4

    invoke-static {v4, v5}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v4

    iput-wide v4, p0, Ljdk/random/L64X128MixRandom;->x0:J

    .line 166
    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixStafford13(J)J

    move-result-wide v2

    iput-wide v2, p0, Ljdk/random/L64X128MixRandom;->x1:J

    .line 168
    .end local v0    # "v":J
    :cond_2c
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 14
    .param p1, "seed"    # [B

    .line 212
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 214
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Ljdk/internal/util/random/RandomSupport;->convertSeedBytesToLongs([BII)[J

    move-result-object v0

    .line 215
    .local v0, "data":[J
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    .local v2, "a":J
    const/4 v4, 0x1

    aget-wide v4, v0, v4

    .local v4, "s":J
    aget-wide v6, v0, v1

    .local v6, "x0":J
    const/4 v1, 0x3

    aget-wide v8, v0, v1

    .line 217
    .local v8, "x1":J
    const-wide/16 v10, 0x1

    or-long/2addr v10, v2

    iput-wide v10, p0, Ljdk/random/L64X128MixRandom;->a:J

    .line 218
    iput-wide v4, p0, Ljdk/random/L64X128MixRandom;->s:J

    .line 219
    iput-wide v6, p0, Ljdk/random/L64X128MixRandom;->x0:J

    .line 220
    iput-wide v8, p0, Ljdk/random/L64X128MixRandom;->x1:J

    .line 221
    return-void
.end method


# virtual methods
.method public whitelist test-api nextLong()J
    .registers 11

    .line 236
    iget-wide v0, p0, Ljdk/random/L64X128MixRandom;->s:J

    iget-wide v2, p0, Ljdk/random/L64X128MixRandom;->x0:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixLea64(J)J

    move-result-wide v0

    .line 239
    .local v0, "result":J
    const-wide v2, -0x2ecbdabc217d106bL    # -1.5287564858916588E83

    iget-wide v4, p0, Ljdk/random/L64X128MixRandom;->s:J

    mul-long/2addr v4, v2

    iget-wide v2, p0, Ljdk/random/L64X128MixRandom;->a:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Ljdk/random/L64X128MixRandom;->s:J

    .line 242
    iget-wide v2, p0, Ljdk/random/L64X128MixRandom;->x0:J

    .local v2, "q0":J
    iget-wide v4, p0, Ljdk/random/L64X128MixRandom;->x1:J

    .line 244
    .local v4, "q1":J
    xor-long/2addr v4, v2

    .line 245
    const/16 v6, 0x18

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    .line 246
    xor-long v6, v2, v4

    const/16 v8, 0x10

    shl-long v8, v4, v8

    xor-long v2, v6, v8

    .line 247
    const/16 v6, 0x25

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v4

    .line 249
    iput-wide v2, p0, Ljdk/random/L64X128MixRandom;->x0:J

    iput-wide v4, p0, Ljdk/random/L64X128MixRandom;->x1:J

    .line 251
    return-wide v0
.end method

.method public blacklist split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 13
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "brine"    # J

    .line 228
    new-instance v0, Ljdk/random/L64X128MixRandom;

    const/4 v1, 0x1

    shl-long v1, p2, v1

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v3

    .line 229
    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v5

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextLong()J

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Ljdk/random/L64X128MixRandom;-><init>(JJJJ)V

    .line 228
    return-object v0
.end method
