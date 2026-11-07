.class Lcom/android/internal/telephony/AsyncChannel$AsyncChannelConnection;
.super Ljava/lang/Object;
.source "AsyncChannel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncChannelConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/AsyncChannel;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/AsyncChannel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 921
    iput-object p1, p0, Lcom/android/internal/telephony/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/telephony/AsyncChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 926
    iget-object p1, p0, Lcom/android/internal/telephony/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/telephony/AsyncChannel;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/android/internal/telephony/AsyncChannel;->-$$Nest$fputmDstMessenger(Lcom/android/internal/telephony/AsyncChannel;Landroid/os/Messenger;)V

    .line 927
    iget-object p0, p0, Lcom/android/internal/telephony/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/telephony/AsyncChannel;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/AsyncChannel;->-$$Nest$mreplyHalfConnected(Lcom/android/internal/telephony/AsyncChannel;I)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 932
    iget-object p0, p0, Lcom/android/internal/telephony/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/telephony/AsyncChannel;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/AsyncChannel;->-$$Nest$mreplyDisconnected(Lcom/android/internal/telephony/AsyncChannel;I)V

    return-void
.end method
