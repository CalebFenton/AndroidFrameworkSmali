.class Lcom/android/internal/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController;->setupDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AlertController;
    .param p2, "val$parent"    # Landroid/view/View;

    #@0
    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/internal/app/AlertController$2;->this$0:Lcom/android/internal/app/AlertController;

    #@2
    iput-object p2, p0, Lcom/android/internal/app/AlertController$2;->val$parent:Landroid/view/View;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    #@0
    .prologue
    .line 437
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 439
    iget-object v1, p0, Lcom/android/internal/app/AlertController$2;->this$0:Lcom/android/internal/app/AlertController;

    #@8
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get6(Lcom/android/internal/app/AlertController;)Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 440
    const v2, 0x105003b

    #@13
    .line 439
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@16
    move-result v0

    #@17
    .line 441
    .local v0, "roundOffset":I
    iget-object v1, p0, Lcom/android/internal/app/AlertController$2;->val$parent:Landroid/view/View;

    #@19
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    #@1c
    .line 443
    .end local v0    # "roundOffset":I
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method
