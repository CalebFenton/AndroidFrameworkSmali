.class Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$2;
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
        "Ljava/security/AccessControlContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 257
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread$2;->run()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/security/AccessControlContext;
    .registers 2

    .line 259
    invoke-static {}, Ljava/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;->createACC()Ljava/security/AccessControlContext;

    move-result-object v0

    return-object v0
.end method
