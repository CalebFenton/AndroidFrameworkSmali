.class final Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NrConnectedState"
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

    .line 1182
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method


# virtual methods
.method public blacklist enter()V
    .registers 3

    .line 1185
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v1, "Entering NrConnectedState"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1188
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 1

    .line 1250
    const-string p0, "connected"

    return-object p0
.end method

.method public blacklist processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1195
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NrConnectedState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1198
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_97

    const/16 v1, 0xb

    if-eq v0, v1, :cond_53

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    const/4 p0, 0x0

    return p0

    .line 1234
    :cond_33
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1235
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_10e

    .line 1236
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_10e

    .line 1200
    :cond_4d
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_97

    .line 1222
    :cond_53
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1223
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 1224
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 1225
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1227
    :cond_71
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_84

    .line 1228
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_10e

    .line 1229
    :cond_84
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_10e

    .line 1230
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_10e

    .line 1203
    :cond_97
    :goto_97
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/NetworkTypeController;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_e5

    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1205
    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrConnected(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_b2

    goto :goto_e5

    .line 1214
    :cond_b2
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misLte(Lcom/android/internal/telephony/NetworkTypeController;I)Z

    move-result p1

    if-eqz p1, :cond_db

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrNotRestricted(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 1215
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLteConnectedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LteConnectedState;

    move-result-object v0

    goto :goto_d7

    :cond_d1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$IdleState;

    move-result-object v0

    .line 1215
    :goto_d7
    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_10e

    .line 1218
    :cond_db
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_10e

    .line 1206
    :cond_e5
    :goto_e5
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 1207
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrConnectedAdvancedState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrConnectedAdvancedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto :goto_10e

    .line 1208
    :cond_f7
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misPhysicalLinkActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_109

    .line 1209
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrIdleState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$NrIdleState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto :goto_10e

    .line 1212
    :cond_109
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1242
    :cond_10e
    :goto_10e
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPrimaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_127

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_127

    .line 1243
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkTypeController$NrConnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPreviousState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    :cond_127
    const/4 p0, 0x1

    return p0
.end method
