.class public abstract Landroid/content/pm/IOnAppsChangedListener$Stub;
.super Landroid/os/Binder;
.source "IOnAppsChangedListener.java"

# interfaces
.implements Landroid/content/pm/IOnAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOnAppsChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOnAppsChangedListener"

.field static final greylist-max-o TRANSACTION_onPackageAdded:I = 0x2

.field static final greylist-max-o TRANSACTION_onPackageChanged:I = 0x3

.field static final blacklist TRANSACTION_onPackageLoadingProgressChanged:I = 0x9

.field static final greylist-max-o TRANSACTION_onPackageRemoved:I = 0x1

.field static final greylist-max-o TRANSACTION_onPackagesAvailable:I = 0x4

.field static final greylist-max-o TRANSACTION_onPackagesSuspended:I = 0x6

.field static final greylist-max-o TRANSACTION_onPackagesUnavailable:I = 0x5

.field static final greylist-max-o TRANSACTION_onPackagesUnsuspended:I = 0x7

.field static final greylist-max-o TRANSACTION_onShortcutChanged:I = 0x8

.field static final blacklist TRANSACTION_onUserConfigChanged:I = 0xa


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOnAppsChangedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnAppsChangedListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IOnAppsChangedListener;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IOnAppsChangedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_2e

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_5
    const-string/jumbo v0, "onUserConfigChanged"

    return-object v0

    .line 118
    :pswitch_9
    const-string/jumbo v0, "onPackageLoadingProgressChanged"

    return-object v0

    .line 114
    :pswitch_d
    const-string/jumbo v0, "onShortcutChanged"

    return-object v0

    .line 110
    :pswitch_11
    const-string/jumbo v0, "onPackagesUnsuspended"

    return-object v0

    .line 106
    :pswitch_15
    const-string/jumbo v0, "onPackagesSuspended"

    return-object v0

    .line 102
    :pswitch_19
    const-string/jumbo v0, "onPackagesUnavailable"

    return-object v0

    .line 98
    :pswitch_1d
    const-string/jumbo v0, "onPackagesAvailable"

    return-object v0

    .line 94
    :pswitch_21
    const-string/jumbo v0, "onPackageChanged"

    return-object v0

    .line 90
    :pswitch_25
    const-string/jumbo v0, "onPackageAdded"

    return-object v0

    .line 86
    :pswitch_29
    const-string/jumbo v0, "onPackageRemoved"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 427
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/content/pm/IOnAppsChangedListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const-string v0, "android.content.pm.IOnAppsChangedListener"

    .line 138
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_16
    packed-switch p1, :pswitch_data_fa

    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 250
    :pswitch_1e
    sget-object v2, Landroid/content/pm/LauncherUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherUserInfo;

    .line 251
    .local v2, "_arg0":Landroid/content/pm/LauncherUserInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onUserConfigChanged(Landroid/content/pm/LauncherUserInfo;)V

    .line 253
    goto/16 :goto_f8

    .line 238
    .end local v2    # "_arg0":Landroid/content/pm/LauncherUserInfo;
    :pswitch_2e
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 240
    .local v2, "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 243
    .local v4, "_arg2":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageLoadingProgressChanged(Landroid/os/UserHandle;Ljava/lang/String;F)V

    .line 245
    goto/16 :goto_f8

    .line 226
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":F
    :pswitch_46
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 228
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 230
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ParceledListSlice;

    .line 231
    .local v4, "_arg2":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 233
    goto/16 :goto_f8

    .line 216
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :pswitch_62
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 218
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 221
    goto/16 :goto_f8

    .line 204
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_76
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 206
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 208
    .restart local v3    # "_arg1":[Ljava/lang/String;
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 209
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    goto :goto_f8

    .line 192
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_91
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 194
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 196
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 197
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    .line 199
    goto :goto_f8

    .line 180
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :pswitch_a8
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 182
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 184
    .restart local v3    # "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 185
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V

    .line 187
    goto :goto_f8

    .line 170
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":[Ljava/lang/String;
    .end local v4    # "_arg2":Z
    :pswitch_bf
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 172
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 175
    goto :goto_f8

    .line 160
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_d2
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 162
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 165
    goto :goto_f8

    .line 150
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_e5
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 152
    .restart local v2    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IOnAppsChangedListener$Stub;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 155
    nop

    .line 260
    .end local v2    # "_arg0":Landroid/os/UserHandle;
    .end local v3    # "_arg1":Ljava/lang/String;
    :goto_f8
    return v1

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_d2
        :pswitch_bf
        :pswitch_a8
        :pswitch_91
        :pswitch_76
        :pswitch_62
        :pswitch_46
        :pswitch_2e
        :pswitch_1e
    .end packed-switch
.end method
