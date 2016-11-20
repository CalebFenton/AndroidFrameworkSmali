.class Landroid/telecom/VideoCallImpl$1;
.super Ljava/lang/Object;
.source "VideoCallImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method constructor <init>(Landroid/telecom/VideoCallImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/VideoCallImpl;

    #@0
    .prologue
    .line 47
    iput-object p1, p0, Landroid/telecom/VideoCallImpl$1;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Landroid/telecom/VideoCallImpl$1;->this$0:Landroid/telecom/VideoCallImpl;

    #@2
    invoke-static {v0}, Landroid/telecom/VideoCallImpl;->-get2(Landroid/telecom/VideoCallImpl;)Lcom/android/internal/telecom/IVideoProvider;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@e
    .line 49
    return-void
.end method
