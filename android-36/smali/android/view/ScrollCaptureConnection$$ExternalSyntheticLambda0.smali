.class public final synthetic Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ScrollCaptureCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ScrollCaptureCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureCallback;

    invoke-static {v0}, Landroid/view/ScrollCaptureConnection;->lambda$close$4(Landroid/view/ScrollCaptureCallback;)V

    return-void
.end method
