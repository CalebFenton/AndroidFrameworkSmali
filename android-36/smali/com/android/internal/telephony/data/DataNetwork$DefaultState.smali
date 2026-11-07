.class final Lcom/android/internal/telephony/data/DataNetwork$DefaultState;
.super Lcom/android/internal/telephony/State;
.source "DataNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetwork;


# direct methods
.method public static synthetic blacklist $r8$lambda$NBnPrNEHAdSceZTDQYvsl79h7XU(Ljava/lang/Integer;)I
    .registers 1

    .line 1277
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$VRDaNMdJoS7adXKIQGuVWyce4D0(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;Ljava/util/Set;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->lambda$enter$1(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1213
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataNetwork-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$enter$1(Ljava/util/Set;Ljava/util/Set;)V
    .registers 5

    .line 1273
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarrierPrivilegesChanged, Uids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1274
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1277
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    const/4 v0, 0x0

    .line 1275
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1279
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 9

    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "Registering all events."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$1;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v3}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$1;-><init>(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmDataConfigManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 1223
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRil(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForPcoData(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 1227
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$2;

    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$2;-><init>(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmDataSettingsManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 1251
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataSettingsManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    move-result-object v1

    .line 1252
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 1254
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$3;

    new-instance v2, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$3;-><init>(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmPhoneSwitcherCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V

    .line 1260
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhoneSwitcher(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhoneSwitcherCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->registerCallback(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V

    .line 1262
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1263
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xd

    .line 1262
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/DisplayInfoController;->registerForTelephonyDisplayInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v4, v2

    :goto_bc
    if-ge v4, v1, :cond_da

    aget v5, v0, v4

    .line 1267
    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v6}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1268
    invoke-virtual {v6}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForDataCallListChanged(Landroid/os/Handler;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    .line 1271
    :cond_da
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmCarrierPrivilegesCallback(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 1281
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_119

    .line 1283
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1284
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v4}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCarrierPrivilegesCallback(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    move-result-object v4

    .line 1283
    invoke-virtual {v0, v1, v5, v4}, Landroid/telephony/TelephonyManager;->registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 1287
    :cond_119
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1288
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v4, 0x18

    .line 1287
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForCssIndicatorChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1289
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const/16 v1, 0x17

    const/16 v4, 0x16

    if-eqz v0, :cond_164

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1291
    invoke-virtual {v5}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1290
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1292
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1293
    invoke-virtual {v5}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1292
    invoke-virtual {v0, v5, v1, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1296
    :cond_164
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1ae

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_1ae

    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1298
    invoke-virtual {v5}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 1297
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1299
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1300
    invoke-virtual {v4}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 1299
    invoke-virtual {v0, v4, v1, v3}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1303
    :cond_1ae
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataProfile(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/data/DataProfile;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v0

    if-eqz v0, :cond_1df

    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$4;

    .line 1305
    invoke-virtual {v0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/data/DataNetwork$DefaultState$4;-><init>(Lcom/android/internal/telephony/data/DataNetwork$DefaultState;Ljava/util/concurrent/Executor;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmAccessNetworksManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAccessNetworksManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->registerCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    .line 1318
    :cond_1df
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRil(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist exit()V
    .registers 6

    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v1, "Unregistering all events."

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->logv(Ljava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAccessNetworksManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAccessNetworksManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->unregisterCallback(Lcom/android/internal/telephony/data/AccessNetworksManager$AccessNetworksManagerCallback;)V

    .line 1334
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 1335
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 1336
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1338
    :cond_68
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 1339
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 1340
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 1343
    :cond_9a
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForCssIndicatorChanged(Landroid/os/Handler;)V

    .line 1344
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_d2

    .line 1345
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCarrierPrivilegesCallback(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    move-result-object v1

    if-eqz v1, :cond_d2

    .line 1346
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmCarrierPrivilegesCallback(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    .line 1348
    :cond_d2
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAccessNetworksManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_de
    if-ge v2, v1, :cond_fa

    aget v3, v0, v2

    .line 1349
    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v4}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataServiceManagers(Lcom/android/internal/telephony/data/DataNetwork;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1350
    invoke-virtual {v4}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/data/DataServiceManager;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 1352
    :cond_fa
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1353
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDisplayInfoController()Lcom/android/internal/telephony/DisplayInfoController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1354
    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1353
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DisplayInfoController;->unregisterForTelephonyDisplayInfoChanged(Landroid/os/Handler;)V

    .line 1355
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhoneSwitcher(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/PhoneSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhoneSwitcherCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/PhoneSwitcher;->unregisterCallback(Lcom/android/internal/telephony/data/PhoneSwitcher$PhoneSwitcherCallback;)V

    .line 1356
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataNetworkController(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataSettingsManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    move-result-object v1

    .line 1357
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataSettingsManager;->unregisterCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRil(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {v1}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForPcoData(Landroid/os/Handler;)V

    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManager(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataConfigManagerCallback(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->unregisterCallback(Lcom/android/internal/telephony/data/DataConfigManager$DataConfigManagerCallback;)V

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmRil(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1365
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_20c

    .line 1486
    :pswitch_8
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto/16 :goto_20b

    .line 1480
    :pswitch_26
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_35

    move v2, v3

    :cond_35
    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmOnPreferredDataPhone(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 1481
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preferred data phone id changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mOnPreferredDataPhone="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmOnPreferredDataPhone(Lcom/android/internal/telephony/data/DataNetwork;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mlogl(Lcom/android/internal/telephony/data/DataNetwork;Ljava/lang/String;)V

    .line 1483
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_20b

    .line 1477
    :pswitch_65
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mhandleDataNetworkValidationRequestResultCode(Lcom/android/internal/telephony/data/DataNetwork;I)V

    goto/16 :goto_20b

    .line 1473
    :pswitch_6e
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mhandleErrorDataNetworkValidationRequest(Lcom/android/internal/telephony/data/DataNetwork;Ljava/util/function/Consumer;)V

    goto/16 :goto_20b

    .line 1433
    :pswitch_79
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const/16 v0, 0xc

    # invokes: Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V
    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->access$000(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1434
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string p1, "Notified handover cancelled."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto/16 :goto_20b

    .line 1451
    :pswitch_89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_93

    .line 1454
    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    const/4 v1, 0x4

    .line 1455
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    .line 1457
    :cond_93
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore handover to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1458
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " request."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1457
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto/16 :goto_20b

    .line 1421
    :pswitch_b6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1422
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [I

    .line 1423
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmAdministratorUids(Lcom/android/internal/telephony/data/DataNetwork;[I)V

    .line 1424
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_20b

    .line 1428
    :pswitch_cf
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1429
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/PcoData;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monPcoDataReceived(Lcom/android/internal/telephony/data/DataNetwork;Landroid/telephony/PcoData;)V

    goto/16 :goto_20b

    .line 1400
    :pswitch_de
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e8
    :goto_e8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_104

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1404
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne v1, v4, :cond_e8

    .line 1405
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setState(I)V

    const/4 v1, 0x0

    .line 1407
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_e8

    .line 1410
    :cond_104
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const-string v0, "All network requests detached."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    .line 1411
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmAttachedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_20b

    .line 1370
    :pswitch_116
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mgetDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result p1

    .line 1371
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDataCallSessionStats(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/metrics/DataCallSessionStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/DataCallSessionStats;->onDrsOrRatChanged(I)V

    if-eqz p1, :cond_12c

    .line 1373
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmLastKnownDataNetworkType(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1375
    :cond_12c
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1376
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    .line 1377
    invoke-virtual {p1, v1, v3}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p1

    if-eqz p1, :cond_14f

    .line 1380
    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 1381
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p1}, Landroid/telephony/NetworkRegistrationInfo;->getNetworkRegistrationState()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_14c

    move v2, v3

    :cond_14c
    invoke-static {v0, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmLastKnownRoamingState(Lcom/android/internal/telephony/data/DataNetwork;Z)V

    .line 1384
    :cond_14f
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateSuspendState(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1385
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkCapabilities(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_20b

    .line 1415
    :pswitch_15b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1416
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1417
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDataStateChanged(Lcom/android/internal/telephony/data/DataNetwork;ILjava/util/List;)V

    goto/16 :goto_20b

    .line 1446
    :pswitch_172
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->log(Ljava/lang/String;)V

    goto/16 :goto_20b

    .line 1462
    :pswitch_190
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmTransport(Lcom/android/internal/telephony/data/DataNetwork;)I

    move-result v0

    if-ne v0, v1, :cond_1b5

    .line 1463
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": ignored on IWLAN"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    goto :goto_20b

    .line 1467
    :cond_1b5
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    const v1, 0x10001

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fputmFailCause(Lcom/android/internal/telephony/data/DataNetwork;I)V

    .line 1468
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": transition to disconnected state"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->loge(Ljava/lang/String;)V

    .line 1469
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$fgetmDisconnectedState(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataNetwork$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_20b

    .line 1394
    :pswitch_1e3
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1ee

    move v2, v3

    :cond_1ee
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monDetachNetworkRequest(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/TelephonyNetworkRequest;Z)V

    .line 1396
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_20b

    .line 1389
    :pswitch_1f7
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataNetwork;->onAttachNetworkRequests(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)V

    .line 1390
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$mupdateNetworkScore(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto :goto_20b

    .line 1367
    :pswitch_206
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetwork$DefaultState;->this$0:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetwork;->-$$Nest$monCarrierConfigUpdated(Lcom/android/internal/telephony/data/DataNetwork;)V

    :goto_20b
    return v3

    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_206
        :pswitch_1f7
        :pswitch_1e3
        :pswitch_190
        :pswitch_8
        :pswitch_8
        :pswitch_172
        :pswitch_15b
        :pswitch_116
        :pswitch_de
        :pswitch_172
        :pswitch_172
        :pswitch_172
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_cf
        :pswitch_b6
        :pswitch_8
        :pswitch_172
        :pswitch_172
        :pswitch_172
        :pswitch_172
        :pswitch_172
        :pswitch_89
        :pswitch_89
        :pswitch_79
        :pswitch_6e
        :pswitch_65
        :pswitch_26
    .end packed-switch
.end method
