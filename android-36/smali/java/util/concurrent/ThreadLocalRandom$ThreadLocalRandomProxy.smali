.class final Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ThreadLocalRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadLocalRandomProxy"
.end annotation


# static fields
.field static final blacklist PROXY:Ljava/util/Random;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 433
    new-instance v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;-><init>()V

    sput-object v0, Ljava/util/concurrent/ThreadLocalRandom$ThreadLocalRandomProxy;->PROXY:Ljava/util/Random;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 432
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api nextDouble()D
    .registers 3

    .line 444
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api nextInt()I
    .registers 2

    .line 436
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method public whitelist test-api nextLong()J
    .registers 3

    .line 440
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method
