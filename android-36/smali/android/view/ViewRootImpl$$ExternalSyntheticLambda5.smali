.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$0:Landroid/view/ViewRootImpl;

    iput p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$0:Landroid/view/ViewRootImpl;

    iget v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p1}, Landroid/view/ViewRootImpl;->$r8$lambda$kydZ5VrQzxxxtiGWLXqElnQw9pY(Landroid/view/ViewRootImpl;ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
