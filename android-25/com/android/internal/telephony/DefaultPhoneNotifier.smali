.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I = null

.field private static final synthetic -com-android-internal-telephony-PhoneInternalInterface$DataActivityStateSwitchesValues:[I = null

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultPhoneNotifier"


# instance fields
.field protected mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@46
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/16 v2, 0x12

    #@4c
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    #@4e
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@50
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@53
    move-result v1

    #@54
    const/4 v2, 0x7

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@59
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x8

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    #@61
    :goto_8
    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    #@63
    return-object v0

    #@64
    :catch_0
    move-exception v1

    #@65
    goto :goto_8

    #@66
    :catch_1
    move-exception v1

    #@67
    goto :goto_7

    #@68
    :catch_2
    move-exception v1

    #@69
    goto :goto_6

    #@6a
    :catch_3
    move-exception v1

    #@6b
    goto :goto_5

    #@6c
    :catch_4
    move-exception v1

    #@6d
    goto :goto_4

    #@6e
    :catch_5
    move-exception v1

    #@6f
    goto :goto_3

    #@70
    :catch_6
    move-exception v1

    #@71
    goto :goto_2

    #@72
    :catch_7
    move-exception v1

    #@73
    goto :goto_1

    #@74
    :catch_8
    move-exception v1

    #@75
    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-PhoneConstants$DataStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$DataState;->values()[Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/16 v2, 0x12

    #@28
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@2a
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@2c
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    #@2f
    move-result v1

    #@30
    const/4 v2, 0x3

    #@31
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@33
    :goto_3
    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues:[I

    #@35
    return-object v0

    #@36
    :catch_0
    move-exception v1

    #@37
    goto :goto_3

    #@38
    :catch_1
    move-exception v1

    #@39
    goto :goto_2

    #@3a
    :catch_2
    move-exception v1

    #@3b
    goto :goto_1

    #@3c
    :catch_3
    move-exception v1

    #@3d
    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$State;->values()[Lcom/android/internal/telephony/PhoneConstants$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/16 v2, 0x12

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@1a
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/4 v2, 0x1

    #@1f
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@23
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    #@26
    move-result v1

    #@27
    const/4 v2, 0x2

    #@28
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@2a
    :goto_2
    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-PhoneConstants$StateSwitchesValues:[I

    #@2c
    return-object v0

    #@2d
    :catch_0
    move-exception v1

    #@2e
    goto :goto_2

    #@2f
    :catch_1
    move-exception v1

    #@30
    goto :goto_1

    #@31
    :catch_2
    move-exception v1

    #@32
    goto :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-PhoneInternalInterface$DataActivityStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-PhoneInternalInterface$DataActivityStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-PhoneInternalInterface$DataActivityStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->values()[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/16 v2, 0x12

    #@3a
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3c
    :goto_4
    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com-android-internal-telephony-PhoneInternalInterface$DataActivityStateSwitchesValues:[I

    #@3e
    return-object v0

    #@3f
    :catch_0
    move-exception v1

    #@40
    goto :goto_4

    #@41
    :catch_1
    move-exception v1

    #@42
    goto :goto_3

    #@43
    :catch_2
    move-exception v1

    #@44
    goto :goto_2

    #@45
    :catch_3
    move-exception v1

    #@46
    goto :goto_1

    #@47
    :catch_4
    move-exception v1

    #@48
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    const-string/jumbo v0, "telephony.registry"

    #@6
    .line 51
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@10
    .line 50
    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    #@0
    .prologue
    .line 310
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-getcom-android-internal-telephony-PhoneConstants$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 316
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 312
    :pswitch_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 314
    :pswitch_1
    const/4 v0, 0x2

    #@12
    return v0

    #@13
    .line 310
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 325
    packed-switch p0, :pswitch_data_0

    #@3
    .line 331
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@5
    return-object v0

    #@6
    .line 327
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@8
    return-object v0

    #@9
    .line 329
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@b
    return-object v0

    #@c
    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@0
    .prologue
    .line 374
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-getcom-android-internal-telephony-PhoneInternalInterface$DataActivityStateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 384
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 376
    :pswitch_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 378
    :pswitch_1
    const/4 v0, 0x2

    #@12
    return v0

    #@13
    .line 380
    :pswitch_2
    const/4 v0, 0x3

    #@14
    return v0

    #@15
    .line 382
    :pswitch_3
    const/4 v0, 0x4

    #@16
    return v0

    #@17
    .line 374
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@0
    .prologue
    .line 340
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-getcom-android-internal-telephony-PhoneConstants$DataStateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 348
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 342
    :pswitch_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 344
    :pswitch_1
    const/4 v0, 0x2

    #@12
    return v0

    #@13
    .line 346
    :pswitch_2
    const/4 v0, 0x3

    #@14
    return v0

    #@15
    .line 340
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 357
    packed-switch p0, :pswitch_data_0

    #@3
    .line 365
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@5
    return-object v0

    #@6
    .line 359
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@8
    return-object v0

    #@9
    .line 361
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@b
    return-object v0

    #@c
    .line 363
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@e
    return-object v0

    #@f
    .line 357
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 393
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 411
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 395
    :pswitch_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 397
    :pswitch_1
    const/4 v0, 0x2

    #@12
    return v0

    #@13
    .line 399
    :pswitch_2
    const/4 v0, 0x3

    #@14
    return v0

    #@15
    .line 401
    :pswitch_3
    const/4 v0, 0x4

    #@16
    return v0

    #@17
    .line 403
    :pswitch_4
    const/4 v0, 0x5

    #@18
    return v0

    #@19
    .line 405
    :pswitch_5
    const/4 v0, 0x6

    #@1a
    return v0

    #@1b
    .line 407
    :pswitch_6
    const/4 v0, 0x7

    #@1c
    return v0

    #@1d
    .line 409
    :pswitch_7
    const/16 v0, 0x8

    #@1f
    return v0

    #@20
    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 18
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@0
    .prologue
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v3

    #@4
    .line 164
    .local v3, "subId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    #@7
    move-result v2

    #@8
    int-to-long v14, v2

    #@9
    .line 170
    .local v14, "dds":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@c
    move-result-object v17

    #@d
    .line 171
    .local v17, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v9, 0x0

    #@e
    .line 172
    .local v9, "linkProperties":Landroid/net/LinkProperties;
    const/4 v10, 0x0

    #@f
    .line 173
    .local v10, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/4 v12, 0x0

    #@10
    .line 175
    .local v12, "roaming":Z
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@12
    move-object/from16 v0, p4

    #@14
    if-ne v0, v2, :cond_0

    #@16
    .line 176
    move-object/from16 v0, p1

    #@18
    move-object/from16 v1, p3

    #@1a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@1d
    move-result-object v9

    #@1e
    .line 177
    .local v9, "linkProperties":Landroid/net/LinkProperties;
    move-object/from16 v0, p1

    #@20
    move-object/from16 v1, p3

    #@22
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@25
    move-result-object v10

    #@26
    .line 179
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    .end local v10    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@29
    move-result-object v16

    #@2a
    .line 180
    .local v16, "ss":Landroid/telephony/ServiceState;
    if-eqz v16, :cond_1

    #@2c
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@2f
    move-result v12

    #@30
    .line 183
    .end local v12    # "roaming":Z
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 184
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@3a
    .line 185
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    #@3d
    move-result v4

    #@3e
    .line 186
    move-object/from16 v0, p1

    #@40
    move-object/from16 v1, p3

    #@42
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    #@45
    move-result v5

    #@46
    .line 187
    move-object/from16 v0, p1

    #@48
    move-object/from16 v1, p3

    #@4a
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    .line 191
    if-eqz v17, :cond_3

    #@50
    move-object/from16 v0, v17

    #@52
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    #@55
    move-result v11

    #@56
    :goto_0
    move-object/from16 v6, p2

    #@58
    move-object/from16 v8, p3

    #@5a
    .line 184
    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 162
    :cond_2
    :goto_1
    return-void

    #@5e
    .line 192
    :cond_3
    const/4 v11, 0x0

    #@5f
    goto :goto_0

    #@60
    .line 195
    :catch_0
    move-exception v13

    #@61
    .local v13, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 416
    const-string/jumbo v0, "DefaultPhoneNotifier"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 415
    return-void
.end method


# virtual methods
.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v1

    #@4
    .line 133
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    .line 135
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    #@d
    move-result v3

    #@e
    .line 134
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 130
    :cond_0
    :goto_0
    return-void

    #@12
    .line 137
    :catch_0
    move-exception v0

    #@13
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyCellInfo(Lcom/android/internal/telephony/Phone;Ljava/util/List;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 228
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v1

    #@4
    .line 230
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    invoke-interface {v2, v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 227
    :cond_0
    :goto_0
    return-void

    #@e
    .line 233
    :catch_0
    move-exception v0

    #@f
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyCellLocation(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v2

    #@4
    .line 215
    .local v2, "subId":I
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    .line 216
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    #@10
    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 219
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@16
    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 213
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 221
    :catch_0
    move-exception v1

    #@1b
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyDataActivity(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v1

    #@4
    .line 146
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 147
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    .line 148
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    #@d
    move-result-object v3

    #@e
    invoke-static {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;)I

    #@11
    move-result v3

    #@12
    .line 147
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivityForSubscriber(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 143
    :cond_0
    :goto_0
    return-void

    #@16
    .line 150
    :catch_0
    move-exception v0

    #@17
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V
    .locals 0
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@0
    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@3
    .line 157
    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v1

    #@4
    .line 204
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 205
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    invoke-interface {v2, v1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 201
    :cond_0
    :goto_0
    return-void

    #@e
    .line 207
    :catch_0
    move-exception v0

    #@f
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyDisconnectCause(II)V
    .locals 2
    .param p1, "cause"    # I
    .param p2, "preciseCause"    # I

    #@0
    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDisconnectCause(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 267
    :goto_0
    return-void

    #@6
    .line 271
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@3
    move-result v1

    #@4
    .line 117
    .local v1, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@7
    move-result v2

    #@8
    .line 120
    .local v2, "subId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 121
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@e
    .line 122
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    #@11
    move-result v4

    #@12
    .line 121
    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChangedForPhoneId(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 115
    :cond_0
    :goto_0
    return-void

    #@16
    .line 124
    :catch_0
    move-exception v0

    #@17
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    #@0
    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOemHookRawEventForSubscriber(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 297
    :goto_0
    return-void

    #@6
    .line 300
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyOtaspChanged(Lcom/android/internal/telephony/Phone;I)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "otaspMode"    # I

    #@0
    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 243
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 239
    :cond_0
    :goto_0
    return-void

    #@a
    .line 245
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v3

    #@4
    .line 58
    .local v3, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@7
    move-result v4

    #@8
    .line 59
    .local v4, "subId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@b
    move-result v2

    #@c
    .line 60
    .local v2, "phoneId":I
    const-string/jumbo v1, ""

    #@f
    .line 61
    .local v1, "incomingNumber":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@11
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    #@14
    move-result-object v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 62
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 65
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@21
    if-eqz v5, :cond_1

    #@23
    .line 66
    iget-object v5, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@25
    .line 67
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@28
    move-result-object v6

    #@29
    invoke-static {v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    #@2c
    move-result v6

    #@2d
    .line 66
    invoke-interface {v5, v2, v4, v6, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallStateForPhoneId(IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 56
    :cond_1
    :goto_0
    return-void

    #@31
    .line 69
    :catch_0
    move-exception v0

    #@32
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v3

    #@4
    .line 253
    .local v3, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@7
    move-result-object v2

    #@8
    .line 254
    .local v2, "foregroundCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v0

    #@c
    .line 255
    .local v0, "backgroundCall":Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_0

    #@e
    if-eqz v2, :cond_0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 257
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@14
    .line 258
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v5

    #@18
    invoke-static {v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    #@1b
    move-result v5

    #@1c
    .line 259
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@1f
    move-result-object v6

    #@20
    invoke-static {v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    #@23
    move-result v6

    #@24
    .line 260
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@27
    move-result-object v7

    #@28
    invoke-static {v7}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    #@2b
    move-result v7

    #@2c
    .line 257
    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseCallState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 250
    :cond_0
    :goto_0
    return-void

    #@30
    .line 261
    :catch_0
    move-exception v1

    #@31
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyPreciseDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "failCause"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 277
    :goto_0
    return-void

    #@6
    .line 281
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyServiceState(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@3
    move-result-object v2

    #@4
    .line 77
    .local v2, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@7
    move-result v1

    #@8
    .line 78
    .local v1, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@b
    move-result v3

    #@c
    .line 80
    .local v3, "subId":I
    const-string/jumbo v4, "DefaultPhoneNotifier"

    #@f
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v6, "nofityServiceState: mRegistry="

    #@17
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v5

    #@1b
    iget-object v6, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@1d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v5

    #@21
    const-string/jumbo v6, " ss="

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    .line 81
    const-string/jumbo v6, " sender="

    #@2f
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 81
    const-string/jumbo v6, " phondId="

    #@3a
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 81
    const-string/jumbo v6, " subId="

    #@45
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    .line 82
    if-nez v2, :cond_0

    #@56
    .line 83
    new-instance v2, Landroid/telephony/ServiceState;

    #@58
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    #@5b
    .line 84
    .restart local v2    # "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@5e
    .line 87
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@60
    if-eqz v4, :cond_1

    #@62
    .line 88
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@64
    invoke-interface {v4, v1, v3, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 75
    :cond_1
    :goto_0
    return-void

    #@68
    .line 90
    :catch_0
    move-exception v0

    #@69
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifySignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@3
    move-result v1

    #@4
    .line 98
    .local v1, "phoneId":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@7
    move-result v2

    #@8
    .line 105
    .local v2, "subId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 106
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@e
    .line 107
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    #@11
    move-result-object v4

    #@12
    .line 106
    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 96
    :cond_0
    :goto_0
    return-void

    #@16
    .line 109
    :catch_0
    move-exception v0

    #@17
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "lteState"    # Landroid/telephony/VoLteServiceState;

    #@0
    .prologue
    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 287
    :goto_0
    return-void

    #@6
    .line 291
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
