.class Landroid/widget/MediaController$4;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/MediaController;

    #@0
    .prologue
    .line 537
    iput-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 540
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@2
    invoke-static {v0}, Landroid/widget/MediaController;->-wrap2(Landroid/widget/MediaController;)V

    #@5
    .line 541
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #@7
    const/16 v1, 0xbb8

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    #@c
    .line 539
    return-void
.end method
