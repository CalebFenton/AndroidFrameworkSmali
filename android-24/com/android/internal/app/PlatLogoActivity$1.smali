.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$im:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/PlatLogoActivity;
    .param p2, "val$im"    # Landroid/widget/ImageView;

    #@0
    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@2
    iput-object p2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$im:Landroid/widget/ImageView;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$im:Landroid/widget/ImageView;

    #@2
    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$1$1;

    #@4
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->val$im:Landroid/widget/ImageView;

    #@6
    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/PlatLogoActivity$1$1;-><init>(Lcom/android/internal/app/PlatLogoActivity$1;Landroid/widget/ImageView;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@c
    .line 148
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    #@e
    iget v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, v0, Lcom/android/internal/app/PlatLogoActivity;->mTapCount:I

    #@14
    .line 100
    return-void
.end method
