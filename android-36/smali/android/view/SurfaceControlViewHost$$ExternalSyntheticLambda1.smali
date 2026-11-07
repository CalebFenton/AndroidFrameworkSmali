.class public final synthetic Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/WindowlessWindowManager;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/WindowlessWindowManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;->f$0:Landroid/view/WindowlessWindowManager;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/SurfaceControlViewHost$$ExternalSyntheticLambda1;->f$0:Landroid/view/WindowlessWindowManager;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {v0, p1}, Landroid/view/WindowlessWindowManager;->forwardBackKeyToParent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
