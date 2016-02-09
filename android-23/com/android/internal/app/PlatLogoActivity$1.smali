.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Landroid/view/ViewOutlineProvider;
.source "PlatLogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;

.field final synthetic val$dp:F


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/PlatLogoActivity;
    .param p2, "val$dp"    # F

    #@0
    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@2
    iput p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$dp:F

    #@4
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 76
    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$dp:F

    #@2
    const/high16 v2, 0x41000000    # 8.0f

    #@4
    mul-float/2addr v1, v2

    #@5
    float-to-int v0, v1

    #@6
    .line 77
    .local v0, "pad":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@9
    move-result v1

    #@a
    sub-int/2addr v1, v0

    #@b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@e
    move-result v2

    #@f
    sub-int/2addr v2, v0

    #@10
    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    #@13
    .line 75
    return-void
.end method
