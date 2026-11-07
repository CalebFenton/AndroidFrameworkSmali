.class public final Ljava/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;
    }
.end annotation

.annotation runtime Ljdk/internal/util/random/RandomSupport$RandomGeneratorProperties;
    equidistribution = 0x1
    i = 0x40
    j = 0x0
    k = 0x0
    name = "ThreadLocalRandom"
.end annotation


# static fields
.field static final greylist-max-o BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final greylist-max-o BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final greylist-max-o BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final blacklist GOLDEN_GAMMA:J = -0x61c8864680b583ebL

.field private static final blacklist INHERITABLETHREADLOCALS:J

.field private static final blacklist INHERITEDACCESSCONTROLCONTEXT:J

.field private static final greylist-max-o PROBE:J

.field private static final greylist-max-o PROBE_INCREMENT:I = -0x61c88647

.field private static final greylist-max-o SECONDARY:J

.field private static final greylist-max-o SEED:J

.field private static final greylist-max-o SEEDER_INCREMENT:J = -0x4498517a7b3558c5L

.field private static final blacklist THREADLOCALS:J

.field private static final blacklist U:Ljdk/internal/misc/Unsafe;

.field private static final greylist-max-o instance:Ljava/util/concurrent/ThreadLocalRandom;

.field private static final greylist-max-o probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final greylist-max-o seeder:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field greylist-max-o initialized:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 320
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "rnd"

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v3, "initialized"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 375
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    .line 376
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    .line 377
    const-string v3, "threadLocalRandomSeed"

    invoke-virtual {v0, v1, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    .line 378
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    .line 379
    const-string v3, "threadLocalRandomProbe"

    invoke-virtual {v0, v1, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    .line 380
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    .line 381
    const-string v3, "threadLocalRandomSecondarySeed"

    invoke-virtual {v0, v1, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    .line 382
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    .line 383
    const-string v3, "threadLocals"

    invoke-virtual {v0, v1, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ThreadLocalRandom;->THREADLOCALS:J

    .line 384
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    .line 385
    const-string v3, "inheritableThreadLocals"

    invoke-virtual {v0, v1, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ThreadLocalRandom;->INHERITABLETHREADLOCALS:J

    .line 386
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    const-class v1, Ljava/lang/Thread;

    .line 387
    const-string v3, "inheritedAccessControlContext"

    invoke-virtual {v0, v1, v3}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ThreadLocalRandom;->INHERITEDACCESSCONTROLCONTEXT:J

    .line 390
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 393
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadLocalRandom;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->instance:Ljava/util/concurrent/ThreadLocalRandom;

    .line 398
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v3

    .line 400
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v5

    xor-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    .line 421
    const-string v0, "java.util.secureRandomSeed"

    invoke-static {v0}, Ljdk/internal/misc/VM;->getSavedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    .local v0, "sec":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 423
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v3

    .line 424
    .local v3, "seedBytes":[B
    aget-byte v2, v3, v2

    int-to-long v4, v2

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    .line 425
    .local v4, "s":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_aa
    if-ge v2, v1, :cond_b7

    .line 426
    shl-long v8, v4, v1

    aget-byte v10, v3, v2

    int-to-long v10, v10

    and-long/2addr v10, v6

    or-long v4, v8, v10

    .line 425
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 427
    .end local v2    # "i":I
    :cond_b7
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 429
    .end local v0    # "sec":Ljava/lang/String;
    .end local v3    # "seedBytes":[B
    .end local v4    # "s":J
    :cond_bc
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    .line 160
    return-void
.end method

.method static final greylist-max-o advanceProbe(I)I
    .registers 5
    .param p0, "probe"    # I

    .line 271
    shl-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 272
    ushr-int/lit8 v0, p0, 0x11

    xor-int/2addr p0, v0

    .line 273
    shl-int/lit8 v0, p0, 0x5

    xor-int/2addr p0, v0

    .line 274
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3, p0}, Ljdk/internal/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 275
    return p0
.end method

.method public static whitelist test-api current()Ljava/util/concurrent/ThreadLocalRandom;
    .registers 4

    .line 186
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    if-nez v0, :cond_11

    .line 187
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    .line 188
    :cond_11
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->instance:Ljava/util/concurrent/ThreadLocalRandom;

    return-object v0
.end method

.method static final blacklist eraseThreadLocals(Ljava/lang/Thread;)V
    .registers 5
    .param p0, "thread"    # Ljava/lang/Thread;

    .line 301
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ThreadLocalRandom;->THREADLOCALS:J

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 302
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ThreadLocalRandom;->INHERITABLETHREADLOCALS:J

    invoke-virtual {v0, p0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->putReference(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 303
    return-void
.end method

.method static final greylist-max-o getProbe()I
    .registers 4

    .line 263
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v0, v1, v2, v3}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static final greylist-max-o localInit()V
    .registers 10

    .line 170
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x61c88647

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 171
    .local v0, "p":I
    if-nez v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    move v1, v0

    .line 172
    .local v1, "probe":I
    :goto_e
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v3, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v8

    .line 173
    .local v8, "seed":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 174
    .local v5, "t":Ljava/lang/Thread;
    sget-object v4, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    invoke-virtual/range {v4 .. v9}, Ljdk/internal/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 175
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    invoke-virtual {v2, v5, v3, v4, v1}, Ljdk/internal/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 176
    return-void
.end method

.method private static greylist-max-o mix32(J)I
    .registers 7
    .param p0, "z"    # J

    .line 147
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long/2addr v1, v3

    .line 148
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v3

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static final greylist-max-o nextSecondarySeed()I
    .registers 5

    .line 283
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 284
    .local v0, "t":Ljava/lang/Thread;
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    invoke-virtual {v1, v0, v2, v3}, Ljdk/internal/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move v2, v1

    .local v2, "r":I
    if-eqz v1, :cond_19

    .line 285
    shl-int/lit8 v1, v2, 0xd

    xor-int/2addr v1, v2

    .line 286
    .end local v2    # "r":I
    .local v1, "r":I
    ushr-int/lit8 v2, v1, 0x11

    xor-int/2addr v1, v2

    .line 287
    shl-int/lit8 v2, v1, 0x5

    xor-int/2addr v1, v2

    goto :goto_2e

    .line 289
    .end local v1    # "r":I
    .restart local v2    # "r":I
    :cond_19
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v3, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_2d

    .line 290
    const/4 v1, 0x1

    .end local v2    # "r":I
    .restart local v1    # "r":I
    goto :goto_2e

    .line 289
    .end local v1    # "r":I
    .restart local v2    # "r":I
    :cond_2d
    move v1, v2

    .line 291
    .end local v2    # "r":I
    .restart local v1    # "r":I
    :goto_2e
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v3, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    invoke-virtual {v2, v0, v3, v4, v1}, Ljdk/internal/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 292
    return v1
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 344
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method static final blacklist setInheritedAccessControlContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V
    .registers 5
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "acc"    # Ljava/security/AccessControlContext;

    .line 307
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v1, Ljava/util/concurrent/ThreadLocalRandom;->INHERITEDACCESSCONTROLCONTEXT:J

    invoke-virtual {v0, p0, v1, v2, p1}, Ljdk/internal/misc/Unsafe;->putReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 308
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 334
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-wide v3, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    invoke-virtual {v1, v2, v3, v4}, Ljdk/internal/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    const-string v3, "rnd"

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 335
    const-string v1, "initialized"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 336
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 337
    return-void
.end method


# virtual methods
.method public whitelist test-api doubles()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 667
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(DD)Ljava/util/stream/DoubleStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    .line 689
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;DD)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(J)Ljava/util/stream/DoubleStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 656
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api doubles(JDD)Ljava/util/stream/DoubleStream;
    .registers 14
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    .line 677
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "streamSize":J
    .end local p3    # "randomNumberOrigin":D
    .end local p5    # "randomNumberBound":D
    .local v1, "streamSize":J
    .local v3, "randomNumberOrigin":D
    .local v5, "randomNumberBound":D
    invoke-static/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->doubles(Ljava/util/random/RandomGenerator;JDD)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api ints()Ljava/util/stream/IntStream;
    .registers 2

    .line 581
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(II)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    .line 603
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;II)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(J)Ljava/util/stream/IntStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 570
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ints(JII)Ljava/util/stream/IntStream;
    .registers 6
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    .line 591
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->ints(Ljava/util/random/RandomGenerator;JII)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs()Ljava/util/stream/LongStream;
    .registers 2

    .line 624
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(J)Ljava/util/stream/LongStream;
    .registers 4
    .param p1, "streamSize"    # J

    .line 613
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0, p1, p2}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;J)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJ)Ljava/util/stream/LongStream;
    .registers 6
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    .line 646
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    invoke-static {v0, p1, p2, p3, p4}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;JJ)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api longs(JJJ)Ljava/util/stream/LongStream;
    .registers 14
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    .line 634
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .end local p1    # "streamSize":J
    .end local p3    # "randomNumberOrigin":J
    .end local p5    # "randomNumberBound":J
    .local v1, "streamSize":J
    .local v3, "randomNumberOrigin":J
    .local v5, "randomNumberBound":J
    invoke-static/range {v0 .. v6}, Ljdk/internal/util/random/RandomSupport$AbstractSpliteratorGenerator;->longs(Ljava/util/random/RandomGenerator;JJJ)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist test-api next(I)I
    .registers 4
    .param p1, "bits"    # I

    .line 235
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    rsub-int/lit8 v1, p1, 0x20

    ushr-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api nextBoolean()Z
    .registers 2

    .line 453
    invoke-super {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api nextDouble()D
    .registers 3

    .line 541
    invoke-super {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextDouble(D)D
    .registers 5
    .param p1, "bound"    # D

    .line 551
    invoke-super {p0, p1, p2}, Ljava/util/Random;->nextDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextDouble(DD)D
    .registers 7
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    .line 561
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/Random;->nextDouble(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextFloat()F
    .registers 2

    .line 513
    invoke-super {p0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public whitelist test-api nextFloat(F)F
    .registers 3
    .param p1, "bound"    # F

    .line 523
    invoke-super {p0, p1}, Ljava/util/Random;->nextFloat(F)F

    move-result v0

    return v0
.end method

.method public whitelist test-api nextFloat(FF)F
    .registers 4
    .param p1, "origin"    # F
    .param p2, "bound"    # F

    .line 533
    invoke-super {p0, p1, p2}, Ljava/util/Random;->nextFloat(FF)F

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt()I
    .registers 3

    .line 461
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt(I)I
    .registers 3
    .param p1, "bound"    # I

    .line 470
    invoke-super {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextInt(II)I
    .registers 4
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    .line 479
    invoke-super {p0, p1, p2}, Ljava/util/Random;->nextInt(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextLong()J
    .registers 3

    .line 487
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljdk/internal/util/random/RandomSupport;->mixMurmur64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextLong(J)J
    .registers 5
    .param p1, "bound"    # J

    .line 496
    invoke-super {p0, p1, p2}, Ljava/util/Random;->nextLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextLong(JJ)J
    .registers 7
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    .line 505
    invoke-super {p0, p1, p2, p3, p4}, Ljava/util/Random;->nextLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method final greylist-max-o nextSeed()J
    .registers 11

    .line 220
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    move-object v6, v1

    .local v6, "t":Ljava/lang/Thread;
    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    sget-object v4, Ljava/util/concurrent/ThreadLocalRandom;->U:Ljdk/internal/misc/Unsafe;

    sget-wide v7, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    .line 221
    invoke-virtual {v4, v6, v7, v8}, Ljdk/internal/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v6}, Ljava/lang/Thread;->threadId()J

    move-result-wide v7

    const/4 v9, 0x1

    shl-long/2addr v7, v9

    add-long/2addr v4, v7

    const-wide v7, -0x61c8864680b583ebL

    add-long/2addr v4, v7

    move-wide v7, v4

    .line 220
    .local v7, "r":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 222
    return-wide v7
.end method

.method public whitelist test-api setSeed(J)V
    .registers 4
    .param p1, "seed"    # J

    .line 199
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    if-nez v0, :cond_5

    .line 201
    return-void

    .line 200
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
