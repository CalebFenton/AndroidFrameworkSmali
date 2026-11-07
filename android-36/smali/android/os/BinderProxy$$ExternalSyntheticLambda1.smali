.class public final synthetic Landroid/os/BinderProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/IBinder$FrozenStateChangeCallback;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;->f$0:Landroid/os/IBinder$FrozenStateChangeCallback;

    iput-object p2, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    iput p3, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;->f$0:Landroid/os/IBinder$FrozenStateChangeCallback;

    iget-object v1, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;->f$1:Landroid/os/IBinder;

    iget v2, p0, Landroid/os/BinderProxy$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/os/BinderProxy;->lambda$addFrozenStateChangeCallback$0(Landroid/os/IBinder$FrozenStateChangeCallback;Landroid/os/IBinder;I)V

    return-void
.end method
