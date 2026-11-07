.class Landroid/se/omapi/SEService$1;
.super Ljava/lang/Object;
.source "SEService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/se/omapi/SEService;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/se/omapi/SEService$OnConnectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/se/omapi/SEService;


# direct methods
.method constructor blacklist <init>(Landroid/se/omapi/SEService;)V
    .registers 2
    .param p1, "this$0"    # Landroid/se/omapi/SEService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {p2}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/se/omapi/SEService;->-$$Nest$fputmSecureElementService(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)V

    .line 190
    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {v0}, Landroid/se/omapi/SEService;->-$$Nest$fgetmSEListener(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 191
    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    invoke-static {v0}, Landroid/se/omapi/SEService;->-$$Nest$fgetmSEListener(Landroid/se/omapi/SEService;)Landroid/se/omapi/SEService$SEListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/se/omapi/SEService$SEListener;->onConnected()V

    .line 193
    .end local p0    # "this":Landroid/se/omapi/SEService$1;
    :cond_1b
    const-string v0, "OMAPI.SEService"

    const-string v1, "Service onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 194
    monitor-exit p0

    return-void

    .line 188
    .end local p1    # "className":Landroid/content/ComponentName;
    .end local p2    # "service":Landroid/os/IBinder;
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 197
    iget-object v0, p0, Landroid/se/omapi/SEService$1;->this$0:Landroid/se/omapi/SEService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/se/omapi/SEService;->-$$Nest$fputmSecureElementService(Landroid/se/omapi/SEService;Landroid/se/omapi/ISecureElementService;)V

    .line 198
    const-string v0, "OMAPI.SEService"

    const-string v1, "Service onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method
