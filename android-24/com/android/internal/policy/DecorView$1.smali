.class Lcom/android/internal/policy/DecorView$1;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIZIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DecorView;

.field final synthetic val$state:Lcom/android/internal/policy/DecorView$ColorViewState;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/DecorView;
    .param p2, "val$state"    # Lcom/android/internal/policy/DecorView$ColorViewState;

    #@0
    .prologue
    .line 1196
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$1;->this$0:Lcom/android/internal/policy/DecorView;

    #@2
    iput-object p2, p0, Lcom/android/internal/policy/DecorView$1;->val$state:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$1;->val$state:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@2
    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@4
    const/high16 v1, 0x3f800000    # 1.0f

    #@6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@9
    .line 1200
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$1;->val$state:Lcom/android/internal/policy/DecorView$ColorViewState;

    #@b
    iget-object v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@d
    const/4 v1, 0x4

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@11
    .line 1198
    return-void
.end method
