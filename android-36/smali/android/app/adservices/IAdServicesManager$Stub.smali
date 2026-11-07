.class public abstract Landroid/app/adservices/IAdServicesManager$Stub;
.super Landroid/os/Binder;
.source "IAdServicesManager.java"

# interfaces
.implements Landroid/app/adservices/IAdServicesManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/adservices/IAdServicesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/adservices/IAdServicesManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearAllAppConsentData:I = 0x24

.field static final blacklist TRANSACTION_clearAllBlockedTopics:I = 0x13

.field static final blacklist TRANSACTION_clearConsentForUninstalledApp:I = 0x27

.field static final blacklist TRANSACTION_clearKnownAppsWithConsent:I = 0x23

.field static final blacklist TRANSACTION_getAppsWithRevokedConsent:I = 0x21

.field static final blacklist TRANSACTION_getConsent:I = 0x1

.field static final blacklist TRANSACTION_getConsentNullable:I = 0x2

.field static final blacklist TRANSACTION_getCurrentPrivacySandboxFeature:I = 0x1e

.field static final blacklist TRANSACTION_getDefaultAdIdState:I = 0x1d

.field static final blacklist TRANSACTION_getDefaultConsent:I = 0x19

.field static final blacklist TRANSACTION_getEnrollmentChannel:I = 0x34

.field static final blacklist TRANSACTION_getFledgeDefaultConsent:I = 0x1b

.field static final blacklist TRANSACTION_getKnownAppsWithConsent:I = 0x20

.field static final blacklist TRANSACTION_getMeasurementDefaultConsent:I = 0x1c

.field static final blacklist TRANSACTION_getModuleEnrollmentState:I = 0x3a

.field static final blacklist TRANSACTION_getTopicsDefaultConsent:I = 0x1a

.field static final blacklist TRANSACTION_getUserManualInteractionWithConsent:I = 0xf

.field static final blacklist TRANSACTION_getUx:I = 0x32

.field static final blacklist TRANSACTION_isAdIdEnabled:I = 0x28

.field static final blacklist TRANSACTION_isAdultAccount:I = 0x2e

.field static final blacklist TRANSACTION_isConsentRevokedForApp:I = 0x25

.field static final blacklist TRANSACTION_isEntryPointEnabled:I = 0x2c

.field static final blacklist TRANSACTION_isMeasurementDataReset:I = 0x36

.field static final blacklist TRANSACTION_isPaDataReset:I = 0x38

.field static final blacklist TRANSACTION_isU18Account:I = 0x2a

.field static final blacklist TRANSACTION_needsToHandleRollbackReconciliation:I = 0x5

.field static final blacklist TRANSACTION_recordAdServicesDeletionOccurred:I = 0x4

.field static final blacklist TRANSACTION_recordBlockedTopic:I = 0x10

.field static final blacklist TRANSACTION_recordDefaultAdIdState:I = 0x18

.field static final blacklist TRANSACTION_recordDefaultConsent:I = 0x14

.field static final blacklist TRANSACTION_recordFledgeDefaultConsent:I = 0x16

.field static final blacklist TRANSACTION_recordGaUxNotificationDisplayed:I = 0x8

.field static final blacklist TRANSACTION_recordMeasurementDefaultConsent:I = 0x17

.field static final blacklist TRANSACTION_recordNotificationDisplayed:I = 0x6

.field static final blacklist TRANSACTION_recordPasNotificationDisplayed:I = 0xa

.field static final blacklist TRANSACTION_recordPasNotificationOpened:I = 0xc

.field static final blacklist TRANSACTION_recordTopicsDefaultConsent:I = 0x15

.field static final blacklist TRANSACTION_recordUserManualInteractionWithConsent:I = 0xe

.field static final blacklist TRANSACTION_removeBlockedTopic:I = 0x11

.field static final blacklist TRANSACTION_retrieveAllBlockedTopics:I = 0x12

.field static final blacklist TRANSACTION_setAdIdEnabled:I = 0x29

.field static final blacklist TRANSACTION_setAdultAccount:I = 0x2f

.field static final blacklist TRANSACTION_setConsent:I = 0x3

.field static final blacklist TRANSACTION_setConsentForApp:I = 0x22

.field static final blacklist TRANSACTION_setConsentForAppIfNew:I = 0x26

.field static final blacklist TRANSACTION_setCurrentPrivacySandboxFeature:I = 0x1f

.field static final blacklist TRANSACTION_setEnrollmentChannel:I = 0x35

.field static final blacklist TRANSACTION_setEntryPointEnabled:I = 0x2d

.field static final blacklist TRANSACTION_setMeasurementDataReset:I = 0x37

.field static final blacklist TRANSACTION_setModuleEnrollmentState:I = 0x3b

.field static final blacklist TRANSACTION_setPaDataReset:I = 0x39

.field static final blacklist TRANSACTION_setU18Account:I = 0x2b

.field static final blacklist TRANSACTION_setU18NotificationDisplayed:I = 0x31

.field static final blacklist TRANSACTION_setUx:I = 0x33

.field static final blacklist TRANSACTION_wasGaUxNotificationDisplayed:I = 0x9

.field static final blacklist TRANSACTION_wasNotificationDisplayed:I = 0x7

.field static final blacklist TRANSACTION_wasPasNotificationDisplayed:I = 0xb

.field static final blacklist TRANSACTION_wasPasNotificationOpened:I = 0xd

.field static final blacklist TRANSACTION_wasU18NotificationDisplayed:I = 0x30


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 348
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 349
    const-string v0, "android.app.adservices.IAdServicesManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/adservices/IAdServicesManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/adservices/IAdServicesManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 357
    if-nez p0, :cond_4

    .line 358
    const/4 v0, 0x0

    return-object v0

    .line 360
    :cond_4
    const-string v0, "android.app.adservices.IAdServicesManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 361
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/adservices/IAdServicesManager;

    if-eqz v1, :cond_14

    .line 362
    move-object v1, v0

    check-cast v1, Landroid/app/adservices/IAdServicesManager;

    return-object v1

    .line 364
    :cond_14
    new-instance v1, Landroid/app/adservices/IAdServicesManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/adservices/IAdServicesManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 373
    packed-switch p0, :pswitch_data_b6

    .line 613
    const/4 v0, 0x0

    return-object v0

    .line 609
    :pswitch_5
    const-string v0, "setModuleEnrollmentState"

    return-object v0

    .line 605
    :pswitch_8
    const-string v0, "getModuleEnrollmentState"

    return-object v0

    .line 601
    :pswitch_b
    const-string v0, "setPaDataReset"

    return-object v0

    .line 597
    :pswitch_e
    const-string v0, "isPaDataReset"

    return-object v0

    .line 593
    :pswitch_11
    const-string v0, "setMeasurementDataReset"

    return-object v0

    .line 589
    :pswitch_14
    const-string v0, "isMeasurementDataReset"

    return-object v0

    .line 585
    :pswitch_17
    const-string v0, "setEnrollmentChannel"

    return-object v0

    .line 581
    :pswitch_1a
    const-string v0, "getEnrollmentChannel"

    return-object v0

    .line 577
    :pswitch_1d
    const-string v0, "setUx"

    return-object v0

    .line 573
    :pswitch_20
    const-string v0, "getUx"

    return-object v0

    .line 569
    :pswitch_23
    const-string v0, "setU18NotificationDisplayed"

    return-object v0

    .line 565
    :pswitch_26
    const-string v0, "wasU18NotificationDisplayed"

    return-object v0

    .line 561
    :pswitch_29
    const-string v0, "setAdultAccount"

    return-object v0

    .line 557
    :pswitch_2c
    const-string v0, "isAdultAccount"

    return-object v0

    .line 553
    :pswitch_2f
    const-string v0, "setEntryPointEnabled"

    return-object v0

    .line 549
    :pswitch_32
    const-string v0, "isEntryPointEnabled"

    return-object v0

    .line 545
    :pswitch_35
    const-string v0, "setU18Account"

    return-object v0

    .line 541
    :pswitch_38
    const-string v0, "isU18Account"

    return-object v0

    .line 537
    :pswitch_3b
    const-string v0, "setAdIdEnabled"

    return-object v0

    .line 533
    :pswitch_3e
    const-string v0, "isAdIdEnabled"

    return-object v0

    .line 529
    :pswitch_41
    const-string v0, "clearConsentForUninstalledApp"

    return-object v0

    .line 525
    :pswitch_44
    const-string v0, "setConsentForAppIfNew"

    return-object v0

    .line 521
    :pswitch_47
    const-string v0, "isConsentRevokedForApp"

    return-object v0

    .line 517
    :pswitch_4a
    const-string v0, "clearAllAppConsentData"

    return-object v0

    .line 513
    :pswitch_4d
    const-string v0, "clearKnownAppsWithConsent"

    return-object v0

    .line 509
    :pswitch_50
    const-string v0, "setConsentForApp"

    return-object v0

    .line 505
    :pswitch_53
    const-string v0, "getAppsWithRevokedConsent"

    return-object v0

    .line 501
    :pswitch_56
    const-string v0, "getKnownAppsWithConsent"

    return-object v0

    .line 497
    :pswitch_59
    const-string v0, "setCurrentPrivacySandboxFeature"

    return-object v0

    .line 493
    :pswitch_5c
    const-string v0, "getCurrentPrivacySandboxFeature"

    return-object v0

    .line 489
    :pswitch_5f
    const-string v0, "getDefaultAdIdState"

    return-object v0

    .line 485
    :pswitch_62
    const-string v0, "getMeasurementDefaultConsent"

    return-object v0

    .line 481
    :pswitch_65
    const-string v0, "getFledgeDefaultConsent"

    return-object v0

    .line 477
    :pswitch_68
    const-string v0, "getTopicsDefaultConsent"

    return-object v0

    .line 473
    :pswitch_6b
    const-string v0, "getDefaultConsent"

    return-object v0

    .line 469
    :pswitch_6e
    const-string v0, "recordDefaultAdIdState"

    return-object v0

    .line 465
    :pswitch_71
    const-string v0, "recordMeasurementDefaultConsent"

    return-object v0

    .line 461
    :pswitch_74
    const-string v0, "recordFledgeDefaultConsent"

    return-object v0

    .line 457
    :pswitch_77
    const-string v0, "recordTopicsDefaultConsent"

    return-object v0

    .line 453
    :pswitch_7a
    const-string v0, "recordDefaultConsent"

    return-object v0

    .line 449
    :pswitch_7d
    const-string v0, "clearAllBlockedTopics"

    return-object v0

    .line 445
    :pswitch_80
    const-string v0, "retrieveAllBlockedTopics"

    return-object v0

    .line 441
    :pswitch_83
    const-string v0, "removeBlockedTopic"

    return-object v0

    .line 437
    :pswitch_86
    const-string v0, "recordBlockedTopic"

    return-object v0

    .line 433
    :pswitch_89
    const-string v0, "getUserManualInteractionWithConsent"

    return-object v0

    .line 429
    :pswitch_8c
    const-string v0, "recordUserManualInteractionWithConsent"

    return-object v0

    .line 425
    :pswitch_8f
    const-string v0, "wasPasNotificationOpened"

    return-object v0

    .line 421
    :pswitch_92
    const-string v0, "recordPasNotificationOpened"

    return-object v0

    .line 417
    :pswitch_95
    const-string v0, "wasPasNotificationDisplayed"

    return-object v0

    .line 413
    :pswitch_98
    const-string v0, "recordPasNotificationDisplayed"

    return-object v0

    .line 409
    :pswitch_9b
    const-string v0, "wasGaUxNotificationDisplayed"

    return-object v0

    .line 405
    :pswitch_9e
    const-string v0, "recordGaUxNotificationDisplayed"

    return-object v0

    .line 401
    :pswitch_a1
    const-string v0, "wasNotificationDisplayed"

    return-object v0

    .line 397
    :pswitch_a4
    const-string v0, "recordNotificationDisplayed"

    return-object v0

    .line 393
    :pswitch_a7
    const-string v0, "needsToHandleRollbackReconciliation"

    return-object v0

    .line 389
    :pswitch_aa
    const-string v0, "recordAdServicesDeletionOccurred"

    return-object v0

    .line 385
    :pswitch_ad
    const-string v0, "setConsent"

    return-object v0

    .line 381
    :pswitch_b0
    const-string v0, "getConsentNullable"

    return-object v0

    .line 377
    :pswitch_b3
    const-string v0, "getConsent"

    return-object v0

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 368
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2246
    const/16 v0, 0x3a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 620
    invoke-static {p1}, Landroid/app/adservices/IAdServicesManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 624
    const-string v0, "android.app.adservices.IAdServicesManager"

    .line 625
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 626
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 629
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    return v1

    .line 632
    :cond_16
    packed-switch p1, :pswitch_data_30c

    .line 1099
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1092
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1093
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setModuleEnrollmentState(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    goto/16 :goto_30b

    .line 1084
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2a
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getModuleEnrollmentState()Ljava/lang/String;

    move-result-object v2

    .line 1085
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1087
    goto/16 :goto_30b

    .line 1077
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1078
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setPaDataReset(Z)V

    .line 1079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    goto/16 :goto_30b

    .line 1069
    .end local v2    # "_arg0":Z
    :pswitch_42
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->isPaDataReset()Z

    move-result v2

    .line 1070
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1072
    goto/16 :goto_30b

    .line 1062
    .end local v2    # "_result":Z
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1063
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setMeasurementDataReset(Z)V

    .line 1064
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    goto/16 :goto_30b

    .line 1054
    .end local v2    # "_arg0":Z
    :pswitch_5a
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->isMeasurementDataReset()Z

    move-result v2

    .line 1055
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1057
    goto/16 :goto_30b

    .line 1047
    .end local v2    # "_result":Z
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1048
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setEnrollmentChannel(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    goto/16 :goto_30b

    .line 1039
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_72
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getEnrollmentChannel()Ljava/lang/String;

    move-result-object v2

    .line 1040
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1042
    goto/16 :goto_30b

    .line 1032
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1033
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setUx(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_30b

    .line 1024
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_8a
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getUx()Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1027
    goto/16 :goto_30b

    .line 1017
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1018
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setU18NotificationDisplayed(Z)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    goto/16 :goto_30b

    .line 1009
    .end local v2    # "_arg0":Z
    :pswitch_a2
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->wasU18NotificationDisplayed()Z

    move-result v2

    .line 1010
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1012
    goto/16 :goto_30b

    .line 1002
    .end local v2    # "_result":Z
    :pswitch_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1003
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setAdultAccount(Z)V

    .line 1004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    goto/16 :goto_30b

    .line 994
    .end local v2    # "_arg0":Z
    :pswitch_ba
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->isAdultAccount()Z

    move-result v2

    .line 995
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 997
    goto/16 :goto_30b

    .line 987
    .end local v2    # "_result":Z
    :pswitch_c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 988
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setEntryPointEnabled(Z)V

    .line 989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    goto/16 :goto_30b

    .line 979
    .end local v2    # "_arg0":Z
    :pswitch_d2
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->isEntryPointEnabled()Z

    move-result v2

    .line 980
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 982
    goto/16 :goto_30b

    .line 972
    .end local v2    # "_result":Z
    :pswitch_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 973
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setU18Account(Z)V

    .line 974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    goto/16 :goto_30b

    .line 964
    .end local v2    # "_arg0":Z
    :pswitch_ea
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->isU18Account()Z

    move-result v2

    .line 965
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 967
    goto/16 :goto_30b

    .line 957
    .end local v2    # "_result":Z
    :pswitch_f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 958
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setAdIdEnabled(Z)V

    .line 959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    goto/16 :goto_30b

    .line 949
    .end local v2    # "_arg0":Z
    :pswitch_102
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->isAdIdEnabled()Z

    move-result v2

    .line 950
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 952
    goto/16 :goto_30b

    .line 940
    .end local v2    # "_result":Z
    :pswitch_10e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 942
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 943
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/app/adservices/IAdServicesManager$Stub;->clearConsentForUninstalledApp(Ljava/lang/String;I)V

    .line 944
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_30b

    .line 927
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 929
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 931
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 932
    .local v4, "_arg2":Z
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/adservices/IAdServicesManager$Stub;->setConsentForAppIfNew(Ljava/lang/String;IZ)Z

    move-result v5

    .line 933
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 935
    goto/16 :goto_30b

    .line 916
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 918
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 919
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/app/adservices/IAdServicesManager$Stub;->isConsentRevokedForApp(Ljava/lang/String;I)Z

    move-result v4

    .line 920
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 922
    goto/16 :goto_30b

    .line 909
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_14a
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->clearAllAppConsentData()V

    .line 910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    goto/16 :goto_30b

    .line 903
    :pswitch_152
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->clearKnownAppsWithConsent()V

    .line 904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    goto/16 :goto_30b

    .line 892
    :pswitch_15a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 894
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 896
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 897
    .local v4, "_arg2":Z
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/adservices/IAdServicesManager$Stub;->setConsentForApp(Ljava/lang/String;IZ)V

    .line 898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    goto/16 :goto_30b

    .line 883
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 884
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->getAppsWithRevokedConsent(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 885
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 887
    goto/16 :goto_30b

    .line 874
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_17e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 875
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->getKnownAppsWithConsent(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 876
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 878
    goto/16 :goto_30b

    .line 866
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 867
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setCurrentPrivacySandboxFeature(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    goto/16 :goto_30b

    .line 858
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_19a
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getCurrentPrivacySandboxFeature()Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 861
    goto/16 :goto_30b

    .line 851
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1a6
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getDefaultAdIdState()Z

    move-result v2

    .line 852
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 854
    goto/16 :goto_30b

    .line 844
    .end local v2    # "_result":Z
    :pswitch_1b2
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getMeasurementDefaultConsent()Z

    move-result v2

    .line 845
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 847
    goto/16 :goto_30b

    .line 837
    .end local v2    # "_result":Z
    :pswitch_1be
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getFledgeDefaultConsent()Z

    move-result v2

    .line 838
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 840
    goto/16 :goto_30b

    .line 830
    .end local v2    # "_result":Z
    :pswitch_1ca
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getTopicsDefaultConsent()Z

    move-result v2

    .line 831
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 833
    goto/16 :goto_30b

    .line 823
    .end local v2    # "_result":Z
    :pswitch_1d6
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getDefaultConsent()Z

    move-result v2

    .line 824
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 826
    goto/16 :goto_30b

    .line 816
    .end local v2    # "_result":Z
    :pswitch_1e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 817
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordDefaultAdIdState(Z)V

    .line 818
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    goto/16 :goto_30b

    .line 808
    .end local v2    # "_arg0":Z
    :pswitch_1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 809
    .restart local v2    # "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordMeasurementDefaultConsent(Z)V

    .line 810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    goto/16 :goto_30b

    .line 800
    .end local v2    # "_arg0":Z
    :pswitch_1fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 801
    .restart local v2    # "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordFledgeDefaultConsent(Z)V

    .line 802
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    goto/16 :goto_30b

    .line 792
    .end local v2    # "_arg0":Z
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 793
    .restart local v2    # "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordTopicsDefaultConsent(Z)V

    .line 794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 795
    goto/16 :goto_30b

    .line 784
    .end local v2    # "_arg0":Z
    :pswitch_212
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 785
    .restart local v2    # "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordDefaultConsent(Z)V

    .line 786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    goto/16 :goto_30b

    .line 777
    .end local v2    # "_arg0":Z
    :pswitch_21e
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->clearAllBlockedTopics()V

    .line 778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    goto/16 :goto_30b

    .line 770
    :pswitch_226
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->retrieveAllBlockedTopics()Ljava/util/List;

    move-result-object v2

    .line 771
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/adservices/topics/TopicParcel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-static {p3, v2, v1}, Landroid/app/adservices/IAdServicesManager$_Parcel;->-$$Nest$smwriteTypedList(Landroid/os/Parcel;Ljava/util/List;I)V

    .line 773
    goto/16 :goto_30b

    .line 763
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/adservices/topics/TopicParcel;>;"
    :pswitch_232
    sget-object v2, Landroid/app/adservices/topics/TopicParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/adservices/topics/TopicParcel;

    .line 764
    .local v2, "_arg0":Landroid/app/adservices/topics/TopicParcel;
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->removeBlockedTopic(Landroid/app/adservices/topics/TopicParcel;)V

    .line 765
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    goto/16 :goto_30b

    .line 755
    .end local v2    # "_arg0":Landroid/app/adservices/topics/TopicParcel;
    :pswitch_242
    sget-object v2, Landroid/app/adservices/topics/TopicParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 756
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/adservices/topics/TopicParcel;>;"
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordBlockedTopic(Ljava/util/List;)V

    .line 757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    goto/16 :goto_30b

    .line 747
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/adservices/topics/TopicParcel;>;"
    :pswitch_250
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->getUserManualInteractionWithConsent()I

    move-result v2

    .line 748
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    goto/16 :goto_30b

    .line 740
    .end local v2    # "_result":I
    :pswitch_25c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordUserManualInteractionWithConsent(I)V

    .line 742
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    goto/16 :goto_30b

    .line 732
    .end local v2    # "_arg0":I
    :pswitch_268
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->wasPasNotificationOpened()Z

    move-result v2

    .line 733
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 735
    goto/16 :goto_30b

    .line 725
    .end local v2    # "_result":Z
    :pswitch_274
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 726
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordPasNotificationOpened(Z)V

    .line 727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 728
    goto/16 :goto_30b

    .line 717
    .end local v2    # "_arg0":Z
    :pswitch_280
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->wasPasNotificationDisplayed()Z

    move-result v2

    .line 718
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 720
    goto/16 :goto_30b

    .line 710
    .end local v2    # "_result":Z
    :pswitch_28c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 711
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordPasNotificationDisplayed(Z)V

    .line 712
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    goto/16 :goto_30b

    .line 702
    .end local v2    # "_arg0":Z
    :pswitch_298
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->wasGaUxNotificationDisplayed()Z

    move-result v2

    .line 703
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 705
    goto :goto_30b

    .line 695
    .end local v2    # "_result":Z
    :pswitch_2a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 696
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordGaUxNotificationDisplayed(Z)V

    .line 697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    goto :goto_30b

    .line 687
    .end local v2    # "_arg0":Z
    :pswitch_2ae
    invoke-virtual {p0}, Landroid/app/adservices/IAdServicesManager$Stub;->wasNotificationDisplayed()Z

    move-result v2

    .line 688
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 690
    goto :goto_30b

    .line 680
    .end local v2    # "_result":Z
    :pswitch_2b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 681
    .local v2, "_arg0":Z
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordNotificationDisplayed(Z)V

    .line 682
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    goto :goto_30b

    .line 671
    .end local v2    # "_arg0":Z
    :pswitch_2c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 672
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->needsToHandleRollbackReconciliation(I)Z

    move-result v3

    .line 673
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 675
    goto :goto_30b

    .line 663
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 664
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->recordAdServicesDeletionOccurred(I)V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    goto :goto_30b

    .line 655
    .end local v2    # "_arg0":I
    :pswitch_2de
    sget-object v2, Landroid/app/adservices/consent/ConsentParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/adservices/consent/ConsentParcel;

    .line 656
    .local v2, "_arg0":Landroid/app/adservices/consent/ConsentParcel;
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->setConsent(Landroid/app/adservices/consent/ConsentParcel;)V

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    goto :goto_30b

    .line 646
    .end local v2    # "_arg0":Landroid/app/adservices/consent/ConsentParcel;
    :pswitch_2ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 647
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->getConsentNullable(I)Landroid/app/adservices/consent/ConsentParcel;

    move-result-object v3

    .line 648
    .local v3, "_result":Landroid/app/adservices/consent/ConsentParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 650
    goto :goto_30b

    .line 637
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/app/adservices/consent/ConsentParcel;
    :pswitch_2fc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 638
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/app/adservices/IAdServicesManager$Stub;->getConsent(I)Landroid/app/adservices/consent/ConsentParcel;

    move-result-object v3

    .line 639
    .restart local v3    # "_result":Landroid/app/adservices/consent/ConsentParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 641
    nop

    .line 1102
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/app/adservices/consent/ConsentParcel;
    :goto_30b
    return v1

    :pswitch_data_30c
    .packed-switch 0x1
        :pswitch_2fc
        :pswitch_2ed
        :pswitch_2de
        :pswitch_2d3
        :pswitch_2c4
        :pswitch_2b9
        :pswitch_2ae
        :pswitch_2a3
        :pswitch_298
        :pswitch_28c
        :pswitch_280
        :pswitch_274
        :pswitch_268
        :pswitch_25c
        :pswitch_250
        :pswitch_242
        :pswitch_232
        :pswitch_226
        :pswitch_21e
        :pswitch_212
        :pswitch_206
        :pswitch_1fa
        :pswitch_1ee
        :pswitch_1e2
        :pswitch_1d6
        :pswitch_1ca
        :pswitch_1be
        :pswitch_1b2
        :pswitch_1a6
        :pswitch_19a
        :pswitch_18e
        :pswitch_17e
        :pswitch_16e
        :pswitch_15a
        :pswitch_152
        :pswitch_14a
        :pswitch_136
        :pswitch_11e
        :pswitch_10e
        :pswitch_102
        :pswitch_f6
        :pswitch_ea
        :pswitch_de
        :pswitch_d2
        :pswitch_c6
        :pswitch_ba
        :pswitch_ae
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
