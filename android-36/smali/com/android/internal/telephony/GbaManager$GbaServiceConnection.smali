.class final Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;
.super Ljava/lang/Object;
.source "GbaManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GbaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GbaServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GbaManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/GbaManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/GbaManager;Lcom/android/internal/telephony/GbaManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;-><init>(Lcom/android/internal/telephony/GbaManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for Gba is connected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p2}, Landroid/telephony/gba/IGbaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/gba/IGbaService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fputmIGbaService(Lcom/android/internal/telephony/GbaManager;Landroid/telephony/gba/IGbaService;)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v1, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;-><init>(Lcom/android/internal/telephony/GbaManager;Landroid/content/ComponentName;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fputmDeathRecipient(Lcom/android/internal/telephony/GbaManager;Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;)V

    .line 191
    :try_start_2e
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/GbaManager;)Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_58

    :catch_38
    move-exception p1

    .line 194
    iget-object p2, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p2}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/GbaManager;)Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/GbaManager$GbaDeathRecipient;->binderDied()V

    .line 195
    iget-object p2, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    .line 197
    :goto_58
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/GbaManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is now disconnected."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$GbaServiceConnection;->this$0:Lcom/android/internal/telephony/GbaManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    return-void
.end method
