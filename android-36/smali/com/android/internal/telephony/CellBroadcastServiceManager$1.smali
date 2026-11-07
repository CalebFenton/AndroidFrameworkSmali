.class Lcom/android/internal/telephony/CellBroadcastServiceManager$1;
.super Landroid/os/Handler;
.source "CellBroadcastServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CellBroadcastServiceManager;->initCellBroadcastServiceModule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmEnabled(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Z

    move-result v0

    const-string v1, "CellBroadcastServiceManager"

    if-nez v0, :cond_10

    .line 176
    const-string p0, "CB module is disabled."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$sfgetsServiceConnection()Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/16 v3, 0xfa

    if-nez v0, :cond_25

    .line 181
    const-string p0, "sServiceConnection.mService is null, ignoring message."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {v3, v2, p0}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(IILjava/lang/String;)V

    return-void

    .line 188
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$sfgetsServiceConnection()Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    .line 189
    invoke-static {v0}, Landroid/telephony/ICellBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellBroadcastService;

    move-result-object v0

    .line 191
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xf9

    const/4 v6, 0x1

    if-nez v4, :cond_76

    .line 192
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GSM SMS CB for phone "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v8}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 193
    invoke-static {v5, v6, v6}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(III)V

    .line 196
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-interface {v0, v4, p1}, Landroid/telephony/ICellBroadcastService;->handleGsmCellBroadcastSms(I[B)V

    return-void

    :catch_73
    move-exception p1

    goto/16 :goto_106

    :cond_76
    const/4 v7, 0x2

    if-ne v4, v6, :cond_ba

    .line 199
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CDMA SMS CB for phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v9}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 200
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 201
    invoke-static {v5, v7, v6}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(III)V

    .line 204
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEnvelopeBearerData()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEnvelopeServiceCategory()I

    move-result p1

    .line 204
    invoke-interface {v0, v4, v5, p1}, Landroid/telephony/ICellBroadcastService;->handleCdmaCellBroadcastSms(I[BI)V

    return-void

    :cond_ba
    if-ne v4, v7, :cond_149

    .line 207
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CDMA SCP message for phone "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v8}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 208
    invoke-static {v5, v4, v6}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(III)V

    .line 211
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 213
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 214
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/RemoteCallback;

    .line 215
    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v5}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 216
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsCbProgramData()Ljava/util/ArrayList;

    move-result-object v6

    .line 217
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-interface {v0, v5, v6, v4, p1}, Landroid/telephony/ICellBroadcastService;->handleCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_105} :catch_73

    return-void

    .line 221
    :goto_106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to connect to default app: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmCellBroadcastServicePackage(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " err: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 225
    invoke-static {v3, v2, p1}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(IILjava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$sfgetsServiceConnection()Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    .line 229
    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$sfputsServiceConnection(Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;)V

    :cond_149
    return-void
.end method
