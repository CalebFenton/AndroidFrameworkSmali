.class public final synthetic Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda7;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final whitelist test-api execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$$ExternalSyntheticLambda7;->f$0:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
