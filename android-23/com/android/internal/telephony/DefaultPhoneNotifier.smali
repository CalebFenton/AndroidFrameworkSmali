.class public Lcom/android/internal/telephony/DefaultPhoneNotifier;
.super Ljava/lang/Object;
.source "DefaultPhoneNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    }
.end annotation


# static fields
.field private static synthetic -com_android_internal_telephony_Call$StateSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_Phone$DataActivityStateSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_PhoneConstants$DataStateSwitchesValues:[I = null

.field private static synthetic -com_android_internal_telephony_PhoneConstants$StateSwitchesValues:[I = null

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "DefaultPhoneNotifier"


# instance fields
.field protected mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# direct methods
.method private static synthetic -getcom_android_internal_telephony_Call$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_Call$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_Call$StateSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_Call$StateSwitchesValues:[I

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

.method private static synthetic -getcom_android_internal_telephony_Phone$DataActivityStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_Phone$DataActivityStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_Phone$DataActivityStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Phone$DataActivityState;->values()[Lcom/android/internal/telephony/Phone$DataActivityState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

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
    sget-object v1, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

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
    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_Phone$DataActivityStateSwitchesValues:[I

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

.method private static synthetic -getcom_android_internal_telephony_PhoneConstants$DataStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_PhoneConstants$DataStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_PhoneConstants$DataStateSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_PhoneConstants$DataStateSwitchesValues:[I

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

.method private static synthetic -getcom_android_internal_telephony_PhoneConstants$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_PhoneConstants$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_PhoneConstants$StateSwitchesValues:[I

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
    sput-object v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-com_android_internal_telephony_PhoneConstants$StateSwitchesValues:[I

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

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    const-string/jumbo v0, "telephony.registry"

    #@6
    .line 53
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
    .line 52
    return-void
.end method

.method public static convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    #@0
    .prologue
    .line 316
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-getcom_android_internal_telephony_PhoneConstants$StateSwitchesValues()[I

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
    .line 322
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 318
    :pswitch_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 320
    :pswitch_1
    const/4 v0, 0x2

    #@12
    return v0

    #@13
    .line 316
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
    .line 331
    packed-switch p0, :pswitch_data_0

    #@3
    .line 337
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    #@5
    return-object v0

    #@6
    .line 333
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    #@8
    return-object v0

    #@9
    .line 335
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    #@b
    return-object v0

    #@c
    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/Phone$DataActivityState;

    #@0
    .prologue
    .line 380
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-getcom_android_internal_telephony_Phone$DataActivityStateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone$DataActivityState;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 390
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 382
    :pswitch_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 384
    :pswitch_1
    const/4 v0, 0x2

    #@12
    return v0

    #@13
    .line 386
    :pswitch_2
    const/4 v0, 0x3

    #@14
    return v0

    #@15
    .line 388
    :pswitch_3
    const/4 v0, 0x4

    #@16
    return v0

    #@17
    .line 380
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

.method public static convertDataActivityState(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 399
    packed-switch p0, :pswitch_data_0

    #@3
    .line 409
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@5
    return-object v0

    #@6
    .line 401
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@8
    return-object v0

    #@9
    .line 403
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@b
    return-object v0

    #@c
    .line 405
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@e
    return-object v0

    #@f
    .line 407
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    #@11
    return-object v0

    #@12
    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I
    .locals 2
    .param p0, "state"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@0
    .prologue
    .line 346
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-getcom_android_internal_telephony_PhoneConstants$DataStateSwitchesValues()[I

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
    .line 354
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 348
    :pswitch_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 350
    :pswitch_1
    const/4 v0, 0x2

    #@12
    return v0

    #@13
    .line 352
    :pswitch_2
    const/4 v0, 0x3

    #@14
    return v0

    #@15
    .line 346
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
    .line 363
    packed-switch p0, :pswitch_data_0

    #@3
    .line 371
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@5
    return-object v0

    #@6
    .line 365
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@8
    return-object v0

    #@9
    .line 367
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@b
    return-object v0

    #@c
    .line 369
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@e
    return-object v0

    #@f
    .line 363
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
    .line 418
    invoke-static {}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->-getcom_android_internal_telephony_Call$StateSwitchesValues()[I

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
    .line 436
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 420
    :pswitch_0
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 422
    :pswitch_1
    const/4 v0, 0x2

    #@12
    return v0

    #@13
    .line 424
    :pswitch_2
    const/4 v0, 0x3

    #@14
    return v0

    #@15
    .line 426
    :pswitch_3
    const/4 v0, 0x4

    #@16
    return v0

    #@17
    .line 428
    :pswitch_4
    const/4 v0, 0x5

    #@18
    return v0

    #@19
    .line 430
    :pswitch_5
    const/4 v0, 0x6

    #@1a
    return v0

    #@1b
    .line 432
    :pswitch_6
    const/4 v0, 0x7

    #@1c
    return v0

    #@1d
    .line 434
    :pswitch_7
    const/16 v0, 0x8

    #@1f
    return v0

    #@20
    .line 418
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

.method public static convertPreciseCallState(I)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 445
    packed-switch p0, :pswitch_data_0

    #@3
    .line 463
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@5
    return-object v0

    #@6
    .line 447
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@8
    return-object v0

    #@9
    .line 449
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@b
    return-object v0

    #@c
    .line 451
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@e
    return-object v0

    #@f
    .line 453
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@11
    return-object v0

    #@12
    .line 455
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@14
    return-object v0

    #@15
    .line 457
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@17
    return-object v0

    #@18
    .line 459
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@1a
    return-object v0

    #@1b
    .line 461
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    #@1d
    return-object v0

    #@1e
    .line 445
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
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
    .line 159
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v3

    #@4
    .line 160
    .local v3, "subId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    #@7
    move-result v2

    #@8
    int-to-long v14, v2

    #@9
    .line 166
    .local v14, "dds":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@c
    move-result-object v17

    #@d
    .line 167
    .local v17, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v9, 0x0

    #@e
    .line 168
    .local v9, "linkProperties":Landroid/net/LinkProperties;
    const/4 v10, 0x0

    #@f
    .line 169
    .local v10, "networkCapabilities":Landroid/net/NetworkCapabilities;
    const/4 v12, 0x0

    #@10
    .line 171
    .local v12, "roaming":Z
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    #@12
    move-object/from16 v0, p4

    #@14
    if-ne v0, v2, :cond_0

    #@16
    .line 172
    move-object/from16 v0, p1

    #@18
    move-object/from16 v1, p3

    #@1a
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    #@1d
    move-result-object v9

    #@1e
    .line 173
    .local v9, "linkProperties":Landroid/net/LinkProperties;
    move-object/from16 v0, p1

    #@20
    move-object/from16 v1, p3

    #@22
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getNetworkCapabilities(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    #@25
    move-result-object v10

    #@26
    .line 175
    .end local v9    # "linkProperties":Landroid/net/LinkProperties;
    .end local v10    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@29
    move-result-object v16

    #@2a
    .line 176
    .local v16, "ss":Landroid/telephony/ServiceState;
    if-eqz v16, :cond_1

    #@2c
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    #@2f
    move-result v12

    #@30
    .line 179
    .end local v12    # "roaming":Z
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 180
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@3a
    .line 181
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    #@3d
    move-result v4

    #@3e
    .line 182
    move-object/from16 v0, p1

    #@40
    move-object/from16 v1, p3

    #@42
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    #@45
    move-result v5

    #@46
    .line 183
    move-object/from16 v0, p1

    #@48
    move-object/from16 v1, p3

    #@4a
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    .line 187
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
    .line 180
    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5d
    .line 158
    :cond_2
    :goto_1
    return-void

    #@5e
    .line 188
    :cond_3
    const/4 v11, 0x0

    #@5f
    goto :goto_0

    #@60
    .line 191
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
    .line 473
    const-string/jumbo v0, "DefaultPhoneNotifier"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 472
    return-void
.end method


# virtual methods
.method public notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 127
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v1

    #@4
    .line 129
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 130
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    .line 131
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    #@d
    move-result v3

    #@e
    .line 130
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 126
    :cond_0
    :goto_0
    return-void

    #@12
    .line 133
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
    .line 224
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v1

    #@4
    .line 226
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    invoke-interface {v2, v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 223
    :cond_0
    :goto_0
    return-void

    #@e
    .line 229
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
    .line 210
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v2

    #@4
    .line 211
    .local v2, "subId":I
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    .line 212
    .local v0, "data":Landroid/os/Bundle;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    #@10
    .line 214
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@16
    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 209
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 217
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
    .line 140
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v1

    #@4
    .line 142
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 143
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    .line 144
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    #@d
    move-result-object v3

    #@e
    invoke-static {v3}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    #@11
    move-result v3

    #@12
    .line 143
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataActivityForSubscriber(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 139
    :cond_0
    :goto_0
    return-void

    #@16
    .line 146
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
    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->doNotifyDataConnection(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    #@3
    .line 153
    return-void
.end method

.method public notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v1

    #@4
    .line 200
    .local v1, "subId":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 201
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    invoke-interface {v2, v1, p2, p3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 197
    :cond_0
    :goto_0
    return-void

    #@e
    .line 203
    :catch_0
    move-exception v0

    #@f
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyDataConnectionRealTimeInfo(Lcom/android/internal/telephony/Phone;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    #@0
    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDataConnectionRealTimeInfo(Landroid/telephony/DataConnectionRealTimeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 236
    :goto_0
    return-void

    #@6
    .line 239
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyDisconnectCause(II)V
    .locals 2
    .param p1, "cause"    # I
    .param p2, "preciseCause"    # I

    #@0
    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyDisconnectCause(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 273
    :goto_0
    return-void

    #@6
    .line 277
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
    .line 112
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@3
    move-result v1

    #@4
    .line 113
    .local v1, "phoneId":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@7
    move-result v2

    #@8
    .line 116
    .local v2, "subId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@a
    if-eqz v3, :cond_0

    #@c
    .line 117
    iget-object v3, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@e
    .line 118
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    #@11
    move-result v4

    #@12
    .line 117
    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyMessageWaitingChangedForPhoneId(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 111
    :cond_0
    :goto_0
    return-void

    #@16
    .line 120
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
    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOemHookRawEventForSubscriber(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 303
    :goto_0
    return-void

    #@6
    .line 306
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
    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@6
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyOtaspChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 245
    :cond_0
    :goto_0
    return-void

    #@a
    .line 251
    :catch_0
    move-exception v0

    #@b
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyPhoneState(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 59
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v2

    #@4
    .line 60
    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@7
    move-result v3

    #@8
    .line 61
    .local v3, "subId":I
    const-string/jumbo v1, ""

    #@b
    .line 62
    .local v1, "incomingNumber":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@d
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    #@10
    move-result-object v4

    #@11
    if-eqz v4, :cond_0

    #@13
    .line 63
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 66
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 67
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@21
    .line 68
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    #@24
    move-result-object v5

    #@25
    invoke-static {v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    #@28
    move-result v5

    #@29
    .line 67
    invoke-interface {v4, v3, v5, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallStateForSubscriber(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 58
    :cond_1
    :goto_0
    return-void

    #@2d
    .line 70
    :catch_0
    move-exception v0

    #@2e
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyPreciseCallState(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 258
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v3

    #@4
    .line 259
    .local v3, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    #@7
    move-result-object v2

    #@8
    .line 260
    .local v2, "foregroundCall":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    #@b
    move-result-object v0

    #@c
    .line 261
    .local v0, "backgroundCall":Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_0

    #@e
    if-eqz v2, :cond_0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 263
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@14
    .line 264
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@17
    move-result-object v5

    #@18
    invoke-static {v5}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    #@1b
    move-result v5

    #@1c
    .line 265
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@1f
    move-result-object v6

    #@20
    invoke-static {v6}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    #@23
    move-result v6

    #@24
    .line 266
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@27
    move-result-object v7

    #@28
    invoke-static {v7}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertPreciseCallState(Lcom/android/internal/telephony/Call$State;)I

    #@2b
    move-result v7

    #@2c
    .line 263
    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseCallState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 256
    :cond_0
    :goto_0
    return-void

    #@30
    .line 267
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
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 283
    :goto_0
    return-void

    #@6
    .line 287
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
    .line 77
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    #@3
    move-result-object v2

    #@4
    .line 78
    .local v2, "ss":Landroid/telephony/ServiceState;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@7
    move-result v1

    #@8
    .line 79
    .local v1, "phoneId":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@b
    move-result v3

    #@c
    .line 81
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
    .line 82
    const-string/jumbo v6, " sender="

    #@2f
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    .line 82
    const-string/jumbo v6, " phondId="

    #@3a
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 82
    const-string/jumbo v6, " subId="

    #@45
    .line 81
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
    .line 83
    if-nez v2, :cond_0

    #@56
    .line 84
    new-instance v2, Landroid/telephony/ServiceState;

    #@58
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    invoke-direct {v2}, Landroid/telephony/ServiceState;-><init>()V

    #@5b
    .line 85
    .restart local v2    # "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    #@5e
    .line 88
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@60
    if-eqz v4, :cond_1

    #@62
    .line 89
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@64
    invoke-interface {v4, v1, v3, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@67
    .line 76
    :cond_1
    :goto_0
    return-void

    #@68
    .line 91
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
    .line 98
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@3
    move-result v1

    #@4
    .line 99
    .local v1, "subId":I
    const-string/jumbo v2, "DefaultPhoneNotifier"

    #@7
    new-instance v3, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v4, "notifySignalStrength: mRegistry="

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v3

    #@13
    iget-object v4, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    .line 100
    const-string/jumbo v4, " ss="

    #@1c
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    .line 100
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    #@23
    move-result-object v4

    #@24
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    .line 100
    const-string/jumbo v4, " sender="

    #@2b
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@3c
    if-eqz v2, :cond_0

    #@3e
    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@40
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    #@43
    move-result-object v3

    #@44
    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifySignalStrengthForSubscriber(ILandroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    .line 97
    :cond_0
    :goto_0
    return-void

    #@48
    .line 105
    :catch_0
    move-exception v0

    #@49
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public notifyVoLteServiceStateChanged(Lcom/android/internal/telephony/Phone;Landroid/telephony/VoLteServiceState;)V
    .locals 2
    .param p1, "sender"    # Lcom/android/internal/telephony/Phone;
    .param p2, "lteState"    # Landroid/telephony/VoLteServiceState;

    #@0
    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DefaultPhoneNotifier;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    #@2
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 293
    :goto_0
    return-void

    #@6
    .line 297
    :catch_0
    move-exception v0

    #@7
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method
