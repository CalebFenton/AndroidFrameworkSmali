.class Lcom/android/internal/policy/DecorView$6;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$mode:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2105
    iput-object p2, p0, Lcom/android/internal/policy/DecorView$6;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .registers 2

    .line 2108
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$6;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow()V

    .line 2109
    const/4 v0, 0x1

    return v0
.end method
