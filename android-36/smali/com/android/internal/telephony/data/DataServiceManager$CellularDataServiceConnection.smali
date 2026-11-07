.class final Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;
.super Ljava/lang/Object;
.source "DataServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellularDataServiceConnection"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataServiceManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/telephony/data/DataServiceManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p2}, Landroid/telephony/data/IDataService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataService;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fputmIDataService(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/telephony/data/IDataService;)V

    .line 205
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fputmBound(Lcom/android/internal/telephony/data/DataServiceManager;Z)V

    .line 206
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataServiceManager;->getDataServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fputmLastBoundPackageName(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 209
    :try_start_2e
    new-instance p1, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceManagerDeathRecipient;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Lcom/android/internal/telephony/data/DataServiceManager-IA;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 210
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmIDataService(Lcom/android/internal/telephony/data/DataServiceManager;)Landroid/telephony/data/IDataService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    invoke-interface {p1, p2}, Landroid/telephony/data/IDataService;->createDataServiceProvider(I)V

    .line 211
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmIDataService(Lcom/android/internal/telephony/data/DataServiceManager;)Landroid/telephony/data/IDataService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    new-instance v0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const-string v2, "dataCallListChanged"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Landroid/telephony/data/IDataService;->registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V

    .line 213
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmIDataService(Lcom/android/internal/telephony/data/DataServiceManager;)Landroid/telephony/data/IDataService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    new-instance v0, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const-string v2, "unthrottleApn"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/data/DataServiceManager$DataServiceCallbackWrapper;-><init>(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Landroid/telephony/data/IDataService;->registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_85} :catch_91

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmServiceBindingChangedRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    :catch_91
    move-exception p1

    .line 216
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remote exception. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mloge(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 223
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fputmIDataService(Lcom/android/internal/telephony/data/DataServiceManager;Landroid/telephony/data/IDataService;)V

    .line 225
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fputmBound(Lcom/android/internal/telephony/data/DataServiceManager;Z)V

    .line 226
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fgetmServiceBindingChangedRegistrants(Lcom/android/internal/telephony/data/DataServiceManager;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 227
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataServiceManager$CellularDataServiceConnection;->this$0:Lcom/android/internal/telephony/data/DataServiceManager;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/data/DataServiceManager;->-$$Nest$fputmTargetBindingPackageName(Lcom/android/internal/telephony/data/DataServiceManager;Ljava/lang/String;)V

    return-void
.end method
