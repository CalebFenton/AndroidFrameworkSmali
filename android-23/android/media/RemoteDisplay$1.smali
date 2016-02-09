.class Landroid/media/RemoteDisplay$1;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayConnected(Landroid/view/Surface;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$session:I

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;IIII)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteDisplay;
    .param p2, "val$surface"    # Landroid/view/Surface;
    .param p3, "val$width"    # I
    .param p4, "val$height"    # I
    .param p5, "val$flags"    # I
    .param p6, "val$session"    # I

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    #@2
    iput-object p2, p0, Landroid/media/RemoteDisplay$1;->val$surface:Landroid/view/Surface;

    #@4
    iput p3, p0, Landroid/media/RemoteDisplay$1;->val$width:I

    #@6
    iput p4, p0, Landroid/media/RemoteDisplay$1;->val$height:I

    #@8
    iput p5, p0, Landroid/media/RemoteDisplay$1;->val$flags:I

    #@a
    iput p6, p0, Landroid/media/RemoteDisplay$1;->val$session:I

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/media/RemoteDisplay$1;->this$0:Landroid/media/RemoteDisplay;

    #@2
    invoke-static {v0}, Landroid/media/RemoteDisplay;->-get0(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/media/RemoteDisplay$1;->val$surface:Landroid/view/Surface;

    #@8
    iget v2, p0, Landroid/media/RemoteDisplay$1;->val$width:I

    #@a
    iget v3, p0, Landroid/media/RemoteDisplay$1;->val$height:I

    #@c
    iget v4, p0, Landroid/media/RemoteDisplay$1;->val$flags:I

    #@e
    iget v5, p0, Landroid/media/RemoteDisplay$1;->val$session:I

    #@10
    invoke-interface/range {v0 .. v5}, Landroid/media/RemoteDisplay$Listener;->onDisplayConnected(Landroid/view/Surface;IIII)V

    #@13
    .line 132
    return-void
.end method
