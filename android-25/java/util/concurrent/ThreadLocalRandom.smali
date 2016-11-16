.class public Ljava/util/concurrent/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ThreadLocalRandom$1;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;,
        Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;
    }
.end annotation


# static fields
.field static final BAD_BOUND:Ljava/lang/String; = "bound must be positive"

.field static final BAD_RANGE:Ljava/lang/String; = "bound must be greater than origin"

.field static final BAD_SIZE:Ljava/lang/String; = "size must be non-negative"

.field private static final DOUBLE_UNIT:D = 1.1102230246251565E-16

.field private static final FLOAT_UNIT:F = 5.9604645E-8f

.field private static final GAMMA:J = -0x61c8864680b583ebL

.field private static final PROBE:J

.field private static final PROBE_INCREMENT:I = -0x61c88647

.field private static final SECONDARY:J

.field private static final SEED:J

.field private static final SEEDER_INCREMENT:J = -0x4498517a7b3558c5L

.field private static final U:Lsun/misc/Unsafe;

.field static final instance:Ljava/util/concurrent/ThreadLocalRandom;

.field private static final nextLocalGaussian:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final seeder:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    #@0
    .prologue
    const-wide/16 v12, 0xff

    #@2
    const/4 v11, 0x0

    #@3
    const/16 v10, 0x8

    #@5
    .line 941
    const/4 v5, 0x2

    #@6
    new-array v5, v5, [Ljava/io/ObjectStreamField;

    #@8
    .line 942
    new-instance v6, Ljava/io/ObjectStreamField;

    #@a
    const-string/jumbo v7, "rnd"

    #@d
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@f
    invoke-direct {v6, v7, v8}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@12
    aput-object v6, v5, v11

    #@14
    .line 943
    new-instance v6, Ljava/io/ObjectStreamField;

    #@16
    const-string/jumbo v7, "initialized"

    #@19
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1b
    invoke-direct {v6, v7, v8}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@1e
    const/4 v7, 0x1

    #@1f
    aput-object v6, v5, v7

    #@21
    .line 941
    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@23
    .line 995
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@26
    move-result-object v5

    #@27
    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@29
    .line 1001
    :try_start_0
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@2b
    .line 1002
    const-class v6, Ljava/lang/Thread;

    #@2d
    const-string/jumbo v7, "threadLocalRandomSeed"

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@33
    move-result-object v6

    #@34
    .line 1001
    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@37
    move-result-wide v6

    #@38
    sput-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    #@3a
    .line 1003
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@3c
    .line 1004
    const-class v6, Ljava/lang/Thread;

    #@3e
    const-string/jumbo v7, "threadLocalRandomProbe"

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@44
    move-result-object v6

    #@45
    .line 1003
    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@48
    move-result-wide v6

    #@49
    sput-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    #@4b
    .line 1005
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@4d
    .line 1006
    const-class v6, Ljava/lang/Thread;

    #@4f
    const-string/jumbo v7, "threadLocalRandomSecondarySeed"

    #@52
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@55
    move-result-object v6

    #@56
    .line 1005
    invoke-virtual {v5, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@59
    move-result-wide v6

    #@5a
    sput-wide v6, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@5c
    .line 1014
    new-instance v5, Ljava/lang/ThreadLocal;

    #@5e
    invoke-direct {v5}, Ljava/lang/ThreadLocal;-><init>()V

    #@61
    .line 1013
    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    #@63
    .line 1017
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    #@65
    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@68
    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6a
    .line 1020
    new-instance v5, Ljava/util/concurrent/ThreadLocalRandom;

    #@6c
    invoke-direct {v5}, Ljava/util/concurrent/ThreadLocalRandom;-><init>()V

    #@6f
    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->instance:Ljava/util/concurrent/ThreadLocalRandom;

    #@71
    .line 1026
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    #@73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@76
    move-result-wide v6

    #@77
    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@7a
    move-result-wide v6

    #@7b
    .line 1027
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@7e
    move-result-wide v8

    #@7f
    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@82
    move-result-wide v8

    #@83
    .line 1026
    xor-long/2addr v6, v8

    #@84
    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@87
    .line 1025
    sput-object v5, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    #@89
    .line 1032
    new-instance v5, Ljava/util/concurrent/ThreadLocalRandom$1;

    #@8b
    invoke-direct {v5}, Ljava/util/concurrent/ThreadLocalRandom$1;-><init>()V

    #@8e
    .line 1031
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@91
    move-result-object v5

    #@92
    check-cast v5, Ljava/lang/Boolean;

    #@94
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@97
    move-result v5

    #@98
    if-eqz v5, :cond_1

    #@9a
    .line 1036
    invoke-static {v10}, Ljava/security/SecureRandom;->getSeed(I)[B

    #@9d
    move-result-object v4

    #@9e
    .line 1037
    .local v4, "seedBytes":[B
    aget-byte v5, v4, v11

    #@a0
    int-to-long v6, v5

    #@a1
    and-long v2, v6, v12

    #@a3
    .line 1038
    .local v2, "s":J
    const/4 v1, 0x1

    #@a4
    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_0

    #@a6
    .line 1039
    shl-long v6, v2, v10

    #@a8
    aget-byte v5, v4, v1

    #@aa
    int-to-long v8, v5

    #@ab
    and-long/2addr v8, v12

    #@ac
    or-long v2, v6, v8

    #@ae
    .line 1038
    add-int/lit8 v1, v1, 0x1

    #@b0
    goto :goto_0

    #@b1
    .line 1007
    .end local v1    # "i":I
    .end local v2    # "s":J
    .end local v4    # "seedBytes":[B
    :catch_0
    move-exception v0

    #@b2
    .line 1008
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v5, Ljava/lang/Error;

    #@b4
    invoke-direct {v5, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@b7
    throw v5

    #@b8
    .line 1040
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    .restart local v1    # "i":I
    .restart local v2    # "s":J
    .restart local v4    # "seedBytes":[B
    :cond_0
    sget-object v5, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    #@ba
    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    #@bd
    .line 53
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    #@3
    .line 118
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    #@6
    .line 117
    return-void
.end method

.method static final advanceProbe(I)I
    .locals 4
    .param p0, "probe"    # I

    #@0
    .prologue
    .line 907
    shl-int/lit8 v0, p0, 0xd

    #@2
    xor-int/2addr p0, v0

    #@3
    .line 908
    ushr-int/lit8 v0, p0, 0x11

    #@5
    xor-int/2addr p0, v0

    #@6
    .line 909
    shl-int/lit8 v0, p0, 0x5

    #@8
    xor-int/2addr p0, v0

    #@9
    .line 910
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@e
    move-result-object v1

    #@f
    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    #@11
    invoke-virtual {v0, v1, v2, v3, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    #@14
    .line 911
    return p0
.end method

.method public static current()Ljava/util/concurrent/ThreadLocalRandom;
    .locals 4

    #@0
    .prologue
    .line 143
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    #@8
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 144
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->localInit()V

    #@11
    .line 145
    :cond_0
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->instance:Ljava/util/concurrent/ThreadLocalRandom;

    #@13
    return-object v0
.end method

.method static final getProbe()I
    .locals 4

    #@0
    .prologue
    .line 899
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    #@8
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method static final localInit()V
    .locals 8

    #@0
    .prologue
    .line 129
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->probeGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    const v2, -0x61c88647

    #@5
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    #@8
    move-result v6

    #@9
    .line 130
    .local v6, "p":I
    if-nez v6, :cond_0

    #@b
    const/4 v7, 0x1

    #@c
    .line 131
    .local v7, "probe":I
    :goto_0
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    #@e
    const-wide v2, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    #@13
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    #@16
    move-result-wide v2

    #@17
    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@1a
    move-result-wide v4

    #@1b
    .line 132
    .local v4, "seed":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1e
    move-result-object v1

    #@1f
    .line 133
    .local v1, "t":Ljava/lang/Thread;
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@21
    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    #@23
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    #@26
    .line 134
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@28
    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->PROBE:J

    #@2a
    invoke-virtual {v0, v1, v2, v3, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    #@2d
    .line 128
    return-void

    #@2e
    .line 130
    .end local v1    # "t":Ljava/lang/Thread;
    .end local v4    # "seed":J
    .end local v7    # "probe":I
    :cond_0
    move v7, v6

    #@2f
    .restart local v7    # "probe":I
    goto :goto_0
.end method

.method private static mix32(J)I
    .locals 6
    .param p0, "z"    # J

    #@0
    .prologue
    const/16 v4, 0x21

    #@2
    .line 106
    ushr-long v0, p0, v4

    #@4
    xor-long/2addr v0, p0

    #@5
    const-wide v2, -0xae502812aa7333L

    #@a
    mul-long p0, v0, v2

    #@c
    .line 107
    ushr-long v0, p0, v4

    #@e
    xor-long/2addr v0, p0

    #@f
    const-wide v2, -0x3b314601e57a13adL    # -2.902039044684214E23

    #@14
    mul-long/2addr v0, v2

    #@15
    const/16 v2, 0x20

    #@17
    ushr-long/2addr v0, v2

    #@18
    long-to-int v0, v0

    #@19
    return v0
.end method

.method private static mix64(J)J
    .locals 6
    .param p0, "z"    # J

    #@0
    .prologue
    const/16 v4, 0x21

    #@2
    .line 100
    ushr-long v0, p0, v4

    #@4
    xor-long/2addr v0, p0

    #@5
    const-wide v2, -0xae502812aa7333L

    #@a
    mul-long p0, v0, v2

    #@c
    .line 101
    ushr-long v0, p0, v4

    #@e
    xor-long/2addr v0, p0

    #@f
    const-wide v2, -0x3b314601e57a13adL    # -2.902039044684214E23

    #@14
    mul-long p0, v0, v2

    #@16
    .line 102
    ushr-long v0, p0, v4

    #@18
    xor-long/2addr v0, p0

    #@19
    return-wide v0
.end method

.method static final nextSecondarySeed()I
    .locals 6

    #@0
    .prologue
    .line 919
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@3
    move-result-object v1

    #@4
    .line 920
    .local v1, "t":Ljava/lang/Thread;
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v4, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    #@8
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    #@b
    move-result v0

    #@c
    .local v0, "r":I
    if-eqz v0, :cond_1

    #@e
    .line 921
    shl-int/lit8 v2, v0, 0xd

    #@10
    xor-int/2addr v0, v2

    #@11
    .line 922
    ushr-int/lit8 v2, v0, 0x11

    #@13
    xor-int/2addr v0, v2

    #@14
    .line 923
    shl-int/lit8 v2, v0, 0x5

    #@16
    xor-int/2addr v0, v2

    #@17
    .line 927
    :cond_0
    :goto_0
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@19
    sget-wide v4, Ljava/util/concurrent/ThreadLocalRandom;->SECONDARY:J

    #@1b
    invoke-virtual {v2, v1, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    #@1e
    .line 928
    return v0

    #@1f
    .line 925
    :cond_1
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->seeder:Ljava/util/concurrent/atomic/AtomicLong;

    #@21
    const-wide v4, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    #@26
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    #@29
    move-result-wide v2

    #@2a
    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_0

    #@30
    .line 926
    const/4 v0, 0x1

    #@31
    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 965
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 954
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@3
    move-result-object v0

    #@4
    .line 955
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "rnd"

    #@7
    sget-object v2, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@c
    move-result-object v3

    #@d
    sget-wide v4, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    #@f
    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    #@12
    move-result-wide v2

    #@13
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    #@16
    .line 956
    const-string/jumbo v1, "initialized"

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@1d
    .line 957
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@20
    .line 952
    return-void
.end method


# virtual methods
.method public doubles()Ljava/util/stream/DoubleStream;
    .locals 10

    #@0
    .prologue
    .line 644
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    #@2
    .line 645
    const-wide/16 v2, 0x0

    #@4
    const-wide v4, 0x7fffffffffffffffL

    #@9
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@e
    const-wide/16 v8, 0x0

    #@10
    .line 644
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    #@13
    .line 646
    const/4 v0, 0x0

    #@14
    .line 643
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method public doubles(DD)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # D
    .param p3, "randomNumberBound"    # D

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 694
    cmpg-double v0, p1, p3

    #@3
    if-gez v0, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    if-nez v0, :cond_1

    #@8
    .line 695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "bound must be greater than origin"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_0
    move v0, v10

    #@12
    .line 694
    goto :goto_0

    #@13
    .line 697
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    #@15
    .line 698
    const-wide/16 v2, 0x0

    #@17
    const-wide v4, 0x7fffffffffffffffL

    #@1c
    move-wide v6, p1

    #@1d
    move-wide v8, p3

    #@1e
    .line 697
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    #@21
    .line 696
    invoke-static {v1, v10}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public doubles(J)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 623
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 626
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    #@11
    .line 627
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@16
    const-wide/16 v8, 0x0

    #@18
    move-wide v4, p1

    #@19
    .line 626
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    #@1c
    .line 628
    const/4 v0, 0x0

    #@1d
    .line 625
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public doubles(JDD)Ljava/util/stream/DoubleStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # D
    .param p5, "randomNumberBound"    # D

    #@0
    .prologue
    .line 667
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 668
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 669
    :cond_0
    cmpg-double v0, p3, p5

    #@11
    if-gez v0, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    :goto_0
    if-nez v0, :cond_2

    #@16
    .line 670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v1, "bound must be greater than origin"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 669
    :cond_1
    const/4 v0, 0x0

    #@20
    goto :goto_0

    #@21
    .line 672
    :cond_2
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;

    #@23
    .line 673
    const-wide/16 v2, 0x0

    #@25
    move-wide v4, p1

    #@26
    move-wide v6, p3

    #@27
    move-wide/from16 v8, p5

    #@29
    .line 672
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomDoublesSpliterator;-><init>(JJDD)V

    #@2c
    .line 674
    const/4 v0, 0x0

    #@2d
    .line 671
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->doubleStream(Ljava/util/Spliterator$OfDouble;Z)Ljava/util/stream/DoubleStream;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method

.method final internalNextDouble(DD)D
    .locals 7
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    #@0
    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    #@3
    move-result-wide v2

    #@4
    const/16 v4, 0xb

    #@6
    ushr-long/2addr v2, v4

    #@7
    long-to-double v2, v2

    #@8
    const-wide/high16 v4, 0x3ca0000000000000L

    #@a
    mul-double v0, v2, v4

    #@c
    .line 240
    .local v0, "r":D
    cmpg-double v2, p1, p3

    #@e
    if-gez v2, :cond_0

    #@10
    .line 241
    sub-double v2, p3, p1

    #@12
    mul-double/2addr v2, v0

    #@13
    add-double v0, v2, p1

    #@15
    .line 242
    cmpl-double v2, v0, p3

    #@17
    if-ltz v2, :cond_0

    #@19
    .line 243
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@1c
    move-result-wide v2

    #@1d
    const-wide/16 v4, 0x1

    #@1f
    sub-long/2addr v2, v4

    #@20
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@23
    move-result-wide v0

    #@24
    .line 245
    :cond_0
    return-wide v0
.end method

.method final internalNextInt(II)I
    .locals 6
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@3
    move-result-wide v4

    #@4
    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    #@7
    move-result v2

    #@8
    .line 212
    .local v2, "r":I
    if-ge p1, p2, :cond_0

    #@a
    .line 213
    sub-int v1, p2, p1

    #@c
    .local v1, "n":I
    add-int/lit8 v0, v1, -0x1

    #@e
    .line 214
    .local v0, "m":I
    and-int v4, v1, v0

    #@10
    if-nez v4, :cond_1

    #@12
    .line 215
    and-int v4, v2, v0

    #@14
    add-int v2, v4, p1

    #@16
    .line 228
    .end local v0    # "m":I
    .end local v1    # "n":I
    :cond_0
    :goto_0
    return v2

    #@17
    .line 216
    .restart local v0    # "m":I
    .restart local v1    # "n":I
    :cond_1
    if-lez v1, :cond_3

    #@19
    .line 217
    ushr-int/lit8 v3, v2, 0x1

    #@1b
    .line 218
    .local v3, "u":I
    :goto_1
    add-int v4, v3, v0

    #@1d
    rem-int v2, v3, v1

    #@1f
    sub-int/2addr v4, v2

    #@20
    .line 217
    if-gez v4, :cond_2

    #@22
    .line 219
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@25
    move-result-wide v4

    #@26
    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    #@29
    move-result v4

    #@2a
    ushr-int/lit8 v3, v4, 0x1

    #@2c
    goto :goto_1

    #@2d
    .line 221
    :cond_2
    add-int/2addr v2, p1

    #@2e
    goto :goto_0

    #@2f
    .line 224
    .end local v3    # "u":I
    :cond_3
    :goto_2
    if-lt v2, p1, :cond_4

    #@31
    if-lt v2, p2, :cond_0

    #@33
    .line 225
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@36
    move-result-wide v4

    #@37
    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    #@3a
    move-result v2

    #@3b
    goto :goto_2
.end method

.method final internalNextLong(JJ)J
    .locals 13
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    #@0
    .prologue
    .line 182
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@3
    move-result-wide v8

    #@4
    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@7
    move-result-wide v4

    #@8
    .line 183
    .local v4, "r":J
    cmp-long v8, p1, p3

    #@a
    if-gez v8, :cond_0

    #@c
    .line 184
    sub-long v2, p3, p1

    #@e
    .local v2, "n":J
    const-wide/16 v8, 0x1

    #@10
    sub-long v0, v2, v8

    #@12
    .line 185
    .local v0, "m":J
    and-long v8, v2, v0

    #@14
    const-wide/16 v10, 0x0

    #@16
    cmp-long v8, v8, v10

    #@18
    if-nez v8, :cond_1

    #@1a
    .line 186
    and-long v8, v4, v0

    #@1c
    add-long v4, v8, p1

    #@1e
    .line 199
    .end local v0    # "m":J
    .end local v2    # "n":J
    :cond_0
    :goto_0
    return-wide v4

    #@1f
    .line 187
    .restart local v0    # "m":J
    .restart local v2    # "n":J
    :cond_1
    const-wide/16 v8, 0x0

    #@21
    cmp-long v8, v2, v8

    #@23
    if-lez v8, :cond_3

    #@25
    .line 188
    const/4 v8, 0x1

    #@26
    ushr-long v6, v4, v8

    #@28
    .line 189
    .local v6, "u":J
    :goto_1
    add-long v8, v6, v0

    #@2a
    rem-long v4, v6, v2

    #@2c
    sub-long/2addr v8, v4

    #@2d
    const-wide/16 v10, 0x0

    #@2f
    .line 188
    cmp-long v8, v8, v10

    #@31
    if-gez v8, :cond_2

    #@33
    .line 190
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@36
    move-result-wide v8

    #@37
    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@3a
    move-result-wide v8

    #@3b
    const/4 v10, 0x1

    #@3c
    ushr-long v6, v8, v10

    #@3e
    goto :goto_1

    #@3f
    .line 192
    :cond_2
    add-long/2addr v4, p1

    #@40
    goto :goto_0

    #@41
    .line 195
    .end local v6    # "u":J
    :cond_3
    :goto_2
    cmp-long v8, v4, p1

    #@43
    if-ltz v8, :cond_4

    #@45
    cmp-long v8, v4, p3

    #@47
    if-ltz v8, :cond_0

    #@49
    .line 196
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@4c
    move-result-wide v8

    #@4d
    invoke-static {v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@50
    move-result-wide v4

    #@51
    goto :goto_2
.end method

.method public ints()Ljava/util/stream/IntStream;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 466
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    #@3
    .line 467
    const-wide/16 v2, 0x0

    #@5
    const-wide v4, 0x7fffffffffffffffL

    #@a
    const v6, 0x7fffffff

    #@d
    .line 466
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    #@10
    .line 465
    invoke-static {v1, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public ints(II)Ljava/util/stream/IntStream;
    .locals 8
    .param p1, "randomNumberOrigin"    # I
    .param p2, "randomNumberBound"    # I

    #@0
    .prologue
    .line 515
    if-lt p1, p2, :cond_0

    #@2
    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "bound must be greater than origin"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 518
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    #@d
    .line 519
    const-wide/16 v2, 0x0

    #@f
    const-wide v4, 0x7fffffffffffffffL

    #@14
    move v6, p1

    #@15
    move v7, p2

    #@16
    .line 518
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    #@19
    .line 520
    const/4 v0, 0x0

    #@1a
    .line 517
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method public ints(J)Ljava/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    .line 446
    cmp-long v0, p1, v2

    #@5
    if-gez v0, :cond_0

    #@7
    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "size must be non-negative"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 449
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    #@12
    .line 450
    const v6, 0x7fffffff

    #@15
    move-wide v4, p1

    #@16
    .line 449
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    #@19
    .line 448
    invoke-static {v1, v7}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@1c
    move-result-object v0

    #@1d
    return-object v0
.end method

.method public ints(JII)Ljava/util/stream/IntStream;
    .locals 9
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # I
    .param p4, "randomNumberBound"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 488
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 490
    :cond_0
    if-lt p3, p4, :cond_1

    #@11
    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "bound must be greater than origin"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 493
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;

    #@1c
    move-wide v4, p1

    #@1d
    move v6, p3

    #@1e
    move v7, p4

    #@1f
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadLocalRandom$RandomIntsSpliterator;-><init>(JJII)V

    #@22
    .line 495
    const/4 v0, 0x0

    #@23
    .line 492
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public longs()Ljava/util/stream/LongStream;
    .locals 10

    #@0
    .prologue
    const-wide v4, 0x7fffffffffffffffL

    #@5
    const-wide/16 v2, 0x0

    #@7
    .line 554
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    #@9
    move-wide v6, v4

    #@a
    move-wide v8, v2

    #@b
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    #@e
    .line 556
    const/4 v0, 0x0

    #@f
    .line 553
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public longs(J)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 534
    cmp-long v0, p1, v2

    #@4
    if-gez v0, :cond_0

    #@6
    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 537
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    #@11
    .line 538
    const-wide v6, 0x7fffffffffffffffL

    #@16
    move-wide v4, p1

    #@17
    move-wide v8, v2

    #@18
    .line 537
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    #@1b
    .line 539
    const/4 v0, 0x0

    #@1c
    .line 536
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public longs(JJ)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "randomNumberOrigin"    # J
    .param p3, "randomNumberBound"    # J

    #@0
    .prologue
    .line 603
    cmp-long v0, p1, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 604
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "bound must be greater than origin"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 606
    :cond_0
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    #@f
    .line 607
    const-wide/16 v2, 0x0

    #@11
    const-wide v4, 0x7fffffffffffffffL

    #@16
    move-wide v6, p1

    #@17
    move-wide v8, p3

    #@18
    .line 606
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    #@1b
    .line 608
    const/4 v0, 0x0

    #@1c
    .line 605
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public longs(JJJ)Ljava/util/stream/LongStream;
    .locals 11
    .param p1, "streamSize"    # J
    .param p3, "randomNumberOrigin"    # J
    .param p5, "randomNumberBound"    # J

    #@0
    .prologue
    .line 576
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "size must be non-negative"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 578
    :cond_0
    cmp-long v0, p3, p5

    #@11
    if-ltz v0, :cond_1

    #@13
    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "bound must be greater than origin"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 581
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;

    #@1e
    .line 582
    const-wide/16 v2, 0x0

    #@20
    move-wide v4, p1

    #@21
    move-wide v6, p3

    #@22
    move-wide/from16 v8, p5

    #@24
    .line 581
    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadLocalRandom$RandomLongsSpliterator;-><init>(JJJJ)V

    #@27
    .line 583
    const/4 v0, 0x0

    #@28
    .line 580
    invoke-static {v1, v0}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method protected next(I)I
    .locals 3
    .param p1, "bits"    # I

    #@0
    .prologue
    .line 169
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@7
    move-result-wide v0

    #@8
    rsub-int/lit8 v2, p1, 0x40

    #@a
    ushr-long/2addr v0, v2

    #@b
    long-to-int v0, v0

    #@c
    return v0
.end method

.method public nextBoolean()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 401
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@4
    move-result-wide v2

    #@5
    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    #@8
    move-result v1

    #@9
    if-gez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public nextDouble()D
    .locals 4

    #@0
    .prologue
    .line 358
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@7
    move-result-wide v0

    #@8
    const/16 v2, 0xb

    #@a
    ushr-long/2addr v0, v2

    #@b
    long-to-double v0, v0

    #@c
    const-wide/high16 v2, 0x3ca0000000000000L

    #@e
    mul-double/2addr v0, v2

    #@f
    return-wide v0
.end method

.method public nextDouble(D)D
    .locals 7
    .param p1, "bound"    # D

    #@0
    .prologue
    .line 371
    const-wide/16 v2, 0x0

    #@2
    cmpl-double v2, p1, v2

    #@4
    if-lez v2, :cond_0

    #@6
    const/4 v2, 0x1

    #@7
    :goto_0
    if-nez v2, :cond_1

    #@9
    .line 372
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v3, "bound must be positive"

    #@e
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2

    #@12
    .line 371
    :cond_0
    const/4 v2, 0x0

    #@13
    goto :goto_0

    #@14
    .line 373
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@17
    move-result-wide v2

    #@18
    invoke-static {v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@1b
    move-result-wide v2

    #@1c
    const/16 v4, 0xb

    #@1e
    ushr-long/2addr v2, v4

    #@1f
    long-to-double v2, v2

    #@20
    const-wide/high16 v4, 0x3ca0000000000000L

    #@22
    mul-double/2addr v2, v4

    #@23
    mul-double v0, v2, p1

    #@25
    .line 374
    .local v0, "result":D
    cmpg-double v2, v0, p1

    #@27
    if-gez v2, :cond_2

    #@29
    .end local v0    # "result":D
    :goto_1
    return-wide v0

    #@2a
    .line 375
    .restart local v0    # "result":D
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@2d
    move-result-wide v2

    #@2e
    const-wide/16 v4, 0x1

    #@30
    sub-long/2addr v2, v4

    #@31
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@34
    move-result-wide v0

    #@35
    goto :goto_1
.end method

.method public nextDouble(DD)D
    .locals 3
    .param p1, "origin"    # D
    .param p3, "bound"    # D

    #@0
    .prologue
    .line 390
    cmpg-double v0, p1, p3

    #@2
    if-gez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    if-nez v0, :cond_1

    #@7
    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v1, "bound must be greater than origin"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 390
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0

    #@12
    .line 392
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextDouble(DD)D

    #@15
    move-result-wide v0

    #@16
    return-wide v0
.end method

.method public nextFloat()F
    .locals 2

    #@0
    .prologue
    .line 412
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    #@7
    move-result v0

    #@8
    ushr-int/lit8 v0, v0, 0x8

    #@a
    int-to-float v0, v0

    #@b
    const/high16 v1, 0x33800000

    #@d
    mul-float/2addr v0, v1

    #@e
    return v0
.end method

.method public nextGaussian()D
    .locals 14

    #@0
    .prologue
    .line 417
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Double;

    #@8
    .line 418
    .local v0, "d":Ljava/lang/Double;
    if-eqz v0, :cond_0

    #@a
    .line 419
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    #@c
    const/4 v10, 0x0

    #@d
    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@10
    .line 420
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@13
    move-result-wide v10

    #@14
    return-wide v10

    #@15
    .line 424
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    #@18
    move-result-wide v10

    #@19
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    #@1b
    mul-double/2addr v10, v12

    #@1c
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    #@1e
    sub-double v6, v10, v12

    #@20
    .line 425
    .local v6, "v1":D
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    #@23
    move-result-wide v10

    #@24
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    #@26
    mul-double/2addr v10, v12

    #@27
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    #@29
    sub-double v8, v10, v12

    #@2b
    .line 426
    .local v8, "v2":D
    mul-double v10, v6, v6

    #@2d
    mul-double v12, v8, v8

    #@2f
    add-double v4, v10, v12

    #@31
    .line 427
    .local v4, "s":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@33
    cmpl-double v1, v4, v10

    #@35
    if-gez v1, :cond_0

    #@37
    const-wide/16 v10, 0x0

    #@39
    cmpl-double v1, v4, v10

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 428
    invoke-static {v4, v5}, Ljava/lang/StrictMath;->log(D)D

    #@40
    move-result-wide v10

    #@41
    const-wide/high16 v12, -0x4000000000000000L    # -2.0

    #@43
    mul-double/2addr v10, v12

    #@44
    div-double/2addr v10, v4

    #@45
    invoke-static {v10, v11}, Ljava/lang/StrictMath;->sqrt(D)D

    #@48
    move-result-wide v2

    #@49
    .line 429
    .local v2, "multiplier":D
    sget-object v1, Ljava/util/concurrent/ThreadLocalRandom;->nextLocalGaussian:Ljava/lang/ThreadLocal;

    #@4b
    new-instance v10, Ljava/lang/Double;

    #@4d
    mul-double v12, v8, v2

    #@4f
    invoke-direct {v10, v12, v13}, Ljava/lang/Double;-><init>(D)V

    #@52
    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@55
    .line 430
    mul-double v10, v6, v2

    #@57
    return-wide v10
.end method

.method public nextInt()I
    .locals 2

    #@0
    .prologue
    .line 254
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public nextInt(I)I
    .locals 6
    .param p1, "bound"    # I

    #@0
    .prologue
    .line 267
    if-gtz p1, :cond_0

    #@2
    .line 268
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "bound must be positive"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 269
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@e
    move-result-wide v4

    #@f
    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    #@12
    move-result v1

    #@13
    .line 270
    .local v1, "r":I
    add-int/lit8 v0, p1, -0x1

    #@15
    .line 271
    .local v0, "m":I
    and-int v3, p1, v0

    #@17
    if-nez v3, :cond_2

    #@19
    .line 272
    and-int/2addr v1, v0

    #@1a
    .line 279
    :cond_1
    return v1

    #@1b
    .line 274
    :cond_2
    ushr-int/lit8 v2, v1, 0x1

    #@1d
    .line 275
    .local v2, "u":I
    :goto_0
    add-int v3, v2, v0

    #@1f
    rem-int v1, v2, p1

    #@21
    sub-int/2addr v3, v1

    #@22
    .line 274
    if-gez v3, :cond_1

    #@24
    .line 276
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@27
    move-result-wide v4

    #@28
    invoke-static {v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->mix32(J)I

    #@2b
    move-result v3

    #@2c
    ushr-int/lit8 v2, v3, 0x1

    #@2e
    goto :goto_0
.end method

.method public nextInt(II)I
    .locals 2
    .param p1, "origin"    # I
    .param p2, "bound"    # I

    #@0
    .prologue
    .line 294
    if-lt p1, p2, :cond_0

    #@2
    .line 295
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "bound must be greater than origin"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 296
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextInt(II)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public nextLong()J
    .locals 2

    #@0
    .prologue
    .line 305
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public nextLong(J)J
    .locals 11
    .param p1, "bound"    # J

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 318
    cmp-long v6, p1, v8

    #@5
    if-gtz v6, :cond_0

    #@7
    .line 319
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v7, "bound must be positive"

    #@c
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v6

    #@10
    .line 320
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@13
    move-result-wide v6

    #@14
    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@17
    move-result-wide v2

    #@18
    .line 321
    .local v2, "r":J
    const-wide/16 v6, 0x1

    #@1a
    sub-long v0, p1, v6

    #@1c
    .line 322
    .local v0, "m":J
    and-long v6, p1, v0

    #@1e
    cmp-long v6, v6, v8

    #@20
    if-nez v6, :cond_2

    #@22
    .line 323
    and-long/2addr v2, v0

    #@23
    .line 330
    :cond_1
    return-wide v2

    #@24
    .line 325
    :cond_2
    ushr-long v4, v2, v10

    #@26
    .line 326
    .local v4, "u":J
    :goto_0
    add-long v6, v4, v0

    #@28
    rem-long v2, v4, p1

    #@2a
    sub-long/2addr v6, v2

    #@2b
    .line 325
    cmp-long v6, v6, v8

    #@2d
    if-gez v6, :cond_1

    #@2f
    .line 327
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextSeed()J

    #@32
    move-result-wide v6

    #@33
    invoke-static {v6, v7}, Ljava/util/concurrent/ThreadLocalRandom;->mix64(J)J

    #@36
    move-result-wide v6

    #@37
    ushr-long v4, v6, v10

    #@39
    goto :goto_0
.end method

.method public nextLong(JJ)J
    .locals 3
    .param p1, "origin"    # J
    .param p3, "bound"    # J

    #@0
    .prologue
    .line 345
    cmp-long v0, p1, p3

    #@2
    if-ltz v0, :cond_0

    #@4
    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "bound must be greater than origin"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 347
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ThreadLocalRandom;->internalNextLong(JJ)J

    #@10
    move-result-wide v0

    #@11
    return-wide v0
.end method

.method final nextSeed()J
    .locals 10

    #@0
    .prologue
    .line 162
    sget-object v0, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    .local v1, "t":Ljava/lang/Thread;
    sget-wide v2, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    #@8
    .line 163
    sget-object v6, Ljava/util/concurrent/ThreadLocalRandom;->U:Lsun/misc/Unsafe;

    #@a
    sget-wide v8, Ljava/util/concurrent/ThreadLocalRandom;->SEED:J

    #@c
    invoke-virtual {v6, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    #@f
    move-result-wide v6

    #@10
    const-wide v8, -0x61c8864680b583ebL

    #@15
    add-long v4, v6, v8

    #@17
    .line 162
    .local v4, "r":J
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    #@1a
    .line 164
    return-wide v4
.end method

.method public setSeed(J)V
    .locals 1
    .param p1, "seed"    # J

    #@0
    .prologue
    .line 156
    iget-boolean v0, p0, Ljava/util/concurrent/ThreadLocalRandom;->initialized:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 154
    :cond_0
    return-void
.end method
