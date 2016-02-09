.class Landroid/view/LayoutInflater$BlinkLayout$1;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/LayoutInflater$BlinkLayout;


# direct methods
.method constructor <init>(Landroid/view/LayoutInflater$BlinkLayout;)V
    .locals 0
    .param p1, "this$1"    # Landroid/view/LayoutInflater$BlinkLayout;

    #@0
    .prologue
    .line 1026
    iput-object p1, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 1029
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    const/16 v3, 0x42

    #@6
    if-ne v2, v3, :cond_2

    #@8
    .line 1030
    iget-object v2, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    #@a
    invoke-static {v2}, Landroid/view/LayoutInflater$BlinkLayout;->-get0(Landroid/view/LayoutInflater$BlinkLayout;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1031
    iget-object v2, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    #@12
    iget-object v3, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    #@14
    invoke-static {v3}, Landroid/view/LayoutInflater$BlinkLayout;->-get1(Landroid/view/LayoutInflater$BlinkLayout;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    :goto_0
    invoke-static {v2, v0}, Landroid/view/LayoutInflater$BlinkLayout;->-set0(Landroid/view/LayoutInflater$BlinkLayout;Z)Z

    #@1d
    .line 1032
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    #@1f
    invoke-static {v0}, Landroid/view/LayoutInflater$BlinkLayout;->-wrap0(Landroid/view/LayoutInflater$BlinkLayout;)V

    #@22
    .line 1034
    :cond_0
    iget-object v0, p0, Landroid/view/LayoutInflater$BlinkLayout$1;->this$1:Landroid/view/LayoutInflater$BlinkLayout;

    #@24
    invoke-virtual {v0}, Landroid/view/LayoutInflater$BlinkLayout;->invalidate()V

    #@27
    .line 1035
    return v1

    #@28
    :cond_1
    move v0, v1

    #@29
    .line 1031
    goto :goto_0

    #@2a
    .line 1037
    :cond_2
    return v0
.end method
