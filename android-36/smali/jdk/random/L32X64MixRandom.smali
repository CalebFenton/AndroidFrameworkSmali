.class public final Ljdk/random/L32X64MixRandom;
.super Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;
.source "L32X64MixRandom.java"


# annotations
.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x1
    group = "LXM"
    i = 0x40
    j = 0x1
    k = 0x20
    name = "L32X64MixRandom"
.end annotation


# static fields
.field private static final blacklist M:I = -0x524b56d3

.field private static final blacklist defaultGen:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final blacklist a:I

.field private blacklist s:I

.field private blacklist x0:I

.field private blacklist x1:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljdk/internal/util/random/RandomSupport;->initialSeed()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljdk/random/L32X64MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 201
    sget-object v0, Ljdk/random/L32X64MixRandom;->defaultGen:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v1, -0x61c8864680b583ebL

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljdk/random/L32X64MixRandom;-><init>(J)V

    .line 202
    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .registers 7
    .param p1, "a"    # I
    .param p2, "s"    # I
    .param p3, "x0"    # I
    .param p4, "x1"    # I

    .line 154
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 156
    or-int/lit8 v0, p1, 0x1

    iput v0, p0, Ljdk/random/L32X64MixRandom;->a:I

    .line 157
    iput p2, p0, Ljdk/random/L32X64MixRandom;->s:I

    .line 158
    iput p3, p0, Ljdk/random/L32X64MixRandom;->x0:I

    .line 159
    iput p4, p0, Ljdk/random/L32X64MixRandom;->x1:I

    .line 161
    or-int v0, p3, p4

    if-nez v0, :cond_26

    .line 162
    move v0, p2

    .line 164
    .local v0, "v":I
    const v1, 0x61c88647

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport;->mixMurmur32(I)I

    move-result v1

    iput v1, p0, Ljdk/random/L32X64MixRandom;->x0:I

    .line 165
    const v1, -0x61c88647

    add-int/2addr v1, v0

    invoke-static {v1}, Ljdk/internal/util/random/RandomSupport;->mixMurmur32(I)I

    move-result v1

    iput v1, p0, Ljdk/random/L32X64MixRandom;->x1:I

    .line 167
    .end local v0    # "v":I
    :cond_26
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 7
    .param p1, "seed"    # J

    .line 187
    const-wide v0, 0x6a09e667f3bcc909L    # 6.344059688352416E202

    xor-long/2addr v0, p1

    move-wide p1, v0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport;->mixMurmur32(I)I

    move-result v0

    long-to-int v1, p1

    .line 189
    invoke-static {v1}, Ljdk/internal/util/random/RandomSupport;->mixLea32(I)I

    move-result v1

    long-to-int v2, p1

    const v3, -0x61c88647

    add-int/2addr v2, v3

    .line 190
    invoke-static {v2}, Ljdk/internal/util/random/RandomSupport;->mixLea32(I)I

    move-result v2

    .line 187
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Ljdk/random/L32X64MixRandom;-><init>(IIII)V

    .line 191
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 8
    .param p1, "seed"    # [B

    .line 211
    invoke-direct {p0}, Ljdk/internal/util/random/RandomSupport$AbstractSplittableWithBrineGenerator;-><init>()V

    .line 213
    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Ljdk/internal/util/random/RandomSupport;->convertSeedBytesToInts([BII)[I

    move-result-object v0

    .line 214
    .local v0, "data":[I
    const/4 v2, 0x0

    aget v2, v0, v2

    .local v2, "a":I
    const/4 v3, 0x1

    aget v3, v0, v3

    .local v3, "s":I
    aget v1, v0, v1

    .local v1, "x0":I
    const/4 v4, 0x3

    aget v4, v0, v4

    .line 216
    .local v4, "x1":I
    or-int/lit8 v5, v2, 0x1

    iput v5, p0, Ljdk/random/L32X64MixRandom;->a:I

    .line 217
    iput v3, p0, Ljdk/random/L32X64MixRandom;->s:I

    .line 218
    iput v1, p0, Ljdk/random/L32X64MixRandom;->x0:I

    .line 219
    iput v4, p0, Ljdk/random/L32X64MixRandom;->x1:I

    .line 220
    return-void
.end method


# virtual methods
.method public whitelist test-api nextInt()I
    .registers 6

    .line 235
    iget v0, p0, Ljdk/random/L32X64MixRandom;->s:I

    iget v1, p0, Ljdk/random/L32X64MixRandom;->x0:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport;->mixLea32(I)I

    move-result v0

    .line 238
    .local v0, "result":I
    const v1, -0x524b56d3

    iget v2, p0, Ljdk/random/L32X64MixRandom;->s:I

    mul-int/2addr v2, v1

    iget v1, p0, Ljdk/random/L32X64MixRandom;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Ljdk/random/L32X64MixRandom;->s:I

    .line 241
    iget v1, p0, Ljdk/random/L32X64MixRandom;->x0:I

    .local v1, "q0":I
    iget v2, p0, Ljdk/random/L32X64MixRandom;->x1:I

    .line 243
    .local v2, "q1":I
    xor-int/2addr v2, v1

    .line 244
    const/16 v3, 0x1a

    invoke-static {v1, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 245
    xor-int v3, v1, v2

    shl-int/lit8 v4, v2, 0x9

    xor-int v1, v3, v4

    .line 246
    const/16 v3, 0xd

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    .line 248
    iput v1, p0, Ljdk/random/L32X64MixRandom;->x0:I

    iput v2, p0, Ljdk/random/L32X64MixRandom;->x1:I

    .line 250
    return v0
.end method

.method public whitelist test-api nextLong()J
    .registers 5

    .line 255
    invoke-virtual {p0}, Ljdk/random/L32X64MixRandom;->nextInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ljdk/random/L32X64MixRandom;->nextInt()I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist split(Ljava/util/random/RandomGenerator$SplittableGenerator;J)Ljava/util/random/RandomGenerator$SplittableGenerator;
    .registers 9
    .param p1, "source"    # Ljava/util/random/RandomGenerator$SplittableGenerator;
    .param p2, "brine"    # J

    .line 227
    new-instance v0, Ljdk/random/L32X64MixRandom;

    long-to-int v1, p2

    shl-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextInt()I

    move-result v2

    .line 228
    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextInt()I

    move-result v3

    invoke-interface {p1}, Ljava/util/random/RandomGenerator$SplittableGenerator;->nextInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljdk/random/L32X64MixRandom;-><init>(IIII)V

    .line 227
    return-object v0
.end method
