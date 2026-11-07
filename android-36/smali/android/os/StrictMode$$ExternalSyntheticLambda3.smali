.class public final synthetic Landroid/os/StrictMode$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Landroid/os/StrictMode$ViolationInfo;


# direct methods
.method public synthetic constructor blacklist <init>(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/StrictMode$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Landroid/os/StrictMode$$ExternalSyntheticLambda3;->f$1:Landroid/os/StrictMode$ViolationInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget v0, p0, Landroid/os/StrictMode$$ExternalSyntheticLambda3;->f$0:I

    iget-object v1, p0, Landroid/os/StrictMode$$ExternalSyntheticLambda3;->f$1:Landroid/os/StrictMode$ViolationInfo;

    invoke-static {v0, v1}, Landroid/os/StrictMode;->lambda$dropboxViolationAsync$2(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method
