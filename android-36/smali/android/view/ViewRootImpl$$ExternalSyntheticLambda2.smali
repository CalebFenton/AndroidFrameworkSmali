.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:Landroid/view/IScrollCaptureResponseListener;

.field public final synthetic blacklist f$2:Landroid/view/ScrollCaptureSearchResults;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;->f$1:Landroid/view/IScrollCaptureResponseListener;

    iput-object p3, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;->f$2:Landroid/view/ScrollCaptureSearchResults;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;->f$1:Landroid/view/IScrollCaptureResponseListener;

    iget-object v2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda2;->f$2:Landroid/view/ScrollCaptureSearchResults;

    invoke-static {v0, v1, v2}, Landroid/view/ViewRootImpl;->$r8$lambda$hYQvyptbvZz225oTRg1MlVPl-fo(Landroid/view/ViewRootImpl;Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V

    return-void
.end method
