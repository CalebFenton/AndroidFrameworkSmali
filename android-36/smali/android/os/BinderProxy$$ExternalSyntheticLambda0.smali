.class public final synthetic Landroid/os/BinderProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$FrozenStateChangeCallback;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/os/IBinder$FrozenStateChangeCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder$FrozenStateChangeCallback;

    return-void
.end method


# virtual methods
.method public final whitelist onFrozenStateChanged(Landroid/os/IBinder;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder$FrozenStateChangeCallback;

    invoke-static {v0, v1, p1, p2}, Landroid/os/BinderProxy;->lambda$addFrozenStateChangeCallback$1(Ljava/util/concurrent/Executor;Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V

    return-void
.end method
