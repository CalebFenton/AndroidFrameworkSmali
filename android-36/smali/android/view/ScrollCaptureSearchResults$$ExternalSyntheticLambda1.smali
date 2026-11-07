.class public final synthetic Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ScrollCaptureSearchResults;

.field public final synthetic blacklist f$1:Landroid/view/ScrollCaptureCallback;

.field public final synthetic blacklist f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;->f$0:Landroid/view/ScrollCaptureSearchResults;

    iput-object p2, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;->f$1:Landroid/view/ScrollCaptureCallback;

    iput-object p3, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;->f$0:Landroid/view/ScrollCaptureSearchResults;

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;->f$1:Landroid/view/ScrollCaptureCallback;

    iget-object v2, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda1;->f$2:Ljava/util/function/Consumer;

    invoke-static {v0, v1, v2}, Landroid/view/ScrollCaptureSearchResults;->$r8$lambda$cSF81BEzWMEe7BE_Rc0m9TL8alU(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    return-void
.end method
