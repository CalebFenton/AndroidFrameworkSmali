.class public abstract Landroid/content/pm/IPackageInstaller$Stub;
.super Landroid/os/Binder;
.source "IPackageInstaller.java"

# interfaces
.implements Landroid/content/pm/IPackageInstaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstaller$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstaller"

.field static final greylist-max-o TRANSACTION_abandonSession:I = 0x4

.field static final blacklist TRANSACTION_bypassNextAllowedApexUpdateCheck:I = 0x11

.field static final blacklist TRANSACTION_bypassNextStagedInstallerCheck:I = 0x10

.field static final blacklist TRANSACTION_checkInstallConstraints:I = 0x15

.field static final greylist-max-o TRANSACTION_createSession:I = 0x1

.field static final blacklist TRANSACTION_disableVerificationForUid:I = 0x12

.field static final greylist-max-o TRANSACTION_getAllSessions:I = 0x7

.field static final greylist-max-o TRANSACTION_getMySessions:I = 0x8

.field static final greylist-max-o TRANSACTION_getSessionInfo:I = 0x6

.field static final blacklist TRANSACTION_getStagedSessions:I = 0x9

.field static final blacklist TRANSACTION_installExistingPackage:I = 0xe

.field static final blacklist TRANSACTION_installPackageArchived:I = 0x19

.field static final greylist-max-o TRANSACTION_openSession:I = 0x5

.field static final greylist-max-o TRANSACTION_registerCallback:I = 0xa

.field static final blacklist TRANSACTION_reportUnarchivalStatus:I = 0x1a

.field static final blacklist TRANSACTION_requestArchive:I = 0x17

.field static final blacklist TRANSACTION_requestUnarchive:I = 0x18

.field static final blacklist TRANSACTION_setAllowUnlimitedSilentUpdates:I = 0x13

.field static final greylist-max-o TRANSACTION_setPermissionsResult:I = 0xf

.field static final blacklist TRANSACTION_setSilentUpdatesThrottleTime:I = 0x14

.field static final greylist-max-o TRANSACTION_uninstall:I = 0xc

.field static final blacklist TRANSACTION_uninstallExistingPackage:I = 0xd

.field static final greylist-max-o TRANSACTION_unregisterCallback:I = 0xb

.field static final greylist-max-o TRANSACTION_updateSessionAppIcon:I = 0x2

.field static final greylist-max-o TRANSACTION_updateSessionAppLabel:I = 0x3

.field static final blacklist TRANSACTION_waitForInstallConstraints:I = 0x16


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    nop

    .line 122
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 111
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 112
    const-string v0, "android.content.pm.IPackageInstaller"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstaller$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 113
    if-eqz p1, :cond_d

    .line 116
    iput-object p1, p0, Landroid/content/pm/IPackageInstaller$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 117
    return-void

    .line 114
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstaller;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 130
    if-nez p0, :cond_4

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_4
    const-string v0, "android.content.pm.IPackageInstaller"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 134
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageInstaller;

    if-eqz v1, :cond_14

    .line 135
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageInstaller;

    return-object v1

    .line 137
    :cond_14
    new-instance v1, Landroid/content/pm/IPackageInstaller$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstaller$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 146
    packed-switch p0, :pswitch_data_64

    .line 254
    const/4 v0, 0x0

    return-object v0

    .line 250
    :pswitch_5
    const-string/jumbo v0, "reportUnarchivalStatus"

    return-object v0

    .line 246
    :pswitch_9
    const-string/jumbo v0, "installPackageArchived"

    return-object v0

    .line 242
    :pswitch_d
    const-string/jumbo v0, "requestUnarchive"

    return-object v0

    .line 238
    :pswitch_11
    const-string/jumbo v0, "requestArchive"

    return-object v0

    .line 234
    :pswitch_15
    const-string/jumbo v0, "waitForInstallConstraints"

    return-object v0

    .line 230
    :pswitch_19
    const-string v0, "checkInstallConstraints"

    return-object v0

    .line 226
    :pswitch_1c
    const-string/jumbo v0, "setSilentUpdatesThrottleTime"

    return-object v0

    .line 222
    :pswitch_20
    const-string/jumbo v0, "setAllowUnlimitedSilentUpdates"

    return-object v0

    .line 218
    :pswitch_24
    const-string v0, "disableVerificationForUid"

    return-object v0

    .line 214
    :pswitch_27
    const-string v0, "bypassNextAllowedApexUpdateCheck"

    return-object v0

    .line 210
    :pswitch_2a
    const-string v0, "bypassNextStagedInstallerCheck"

    return-object v0

    .line 206
    :pswitch_2d
    const-string/jumbo v0, "setPermissionsResult"

    return-object v0

    .line 202
    :pswitch_31
    const-string/jumbo v0, "installExistingPackage"

    return-object v0

    .line 198
    :pswitch_35
    const-string/jumbo v0, "uninstallExistingPackage"

    return-object v0

    .line 194
    :pswitch_39
    const-string/jumbo v0, "uninstall"

    return-object v0

    .line 190
    :pswitch_3d
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 186
    :pswitch_41
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 182
    :pswitch_45
    const-string/jumbo v0, "getStagedSessions"

    return-object v0

    .line 178
    :pswitch_49
    const-string v0, "getMySessions"

    return-object v0

    .line 174
    :pswitch_4c
    const-string v0, "getAllSessions"

    return-object v0

    .line 170
    :pswitch_4f
    const-string v0, "getSessionInfo"

    return-object v0

    .line 166
    :pswitch_52
    const-string/jumbo v0, "openSession"

    return-object v0

    .line 162
    :pswitch_56
    const-string v0, "abandonSession"

    return-object v0

    .line 158
    :pswitch_59
    const-string/jumbo v0, "updateSessionAppLabel"

    return-object v0

    .line 154
    :pswitch_5d
    const-string/jumbo v0, "updateSessionAppIcon"

    return-object v0

    .line 150
    :pswitch_61
    const-string v0, "createSession"

    return-object v0

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_56
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 141
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1103
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 261
    invoke-static {p1}, Landroid/content/pm/IPackageInstaller$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    const-string v7, "android.content.pm.IPackageInstaller"

    .line 266
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v0, 0xffffff

    if-gt p1, v0, :cond_d

    .line 267
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    :cond_d
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_16

    .line 270
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    return v8

    .line 273
    :cond_16
    packed-switch p1, :pswitch_data_2c2

    .line 598
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 582
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 586
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 588
    .local v3, "_arg2":J
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    .line 590
    .local v5, "_arg3":Landroid/app/PendingIntent;
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/UserHandle;

    .line 591
    .local v6, "_arg4":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller$Stub;->reportUnarchivalStatus(IIJLandroid/app/PendingIntent;Landroid/os/UserHandle;)V

    .line 593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    goto/16 :goto_2c1

    .line 565
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":Landroid/app/PendingIntent;
    .end local v6    # "_arg4":Landroid/os/UserHandle;
    :pswitch_48
    sget-object v0, Landroid/content/pm/ArchivedPackageParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/ArchivedPackageParcel;

    .line 567
    .local v1, "_arg0":Landroid/content/pm/ArchivedPackageParcel;
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 569
    .local v2, "_arg1":Landroid/content/pm/PackageInstaller$SessionParams;
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/IntentSender;

    .line 571
    .local v3, "_arg2":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/UserHandle;

    .line 574
    .local v5, "_arg4":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller$Stub;->installPackageArchived(Landroid/content/pm/ArchivedPackageParcel;Landroid/content/pm/PackageInstaller$SessionParams;Landroid/content/IntentSender;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    goto/16 :goto_2c1

    .line 550
    .end local v1    # "_arg0":Landroid/content/pm/ArchivedPackageParcel;
    .end local v2    # "_arg1":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v3    # "_arg2":Landroid/content/IntentSender;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/UserHandle;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 554
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 556
    .restart local v3    # "_arg2":Landroid/content/IntentSender;
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 557
    .local v4, "_arg3":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstaller$Stub;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    goto/16 :goto_2c1

    .line 533
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/IntentSender;
    .end local v4    # "_arg3":Landroid/os/UserHandle;
    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 535
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 537
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 539
    .local v3, "_arg2":I
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 541
    .local v4, "_arg3":Landroid/content/IntentSender;
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 542
    .restart local v5    # "_arg4":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller$Stub;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto/16 :goto_2c1

    .line 516
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/IntentSender;
    .end local v5    # "_arg4":Landroid/os/UserHandle;
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 520
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/content/pm/PackageInstaller$InstallConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 522
    .local v3, "_arg2":Landroid/content/pm/PackageInstaller$InstallConstraints;
    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/IntentSender;

    .line 524
    .restart local v4    # "_arg3":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 525
    .local v5, "_arg4":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller$Stub;->waitForInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/content/IntentSender;J)V

    .line 527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    goto/16 :goto_2c1

    .line 501
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg2":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .end local v4    # "_arg3":Landroid/content/IntentSender;
    .end local v5    # "_arg4":J
    :pswitch_f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 503
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 505
    .restart local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/content/pm/PackageInstaller$InstallConstraints;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInstaller$InstallConstraints;

    .line 507
    .restart local v3    # "_arg2":Landroid/content/pm/PackageInstaller$InstallConstraints;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 508
    .local v4, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstaller$Stub;->checkInstallConstraints(Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageInstaller$InstallConstraints;Landroid/os/RemoteCallback;)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    goto/16 :goto_2c1

    .line 492
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg2":Landroid/content/pm/PackageInstaller$InstallConstraints;
    .end local v4    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 493
    .local v1, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->setSilentUpdatesThrottleTime(J)V

    .line 495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    goto/16 :goto_2c1

    .line 483
    .end local v1    # "_arg0":J
    :pswitch_123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    goto/16 :goto_2c1

    .line 474
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 475
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->disableVerificationForUid(I)V

    .line 477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    goto/16 :goto_2c1

    .line 465
    .end local v1    # "_arg0":I
    :pswitch_141
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 466
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->bypassNextAllowedApexUpdateCheck(Z)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    goto/16 :goto_2c1

    .line 456
    .end local v1    # "_arg0":Z
    :pswitch_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 457
    .restart local v1    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->bypassNextStagedInstallerCheck(Z)V

    .line 459
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    goto/16 :goto_2c1

    .line 445
    .end local v1    # "_arg0":Z
    :pswitch_15f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 447
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 448
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->setPermissionsResult(IZ)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    goto/16 :goto_2c1

    .line 426
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 432
    .local v3, "_arg2":I
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 434
    .local v4, "_arg3":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 436
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 437
    .local v6, "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstaller$Stub;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 439
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    goto/16 :goto_2c1

    .line 411
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/IntentSender;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_19a
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 413
    .local v1, "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 415
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;

    .line 417
    .local v3, "_arg2":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 418
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstaller$Stub;->uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    goto/16 :goto_2c1

    .line 394
    .end local v1    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/content/IntentSender;
    .end local v4    # "_arg3":I
    :pswitch_1bd
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 396
    .restart local v1    # "_arg0":Landroid/content/pm/VersionedPackage;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 400
    .local v3, "_arg2":I
    sget-object v4, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/IntentSender;

    .line 402
    .local v4, "_arg3":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 403
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstaller$Stub;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    goto/16 :goto_2c1

    .line 385
    .end local v1    # "_arg0":Landroid/content/pm/VersionedPackage;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/IntentSender;
    .end local v5    # "_arg4":I
    :pswitch_1e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    move-result-object v1

    .line 386
    .local v1, "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_2c1

    .line 374
    .end local v1    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    :pswitch_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    move-result-object v1

    .line 376
    .restart local v1    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V

    .line 379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_2c1

    .line 366
    .end local v1    # "_arg0":Landroid/content/pm/IPackageInstallerCallback;
    .end local v2    # "_arg1":I
    :pswitch_20f
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstaller$Stub;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 367
    .local v1, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {p3, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 369
    goto/16 :goto_2c1

    .line 355
    .end local v1    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_21b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 358
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 360
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v3, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 362
    goto/16 :goto_2c1

    .line 345
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 346
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->getAllSessions(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 348
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    invoke-virtual {p3, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 350
    goto/16 :goto_2c1

    .line 335
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 336
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    .line 338
    .local v2, "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 340
    goto :goto_2c1

    .line 325
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/PackageInstaller$SessionInfo;
    :pswitch_257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v2

    .line 328
    .local v2, "_result":Landroid/content/pm/IPackageInstallerSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 330
    goto :goto_2c1

    .line 316
    .end local v1    # "_arg0":I
    .end local v2    # "_result":Landroid/content/pm/IPackageInstallerSession;
    :pswitch_269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstaller$Stub;->abandonSession(I)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    goto :goto_2c1

    .line 305
    .end local v1    # "_arg0":I
    :pswitch_277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 307
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppLabel(ILjava/lang/String;)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    goto :goto_2c1

    .line 294
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .restart local v1    # "_arg0":I
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 297
    .local v2, "_arg1":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstaller$Stub;->updateSessionAppIcon(ILandroid/graphics/Bitmap;)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    goto :goto_2c1

    .line 278
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/graphics/Bitmap;
    :pswitch_29f
    sget-object v1, Landroid/content/pm/PackageInstaller$SessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 280
    .local v1, "_arg0":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 285
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageInstaller$Stub;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 287
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    nop

    .line 601
    .end local v1    # "_arg0":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :goto_2c1
    return v8

    :pswitch_data_2c2
    .packed-switch 0x1
        :pswitch_29f
        :pswitch_289
        :pswitch_277
        :pswitch_269
        :pswitch_257
        :pswitch_245
        :pswitch_232
        :pswitch_21b
        :pswitch_20f
        :pswitch_1f8
        :pswitch_1e5
        :pswitch_1bd
        :pswitch_19a
        :pswitch_172
        :pswitch_15f
        :pswitch_150
        :pswitch_141
        :pswitch_132
        :pswitch_123
        :pswitch_114
        :pswitch_f1
        :pswitch_c7
        :pswitch_9f
        :pswitch_7c
        :pswitch_48
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist setPermissionsResult_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Landroid/content/pm/IPackageInstaller$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstaller$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1088
    return-void
.end method
