.class Ljava/util/concurrent/ForkJoinPool$1;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/util/concurrent/ForkJoinPool;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 3842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 3842
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinPool$1;->run()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/util/concurrent/ForkJoinPool;
    .registers 4

    .line 3844
    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ForkJoinPool;-><init>(BLjava/util/concurrent/ForkJoinPool-IA;)V

    return-object v0
.end method
