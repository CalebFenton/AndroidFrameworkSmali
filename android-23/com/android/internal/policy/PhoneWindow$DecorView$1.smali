.class Lcom/android/internal/policy/PhoneWindow$DecorView$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/PhoneWindow$ColorViewState;IIIZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

.field final synthetic val$state:Lcom/android/internal/policy/PhoneWindow$ColorViewState;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow$DecorView;Lcom/android/internal/policy/PhoneWindow$ColorViewState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/policy/PhoneWindow$DecorView;
    .param p2, "val$state"    # Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@0
    .prologue
    .line 3039
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$1;->this$1:Lcom/android/internal/policy/PhoneWindow$DecorView;

    #@2
    iput-object p2, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$1;->val$state:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

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
    .line 3042
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$1;->val$state:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@2
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@4
    const/high16 v1, 0x3f800000    # 1.0f

    #@6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    #@9
    .line 3043
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$DecorView$1;->val$state:Lcom/android/internal/policy/PhoneWindow$ColorViewState;

    #@b
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    #@d
    const/4 v1, 0x4

    #@e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@11
    .line 3041
    return-void
.end method
