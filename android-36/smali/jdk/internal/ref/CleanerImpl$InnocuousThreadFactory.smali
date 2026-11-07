.class final Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;
.super Ljava/lang/Object;
.source "CleanerImpl.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/ref/CleanerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnocuousThreadFactory"
.end annotation


# static fields
.field static final blacklist factory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final blacklist cleanerThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 347
    new-instance v0, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;

    invoke-direct {v0}, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;-><init>()V

    sput-object v0, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;->factory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;->cleanerThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static blacklist factory()Ljava/util/concurrent/ThreadFactory;
    .registers 1

    .line 350
    sget-object v0, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;->factory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 356
    new-instance v0, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory$1;

    invoke-direct {v0, p0, p1}, Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory$1;-><init>(Ljdk/internal/ref/CleanerImpl$InnocuousThreadFactory;Ljava/lang/Runnable;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method
