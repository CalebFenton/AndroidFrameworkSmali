.class Landroid/widget/Editor$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;

    #@0
    .prologue
    .line 255
    iput-object p1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #@2
    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 259
    iget-object v0, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #@8
    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    #@a
    const-wide/16 v2, 0x0

    #@c
    invoke-virtual {v0, v2, v3}, Landroid/view/ActionMode;->hide(J)V

    #@f
    .line 257
    :cond_0
    return-void
.end method
