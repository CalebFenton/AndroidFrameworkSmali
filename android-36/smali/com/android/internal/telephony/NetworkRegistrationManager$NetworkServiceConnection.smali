.class Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;
.super Ljava/lang/Object;
.source "NetworkRegistrationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkRegistrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/NetworkRegistrationManager;)I

    move-result v2

    .line 174
    invoke-static {v2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is now connected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p2}, Landroid/telephony/INetworkService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/INetworkService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fputmINetworkService(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/telephony/INetworkService;)V

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Landroid/content/ComponentName;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fputmDeathRecipient(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;)V

    .line 179
    :try_start_40
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmDeathRecipient(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/NetworkRegistrationManager$RegManagerDeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 180
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmINetworkService(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/telephony/INetworkService;->createNetworkServiceProvider(I)V

    .line 181
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmINetworkService(Lcom/android/internal/telephony/NetworkRegistrationManager;)Landroid/telephony/INetworkService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p2}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkRegistrationManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    new-instance v0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkRegStateCallback;-><init>(Lcom/android/internal/telephony/NetworkRegistrationManager;Lcom/android/internal/telephony/NetworkRegistrationManager-IA;)V

    invoke-interface {p1, p2, v0}, Landroid/telephony/INetworkService;->registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_78} :catch_79

    return-void

    :catch_79
    move-exception p1

    .line 185
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteException "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for transport "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fgetmTransportType(Lcom/android/internal/telephony/NetworkRegistrationManager;)I

    move-result p1

    .line 192
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is now disconnected."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    .line 194
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkRegistrationManager$NetworkServiceConnection;->this$0:Lcom/android/internal/telephony/NetworkRegistrationManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkRegistrationManager;->-$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/NetworkRegistrationManager;Ljava/lang/String;)V

    return-void
.end method
