.class Lcom/android/internal/policy/PhoneWindow$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ALPHA_DECREASE:F = 0.5f


# instance fields
.field private mIsTranslucent:Z

.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    .line 2993
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2995
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$3;->mIsTranslucent:Z

    #@8
    .line 2993
    return-void
.end method


# virtual methods
.method public onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 4
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;

    #@0
    .prologue
    .line 3015
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v0

    #@6
    .line 3016
    .local v0, "newParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    #@7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    #@9
    .line 3017
    const/high16 v1, 0x3f800000    # 1.0f

    #@b
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@d
    .line 3018
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@f
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@12
    .line 3019
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@14
    const/16 v2, 0x400

    #@16
    const/16 v3, 0x600

    #@18
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    #@1b
    .line 3014
    return-void
.end method

.method public onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V
    .locals 4
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;
    .param p2, "progress"    # F
    .param p3, "translate"    # F

    #@0
    .prologue
    .line 2999
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@5
    move-result-object v1

    #@6
    .line 3000
    .local v1, "newParams":Landroid/view/WindowManager$LayoutParams;
    float-to-int v2, p3

    #@7
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@9
    .line 3001
    const/high16 v2, 0x3f000000    # 0.5f

    #@b
    mul-float/2addr v2, p2

    #@c
    const/high16 v3, 0x3f800000    # 1.0f

    #@e
    sub-float v2, v3, v2

    #@10
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    #@12
    .line 3002
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@14
    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@17
    .line 3004
    const/4 v0, 0x0

    #@18
    .line 3005
    .local v0, "flags":I
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 3006
    const/16 v0, 0x400

    #@1e
    .line 3010
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@20
    const/16 v3, 0x600

    #@22
    invoke-virtual {v2, v0, v3}, Landroid/view/Window;->setFlags(II)V

    #@25
    .line 2998
    return-void

    #@26
    .line 3008
    :cond_0
    const/16 v0, 0x200

    #@28
    goto :goto_0
.end method
