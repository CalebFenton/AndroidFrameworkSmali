.class Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;
.super Ljava/lang/Object;
.source "ForkJoinWorkerThread.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/ThreadGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 251
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$1;->run()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/ThreadGroup;
    .registers 2

    .line 253
    invoke-static {}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->createGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    return-object v0
.end method
