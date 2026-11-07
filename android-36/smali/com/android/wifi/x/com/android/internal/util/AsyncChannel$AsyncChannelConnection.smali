.class Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$AsyncChannelConnection;
.super Ljava/lang/Object;
.source "AsyncChannel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncChannelConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;


# direct methods
.method constructor blacklist <init>(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 921
    iput-object p1, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 926
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->-$$Nest$fputmDstMessenger(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    .line 927
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->-$$Nest$mreplyHalfConnected(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;I)V

    .line 928
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 932
    iget-object v0, p0, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;->-$$Nest$mreplyDisconnected(Lcom/android/wifi/x/com/android/internal/util/AsyncChannel;I)V

    .line 933
    return-void
.end method
