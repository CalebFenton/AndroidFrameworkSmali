.class Landroid/widget/Editor$InsertionHandleView$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$InsertionHandleView;->hideAfterDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$InsertionHandleView;

    #@0
    .prologue
    .line 4487
    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView$2;->this$1:Landroid/widget/Editor$InsertionHandleView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 4489
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$2;->this$1:Landroid/widget/Editor$InsertionHandleView;

    #@2
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->hide()V

    #@5
    .line 4488
    return-void
.end method
