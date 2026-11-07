.class public final synthetic Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/ParcelFileDescriptor;

.field public final synthetic blacklist f$1:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;Landroid/view/ViewRootImpl;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Landroid/view/ViewRootImpl$W$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl$W;->lambda$dumpWindow$0(Landroid/os/ParcelFileDescriptor;Landroid/view/ViewRootImpl;)V

    return-void
.end method
