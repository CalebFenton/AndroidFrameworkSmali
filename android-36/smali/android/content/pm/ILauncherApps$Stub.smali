.class public abstract Landroid/content/pm/ILauncherApps$Stub;
.super Landroid/os/Binder;
.source "ILauncherApps.java"

# interfaces
.implements Landroid/content/pm/ILauncherApps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ILauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ILauncherApps$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.ILauncherApps"

.field static final greylist-max-o TRANSACTION_addOnAppsChangedListener:I = 0x1

.field static final blacklist TRANSACTION_cacheShortcuts:I = 0x20

.field static final blacklist TRANSACTION_getActivityLaunchIntent:I = 0x7

.field static final blacklist TRANSACTION_getActivityOverrides:I = 0x23

.field static final blacklist TRANSACTION_getAllSessions:I = 0x1d

.field static final blacklist TRANSACTION_getAppMarketActivityIntent:I = 0xa

.field static final blacklist TRANSACTION_getAppUsageLimit:I = 0x11

.field static final greylist-max-o TRANSACTION_getApplicationInfo:I = 0x10

.field static final greylist-max-o TRANSACTION_getLauncherActivities:I = 0x3

.field static final blacklist TRANSACTION_getLauncherUserInfo:I = 0x8

.field static final blacklist TRANSACTION_getPreInstalledSystemPackages:I = 0x9

.field static final blacklist TRANSACTION_getPrivateSpaceSettingsIntent:I = 0xb

.field static final greylist-max-o TRANSACTION_getShortcutConfigActivities:I = 0x19

.field static final greylist-max-o TRANSACTION_getShortcutConfigActivityIntent:I = 0x1a

.field static final greylist-max-o TRANSACTION_getShortcutIconFd:I = 0x16

.field static final greylist-max-o TRANSACTION_getShortcutIconResId:I = 0x15

.field static final blacklist TRANSACTION_getShortcutIconUri:I = 0x22

.field static final blacklist TRANSACTION_getShortcutIntent:I = 0x1b

.field static final greylist-max-o TRANSACTION_getShortcuts:I = 0x12

.field static final greylist-max-o TRANSACTION_getSuspendedPackageLauncherExtras:I = 0xe

.field static final blacklist TRANSACTION_getUserProfiles:I = 0x27

.field static final greylist-max-o TRANSACTION_hasShortcutHostPermission:I = 0x17

.field static final greylist-max-o TRANSACTION_isActivityEnabled:I = 0xf

.field static final greylist-max-o TRANSACTION_isPackageEnabled:I = 0xd

.field static final greylist-max-o TRANSACTION_pinShortcuts:I = 0x13

.field static final blacklist TRANSACTION_registerDumpCallback:I = 0x24

.field static final blacklist TRANSACTION_registerPackageInstallerCallback:I = 0x1c

.field static final blacklist TRANSACTION_registerShortcutChangeCallback:I = 0x1e

.field static final greylist-max-o TRANSACTION_removeOnAppsChangedListener:I = 0x2

.field static final blacklist TRANSACTION_resolveLauncherActivityInternal:I = 0x4

.field static final blacklist TRANSACTION_saveViewCaptureData:I = 0x28

.field static final blacklist TRANSACTION_setArchiveCompatibilityOptions:I = 0x26

.field static final blacklist TRANSACTION_shouldHideFromSuggestions:I = 0x18

.field static final greylist-max-o TRANSACTION_showAppDetailsAsUser:I = 0xc

.field static final greylist-max-o TRANSACTION_startActivityAsUser:I = 0x6

.field static final blacklist TRANSACTION_startSessionDetailsActivityAsUser:I = 0x5

.field static final greylist-max-o TRANSACTION_startShortcut:I = 0x14

.field static final blacklist TRANSACTION_unRegisterDumpCallback:I = 0x25

.field static final blacklist TRANSACTION_uncacheShortcuts:I = 0x21

.field static final blacklist TRANSACTION_unregisterShortcutChangeCallback:I = 0x1f


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 176
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 177
    const-string v0, "android.content.pm.ILauncherApps"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/ILauncherApps$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/ILauncherApps;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 185
    if-nez p0, :cond_4

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 188
    :cond_4
    const-string v0, "android.content.pm.ILauncherApps"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 189
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/ILauncherApps;

    if-eqz v1, :cond_14

    .line 190
    move-object v1, v0

    check-cast v1, Landroid/content/pm/ILauncherApps;

    return-object v1

    .line 192
    :cond_14
    new-instance v1, Landroid/content/pm/ILauncherApps$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/ILauncherApps$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 201
    packed-switch p0, :pswitch_data_9a

    .line 365
    const/4 v0, 0x0

    return-object v0

    .line 361
    :pswitch_5
    const-string/jumbo v0, "saveViewCaptureData"

    return-object v0

    .line 357
    :pswitch_9
    const-string/jumbo v0, "getUserProfiles"

    return-object v0

    .line 353
    :pswitch_d
    const-string/jumbo v0, "setArchiveCompatibilityOptions"

    return-object v0

    .line 349
    :pswitch_11
    const-string/jumbo v0, "unRegisterDumpCallback"

    return-object v0

    .line 345
    :pswitch_15
    const-string/jumbo v0, "registerDumpCallback"

    return-object v0

    .line 341
    :pswitch_19
    const-string v0, "getActivityOverrides"

    return-object v0

    .line 337
    :pswitch_1c
    const-string/jumbo v0, "getShortcutIconUri"

    return-object v0

    .line 333
    :pswitch_20
    const-string/jumbo v0, "uncacheShortcuts"

    return-object v0

    .line 329
    :pswitch_24
    const-string v0, "cacheShortcuts"

    return-object v0

    .line 325
    :pswitch_27
    const-string/jumbo v0, "unregisterShortcutChangeCallback"

    return-object v0

    .line 321
    :pswitch_2b
    const-string/jumbo v0, "registerShortcutChangeCallback"

    return-object v0

    .line 317
    :pswitch_2f
    const-string v0, "getAllSessions"

    return-object v0

    .line 313
    :pswitch_32
    const-string/jumbo v0, "registerPackageInstallerCallback"

    return-object v0

    .line 309
    :pswitch_36
    const-string/jumbo v0, "getShortcutIntent"

    return-object v0

    .line 305
    :pswitch_3a
    const-string/jumbo v0, "getShortcutConfigActivityIntent"

    return-object v0

    .line 301
    :pswitch_3e
    const-string/jumbo v0, "getShortcutConfigActivities"

    return-object v0

    .line 297
    :pswitch_42
    const-string/jumbo v0, "shouldHideFromSuggestions"

    return-object v0

    .line 293
    :pswitch_46
    const-string/jumbo v0, "hasShortcutHostPermission"

    return-object v0

    .line 289
    :pswitch_4a
    const-string/jumbo v0, "getShortcutIconFd"

    return-object v0

    .line 285
    :pswitch_4e
    const-string/jumbo v0, "getShortcutIconResId"

    return-object v0

    .line 281
    :pswitch_52
    const-string/jumbo v0, "startShortcut"

    return-object v0

    .line 277
    :pswitch_56
    const-string/jumbo v0, "pinShortcuts"

    return-object v0

    .line 273
    :pswitch_5a
    const-string/jumbo v0, "getShortcuts"

    return-object v0

    .line 269
    :pswitch_5e
    const-string v0, "getAppUsageLimit"

    return-object v0

    .line 265
    :pswitch_61
    const-string v0, "getApplicationInfo"

    return-object v0

    .line 261
    :pswitch_64
    const-string/jumbo v0, "isActivityEnabled"

    return-object v0

    .line 257
    :pswitch_68
    const-string/jumbo v0, "getSuspendedPackageLauncherExtras"

    return-object v0

    .line 253
    :pswitch_6c
    const-string/jumbo v0, "isPackageEnabled"

    return-object v0

    .line 249
    :pswitch_70
    const-string/jumbo v0, "showAppDetailsAsUser"

    return-object v0

    .line 245
    :pswitch_74
    const-string v0, "getPrivateSpaceSettingsIntent"

    return-object v0

    .line 241
    :pswitch_77
    const-string v0, "getAppMarketActivityIntent"

    return-object v0

    .line 237
    :pswitch_7a
    const-string v0, "getPreInstalledSystemPackages"

    return-object v0

    .line 233
    :pswitch_7d
    const-string v0, "getLauncherUserInfo"

    return-object v0

    .line 229
    :pswitch_80
    const-string v0, "getActivityLaunchIntent"

    return-object v0

    .line 225
    :pswitch_83
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 221
    :pswitch_87
    const-string/jumbo v0, "startSessionDetailsActivityAsUser"

    return-object v0

    .line 217
    :pswitch_8b
    const-string/jumbo v0, "resolveLauncherActivityInternal"

    return-object v0

    .line 213
    :pswitch_8f
    const-string v0, "getLauncherActivities"

    return-object v0

    .line 209
    :pswitch_92
    const-string/jumbo v0, "removeOnAppsChangedListener"

    return-object v0

    .line 205
    :pswitch_96
    const-string v0, "addOnAppsChangedListener"

    return-object v0

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_96
        :pswitch_92
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5a
        :pswitch_56
        :pswitch_52
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
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

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Landroid/content/pm/LauncherActivityInfoInternal;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/content/pm/LauncherActivityInfoInternal;

    .line 882
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 883
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 884
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 196
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1763
    const/16 v0, 0x27

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 372
    invoke-static {p1}, Landroid/content/pm/ILauncherApps$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    move-object v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.content.pm.ILauncherApps"

    .line 377
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt p1, v11, :cond_10

    const v1, 0xffffff

    if-gt p1, v1, :cond_10

    .line 378
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    :cond_10
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_19

    .line 381
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    return v11

    .line 384
    :cond_19
    packed-switch p1, :pswitch_data_4ec

    .line 932
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 926
    :pswitch_21
    invoke-virtual {p0}, Landroid/content/pm/ILauncherApps$Stub;->saveViewCaptureData()V

    .line 927
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    goto/16 :goto_4eb

    .line 919
    :pswitch_29
    invoke-virtual {p0}, Landroid/content/pm/ILauncherApps$Stub;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    .line 920
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 922
    goto/16 :goto_4eb

    .line 909
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 911
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 912
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->setArchiveCompatibilityOptions(ZZ)V

    .line 914
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    goto/16 :goto_4eb

    .line 900
    .end local v1    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/IDumpCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDumpCallback;

    move-result-object v1

    .line 901
    .local v1, "_arg0":Landroid/window/IDumpCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 902
    invoke-virtual {p0, v1}, Landroid/content/pm/ILauncherApps$Stub;->unRegisterDumpCallback(Landroid/window/IDumpCallback;)V

    .line 903
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    goto/16 :goto_4eb

    .line 891
    .end local v1    # "_arg0":Landroid/window/IDumpCallback;
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/window/IDumpCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IDumpCallback;

    move-result-object v1

    .line 892
    .restart local v1    # "_arg0":Landroid/window/IDumpCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {p0, v1}, Landroid/content/pm/ILauncherApps$Stub;->registerDumpCallback(Landroid/window/IDumpCallback;)V

    .line 894
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    goto/16 :goto_4eb

    .line 871
    .end local v1    # "_arg0":Landroid/window/IDumpCallback;
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 874
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->getActivityOverrides(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v3

    .line 876
    .local v3, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfoInternal;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    if-nez v3, :cond_88

    .line 878
    const/4 v4, -0x1

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_4eb

    .line 880
    :cond_88
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    new-instance v4, Landroid/content/pm/ILauncherApps$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v4, v9}, Landroid/content/pm/ILauncherApps$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 886
    goto/16 :goto_4eb

    .line 855
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/LauncherActivityInfoInternal;>;"
    :pswitch_99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 857
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 859
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 862
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 863
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIconUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 864
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    goto/16 :goto_4eb

    .line 838
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 840
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 842
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 844
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 846
    .local v4, "_arg3":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 847
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ILauncherApps$Stub;->uncacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V

    .line 849
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    goto/16 :goto_4eb

    .line 821
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg3":Landroid/os/UserHandle;
    .end local v5    # "_arg4":I
    :pswitch_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 823
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 825
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 827
    .restart local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/UserHandle;

    .line 829
    .restart local v4    # "_arg3":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 830
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ILauncherApps$Stub;->cacheShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;I)V

    .line 832
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    goto/16 :goto_4eb

    .line 810
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg3":Landroid/os/UserHandle;
    .end local v5    # "_arg4":I
    :pswitch_101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 812
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IShortcutChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutChangeCallback;

    move-result-object v2

    .line 813
    .local v2, "_arg1":Landroid/content/pm/IShortcutChangeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 814
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->unregisterShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/IShortcutChangeCallback;)V

    .line 815
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    goto/16 :goto_4eb

    .line 797
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/IShortcutChangeCallback;
    :pswitch_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 799
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ShortcutQueryWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutQueryWrapper;

    .line 801
    .local v2, "_arg1":Landroid/content/pm/ShortcutQueryWrapper;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IShortcutChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutChangeCallback;

    move-result-object v3

    .line 802
    .local v3, "_arg2":Landroid/content/pm/IShortcutChangeCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->registerShortcutChangeCallback(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/content/pm/IShortcutChangeCallback;)V

    .line 804
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    goto/16 :goto_4eb

    .line 787
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/ShortcutQueryWrapper;
    .end local v3    # "_arg2":Landroid/content/pm/IShortcutChangeCallback;
    :pswitch_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 788
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {p0, v1}, Landroid/content/pm/ILauncherApps$Stub;->getAllSessions(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 790
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 792
    goto/16 :goto_4eb

    .line 776
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 778
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;

    move-result-object v2

    .line 779
    .local v2, "_arg1":Landroid/content/pm/IPackageInstallerCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 780
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->registerPackageInstallerCallback(Ljava/lang/String;Landroid/content/pm/IPackageInstallerCallback;)V

    .line 781
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    goto/16 :goto_4eb

    .line 758
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/IPackageInstallerCallback;
    :pswitch_161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 760
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 764
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 766
    .local v4, "_arg3":Landroid/os/Bundle;
    sget-object v5, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 767
    .local v5, "_arg4":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 769
    .local v6, "_result":Landroid/app/PendingIntent;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {v9, v6, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 771
    goto/16 :goto_4eb

    .line 744
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v5    # "_arg4":Landroid/os/UserHandle;
    .end local v6    # "_result":Landroid/app/PendingIntent;
    :pswitch_18d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 746
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 748
    .local v2, "_arg1":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 749
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutConfigActivityIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v4

    .line 751
    .local v4, "_result":Landroid/content/IntentSender;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 753
    goto/16 :goto_4eb

    .line 730
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/IntentSender;
    :pswitch_1b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 732
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 735
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 736
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutConfigActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 737
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 738
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 739
    goto/16 :goto_4eb

    .line 718
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 720
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 721
    .local v2, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    .line 723
    .local v3, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 725
    goto/16 :goto_4eb

    .line 708
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_result":Z
    :pswitch_1ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 709
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {p0, v1}, Landroid/content/pm/ILauncherApps$Stub;->hasShortcutHostPermission(Ljava/lang/String;)Z

    move-result v2

    .line 711
    .local v2, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 713
    goto/16 :goto_4eb

    .line 692
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 694
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 699
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 700
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIconFd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 701
    .local v5, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 703
    goto/16 :goto_4eb

    .line 676
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_21c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 678
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 680
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 682
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 683
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps$Stub;->getShortcutIconResId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 685
    .local v5, "_result":I
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {v9, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    goto/16 :goto_4eb

    .line 654
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_23b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 656
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 658
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 660
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 662
    .local v4, "_arg3":Ljava/lang/String;
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 664
    .local v5, "_arg4":Landroid/graphics/Rect;
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 666
    .local v6, "_arg5":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 667
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/ILauncherApps$Stub;->startShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    move-result v12

    .line 669
    .local v12, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 671
    goto/16 :goto_4eb

    .line 639
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":I
    .end local v12    # "_result":Z
    :pswitch_26f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 641
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 643
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 645
    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 646
    .local v4, "_arg3":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps$Stub;->pinShortcuts(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 648
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    goto/16 :goto_4eb

    .line 625
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_arg3":Landroid/os/UserHandle;
    :pswitch_28e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 627
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/pm/ShortcutQueryWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutQueryWrapper;

    .line 629
    .local v2, "_arg1":Landroid/content/pm/ShortcutQueryWrapper;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 630
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->getShortcuts(Ljava/lang/String;Landroid/content/pm/ShortcutQueryWrapper;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 632
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 634
    goto/16 :goto_4eb

    .line 611
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/ShortcutQueryWrapper;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_2b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 613
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 616
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 617
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->getAppUsageLimit(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;

    move-result-object v4

    .line 618
    .local v4, "_result":Landroid/content/pm/LauncherApps$AppUsageLimit;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 620
    goto/16 :goto_4eb

    .line 595
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/LauncherApps$AppUsageLimit;
    :pswitch_2d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 597
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 601
    .local v3, "_arg2":I
    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 602
    .local v4, "_arg3":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/ILauncherApps$Stub;->getApplicationInfo(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 604
    .local v5, "_result":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v9, v5, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 606
    goto/16 :goto_4eb

    .line 581
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/os/UserHandle;
    .end local v5    # "_result":Landroid/content/pm/ApplicationInfo;
    :pswitch_2f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 583
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 585
    .local v2, "_arg1":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 586
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 587
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->isActivityEnabled(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    .line 588
    .local v4, "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 590
    goto/16 :goto_4eb

    .line 569
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_316
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 571
    .restart local v1    # "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 572
    .local v2, "_arg1":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->getSuspendedPackageLauncherExtras(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v3

    .line 574
    .local v3, "_result":Landroid/os/Bundle;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 576
    goto/16 :goto_4eb

    .line 555
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/UserHandle;
    .end local v3    # "_result":Landroid/os/Bundle;
    :pswitch_331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 557
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 560
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 561
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->isPackageEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    .line 562
    .restart local v4    # "_result":Z
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 564
    goto/16 :goto_4eb

    .line 534
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Z
    :pswitch_350
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 536
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 538
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 542
    .local v4, "_arg3":Landroid/content/ComponentName;
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 544
    .local v5, "_arg4":Landroid/graphics/Rect;
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 546
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    sget-object v7, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 547
    .local v7, "_arg6":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 548
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/ILauncherApps$Stub;->showAppDetailsAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 549
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    goto/16 :goto_4eb

    .line 526
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Landroid/os/UserHandle;
    :pswitch_38c
    invoke-virtual {p0}, Landroid/content/pm/ILauncherApps$Stub;->getPrivateSpaceSettingsIntent()Landroid/content/IntentSender;

    move-result-object v1

    .line 527
    .local v1, "_result":Landroid/content/IntentSender;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 529
    goto/16 :goto_4eb

    .line 513
    .end local v1    # "_result":Landroid/content/IntentSender;
    :pswitch_398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 517
    .restart local v2    # "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 518
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 519
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->getAppMarketActivityIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v4

    .line 520
    .local v4, "_result":Landroid/content/IntentSender;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 522
    goto/16 :goto_4eb

    .line 503
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/IntentSender;
    :pswitch_3b7
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 504
    .local v1, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {p0, v1}, Landroid/content/pm/ILauncherApps$Stub;->getPreInstalledSystemPackages(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 506
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 508
    goto/16 :goto_4eb

    .line 493
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3ce
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 494
    .restart local v1    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 495
    invoke-virtual {p0, v1}, Landroid/content/pm/ILauncherApps$Stub;->getLauncherUserInfo(Landroid/os/UserHandle;)Landroid/content/pm/LauncherUserInfo;

    move-result-object v2

    .line 496
    .local v2, "_result":Landroid/content/pm/LauncherUserInfo;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 498
    goto/16 :goto_4eb

    .line 479
    .end local v1    # "_arg0":Landroid/os/UserHandle;
    .end local v2    # "_result":Landroid/content/pm/LauncherUserInfo;
    :pswitch_3e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 483
    .local v2, "_arg1":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 484
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 485
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->getActivityLaunchIntent(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 486
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 488
    goto/16 :goto_4eb

    .line 458
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :pswitch_408
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 460
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 466
    .local v4, "_arg3":Landroid/content/ComponentName;
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 468
    .restart local v5    # "_arg4":Landroid/graphics/Rect;
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    .line 470
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    sget-object v7, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    .line 471
    .restart local v7    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/ILauncherApps$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 473
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    goto/16 :goto_4eb

    .line 437
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Landroid/os/UserHandle;
    :pswitch_444
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 439
    .restart local v1    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 441
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 443
    .restart local v3    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/pm/PackageInstaller$SessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 445
    .local v4, "_arg3":Landroid/content/pm/PackageInstaller$SessionInfo;
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/graphics/Rect;

    .line 447
    .restart local v5    # "_arg4":Landroid/graphics/Rect;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Bundle;

    .line 449
    .restart local v6    # "_arg5":Landroid/os/Bundle;
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/UserHandle;

    .line 450
    .restart local v7    # "_arg6":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/ILauncherApps$Stub;->startSessionDetailsActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInstaller$SessionInfo;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 452
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    goto :goto_4eb

    .line 423
    .end local v1    # "_arg0":Landroid/app/IApplicationThread;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/content/pm/PackageInstaller$SessionInfo;
    .end local v5    # "_arg4":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Landroid/os/Bundle;
    .end local v7    # "_arg6":Landroid/os/UserHandle;
    :pswitch_483
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "_arg0":Ljava/lang/String;
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 427
    .local v2, "_arg1":Landroid/content/ComponentName;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 428
    .local v3, "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->resolveLauncherActivityInternal(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfoInternal;

    move-result-object v4

    .line 430
    .local v4, "_result":Landroid/content/pm/LauncherActivityInfoInternal;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 432
    goto :goto_4eb

    .line 409
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/LauncherActivityInfoInternal;
    :pswitch_4a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 411
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 414
    .restart local v3    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/ILauncherApps$Stub;->getLauncherActivities(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 416
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {v9, v4, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 418
    goto :goto_4eb

    .line 400
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/os/UserHandle;
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_4c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    move-result-object v1

    .line 401
    .local v1, "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 402
    invoke-virtual {p0, v1}, Landroid/content/pm/ILauncherApps$Stub;->removeOnAppsChangedListener(Landroid/content/pm/IOnAppsChangedListener;)V

    .line 403
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    goto :goto_4eb

    .line 389
    .end local v1    # "_arg0":Landroid/content/pm/IOnAppsChangedListener;
    :pswitch_4d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IOnAppsChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;

    move-result-object v2

    .line 392
    .local v2, "_arg1":Landroid/content/pm/IOnAppsChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/ILauncherApps$Stub;->addOnAppsChangedListener(Ljava/lang/String;Landroid/content/pm/IOnAppsChangedListener;)V

    .line 394
    invoke-virtual {v9}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    nop

    .line 935
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/pm/IOnAppsChangedListener;
    :goto_4eb
    return v11

    :pswitch_data_4ec
    .packed-switch 0x1
        :pswitch_4d5
        :pswitch_4c3
        :pswitch_4a5
        :pswitch_483
        :pswitch_444
        :pswitch_408
        :pswitch_3e5
        :pswitch_3ce
        :pswitch_3b7
        :pswitch_398
        :pswitch_38c
        :pswitch_350
        :pswitch_331
        :pswitch_316
        :pswitch_2f3
        :pswitch_2d0
        :pswitch_2b1
        :pswitch_28e
        :pswitch_26f
        :pswitch_23b
        :pswitch_21c
        :pswitch_1fd
        :pswitch_1ea
        :pswitch_1cf
        :pswitch_1b0
        :pswitch_18d
        :pswitch_161
        :pswitch_14a
        :pswitch_137
        :pswitch_118
        :pswitch_101
        :pswitch_dc
        :pswitch_b8
        :pswitch_99
        :pswitch_6e
        :pswitch_5b
        :pswitch_48
        :pswitch_35
        :pswitch_29
        :pswitch_21
    .end packed-switch
.end method
