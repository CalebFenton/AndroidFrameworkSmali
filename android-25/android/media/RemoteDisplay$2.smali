.class Landroid/media/RemoteDisplay$2;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/RemoteDisplay;->notifyDisplayDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplay;


# direct methods
.method constructor <init>(Landroid/media/RemoteDisplay;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteDisplay;

    #@0
    .prologue
    .line 140
    iput-object p1, p0, Landroid/media/RemoteDisplay$2;->this$0:Landroid/media/RemoteDisplay;

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
    .line 143
    iget-object v0, p0, Landroid/media/RemoteDisplay$2;->this$0:Landroid/media/RemoteDisplay;

    #@2
    invoke-static {v0}, Landroid/media/RemoteDisplay;->-get0(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroid/media/RemoteDisplay$Listener;->onDisplayDisconnected()V

    #@9
    .line 142
    return-void
.end method
