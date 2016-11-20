.class Landroid/media/RemoteDisplay$3;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteDisplay;
    .param p2, "val$error"    # I

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Landroid/media/RemoteDisplay$3;->this$0:Landroid/media/RemoteDisplay;

    #@2
    iput p2, p0, Landroid/media/RemoteDisplay$3;->val$error:I

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
    .line 153
    iget-object v0, p0, Landroid/media/RemoteDisplay$3;->this$0:Landroid/media/RemoteDisplay;

    #@2
    invoke-static {v0}, Landroid/media/RemoteDisplay;->-get0(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Landroid/media/RemoteDisplay$3;->val$error:I

    #@8
    invoke-interface {v0, v1}, Landroid/media/RemoteDisplay$Listener;->onDisplayError(I)V

    #@b
    .line 152
    return-void
.end method
