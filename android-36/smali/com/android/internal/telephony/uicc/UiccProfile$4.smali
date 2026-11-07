.class Lcom/android/internal/telephony/uicc/UiccProfile$4;
.super Landroid/os/Handler;
.source "UiccProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smeventToString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmDisposed(Lcom/android/internal/telephony/uicc/UiccProfile;)Z

    move-result v1

    const-string v2, "handleMessage: Received "

    if-eqz v1, :cond_3e

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3e

    const/16 v3, 0x9

    if-eq v1, v3, :cond_3e

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3e

    const/16 v3, 0xb

    if-eq v1, v3, :cond_3e

    const/16 v3, 0xc

    if-eq v1, v3, :cond_3e

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " after dispose(); ignoring the message"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void

    .line 229
    :cond_3e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 230
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_1d4

    .line 331
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: Unhandled message with number: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void

    .line 309
    :pswitch_7f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 310
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_a1

    .line 313
    const-string v0, "An error occurred during internal PIN verification"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smloge(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPinStorage(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/PinStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/PinStorage;->clearPin(I)V

    .line 315
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    goto :goto_a6

    .line 317
    :cond_a1
    const-string p0, "Internal PIN verification was successful!"

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 323
    :goto_a6
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_ab

    goto :goto_ac

    :cond_ab
    move v3, v5

    :goto_ac
    const/16 p0, 0x150

    .line 321
    invoke-static {p0, v3, v5}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(III)V

    return-void

    .line 299
    :pswitch_b2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_bc

    .line 300
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1, v4}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmTestOverrideCarrierPrivilegeRules(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    goto :goto_c8

    .line 302
    :cond_bc
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    check-cast p1, Ljava/util/List;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fputmTestOverrideCarrierPrivilegeRules(Lcom/android/internal/telephony/uicc/UiccProfile;Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    .line 305
    :goto_c8
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->refresh()V

    return-void

    .line 274
    :pswitch_ce
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mhandleCarrierNameOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 275
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mhandleSimCountryIsoOverride(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    return-void

    .line 261
    :pswitch_d9
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$sfgetVDBG()Z

    move-result p1

    if-eqz p1, :cond_e4

    const-string p1, "handleMessage: EVENT_CARRIER_PRIVILEGES_LOADED"

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 262
    :cond_e4
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_f9

    .line 264
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCarrierPrivilegesTracker()Lcom/android/internal/telephony/CarrierPrivilegesTracker;

    move-result-object p1

    if-eqz p1, :cond_f9

    .line 266
    invoke-virtual {p1}, Lcom/android/internal/telephony/CarrierPrivilegesTracker;->onUiccAccessRulesLoaded()V

    .line 269
    :cond_f9
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$monCarrierPrivilegesLoadedMessage(Lcom/android/internal/telephony/uicc/UiccProfile;)V

    .line 270
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    return-void

    .line 283
    :pswitch_104
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 284
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_124

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: Error in SIM access with exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$mlogWithLocalLog(Lcom/android/internal/telephony/uicc/UiccProfile;Ljava/lang/String;)V

    .line 288
    :cond_124
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz p0, :cond_139

    .line 289
    check-cast p0, Landroid/os/Message;

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 290
    iget-object p0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 292
    :cond_139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleMessage: ar.userObj is null in event:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", failed to post status back to caller"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smloge(Ljava/lang/String;)V

    return-void

    .line 250
    :pswitch_153
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    iget v1, v0, Lcom/android/internal/telephony/uicc/UiccProfile;->mCurrentAppType:I

    if-ne v1, v5, :cond_186

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmIccRecords(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    if-eqz v0, :cond_186

    .line 251
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 252
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_186

    .line 254
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/uicc/UiccProfile;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UiccProfile;)I

    move-result v0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmIccRecords(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    .line 254
    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    :cond_186
    return-void

    .line 232
    :pswitch_187
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p1

    if-eqz p1, :cond_1b0

    .line 233
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmNetworkLockedRegistrants(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p1

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$fgetmUiccApplication(Lcom/android/internal/telephony/uicc/UiccProfile;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 234
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1b5

    .line 236
    :cond_1b0
    const-string p1, "EVENT_NETWORK_LOCKED: mUiccApplication is NULL, mNetworkLockedRegistrants not notified."

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 245
    :goto_1b5
    :pswitch_1b5
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$sfgetVDBG()Z

    move-result p1

    if-eqz p1, :cond_1cd

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 246
    :cond_1cd
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccProfile$4;->this$0:Lcom/android/internal/telephony/uicc/UiccProfile;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->updateExternalState()V

    return-void

    nop

    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_1b5
        :pswitch_1b5
        :pswitch_1b5
        :pswitch_1b5
        :pswitch_187
        :pswitch_1b5
        :pswitch_153
        :pswitch_104
        :pswitch_104
        :pswitch_104
        :pswitch_104
        :pswitch_104
        :pswitch_d9
        :pswitch_ce
        :pswitch_b2
        :pswitch_7f
    .end packed-switch
.end method
