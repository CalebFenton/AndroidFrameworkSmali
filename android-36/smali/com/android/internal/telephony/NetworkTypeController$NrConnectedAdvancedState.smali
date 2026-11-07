.class final Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NrConnectedAdvancedState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 1263
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Entering NrConnectedAdvancedState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1267
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 1335
    const-string p0, "connected_mmwave"

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRatchetedNrBands(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misAdditionalNrAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/Set;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NrConnectedAdvancedState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", been using advanced band is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1280
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_a1

    const/16 v2, 0xb

    if-eq v0, v2, :cond_5d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_57

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4e

    return v1

    .line 1322
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    goto/16 :goto_125

    .line 1282
    :cond_57
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_a1

    .line 1310
    :cond_5d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1311
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 1312
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_7b

    .line 1313
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1315
    :cond_7b
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 1316
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_125

    .line 1317
    :cond_8e
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_125

    .line 1318
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_125

    .line 1285
    :cond_a1
    :goto_a1
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_ef

    .line 1286
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1287
    invoke-static {v2, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v2

    if-eqz v2, :cond_bc

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    if-eqz v2, :cond_bc

    goto :goto_ef

    .line 1302
    :cond_bc
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_e5

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_e5

    .line 1303
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 1304
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    goto :goto_e1

    :cond_db
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    .line 1303
    :goto_e1
    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_125

    .line 1306
    :cond_e5
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_125

    .line 1288
    :cond_ef
    :goto_ef
    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 1290
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_125

    :cond_fd
    if-ne p1, v0, :cond_10d

    .line 1292
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_10d

    .line 1296
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1299
    :cond_10d
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 1300
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;

    move-result-object v0

    goto :goto_122

    :cond_11c
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    .line 1299
    :goto_122
    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    .line 1327
    :cond_125
    :goto_125
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_13e

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_13e

    .line 1328
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_13e
    const/4 p0, 0x1

    return p0
.end method
