.class public final synthetic Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Ljava/util/concurrent/Executors$AutoShutdownDelegatedExecutorService;->lambda$new$0(Ljava/util/concurrent/ExecutorService;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
