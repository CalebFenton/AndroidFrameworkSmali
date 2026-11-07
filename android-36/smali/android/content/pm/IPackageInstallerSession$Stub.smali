.class public abstract Landroid/content/pm/IPackageInstallerSession$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerSession.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerSession"

.field static final greylist-max-o TRANSACTION_abandon:I = 0xe

.field static final blacklist TRANSACTION_addChildSessionId:I = 0x16

.field static final greylist-max-o TRANSACTION_addClientProgress:I = 0x2

.field static final blacklist TRANSACTION_addFile:I = 0x12

.field static final greylist-max-o TRANSACTION_close:I = 0xb

.field static final greylist-max-o TRANSACTION_commit:I = 0xc

.field static final blacklist TRANSACTION_fetchPackageNames:I = 0x10

.field static final blacklist TRANSACTION_getAppMetadataFd:I = 0x1e

.field static final blacklist TRANSACTION_getChildSessionIds:I = 0x15

.field static final blacklist TRANSACTION_getDataLoaderParams:I = 0x11

.field static final blacklist TRANSACTION_getInstallFlags:I = 0x1a

.field static final greylist-max-o TRANSACTION_getNames:I = 0x3

.field static final blacklist TRANSACTION_getParentSessionId:I = 0x18

.field static final blacklist TRANSACTION_getPreVerifiedDomains:I = 0x22

.field static final blacklist TRANSACTION_isApplicationEnabledSettingPersistent:I = 0x1c

.field static final blacklist TRANSACTION_isMultiPackage:I = 0x14

.field static final blacklist TRANSACTION_isRequestUpdateOwnership:I = 0x1d

.field static final blacklist TRANSACTION_isStaged:I = 0x19

.field static final greylist-max-o TRANSACTION_openRead:I = 0x5

.field static final greylist-max-o TRANSACTION_openWrite:I = 0x4

.field static final blacklist TRANSACTION_openWriteAppMetadata:I = 0x1f

.field static final blacklist TRANSACTION_removeAppMetadata:I = 0x20

.field static final blacklist TRANSACTION_removeChildSessionId:I = 0x17

.field static final blacklist TRANSACTION_removeFile:I = 0x13

.field static final greylist-max-o TRANSACTION_removeSplit:I = 0xa

.field static final blacklist TRANSACTION_requestChecksums:I = 0x9

.field static final blacklist TRANSACTION_requestUserPreapproval:I = 0x1b

.field static final blacklist TRANSACTION_seal:I = 0xf

.field static final blacklist TRANSACTION_setChecksums:I = 0x8

.field static final greylist-max-o TRANSACTION_setClientProgress:I = 0x1

.field static final blacklist TRANSACTION_setPreVerifiedDomains:I = 0x21

.field static final blacklist TRANSACTION_stageViaHardLink:I = 0x7

.field static final greylist-max-o TRANSACTION_transfer:I = 0xd

.field static final greylist-max-o TRANSACTION_write:I = 0x6


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    nop

    .line 155
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 156
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 4
    .param p1, "enforcer"    # Landroid/os/PermissionEnforcer;

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 145
    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 146
    if-eqz p1, :cond_d

    .line 149
    iput-object p1, p0, Landroid/content/pm/IPackageInstallerSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 150
    return-void

    .line 147
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enforcer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 163
    if-nez p0, :cond_4

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_4
    const-string v0, "android.content.pm.IPackageInstallerSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 167
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageInstallerSession;

    if-eqz v1, :cond_14

    .line 168
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IPackageInstallerSession;

    return-object v1

    .line 170
    :cond_14
    new-instance v1, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 179
    packed-switch p0, :pswitch_data_80

    .line 319
    const/4 v0, 0x0

    return-object v0

    .line 315
    :pswitch_5
    const-string v0, "getPreVerifiedDomains"

    return-object v0

    .line 311
    :pswitch_8
    const-string/jumbo v0, "setPreVerifiedDomains"

    return-object v0

    .line 307
    :pswitch_c
    const-string/jumbo v0, "removeAppMetadata"

    return-object v0

    .line 303
    :pswitch_10
    const-string/jumbo v0, "openWriteAppMetadata"

    return-object v0

    .line 299
    :pswitch_14
    const-string v0, "getAppMetadataFd"

    return-object v0

    .line 295
    :pswitch_17
    const-string/jumbo v0, "isRequestUpdateOwnership"

    return-object v0

    .line 291
    :pswitch_1b
    const-string/jumbo v0, "isApplicationEnabledSettingPersistent"

    return-object v0

    .line 287
    :pswitch_1f
    const-string/jumbo v0, "requestUserPreapproval"

    return-object v0

    .line 283
    :pswitch_23
    const-string v0, "getInstallFlags"

    return-object v0

    .line 279
    :pswitch_26
    const-string/jumbo v0, "isStaged"

    return-object v0

    .line 275
    :pswitch_2a
    const-string v0, "getParentSessionId"

    return-object v0

    .line 271
    :pswitch_2d
    const-string/jumbo v0, "removeChildSessionId"

    return-object v0

    .line 267
    :pswitch_31
    const-string v0, "addChildSessionId"

    return-object v0

    .line 263
    :pswitch_34
    const-string v0, "getChildSessionIds"

    return-object v0

    .line 259
    :pswitch_37
    const-string/jumbo v0, "isMultiPackage"

    return-object v0

    .line 255
    :pswitch_3b
    const-string/jumbo v0, "removeFile"

    return-object v0

    .line 251
    :pswitch_3f
    const-string v0, "addFile"

    return-object v0

    .line 247
    :pswitch_42
    const-string v0, "getDataLoaderParams"

    return-object v0

    .line 243
    :pswitch_45
    const-string v0, "fetchPackageNames"

    return-object v0

    .line 239
    :pswitch_48
    const-string/jumbo v0, "seal"

    return-object v0

    .line 235
    :pswitch_4c
    const-string v0, "abandon"

    return-object v0

    .line 231
    :pswitch_4f
    const-string/jumbo v0, "transfer"

    return-object v0

    .line 227
    :pswitch_53
    const-string v0, "commit"

    return-object v0

    .line 223
    :pswitch_56
    const-string v0, "close"

    return-object v0

    .line 219
    :pswitch_59
    const-string/jumbo v0, "removeSplit"

    return-object v0

    .line 215
    :pswitch_5d
    const-string/jumbo v0, "requestChecksums"

    return-object v0

    .line 211
    :pswitch_61
    const-string/jumbo v0, "setChecksums"

    return-object v0

    .line 207
    :pswitch_65
    const-string/jumbo v0, "stageViaHardLink"

    return-object v0

    .line 203
    :pswitch_69
    const-string/jumbo v0, "write"

    return-object v0

    .line 199
    :pswitch_6d
    const-string/jumbo v0, "openRead"

    return-object v0

    .line 195
    :pswitch_71
    const-string/jumbo v0, "openWrite"

    return-object v0

    .line 191
    :pswitch_75
    const-string v0, "getNames"

    return-object v0

    .line 187
    :pswitch_78
    const-string v0, "addClientProgress"

    return-object v0

    .line 183
    :pswitch_7b
    const-string/jumbo v0, "setClientProgress"

    return-object v0

    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_4c
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected blacklist addFile_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Landroid/content/pm/IPackageInstallerSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.permission.USE_INSTALLER_V2"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1253
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 174
    return-object p0
.end method

.method protected blacklist getDataLoaderParams_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1247
    iget-object v0, p0, Landroid/content/pm/IPackageInstallerSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.permission.USE_INSTALLER_V2"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1248
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1277
    const/16 v0, 0x21

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 326
    invoke-static {p1}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 330
    const-string v7, "android.content.pm.IPackageInstallerSession"

    .line 331
    .local v7, "descriptor":Ljava/lang/String;
    const/4 v8, 0x1

    if-lt p1, v8, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 332
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 335
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    return v8

    .line 338
    :cond_16
    packed-switch p1, :pswitch_data_24c

    .line 649
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 642
    :pswitch_1e
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;

    move-result-object v1

    .line 643
    .local v1, "_result":Landroid/content/pm/verify/domain/DomainSet;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    invoke-virtual {p3, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 645
    goto/16 :goto_24b

    .line 634
    .end local v1    # "_result":Landroid/content/pm/verify/domain/DomainSet;
    :pswitch_2a
    sget-object v1, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/verify/domain/DomainSet;

    .line 635
    .local v1, "_arg0":Landroid/content/pm/verify/domain/DomainSet;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->setPreVerifiedDomains(Landroid/content/pm/verify/domain/DomainSet;)V

    .line 637
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    goto/16 :goto_24b

    .line 627
    .end local v1    # "_arg0":Landroid/content/pm/verify/domain/DomainSet;
    :pswitch_3d
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeAppMetadata()V

    .line 628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    goto/16 :goto_24b

    .line 620
    :pswitch_45
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->openWriteAppMetadata()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 621
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    invoke-virtual {p3, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 623
    goto/16 :goto_24b

    .line 613
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_51
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getAppMetadataFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 614
    .restart local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 616
    goto/16 :goto_24b

    .line 606
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_5d
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isRequestUpdateOwnership()Z

    move-result v1

    .line 607
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 609
    goto/16 :goto_24b

    .line 599
    .end local v1    # "_result":Z
    :pswitch_69
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isApplicationEnabledSettingPersistent()Z

    move-result v1

    .line 600
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 602
    goto/16 :goto_24b

    .line 589
    .end local v1    # "_result":Z
    :pswitch_75
    sget-object v1, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInstaller$PreapprovalDetails;

    .line 591
    .local v1, "_arg0":Landroid/content/pm/PackageInstaller$PreapprovalDetails;
    sget-object v2, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    .line 592
    .local v2, "_arg1":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 593
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstallerSession$Stub;->requestUserPreapproval(Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/IntentSender;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    goto/16 :goto_24b

    .line 581
    .end local v1    # "_arg0":Landroid/content/pm/PackageInstaller$PreapprovalDetails;
    .end local v2    # "_arg1":Landroid/content/IntentSender;
    :pswitch_90
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getInstallFlags()I

    move-result v1

    .line 582
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    goto/16 :goto_24b

    .line 574
    .end local v1    # "_result":I
    :pswitch_9c
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isStaged()Z

    move-result v1

    .line 575
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 577
    goto/16 :goto_24b

    .line 567
    .end local v1    # "_result":Z
    :pswitch_a8
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getParentSessionId()I

    move-result v1

    .line 568
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    goto/16 :goto_24b

    .line 559
    .end local v1    # "_result":I
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 560
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeChildSessionId(I)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    goto/16 :goto_24b

    .line 550
    .end local v1    # "_arg0":I
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 551
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->addChildSessionId(I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    goto/16 :goto_24b

    .line 542
    .end local v1    # "_arg0":I
    :pswitch_d2
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getChildSessionIds()[I

    move-result-object v1

    .line 543
    .local v1, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 544
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 545
    goto/16 :goto_24b

    .line 535
    .end local v1    # "_result":[I
    :pswitch_de
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->isMultiPackage()Z

    move-result v1

    .line 536
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 538
    goto/16 :goto_24b

    .line 525
    .end local v1    # "_result":Z
    :pswitch_ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 527
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeFile(ILjava/lang/String;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_24b

    .line 508
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 510
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 512
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 514
    .local v3, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 516
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 517
    .local v6, "_arg4":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->addFile(ILjava/lang/String;J[B[B)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    goto/16 :goto_24b

    .line 500
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":J
    .end local v5    # "_arg3":[B
    .end local v6    # "_arg4":[B
    :pswitch_11d
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v1

    .line 501
    .local v1, "_result":Landroid/content/pm/DataLoaderParamsParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    invoke-virtual {p3, v1, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 503
    goto/16 :goto_24b

    .line 493
    .end local v1    # "_result":Landroid/content/pm/DataLoaderParamsParcel;
    :pswitch_129
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->fetchPackageNames()Ljava/util/List;

    move-result-object v1

    .line 494
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 496
    goto/16 :goto_24b

    .line 487
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_135
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->seal()V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    goto/16 :goto_24b

    .line 481
    :pswitch_13d
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->abandon()V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    goto/16 :goto_24b

    .line 473
    :pswitch_145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->transfer(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    goto/16 :goto_24b

    .line 462
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_154
    sget-object v1, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 464
    .local v1, "_arg0":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 465
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageInstallerSession$Stub;->commit(Landroid/content/IntentSender;Z)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    goto/16 :goto_24b

    .line 455
    .end local v1    # "_arg0":Landroid/content/IntentSender;
    .end local v2    # "_arg1":Z
    :pswitch_16b
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->close()V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    goto/16 :goto_24b

    .line 447
    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeSplit(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    goto/16 :goto_24b

    .line 429
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 431
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 433
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 435
    .local v3, "_arg2":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 436
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4

    .line 438
    .local v4, "_arg3":Ljava/util/List;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnChecksumsReadyListener;

    move-result-object v5

    .line 439
    .local v5, "_arg4":Landroid/content/pm/IOnChecksumsReadyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    goto/16 :goto_24b

    .line 416
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/util/List;
    .end local v5    # "_arg4":Landroid/content/pm/IOnChecksumsReadyListener;
    .end local v6    # "cl":Ljava/lang/ClassLoader;
    :pswitch_1ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 418
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/Checksum;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Checksum;

    .line 420
    .local v2, "_arg1":[Landroid/content/pm/Checksum;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 421
    .local v3, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageInstallerSession$Stub;->setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    goto/16 :goto_24b

    .line 407
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[Landroid/content/pm/Checksum;
    .end local v3    # "_arg2":[B
    :pswitch_1c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 408
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 409
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->stageViaHardLink(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_24b

    .line 392
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 396
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 398
    .local v4, "_arg2":J
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 399
    .local v6, "_arg3":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    goto :goto_24b

    .line 382
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_arg3":Landroid/os/ParcelFileDescriptor;
    :pswitch_1f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 385
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v2, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 387
    goto :goto_24b

    .line 368
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 372
    .local v2, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 373
    .restart local v4    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 375
    .local v6, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 377
    goto :goto_24b

    .line 360
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    .end local v4    # "_arg2":J
    .end local v6    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_224
    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getNames()[Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 363
    goto :goto_24b

    .line 352
    .end local v1    # "_result":[Ljava/lang/String;
    :pswitch_22f
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 353
    .local v1, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->addClientProgress(F)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    goto :goto_24b

    .line 343
    .end local v1    # "_arg0":F
    :pswitch_23d
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 344
    .restart local v1    # "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->setClientProgress(F)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    nop

    .line 652
    .end local v1    # "_arg0":F
    :goto_24b
    return v8

    :pswitch_data_24c
    .packed-switch 0x1
        :pswitch_23d
        :pswitch_22f
        :pswitch_224
        :pswitch_209
        :pswitch_1f7
        :pswitch_1d8
        :pswitch_1c9
        :pswitch_1ae
        :pswitch_182
        :pswitch_173
        :pswitch_16b
        :pswitch_154
        :pswitch_145
        :pswitch_13d
        :pswitch_135
        :pswitch_129
        :pswitch_11d
        :pswitch_fd
        :pswitch_ea
        :pswitch_de
        :pswitch_d2
        :pswitch_c3
        :pswitch_b4
        :pswitch_a8
        :pswitch_9c
        :pswitch_90
        :pswitch_75
        :pswitch_69
        :pswitch_5d
        :pswitch_51
        :pswitch_45
        :pswitch_3d
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

.method protected blacklist removeFile_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Landroid/content/pm/IPackageInstallerSession$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageInstallerSession$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "com.android.permission.USE_INSTALLER_V2"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 1258
    return-void
.end method
