.class Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;
.super Ljava/lang/Object;
.source "AsyncChannel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncChannelConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/util/AsyncChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/AsyncChannel;

    #@0
    .prologue
    .line 886
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    #@2
    new-instance v1, Landroid/os/Messenger;

    #@4
    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    #@7
    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->-set0(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)Landroid/os/Messenger;

    #@a
    .line 892
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->-wrap1(Lcom/android/internal/util/AsyncChannel;I)V

    #@10
    .line 890
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/android/internal/util/AsyncChannel;->-wrap0(Lcom/android/internal/util/AsyncChannel;I)V

    #@6
    .line 896
    return-void
.end method
