.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/window/CompatOnBackInvokedCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;->f$0:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final whitelist onBackInvoked()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda13;->f$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->$r8$lambda$WOuMLyJiNByPF8lK1FBhwD614fI(Landroid/view/ViewRootImpl;)V

    return-void
.end method
