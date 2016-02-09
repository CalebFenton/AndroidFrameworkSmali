.class public Lcom/android/internal/telephony/imsphone/ImsPhone;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneBase;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$1;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$2;,
        Lcom/android/internal/telephony/imsphone/ImsPhone$3;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field public static final CS_FALLBACK:Ljava/lang/String; = "cs_fallback"

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field protected static final EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED:I = 0x2a

.field protected static final EVENT_GET_CALL_BARRING_DONE:I = 0x27

.field protected static final EVENT_GET_CALL_WAITING_DONE:I = 0x29

.field protected static final EVENT_SET_CALL_BARRING_DONE:I = 0x26

.field protected static final EVENT_SET_CALL_WAITING_DONE:I = 0x28

.field public static final EXTRA_KEY_ALERT_MESSAGE:Ljava/lang/String; = "alertMessage"

.field public static final EXTRA_KEY_ALERT_SHOW:Ljava/lang/String; = "alertShow"

.field public static final EXTRA_KEY_ALERT_TITLE:Ljava/lang/String; = "alertTitle"

.field public static final EXTRA_KEY_NOTIFICATION_MESSAGE:Ljava/lang/String; = "notificationMessage"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhone"

.field static final RESTART_ECM_TIMER:I

.field private static final VDBG:Z


# instance fields
.field mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

.field private mImsRegistered:Z

.field protected mIsPhoneInEcmState:Z

.field private mLastDialString:Ljava/lang/String;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field private mResultReceiver:Landroid/content/BroadcastReceiver;

.field mSS:Landroid/telephony/ServiceState;

.field private final mSilentRedialRegistrants:Landroid/os/RegistrantList;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/imsphone/ImsPhone;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEnterEmergencyCallbackMode()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleExitEmergencyCallbackMode()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 175
    const-string/jumbo v1, "ImsPhone"

    #@5
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    #@8
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@f
    .line 132
    new-instance v1, Landroid/telephony/ServiceState;

    #@11
    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    #@14
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@16
    .line 144
    new-instance v1, Landroid/os/RegistrantList;

    #@18
    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    #@1b
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    #@1d
    .line 146
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    #@1f
    .line 149
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$1;

    #@21
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$1;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@24
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@26
    .line 1206
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$2;

    #@28
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$2;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@2b
    .line 1205
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsEcbmStateListener:Lcom/android/ims/ImsEcbmStateListener;

    #@2d
    .line 1365
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone$3;

    #@2f
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone$3;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@32
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    #@34
    .line 177
    check-cast p3, Lcom/android/internal/telephony/PhoneBase;

    #@36
    .end local p3    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@38
    .line 178
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3a
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@3d
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@3f
    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@41
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    #@44
    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@49
    move-result v1

    #@4a
    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    #@4c
    .line 186
    const-string/jumbo v1, "ril.cdma.inecmmode"

    #@4f
    .line 185
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    #@52
    move-result v1

    #@53
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@55
    .line 188
    const-string/jumbo v1, "power"

    #@58
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Landroid/os/PowerManager;

    #@5e
    .line 189
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "ImsPhone"

    #@61
    const/4 v2, 0x1

    #@62
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@65
    move-result-object v1

    #@66
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@68
    .line 190
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6a
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@6d
    .line 192
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6f
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@72
    move-result-object v1

    #@73
    if-eqz v1, :cond_0

    #@75
    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@77
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@7a
    move-result-object v1

    #@7b
    .line 195
    const/16 v2, 0x2a

    #@7d
    .line 193
    invoke-virtual {v1, p0, v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@80
    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    #@83
    .line 174
    return-void
.end method

.method public static checkWfcWifiOnlyModeBeforeDial(Lcom/android/internal/telephony/imsphone/ImsPhone;Landroid/content/Context;)V
    .locals 4
    .param p0, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 512
    if-eqz p0, :cond_1

    #@2
    .line 513
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isVowifiEnabled()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 511
    :cond_0
    return-void

    #@9
    .line 514
    :cond_1
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_3

    #@f
    .line 515
    invoke-static {p1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    #@12
    move-result v1

    #@13
    .line 514
    if-eqz v1, :cond_3

    #@15
    .line 516
    invoke-static {p1}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 518
    .local v0, "wfcWiFiOnly":Z
    :goto_0
    if-eqz v0, :cond_0

    #@1e
    .line 519
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    #@20
    .line 521
    const-string/jumbo v2, "WFC Wi-Fi Only Mode: IMS not registered"

    #@23
    .line 520
    const/4 v3, 0x1

    #@24
    .line 519
    invoke-direct {v1, v3, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(ILjava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 516
    .end local v0    # "wfcWiFiOnly":Z
    :cond_2
    const/4 v0, 0x0

    #@29
    .restart local v0    # "wfcWiFiOnly":Z
    goto :goto_0

    #@2a
    .line 514
    .end local v0    # "wfcWiFiOnly":Z
    :cond_3
    const/4 v0, 0x0

    #@2b
    .restart local v0    # "wfcWiFiOnly":Z
    goto :goto_0
.end method

.method private getActionFromCFAction(I)I
    .locals 1
    .param p1, "action"    # I

    #@0
    .prologue
    .line 705
    packed-switch p1, :pswitch_data_0

    #@3
    .line 714
    :pswitch_0
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 706
    :pswitch_1
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 707
    :pswitch_2
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 708
    :pswitch_3
    const/4 v0, 0x4

    #@a
    return v0

    #@b
    .line 709
    :pswitch_4
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 705
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getCBTypeFromFacility(Ljava/lang/String;)I
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;

    #@0
    .prologue
    .line 813
    const-string/jumbo v0, "AO"

    #@3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 814
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 815
    :cond_0
    const-string/jumbo v0, "OI"

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 816
    const/4 v0, 0x3

    #@15
    return v0

    #@16
    .line 817
    :cond_1
    const-string/jumbo v0, "OX"

    #@19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2

    #@1f
    .line 818
    const/4 v0, 0x4

    #@20
    return v0

    #@21
    .line 819
    :cond_2
    const-string/jumbo v0, "AI"

    #@24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 820
    const/4 v0, 0x1

    #@2b
    return v0

    #@2c
    .line 821
    :cond_3
    const-string/jumbo v0, "IR"

    #@2f
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_4

    #@35
    .line 822
    const/4 v0, 0x5

    #@36
    return v0

    #@37
    .line 823
    :cond_4
    const-string/jumbo v0, "AB"

    #@3a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_5

    #@40
    .line 824
    const/4 v0, 0x7

    #@41
    return v0

    #@42
    .line 825
    :cond_5
    const-string/jumbo v0, "AG"

    #@45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_6

    #@4b
    .line 826
    const/16 v0, 0x8

    #@4d
    return v0

    #@4e
    .line 827
    :cond_6
    const-string/jumbo v0, "AC"

    #@51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    if-eqz v0, :cond_7

    #@57
    .line 828
    const/16 v0, 0x9

    #@59
    return v0

    #@5a
    .line 831
    :cond_7
    const/4 v0, 0x0

    #@5b
    return v0
.end method

.method private getCFReasonFromCondition(I)I
    .locals 1
    .param p1, "condition"    # I

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 690
    packed-switch p1, :pswitch_data_0

    #@4
    .line 701
    return v0

    #@5
    .line 691
    :pswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 692
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 693
    :pswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 694
    :pswitch_3
    return v0

    #@c
    .line 695
    :pswitch_4
    const/4 v0, 0x4

    #@d
    return v0

    #@e
    .line 696
    :pswitch_5
    const/4 v0, 0x5

    #@f
    return v0

    #@10
    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 2
    .param p1, "info"    # Lcom/android/ims/ImsCallForwardInfo;

    #@0
    .prologue
    .line 1065
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    #@5
    .line 1066
    .local v0, "cfInfo":Lcom/android/internal/telephony/CallForwardInfo;
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    #@7
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    #@9
    .line 1067
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    #@b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCFReasonFromCondition(I)I

    #@e
    move-result v1

    #@f
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    #@11
    .line 1068
    const/4 v1, 0x1

    #@12
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    #@14
    .line 1069
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    #@16
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    #@18
    .line 1070
    iget-object v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    #@1a
    iput-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    #@1c
    .line 1071
    iget v1, p1, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    #@1e
    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    #@20
    .line 1072
    return-object v0
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 675
    packed-switch p1, :pswitch_data_0

    #@3
    .line 686
    const/4 v0, -0x1

    #@4
    return v0

    #@5
    .line 676
    :pswitch_0
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 677
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 678
    :pswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 679
    :pswitch_3
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 680
    :pswitch_4
    const/4 v0, 0x4

    #@e
    return v0

    #@f
    .line 681
    :pswitch_5
    const/4 v0, 0x5

    #@10
    return v0

    #@11
    .line 675
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    #@0
    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    #@4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    #@a
    return-object v0
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-le v1, v3, :cond_0

    #@7
    .line 336
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@13
    if-eq v1, v2, :cond_2

    #@15
    .line 340
    const-string/jumbo v1, "ImsPhone"

    #@18
    const-string/jumbo v2, "MmiCode 0: rejectCall"

    #@1b
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@20
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 356
    :cond_1
    :goto_0
    return v3

    #@24
    .line 343
    :catch_0
    move-exception v0

    #@25
    .line 344
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "ImsPhone"

    #@28
    const-string/jumbo v2, "reject failed"

    #@2b
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2e
    .line 345
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    #@30
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@33
    goto :goto_0

    #@34
    .line 347
    .end local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@3b
    move-result-object v1

    #@3c
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@3e
    if-eq v1, v2, :cond_1

    #@40
    .line 348
    const-string/jumbo v1, "ImsPhone"

    #@43
    const-string/jumbo v2, "MmiCode 0: hangupWaitingOrBackground"

    #@46
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    .line 350
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@4b
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    #@52
    goto :goto_0

    #@53
    .line 351
    :catch_1
    move-exception v0

    #@54
    .line 352
    .restart local v0    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "ImsPhone"

    #@57
    const-string/jumbo v2, "hangup failed"

    #@5a
    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    .line 392
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    .line 394
    .local v2, "len":I
    if-le v2, v3, :cond_0

    #@8
    .line 395
    const/4 v3, 0x0

    #@9
    return v3

    #@a
    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@d
    move-result-object v0

    #@e
    .line 400
    .local v0, "call":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-le v2, v5, :cond_1

    #@10
    .line 401
    const-string/jumbo v3, "ImsPhone"

    #@13
    const-string/jumbo v4, "separate not supported"

    #@16
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 402
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    #@1b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@1e
    .line 418
    :goto_0
    return v5

    #@1f
    .line 405
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@26
    move-result-object v3

    #@27
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@29
    if-eq v3, v4, :cond_2

    #@2b
    .line 406
    const-string/jumbo v3, "ImsPhone"

    #@2e
    const-string/jumbo v4, "MmiCode 2: accept ringing call"

    #@31
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 407
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@36
    const/4 v4, 0x2

    #@37
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@3a
    goto :goto_0

    #@3b
    .line 412
    :catch_0
    move-exception v1

    #@3c
    .line 413
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v3, "ImsPhone"

    #@3f
    const-string/jumbo v4, "switch failed"

    #@42
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 414
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    #@47
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@4a
    goto :goto_0

    #@4b
    .line 409
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "ImsPhone"

    #@4e
    const-string/jumbo v4, "MmiCode 2: switchWaitingOrHoldingAndActive"

    #@51
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 410
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@56
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@59
    goto :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 6
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 364
    .local v2, "len":I
    const/4 v3, 0x2

    #@6
    if-le v2, v3, :cond_0

    #@8
    .line 365
    const/4 v3, 0x0

    #@9
    return v3

    #@a
    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@d
    move-result-object v0

    #@e
    .line 371
    .local v0, "call":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    if-le v2, v5, :cond_1

    #@10
    .line 372
    :try_start_0
    const-string/jumbo v3, "ImsPhone"

    #@13
    const-string/jumbo v4, "not support 1X SEND"

    #@16
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 373
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    #@1b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@1e
    .line 388
    :goto_0
    return v5

    #@1f
    .line 375
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@22
    move-result-object v3

    #@23
    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@25
    if-eq v3, v4, :cond_2

    #@27
    .line 376
    const-string/jumbo v3, "ImsPhone"

    #@2a
    const-string/jumbo v4, "MmiCode 1: hangup foreground"

    #@2d
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 377
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@32
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 383
    :catch_0
    move-exception v1

    #@37
    .line 384
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v3, "ImsPhone"

    #@3a
    const-string/jumbo v4, "hangup failed"

    #@3d
    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    .line 385
    sget-object v3, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    #@42
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@45
    goto :goto_0

    #@46
    .line 379
    .end local v1    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "ImsPhone"

    #@49
    const-string/jumbo v4, "MmiCode 1: switchWaitingOrHoldingAndActive"

    #@4c
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    .line 380
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@51
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@54
    goto :goto_0
.end method

.method private handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1105
    new-array v0, v3, [I

    #@4
    .line 1106
    .local v0, "cbInfos":[I
    aput v2, v0, v2

    #@6
    .line 1108
    aget-object v1, p1, v2

    #@8
    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@a
    if-ne v1, v3, :cond_0

    #@c
    .line 1109
    aput v3, v0, v2

    #@e
    .line 1112
    :cond_0
    return-object v0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-le v0, v2, :cond_0

    #@7
    .line 447
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 450
    :cond_0
    const-string/jumbo v0, "ImsPhone"

    #@c
    const-string/jumbo v1, "MmiCode 5: CCBS not supported!"

    #@f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 452
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    #@14
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@17
    .line 453
    return v2
.end method

.method private handleCfQueryResult([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;
    .locals 8
    .param p1, "infos"    # [Lcom/android/ims/ImsCallForwardInfo;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 1076
    const/4 v0, 0x0

    #@4
    .line 1078
    .local v0, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    #@6
    array-length v4, p1

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 1079
    array-length v4, p1

    #@a
    new-array v0, v4, [Lcom/android/internal/telephony/CallForwardInfo;

    #@c
    .line 1082
    .end local v0    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@f
    move-result-object v2

    #@10
    .line 1083
    .local v2, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p1, :cond_1

    #@12
    array-length v4, p1

    #@13
    if-nez v4, :cond_3

    #@15
    .line 1084
    :cond_1
    if-eqz v2, :cond_2

    #@17
    .line 1087
    invoke-virtual {v2, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@1a
    .line 1101
    :cond_2
    return-object v0

    #@1b
    .line 1090
    :cond_3
    const/4 v1, 0x0

    #@1c
    .local v1, "i":I
    array-length v3, p1

    #@1d
    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@1f
    .line 1091
    aget-object v4, p1, v1

    #@21
    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    #@23
    if-nez v4, :cond_4

    #@25
    .line 1092
    if-eqz v2, :cond_4

    #@27
    .line 1093
    aget-object v4, p1, v1

    #@29
    iget v4, v4, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    #@2b
    if-ne v4, v5, :cond_5

    #@2d
    move v4, v5

    #@2e
    .line 1094
    :goto_1
    aget-object v7, p1, v1

    #@30
    iget-object v7, v7, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    #@32
    .line 1093
    invoke-virtual {v2, v5, v4, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@35
    .line 1097
    :cond_4
    aget-object v4, p1, v1

    #@37
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardInfo(Lcom/android/ims/ImsCallForwardInfo;)Lcom/android/internal/telephony/CallForwardInfo;

    #@3a
    move-result-object v4

    #@3b
    aput-object v4, v0, v1

    #@3d
    .line 1090
    add-int/lit8 v1, v1, 0x1

    #@3f
    goto :goto_0

    #@40
    :cond_5
    move v4, v6

    #@41
    .line 1093
    goto :goto_1
.end method

.method private handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I
    .locals 4
    .param p1, "infos"    # [Lcom/android/ims/ImsSsInfo;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1116
    const/4 v1, 0x2

    #@3
    new-array v0, v1, [I

    #@5
    .line 1117
    .local v0, "cwInfos":[I
    aput v2, v0, v2

    #@7
    .line 1119
    aget-object v1, p1, v2

    #@9
    iget v1, v1, Lcom/android/ims/ImsSsInfo;->mStatus:I

    #@b
    if-ne v1, v3, :cond_0

    #@d
    .line 1120
    aput v3, v0, v2

    #@f
    .line 1121
    aput v3, v0, v3

    #@11
    .line 1124
    :cond_0
    return-object v0
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 434
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    .line 436
    .local v0, "len":I
    if-eq v0, v3, :cond_0

    #@7
    .line 437
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 440
    :cond_0
    const-string/jumbo v1, "ImsPhone"

    #@c
    const-string/jumbo v2, "MmiCode 4: not support explicit call transfer"

    #@f
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 441
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    #@14
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    #@17
    .line 442
    return v3
.end method

.method private handleEnterEmergencyCallbackMode()V
    .locals 6

    #@0
    .prologue
    .line 1256
    const-string/jumbo v2, "ImsPhone"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    .line 1257
    iget-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@11
    .line 1256
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1260
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 1261
    const/4 v2, 0x1

    #@21
    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@23
    .line 1263
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    #@26
    .line 1264
    const-string/jumbo v2, "ril.cdma.inecmmode"

    #@29
    const-string/jumbo v3, "true"

    #@2c
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    .line 1269
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    #@32
    const-wide/32 v4, 0x493e0

    #@35
    .line 1268
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@38
    move-result-wide v0

    #@39
    .line 1270
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@3b
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    #@3e
    .line 1272
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@40
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@43
    .line 1254
    .end local v0    # "delayInMillis":J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode()V
    .locals 3

    #@0
    .prologue
    .line 1278
    const-string/jumbo v0, "ImsPhone"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "handleExitEmergencyCallbackMode: mIsPhoneInEcmState = "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    .line 1279
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@11
    .line 1278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 1282
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@1e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@21
    .line 1284
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@23
    if-eqz v0, :cond_0

    #@25
    .line 1285
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@27
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@29
    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    #@2c
    .line 1287
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@2e
    if-eqz v0, :cond_1

    #@30
    .line 1288
    const/4 v0, 0x0

    #@31
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@33
    .line 1289
    const-string/jumbo v0, "ril.cdma.inecmmode"

    #@36
    const-string/jumbo v1, "false"

    #@39
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 1292
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendEmergencyCallbackModeChange()V

    #@3f
    .line 1276
    return-void
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v0

    #@5
    if-le v0, v2, :cond_0

    #@7
    .line 424
    const/4 v0, 0x0

    #@8
    return v0

    #@9
    .line 427
    :cond_0
    const-string/jumbo v0, "ImsPhone"

    #@c
    const-string/jumbo v1, "MmiCode 3: merge calls"

    #@f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 428
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->conference()V

    #@15
    .line 429
    return v2
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 671
    if-eq p1, v0, :cond_0

    #@3
    const/4 v1, 0x3

    #@4
    if-ne p1, v1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    #@0
    .prologue
    .line 659
    packed-switch p1, :pswitch_data_0

    #@3
    .line 666
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 664
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 659
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    #@0
    .prologue
    .line 645
    packed-switch p1, :pswitch_data_0

    #@3
    .line 654
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 652
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 645
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 947
    const-string/jumbo v0, "ImsPhone"

    #@4
    const-string/jumbo v1, "onNetworkInitiatedUssd"

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@c
    .line 949
    new-instance v1, Landroid/os/AsyncResult;

    #@e
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@11
    .line 948
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@14
    .line 946
    return-void
.end method

.method private sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1129
    if-eqz p1, :cond_1

    #@2
    .line 1130
    const/4 v0, 0x0

    #@3
    .line 1131
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    if-eqz p3, :cond_0

    #@5
    .line 1132
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    #@8
    move-result-object v0

    #@9
    .line 1134
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@c
    .line 1135
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 1128
    :cond_1
    return-void
.end method

.method private updateDataServiceState()V
    .locals 4

    #@0
    .prologue
    .line 1140
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@6
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@9
    move-result-object v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 1141
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@e
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@11
    move-result-object v1

    #@12
    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1142
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@18
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1b
    move-result-object v1

    #@1c
    iget-object v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    #@1e
    .line 1143
    .local v0, "ss":Landroid/telephony/ServiceState;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@20
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    #@27
    .line 1144
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@29
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    #@2c
    move-result v2

    #@2d
    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    #@30
    .line 1145
    const-string/jumbo v1, "ImsPhone"

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "updateDataServiceState: defSs = "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    const-string/jumbo v3, " imsSs = "

    #@46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 1139
    .end local v0    # "ss":Landroid/telephony/ServiceState;
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    #@5
    .line 270
    return-void
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    #@3
    return-void
.end method

.method public callEndCleanupHandOverCallIfAny()V
    .locals 1

    #@0
    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->callEndCleanupHandOverCallIfAny()V

    #@5
    .line 1361
    return-void
.end method

.method public canConference()Z
    .locals 1

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canConference()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canDial()Z
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canDial()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public canTransfer()Z
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->canTransfer()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method cancelUSSD()V
    .locals 1

    #@0
    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->cancelUSSD()V

    #@5
    .line 879
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->clearDisconnected()V

    #@5
    .line 301
    return-void
.end method

.method public conference()V
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    #@5
    .line 296
    return-void
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 534
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 542
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected dialInternal(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 548
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 551
    .local v2, "newDialString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 552
    return-object v6

    #@c
    .line 555
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@e
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@11
    move-result v3

    #@12
    const/4 v4, 0x2

    #@13
    if-ne v3, v4, :cond_1

    #@15
    .line 556
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@17
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@1a
    move-result-object v3

    #@1b
    return-object v3

    #@1c
    .line 560
    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    .line 562
    .local v1, "networkPortion":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@23
    move-result-object v0

    #@24
    .line 563
    .local v0, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const-string/jumbo v3, "ImsPhone"

    #@27
    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v5, "dialing w/ mmi \'"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const-string/jumbo v5, "\'..."

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 563
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 566
    if-nez v0, :cond_2

    #@47
    .line 567
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@49
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@4c
    move-result-object v3

    #@4d
    return-object v3

    #@4e
    .line 568
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTemporaryModeCLIR()Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_3

    #@54
    .line 569
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@56
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getDialingNumber()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getCLIRMode()I

    #@5d
    move-result v5

    #@5e
    invoke-virtual {v3, v4, v5, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;IILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    #@61
    move-result-object v3

    #@62
    return-object v3

    #@63
    .line 570
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isSupportedOverImsPhone()Z

    #@66
    move-result v3

    #@67
    if-nez v3, :cond_4

    #@69
    .line 573
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    #@6b
    const-string/jumbo v4, "cs_fallback"

    #@6e
    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    #@71
    throw v3

    #@72
    .line 575
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@77
    .line 576
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@79
    new-instance v4, Landroid/os/AsyncResult;

    #@7b
    invoke-direct {v4, v6, v0, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@7e
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@81
    .line 577
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processCode()V

    #@84
    .line 579
    return-object v6
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableDataConnectivity()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->disableLocationUpdates()V

    #@3
    return-void
.end method

.method public dispose()V
    .locals 2

    #@0
    .prologue
    .line 223
    const-string/jumbo v0, "ImsPhone"

    #@3
    const-string/jumbo v1, "dispose"

    #@6
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@e
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@10
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dispose()V

    #@13
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@15
    if-eqz v0, :cond_0

    #@17
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@19
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_0

    #@1f
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@21
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    #@28
    .line 222
    :cond_0
    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableDataConnectivity()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->enableLocationUpdates()V

    #@3
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 4

    #@0
    .prologue
    .line 1239
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1240
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@a
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    #@d
    .line 1242
    :cond_0
    const-string/jumbo v2, "ImsPhone"

    #@10
    const-string/jumbo v3, "exitEmergencyCallbackMode()"

    #@13
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 1247
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@18
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getEcbmInterface()Lcom/android/ims/ImsEcbm;

    #@1b
    move-result-object v1

    #@1c
    .line 1248
    .local v1, "ecbm":Lcom/android/ims/ImsEcbm;
    invoke-virtual {v1}, Lcom/android/ims/ImsEcbm;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 1238
    .end local v1    # "ecbm":Lcom/android/ims/ImsEcbm;
    :goto_0
    return-void

    #@20
    .line 1249
    :catch_0
    move-exception v0

    #@21
    .line 1250
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->printStackTrace()V

    #@24
    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->explicitCallTransfer()V

    #@5
    .line 311
    return-void
.end method

.method public bridge synthetic getAllCellInfo()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAllCellInfo()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4
    return-object v0
.end method

.method getCallBarring(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 836
    const-string/jumbo v3, "ImsPhone"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "getCallBarring facility="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 838
    const/16 v3, 0x27

    #@1c
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    .line 841
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@22
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@25
    move-result-object v2

    #@26
    .line 842
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    #@29
    move-result v3

    #@2a
    invoke-interface {v2, v3, v1}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 835
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    #@2e
    .line 843
    :catch_0
    move-exception v0

    #@2f
    .line 844
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@32
    goto :goto_0
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCallForwardingIndicator()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 720
    const-string/jumbo v3, "ImsPhone"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "getCallForwardingOption reason="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 721
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 722
    const-string/jumbo v3, "ImsPhone"

    #@23
    const-string/jumbo v4, "requesting call forwarding query."

    #@26
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 724
    const/16 v3, 0xd

    #@2b
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2e
    move-result-object v1

    #@2f
    .line 727
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@31
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@34
    move-result-object v2

    #@35
    .line 728
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    #@38
    move-result v3

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-interface {v2, v3, v4, v1}, Lcom/android/ims/ImsUtInterface;->queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@3d
    .line 719
    .end local v1    # "resp":Landroid/os/Message;
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_0
    :goto_0
    return-void

    #@3e
    .line 729
    .restart local v1    # "resp":Landroid/os/Message;
    :catch_0
    move-exception v0

    #@3f
    .line 730
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@42
    goto :goto_0

    #@43
    .line 732
    .end local v0    # "e":Lcom/android/ims/ImsException;
    .end local v1    # "resp":Landroid/os/Message;
    :cond_1
    if-eqz p2, :cond_0

    #@45
    .line 733
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    #@48
    goto :goto_0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 782
    const-string/jumbo v3, "ImsPhone"

    #@3
    const-string/jumbo v4, "getCallWaiting"

    #@6
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 784
    const/16 v3, 0x29

    #@b
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v1

    #@f
    .line 787
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@11
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@14
    move-result-object v2

    #@15
    .line 788
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, v1}, Lcom/android/ims/ImsUtInterface;->queryCallWaiting(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 781
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    #@19
    .line 789
    :catch_0
    move-exception v0

    #@1a
    .line 790
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@1d
    goto :goto_0
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getCommandException(I)Lcom/android/internal/telephony/CommandException;
    .locals 4
    .param p1, "code"    # I

    #@0
    .prologue
    .line 913
    const-string/jumbo v1, "ImsPhone"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "getCommandException code="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 914
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@1c
    .line 916
    .local v0, "error":Lcom/android/internal/telephony/CommandException$Error;
    sparse-switch p1, :sswitch_data_0

    #@1f
    .line 929
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    #@21
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@24
    return-object v1

    #@25
    .line 918
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@27
    goto :goto_0

    #@28
    .line 921
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@2a
    goto :goto_0

    #@2b
    .line 924
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@2d
    goto :goto_0

    #@2e
    .line 916
    :sswitch_data_0
    .sparse-switch
        0x321 -> :sswitch_0
        0x322 -> :sswitch_2
        0x335 -> :sswitch_1
    .end sparse-switch
.end method

.method getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 934
    const/4 v0, 0x0

    #@1
    .line 936
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    instance-of v1, p1, Lcom/android/ims/ImsException;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 937
    check-cast p1, Lcom/android/ims/ImsException;

    #@7
    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(I)Lcom/android/internal/telephony/CommandException;

    #@e
    move-result-object v0

    #@f
    .line 942
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    :goto_0
    return-object v0

    #@10
    .line 939
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v1, "ImsPhone"

    #@13
    const-string/jumbo v2, "getCommandException generic failure"

    #@16
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 940
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1b
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@1d
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@20
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    goto :goto_0
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataCallList(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDataEnabled()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDataRoamingEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getDeviceSvn()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getEsn()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4
    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getGroupIdLevel2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getGroupIdLevel2()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getHandoverConnection()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1015
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1017
    .local v0, "connList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@8
    move-result-object v1

    #@9
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@e
    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@11
    move-result-object v1

    #@12
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@17
    .line 1021
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@1a
    move-result-object v1

    #@1b
    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@20
    .line 1022
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v1

    #@24
    if-lez v1, :cond_0

    #@26
    .line 1023
    return-object v0

    #@27
    .line 1025
    :cond_0
    const/4 v1, 0x0

    #@28
    return-object v1
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccRecordsLoaded()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getImei()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLine1Number()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMeid()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getMessageWaitingIndicator()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMute()Z
    .locals 1

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getMute()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public bridge synthetic getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    #@0
    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getPhoneType()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@4
    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@2
    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    #@0
    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@4
    return-object v0
.end method

.method public getSubId()I
    .locals 1

    #@0
    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getSubscriberId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 458
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 459
    return v3

    #@8
    .line 462
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 463
    return v3

    #@f
    .line 466
    :cond_1
    const/4 v1, 0x0

    #@10
    .line 467
    .local v1, "result":Z
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    .line 468
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    #@17
    .line 493
    .end local v1    # "result":Z
    :goto_0
    return v1

    #@18
    .line 470
    .restart local v1    # "result":Z
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    .local v1, "result":Z
    goto :goto_0

    #@1d
    .line 474
    .local v1, "result":Z
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    #@20
    move-result v1

    #@21
    .local v1, "result":Z
    goto :goto_0

    #@22
    .line 478
    .local v1, "result":Z
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    #@25
    move-result v1

    #@26
    .local v1, "result":Z
    goto :goto_0

    #@27
    .line 481
    .local v1, "result":Z
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    .local v1, "result":Z
    goto :goto_0

    #@2c
    .line 484
    .local v1, "result":Z
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    #@2f
    move-result v1

    #@30
    .local v1, "result":Z
    goto :goto_0

    #@31
    .line 487
    .local v1, "result":Z
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    #@34
    move-result v1

    #@35
    .local v1, "result":Z
    goto :goto_0

    #@36
    .line 468
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1151
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4
    check-cast v0, Landroid/os/AsyncResult;

    #@6
    .line 1154
    .local v0, "ar":Landroid/os/AsyncResult;
    const-string/jumbo v5, "ImsPhone"

    #@9
    new-instance v7, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v8, "handleMessage what="

    #@11
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v7

    #@15
    iget v8, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 1155
    iget v5, p1, Landroid/os/Message;->what:I

    #@24
    sparse-switch v5, :sswitch_data_0

    #@27
    .line 1197
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handleMessage(Landroid/os/Message;)V

    #@2a
    .line 1150
    :goto_0
    return-void

    #@2b
    .line 1157
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    #@2e
    move-result-object v3

    #@2f
    .line 1158
    .local v3, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@31
    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    #@33
    .line 1159
    .local v1, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    iget-boolean v5, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mIsCfu:Z

    #@35
    if-eqz v5, :cond_0

    #@37
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@39
    if-nez v5, :cond_0

    #@3b
    if-eqz v3, :cond_0

    #@3d
    .line 1160
    iget v5, p1, Landroid/os/Message;->arg1:I

    #@3f
    if-ne v5, v6, :cond_1

    #@41
    move v5, v6

    #@42
    :goto_1
    iget-object v7, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mSetCfNumber:Ljava/lang/String;

    #@44
    invoke-virtual {v3, v6, v5, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    #@47
    .line 1162
    :cond_0
    iget-object v5, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    #@49
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4b
    invoke-direct {p0, v5, v9, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@4e
    goto :goto_0

    #@4f
    .line 1160
    :cond_1
    const/4 v5, 0x0

    #@50
    goto :goto_1

    #@51
    .line 1166
    .end local v1    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v3    # "r":Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_1
    const/4 v2, 0x0

    #@52
    .line 1167
    .local v2, "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@54
    if-nez v5, :cond_2

    #@56
    .line 1168
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@58
    check-cast v5, [Lcom/android/ims/ImsCallForwardInfo;

    #@5a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCfQueryResult([Lcom/android/ims/ImsCallForwardInfo;)[Lcom/android/internal/telephony/CallForwardInfo;

    #@5d
    move-result-object v2

    #@5e
    .line 1170
    .end local v2    # "cfInfos":[Lcom/android/internal/telephony/CallForwardInfo;
    :cond_2
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@60
    check-cast v5, Landroid/os/Message;

    #@62
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@64
    invoke-direct {p0, v5, v2, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@67
    goto :goto_0

    #@68
    .line 1175
    :sswitch_2
    const/4 v4, 0x0

    #@69
    .line 1176
    .local v4, "ssInfos":[I
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@6b
    if-nez v5, :cond_3

    #@6d
    .line 1177
    iget v5, p1, Landroid/os/Message;->what:I

    #@6f
    const/16 v6, 0x27

    #@71
    if-ne v5, v6, :cond_4

    #@73
    .line 1178
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@75
    check-cast v5, [Lcom/android/ims/ImsSsInfo;

    #@77
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCbQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    #@7a
    move-result-object v4

    #@7b
    .line 1183
    .end local v4    # "ssInfos":[I
    :cond_3
    :goto_2
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@7d
    check-cast v5, Landroid/os/Message;

    #@7f
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@81
    invoke-direct {p0, v5, v4, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@84
    goto :goto_0

    #@85
    .line 1179
    .restart local v4    # "ssInfos":[I
    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    #@87
    const/16 v6, 0x29

    #@89
    if-ne v5, v6, :cond_3

    #@8b
    .line 1180
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@8d
    check-cast v5, [Lcom/android/ims/ImsSsInfo;

    #@8f
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->handleCwQueryResult([Lcom/android/ims/ImsSsInfo;)[I

    #@92
    move-result-object v4

    #@93
    .local v4, "ssInfos":[I
    goto :goto_2

    #@94
    .line 1188
    .end local v4    # "ssInfos":[I
    :sswitch_3
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@96
    check-cast v5, Landroid/os/Message;

    #@98
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@9a
    invoke-direct {p0, v5, v9, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@9d
    goto :goto_0

    #@9e
    .line 1192
    :sswitch_4
    const-string/jumbo v5, "ImsPhone"

    #@a1
    const-string/jumbo v6, "EVENT_DEFAULT_PHONE_DATA_STATE_CHANGED"

    #@a4
    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    .line 1193
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    #@aa
    goto :goto_0

    #@ab
    .line 1155
    nop

    #@ac
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x28 -> :sswitch_3
        0x29 -> :sswitch_2
        0x2a -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 6
    .param p1, "action"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1301
    packed-switch p1, :pswitch_data_0

    #@4
    .line 1321
    const-string/jumbo v2, "ImsPhone"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1300
    :goto_0
    return-void

    #@1f
    .line 1303
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@21
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    #@24
    .line 1304
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@26
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@29
    move-result v2

    #@2a
    if-ne v2, v3, :cond_0

    #@2c
    .line 1305
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2e
    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@30
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@32
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    #@35
    goto :goto_0

    #@36
    .line 1307
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@38
    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@3a
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@3c
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    #@3f
    goto :goto_0

    #@40
    .line 1312
    :pswitch_1
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    #@43
    const-wide/32 v4, 0x493e0

    #@46
    .line 1311
    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    #@49
    move-result-wide v0

    #@4a
    .line 1313
    .local v0, "delayInMillis":J
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    #@4c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    #@4f
    .line 1314
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@51
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    #@54
    move-result v2

    #@55
    if-ne v2, v3, :cond_1

    #@57
    .line 1315
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@59
    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    #@5b
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@5d
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    #@60
    goto :goto_0

    #@61
    .line 1317
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@63
    check-cast v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    #@65
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@67
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyEcbmTimerReset(Ljava/lang/Boolean;)V

    #@6a
    goto :goto_0

    #@6b
    .line 1301
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initiateSilentRedial()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1035
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mLastDialString:Ljava/lang/String;

    #@3
    .line 1036
    .local v1, "result":Ljava/lang/String;
    new-instance v0, Landroid/os/AsyncResult;

    #@5
    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@8
    .line 1037
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    #@a
    .line 1038
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    #@c
    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@f
    .line 1034
    :cond_0
    return-void
.end method

.method public bridge synthetic isDataConnectivityPossible()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->isDataConnectivityPossible()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    #@0
    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    #@2
    return v0
.end method

.method isInCall()Z
    .locals 4

    #@0
    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@7
    move-result-object v1

    #@8
    .line 498
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@f
    move-result-object v0

    #@10
    .line 499
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v2

    #@18
    .line 501
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    .line 502
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@21
    move-result v3

    #@22
    .line 501
    if-nez v3, :cond_0

    #@24
    .line 503
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@27
    move-result v3

    #@28
    .line 501
    :goto_0
    return v3

    #@29
    :cond_0
    const/4 v3, 0x1

    #@2a
    goto :goto_0
.end method

.method public isInEcm()Z
    .locals 1

    #@0
    .prologue
    .line 1225
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@2
    return v0
.end method

.method public isInEmergencyCall()Z
    .locals 1

    #@0
    .prologue
    .line 1221
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isInEmergencyCall()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVideoCallEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVideoCallEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVolteEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVolteEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isVowifiEnabled()Z
    .locals 1

    #@0
    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isVowifiEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "from"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->migrateFrom(Lcom/android/internal/telephony/PhoneBase;)V

    #@3
    return-void
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->needsOtaServiceProvisioning()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->notifyCallForwardingIndicator()V

    #@3
    return-void
.end method

.method public notifyForVideoCapabilityChanged(Z)V
    .locals 1
    .param p1, "isVideoCapable"    # Z

    #@0
    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    #@2
    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyForVideoCapabilityChanged(Z)V

    #@7
    .line 526
    return-void
.end method

.method notifyIncomingRing()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 619
    const-string/jumbo v1, "ImsPhone"

    #@4
    const-string/jumbo v2, "notifyIncomingRing"

    #@7
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 620
    new-instance v0, Landroid/os/AsyncResult;

    #@c
    invoke-direct {v0, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@f
    .line 621
    .local v0, "ar":Landroid/os/AsyncResult;
    const/16 v1, 0xe

    #@11
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendMessage(Landroid/os/Message;)Z

    #@18
    .line 618
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    #@5
    .line 506
    return-void
.end method

.method public notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/Call$SrvccState;

    #@0
    .prologue
    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(Lcom/android/internal/telephony/Call$SrvccState;)V

    #@5
    .line 1029
    return-void
.end method

.method public onFeatureCapabilityChanged()V
    .locals 1

    #@0
    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->onImsCapabilityChanged()V

    #@9
    .line 1333
    return-void
.end method

.method onIncomingUSSD(ILjava/lang/String;)V
    .locals 10
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 954
    const-string/jumbo v6, "ImsPhone"

    #@4
    new-instance v7, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v8, "onIncomingUSSD ussdMode="

    #@c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v7

    #@10
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v7

    #@14
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 960
    if-ne p1, v9, :cond_2

    #@1d
    const/4 v3, 0x1

    #@1e
    .line 963
    .local v3, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_4

    #@20
    .line 964
    if-eq p1, v9, :cond_3

    #@22
    const/4 v2, 0x1

    #@23
    .line 966
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v0, 0x0

    #@24
    .line 967
    .local v0, "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v1, 0x0

    #@25
    .local v1, "i":I
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v5

    #@2b
    .local v5, "s":I
    :goto_2
    if-ge v1, v5, :cond_0

    #@2d
    .line 968
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    check-cast v6, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@35
    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPendingUSSD()Z

    #@38
    move-result v6

    #@39
    if-eqz v6, :cond_5

    #@3b
    .line 969
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    .end local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@43
    .line 974
    :cond_0
    if-eqz v0, :cond_7

    #@45
    .line 976
    if-eqz v2, :cond_6

    #@47
    .line 977
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinishedError()V

    #@4a
    .line 953
    :cond_1
    :goto_3
    return-void

    #@4b
    .line 960
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRequest":Z
    .end local v5    # "s":I
    :cond_2
    const/4 v3, 0x0

    #@4c
    .restart local v3    # "isUssdRequest":Z
    goto :goto_0

    #@4d
    .line 964
    :cond_3
    const/4 v2, 0x0

    #@4e
    .restart local v2    # "isUssdError":Z
    goto :goto_1

    #@4f
    .line 963
    .end local v2    # "isUssdError":Z
    :cond_4
    const/4 v2, 0x0

    #@50
    .restart local v2    # "isUssdError":Z
    goto :goto_1

    #@51
    .line 967
    .restart local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .restart local v1    # "i":I
    .restart local v5    # "s":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_2

    #@54
    .line 979
    .end local v0    # "found":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_6
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    #@57
    goto :goto_3

    #@58
    .line 986
    :cond_7
    if-nez v2, :cond_1

    #@5a
    if-eqz p2, :cond_1

    #@5c
    .line 988
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@5f
    move-result-object v4

    #@60
    .line 991
    .local v4, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    #@63
    goto :goto_3
.end method

.method onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1008
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isUssdRequest()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    #@11
    .line 1010
    new-instance v1, Landroid/os/AsyncResult;

    #@13
    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@16
    .line 1009
    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@19
    .line 1002
    :cond_1
    return-void
.end method

.method public bridge synthetic onTtyModeReceived(I)V
    .locals 0
    .param p1, "mode"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->onTtyModeReceived(I)V

    #@3
    return-void
.end method

.method public processDisconnectReason(Lcom/android/ims/ImsReasonInfo;)V
    .locals 19
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    .line 1416
    move-object/from16 v0, p1

    #@2
    iget v1, v0, Lcom/android/ims/ImsReasonInfo;->mCode:I

    #@4
    const/16 v3, 0x3e8

    #@6
    if-ne v1, v3, :cond_5

    #@8
    .line 1417
    move-object/from16 v0, p1

    #@a
    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@c
    if-eqz v1, :cond_5

    #@e
    .line 1420
    move-object/from16 v0, p0

    #@10
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@12
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v1

    #@16
    .line 1421
    const v3, 0x1070048

    #@19
    .line 1420
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@1c
    move-result-object v17

    #@1d
    .line 1423
    .local v17, "wfcOperatorErrorCodes":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@1f
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@24
    move-result-object v1

    #@25
    .line 1424
    const v3, 0x1070049

    #@28
    .line 1423
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@2b
    move-result-object v16

    #@2c
    .line 1426
    .local v16, "wfcOperatorErrorAlertMessages":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@2e
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@30
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@33
    move-result-object v1

    #@34
    .line 1427
    const v3, 0x107004a

    #@37
    .line 1426
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@3a
    move-result-object v18

    #@3b
    .line 1429
    .local v18, "wfcOperatorErrorNotificationMessages":[Ljava/lang/String;
    const/4 v10, 0x0

    #@3c
    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v17

    #@3e
    array-length v1, v0

    #@3f
    if-ge v10, v1, :cond_5

    #@41
    .line 1431
    move-object/from16 v0, p1

    #@43
    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@45
    .line 1432
    aget-object v3, v17, v10

    #@47
    .line 1431
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@4a
    move-result v1

    #@4b
    if-nez v1, :cond_1

    #@4d
    .line 1429
    :cond_0
    add-int/lit8 v10, v10, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 1439
    :cond_1
    aget-object v1, v17, v10

    #@52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@55
    move-result v9

    #@56
    .line 1440
    .local v9, "codeStringLength":I
    aget-object v1, v17, v10

    #@58
    add-int/lit8 v3, v9, -0x1

    #@5a
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@5d
    move-result v11

    #@5e
    .line 1441
    .local v11, "lastChar":C
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_2

    #@64
    .line 1442
    move-object/from16 v0, p1

    #@66
    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@68
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6b
    move-result v1

    #@6c
    if-le v1, v9, :cond_2

    #@6e
    .line 1443
    move-object/from16 v0, p1

    #@70
    iget-object v1, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@72
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    #@75
    move-result v14

    #@76
    .line 1444
    .local v14, "nextChar":C
    invoke-static {v14}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    #@79
    move-result v1

    #@7a
    if-nez v1, :cond_0

    #@7c
    .line 1450
    .end local v14    # "nextChar":C
    :cond_2
    move-object/from16 v0, p0

    #@7e
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@80
    .line 1451
    const v3, 0x10400c5

    #@83
    .line 1450
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@86
    move-result-object v15

    #@87
    .line 1453
    .local v15, "title":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    #@89
    iget-object v12, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@8b
    .line 1454
    .local v12, "messageAlert":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    #@8d
    iget-object v13, v0, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    #@8f
    .line 1455
    .local v13, "messageNotification":Ljava/lang/CharSequence;
    aget-object v1, v16, v10

    #@91
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@94
    move-result v1

    #@95
    if-nez v1, :cond_3

    #@97
    .line 1456
    aget-object v12, v16, v10

    #@99
    .line 1458
    :cond_3
    aget-object v1, v18, v10

    #@9b
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@9e
    move-result v1

    #@9f
    if-nez v1, :cond_4

    #@a1
    .line 1459
    aget-object v13, v18, v10

    #@a3
    .line 1463
    :cond_4
    move-object/from16 v0, p0

    #@a5
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@a7
    const/4 v3, 0x0

    #@a8
    invoke-static {v1, v3}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    #@ab
    .line 1467
    new-instance v2, Landroid/content/Intent;

    #@ad
    const-string/jumbo v1, "com.android.ims.REGISTRATION_ERROR"

    #@b0
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@b3
    .line 1468
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "alertTitle"

    #@b6
    invoke-virtual {v2, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@b9
    .line 1469
    const-string/jumbo v1, "alertMessage"

    #@bc
    invoke-virtual {v2, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@bf
    .line 1470
    const-string/jumbo v1, "notificationMessage"

    #@c2
    invoke-virtual {v2, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@c5
    .line 1471
    move-object/from16 v0, p0

    #@c7
    iget-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mContext:Landroid/content/Context;

    #@c9
    move-object/from16 v0, p0

    #@cb
    iget-object v4, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mResultReceiver:Landroid/content/BroadcastReceiver;

    #@cd
    const/4 v3, 0x0

    #@ce
    .line 1472
    const/4 v5, 0x0

    #@cf
    const/4 v6, -0x1

    #@d0
    const/4 v7, 0x0

    #@d1
    const/4 v8, 0x0

    #@d2
    .line 1471
    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@d5
    .line 1415
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v9    # "codeStringLength":I
    .end local v10    # "i":I
    .end local v11    # "lastChar":C
    .end local v12    # "messageAlert":Ljava/lang/CharSequence;
    .end local v13    # "messageNotification":Ljava/lang/CharSequence;
    .end local v15    # "title":Ljava/lang/CharSequence;
    .end local v16    # "wfcOperatorErrorAlertMessages":[Ljava/lang/String;
    .end local v17    # "wfcOperatorErrorCodes":[Ljava/lang/String;
    .end local v18    # "wfcOperatorErrorNotificationMessages":[Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public bridge synthetic registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public registerForSilentRedial(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    .line 1042
    return-void
.end method

.method public bridge synthetic registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->registerForTtyModeReceived(Landroid/os/Handler;ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    #@5
    .line 276
    return-void
.end method

.method public removeReferences()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 238
    const-string/jumbo v0, "ImsPhone"

    #@4
    const-string/jumbo v1, "removeReferences"

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 239
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->removeReferences()V

    #@d
    .line 241
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@f
    .line 242
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@11
    .line 237
    return-void
.end method

.method public bridge synthetic saveClirSetting(I)V
    .locals 0
    .param p1, "commandInterfaceCLIRMode"    # I

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->saveClirSetting(I)V

    #@3
    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    .line 586
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1

    #@6
    .line 587
    const-string/jumbo v0, "ImsPhone"

    #@9
    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "\'"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 587
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 585
    :cond_0
    :goto_0
    return-void

    #@28
    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2a
    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2c
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@2e
    if-ne v0, v1, :cond_0

    #@30
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@32
    const/4 v1, 0x0

    #@33
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    #@36
    goto :goto_0
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    #@0
    .prologue
    .line 1230
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1231
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "phoneinECMState"

    #@b
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsPhoneInEcmState:Z

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@10
    .line 1232
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    #@13
    move-result v1

    #@14
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@17
    .line 1233
    const/4 v1, 0x0

    #@18
    const/4 v2, -0x1

    #@19
    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    #@1c
    .line 1234
    const-string/jumbo v1, "ImsPhone"

    #@1f
    const-string/jumbo v2, "sendEmergencyCallbackModeChange"

    #@22
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 1228
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 885
    const-string/jumbo v0, "ImsPhone"

    #@4
    const-string/jumbo v1, "sendErrorResponse"

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 886
    if-eqz p1, :cond_0

    #@c
    .line 888
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@e
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@10
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@13
    .line 887
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@16
    .line 889
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@19
    .line 884
    :cond_0
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 904
    const-string/jumbo v0, "ImsPhone"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "sendErrorResponse reasonCode="

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@13
    move-result v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 905
    if-eqz p1, :cond_0

    #@21
    .line 906
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->getCode()I

    #@24
    move-result v0

    #@25
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(I)Lcom/android/internal/telephony/CommandException;

    #@28
    move-result-object v0

    #@29
    invoke-static {p1, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@2c
    .line 907
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@2f
    .line 903
    :cond_0
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 895
    const-string/jumbo v0, "ImsPhone"

    #@4
    const-string/jumbo v1, "sendErrorResponse"

    #@7
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 896
    if-eqz p1, :cond_0

    #@c
    .line 897
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    #@f
    move-result-object v0

    #@10
    invoke-static {p1, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    #@13
    .line 898
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 894
    :cond_0
    return-void
.end method

.method sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    #@5
    .line 874
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 866
    const-string/jumbo v1, "ImsPhone"

    #@4
    const-string/jumbo v2, "sendUssdResponse"

    #@7
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    .line 867
    invoke-static {p1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    #@d
    move-result-object v0

    #@e
    .line 868
    .local v0, "mmi":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPendingMMIs:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 869
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    #@15
    new-instance v2, Landroid/os/AsyncResult;

    #@17
    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    #@1a
    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    #@1d
    .line 870
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sendUssd(Ljava/lang/String;)V

    #@20
    .line 865
    return-void
.end method

.method setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 850
    const-string/jumbo v3, "ImsPhone"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "setCallBarring facility="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    .line 851
    const-string/jumbo v5, ", lockState="

    #@16
    .line 850
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 853
    const/16 v3, 0x26

    #@27
    invoke-virtual {p0, v3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@2a
    move-result-object v1

    #@2b
    .line 856
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2d
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@30
    move-result-object v2

    #@31
    .line 858
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCBTypeFromFacility(Ljava/lang/String;)I

    #@34
    move-result v3

    #@35
    const/4 v4, 0x0

    #@36
    invoke-interface {v2, v3, p2, v1, v4}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IZLandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 849
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    #@3a
    .line 859
    :catch_0
    move-exception v0

    #@3b
    .line 860
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p4, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@3e
    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 11
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timerSeconds"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 753
    const-string/jumbo v2, "ImsPhone"

    #@3
    new-instance v3, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v4, "setCallForwardingOption action="

    #@b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    .line 754
    const-string/jumbo v4, ", reason="

    #@16
    .line 753
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    .line 754
    const-string/jumbo v4, " serviceClass="

    #@21
    .line 753
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 755
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFAction(I)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_3

    #@36
    .line 756
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isValidCommandInterfaceCFReason(I)Z

    #@39
    move-result v2

    #@3a
    .line 755
    if-eqz v2, :cond_3

    #@3c
    .line 758
    new-instance v8, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;

    #@3e
    .line 759
    if-nez p2, :cond_1

    #@40
    const/4 v2, 0x1

    #@41
    .line 758
    :goto_0
    move-object/from16 v0, p6

    #@43
    invoke-direct {v8, p3, v2, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;-><init>(Ljava/lang/String;ZLandroid/os/Message;)V

    #@46
    .line 762
    .local v8, "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isCfEnable(I)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_2

    #@4c
    const/4 v2, 0x1

    #@4d
    .line 761
    :goto_1
    const/16 v3, 0xc

    #@4f
    .line 762
    const/4 v4, 0x0

    #@50
    .line 761
    invoke-virtual {p0, v3, v2, v4, v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@53
    move-result-object v10

    #@54
    .line 765
    .local v10, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@56
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@59
    move-result-object v1

    #@5a
    .line 766
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getActionFromCFAction(I)I

    #@5d
    move-result v2

    #@5e
    .line 767
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getConditionFromCFReason(I)I

    #@61
    move-result v3

    #@62
    move-object v4, p3

    #@63
    move v5, p4

    #@64
    move/from16 v6, p5

    #@66
    move-object/from16 v7, p6

    #@68
    .line 766
    invoke-interface/range {v1 .. v7}, Lcom/android/ims/ImsUtInterface;->updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6b
    .line 752
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    .end local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v10    # "resp":Landroid/os/Message;
    :cond_0
    :goto_2
    return-void

    #@6c
    .line 759
    :cond_1
    const/4 v2, 0x0

    #@6d
    goto :goto_0

    #@6e
    .line 762
    .restart local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    :cond_2
    const/4 v2, 0x0

    #@6f
    goto :goto_1

    #@70
    .line 772
    .restart local v10    # "resp":Landroid/os/Message;
    :catch_0
    move-exception v9

    #@71
    .line 773
    .local v9, "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p6

    #@73
    invoke-virtual {p0, v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@76
    goto :goto_2

    #@77
    .line 775
    .end local v8    # "cf":Lcom/android/internal/telephony/imsphone/ImsPhone$Cf;
    .end local v9    # "e":Lcom/android/ims/ImsException;
    .end local v10    # "resp":Landroid/os/Message;
    :cond_3
    if-eqz p6, :cond_0

    #@79
    .line 776
    move-object/from16 v0, p6

    #@7b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    #@7e
    goto :goto_2
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 7
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 744
    const/4 v4, 0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, p4

    #@6
    move-object v6, p5

    #@7
    .line 743
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    #@a
    .line 742
    return-void
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 800
    const-string/jumbo v3, "ImsPhone"

    #@3
    new-instance v4, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v5, "setCallWaiting enable="

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v4

    #@f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 802
    const/16 v3, 0x28

    #@1c
    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1f
    move-result-object v1

    #@20
    .line 805
    .local v1, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@22
    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    #@25
    move-result-object v2

    #@26
    .line 806
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, p1, p2, v1}, Lcom/android/ims/ImsUtInterface;->updateCallWaiting(ZILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 799
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    #@2a
    .line 807
    :catch_0
    move-exception v0

    #@2b
    .line 808
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    #@2e
    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 796
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    #@4
    .line 795
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    #@3
    return-void
.end method

.method public bridge synthetic setDataEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataEnabled(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setDataRoamingEnabled(Z)V

    #@3
    return-void
.end method

.method public setImsRegistered(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1358
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mImsRegistered:Z

    #@2
    .line 1357
    return-void
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setMute(Z)V

    #@5
    .line 625
    return-void
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1326
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@7
    .line 1325
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 615
    new-instance v0, Landroid/os/Registrant;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    #@7
    .line 614
    return-void
.end method

.method public bridge synthetic setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    #@3
    return-void
.end method

.method public bridge synthetic setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setRadioPower(Z)V

    #@3
    return-void
.end method

.method setServiceState(I)V
    .locals 1
    .param p1, "state"    # I

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSS:Landroid/telephony/ServiceState;

    #@2
    invoke-virtual {v0, p1}, Landroid/telephony/ServiceState;->setState(I)V

    #@5
    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    #@8
    .line 251
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "uiTtyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setUiTTYMode(ILandroid/os/Message;)V

    #@5
    .line 630
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    #@3
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 599
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_0

    #@8
    const/16 v2, 0x41

    #@a
    if-lt p1, v2, :cond_1

    #@c
    const/16 v2, 0x44

    #@e
    if-gt p1, v2, :cond_1

    #@10
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@12
    .line 600
    const-string/jumbo v0, "ImsPhone"

    #@15
    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "startDtmf called with invalid character \'"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string/jumbo v2, "\'"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 600
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 598
    :goto_1
    return-void

    #@34
    :cond_1
    move v0, v1

    #@35
    .line 599
    goto :goto_0

    #@36
    .line 603
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@38
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startDtmf(C)V

    #@3b
    goto :goto_1
.end method

.method public stopDtmf()V
    .locals 1

    #@0
    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopDtmf()V

    #@5
    .line 609
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->switchWaitingOrHoldingAndActive()V

    #@5
    .line 282
    return-void
.end method

.method public bridge synthetic unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method public unregisterForSilentRedial(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mSilentRedialRegistrants:Landroid/os/RegistrantList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    #@5
    .line 1046
    return-void
.end method

.method public bridge synthetic unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method public bridge synthetic unregisterForTtyModeReceived(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->unregisterForTtyModeReceived(Landroid/os/Handler;)V

    #@3
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    #@2
    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    #@5
    .line 1329
    return-void
.end method

.method public updateParentPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "parentPhone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@7
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 203
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@f
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V

    #@16
    .line 206
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@18
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@1a
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPhoneId:I

    #@20
    .line 208
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@22
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@25
    move-result-object v0

    #@26
    if-eqz v0, :cond_1

    #@28
    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2a
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    #@2d
    move-result-object v0

    #@2e
    .line 211
    const/16 v1, 0x2a

    #@30
    .line 209
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    #@33
    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->updateDataServiceState()V

    #@36
    .line 217
    const-string/jumbo v0, "ImsPhone"

    #@39
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "updateParentPhone - Notify video capability changed "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 218
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mIsVideoCapable:Z

    #@54
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    #@57
    .line 200
    return-void
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    #@0
    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->updateServiceLocation()V

    #@3
    return-void
.end method
