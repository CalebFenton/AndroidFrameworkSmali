.class public final synthetic Landroid/provider/MediaStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/provider/IMPCancellationSignal;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/provider/IMPCancellationSignal;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/MediaStore$$ExternalSyntheticLambda0;->f$0:Landroid/provider/IMPCancellationSignal;

    return-void
.end method


# virtual methods
.method public final whitelist onCancel()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/provider/MediaStore$$ExternalSyntheticLambda0;->f$0:Landroid/provider/IMPCancellationSignal;

    invoke-static {v0}, Landroid/provider/MediaStore;->lambda$createRemoteCancellationSignalIfNeeded$0(Landroid/provider/IMPCancellationSignal;)V

    return-void
.end method
