.class public Lcom/android/internal/telephony/TelephonyComponentFactory;
.super Ljava/lang/Object;
.source "TelephonyComponentFactory.java"


# static fields
.field private static sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;
    .locals 1

    #@0
    .prologue
    .line 45
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 46
    new-instance v0, Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@6
    invoke-direct {v0}, Lcom/android/internal/telephony/TelephonyComponentFactory;-><init>()V

    #@9
    sput-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@b
    .line 48
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyComponentFactory;->sInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@d
    return-object v0
.end method


# virtual methods
.method public getCdmaSubscriptionSourceManagerInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "h"    # Landroid/os/Handler;
    .param p4, "what"    # I
    .param p5, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 130
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIDeviceIdleController()Landroid/os/IDeviceIdleController;
    .locals 1

    #@0
    .prologue
    .line 135
    const-string/jumbo v0, "deviceidle"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 134
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public makeDcTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/dataconnection/DcTracker;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 68
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@5
    return-object v0
.end method

.method public makeEriManager(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)Lcom/android/internal/telephony/cdma/EriManager;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "eriFileSource"    # I

    #@0
    .prologue
    .line 84
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/Phone;Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public makeGsmCdmaCallTracker(Lcom/android/internal/telephony/GsmCdmaPhone;)Lcom/android/internal/telephony/GsmCdmaCallTracker;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;

    #@0
    .prologue
    .line 52
    new-instance v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V

    #@5
    return-object v0
.end method

.method public makeIccCardProxy(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/IccCardProxy;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneId"    # I

    #@0
    .prologue
    .line 80
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V

    #@5
    return-object v0
.end method

.method public makeIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 72
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@5
    return-object v0
.end method

.method public makeIccSmsInterfaceManager(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 76
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@5
    return-object v0
.end method

.method public makeImsExternalCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPullCall;)Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;
    .locals 1
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;
    .param p2, "callPuller"    # Lcom/android/internal/telephony/imsphone/ImsPullCall;

    #@0
    .prologue
    .line 124
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPullCall;)V

    #@5
    return-object v0
.end method

.method public makeImsPhoneCallTracker(Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1
    .param p1, "imsPhone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    #@0
    .prologue
    .line 118
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    #@5
    return-object v0
.end method

.method public makeInboundSmsTracker(Landroid/database/Cursor;Z)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCurrentFormat3gpp2"    # Z

    #@0
    .prologue
    .line 114
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(Landroid/database/Cursor;Z)V

    #@5
    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZLjava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 12
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "referenceNumber"    # I
    .param p8, "sequenceNumber"    # I
    .param p9, "messageCount"    # I
    .param p10, "is3gpp2WapPdu"    # Z
    .param p11, "messageBody"    # Ljava/lang/String;

    #@0
    .prologue
    .line 106
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move/from16 v4, p4

    #@6
    move/from16 v5, p5

    #@8
    move-object/from16 v6, p6

    #@a
    move/from16 v7, p7

    #@c
    move/from16 v8, p8

    #@e
    move/from16 v9, p9

    #@10
    move/from16 v10, p10

    #@12
    move-object/from16 v11, p11

    #@14
    invoke-direct/range {v0 .. v11}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZLjava/lang/String;)V

    #@17
    return-object v0
.end method

.method public makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;
    .locals 10
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "is3gpp2WapPdu"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "messageBody"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move v4, p4

    #@5
    move v5, p5

    #@6
    move/from16 v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    move-object/from16 v8, p8

    #@c
    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZLjava/lang/String;Ljava/lang/String;)V

    #@f
    return-object v0
.end method

.method public makeServiceStateTracker(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/GsmCdmaPhone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    #@0
    .prologue
    .line 64
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    #@5
    return-object v0
.end method

.method public makeSmsStorageMonitor(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SmsStorageMonitor;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 56
    new-instance v0, Lcom/android/internal/telephony/SmsStorageMonitor;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsStorageMonitor;-><init>(Lcom/android/internal/telephony/Phone;)V

    #@5
    return-object v0
.end method

.method public makeSmsUsageMonitor(Landroid/content/Context;)Lcom/android/internal/telephony/SmsUsageMonitor;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 60
    new-instance v0, Lcom/android/internal/telephony/SmsUsageMonitor;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public makeWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
    .locals 1
    .param p1, "pdu"    # [B

    #@0
    .prologue
    .line 88
    new-instance v0, Lcom/android/internal/telephony/WspTypeDecoder;

    #@2
    invoke-direct {v0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    #@5
    return-object v0
.end method
