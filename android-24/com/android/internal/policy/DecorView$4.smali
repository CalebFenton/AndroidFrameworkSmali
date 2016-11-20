.class Lcom/android/internal/policy/DecorView$4;
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
.field final synthetic this$0:Lcom/android/internal/policy/DecorView;

.field final synthetic val$mode:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;
    .param p2, "val$mode"    # Lcom/android/internal/view/FloatingActionMode;

    #@0
    .prologue
    .line 1693
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$4;->this$0:Lcom/android/internal/policy/DecorView;

    #@2
    iput-object p2, p0, Lcom/android/internal/policy/DecorView$4;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    #@0
    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$4;->val$mode:Lcom/android/internal/view/FloatingActionMode;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/FloatingActionMode;->updateViewLocationInWindow()V

    #@5
    .line 1697
    const/4 v0, 0x1

    #@6
    return v0
.end method
