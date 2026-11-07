.class Lcom/android/internal/telephony/CallManager$CallManagerHandler;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/CallManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2054
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 2058
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_178

    :pswitch_6
    goto/16 :goto_108

    .line 2176
    :pswitch_8
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mTtyModeReceivedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2172
    :pswitch_14
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2162
    :goto_20
    :pswitch_20
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result v0

    if-ge v1, v0, :cond_108

    .line 2164
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Registrant;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v0

    .line 2165
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2166
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2167
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 2154
    :pswitch_46
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2150
    :pswitch_52
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2146
    :pswitch_5e
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2142
    :pswitch_6a
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2137
    :pswitch_76
    const-string v0, "CallManager"

    const-string v1, "CallManager: handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2134
    :pswitch_89
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2130
    :pswitch_95
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2126
    :pswitch_a1
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2122
    :pswitch_ad
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2118
    :pswitch_b9
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2114
    :pswitch_c5
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2110
    :pswitch_d1
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2106
    :pswitch_dd
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2102
    :pswitch_e9
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2096
    :pswitch_f5
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_108

    .line 2097
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_108
    :goto_108
    return-void

    .line 2091
    :pswitch_109
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2069
    :pswitch_115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2070
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 2072
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPhoneType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_139

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 2073
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncomingCallAutoRejected()Z

    move-result v0

    if-eqz v0, :cond_139

    const/4 v1, 0x1

    .line 2076
    :cond_139
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(I)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_14d

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/internal/telephony/CallManager;->-$$Nest$mhasMoreThanOneRingingCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_154

    :cond_14d
    if-nez v1, :cond_154

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/internal/telephony/CallManager;->-$$Nest$fgetmTelecomFeatureFlags(Lcom/android/internal/telephony/CallManager;)Lcom/android/server/telecom/flags/FeatureFlags;

    .line 2086
    :cond_154
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2065
    :pswitch_160
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    .line 2061
    :pswitch_16c
    iget-object p0, p0, Lcom/android/internal/telephony/CallManager$CallManagerHandler;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object p0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Lcom/android/internal/telephony/RegistrantList;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void

    :pswitch_data_178
    .packed-switch 0x64
        :pswitch_16c
        :pswitch_160
        :pswitch_115
        :pswitch_109
        :pswitch_f5
        :pswitch_e9
        :pswitch_dd
        :pswitch_d1
        :pswitch_c5
        :pswitch_b9
        :pswitch_ad
        :pswitch_a1
        :pswitch_95
        :pswitch_89
        :pswitch_76
        :pswitch_6a
        :pswitch_5e
        :pswitch_52
        :pswitch_46
        :pswitch_20
        :pswitch_14
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method
