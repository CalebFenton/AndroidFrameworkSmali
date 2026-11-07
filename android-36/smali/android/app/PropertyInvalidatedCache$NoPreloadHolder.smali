.class final Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;
.super Ljava/lang/Object;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final blacklist sNextNonce:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1800
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;->sNextNonce:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 1799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist next()J
    .registers 2

    .line 1802
    sget-object v0, Landroid/app/PropertyInvalidatedCache$NoPreloadHolder;->sNextNonce:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    return-wide v0
.end method
