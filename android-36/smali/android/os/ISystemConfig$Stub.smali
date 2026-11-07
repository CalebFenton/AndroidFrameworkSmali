.class public abstract Landroid/os/ISystemConfig$Stub;
.super Landroid/os/Binder;
.source "ISystemConfig.java"

# interfaces
.implements Landroid/os/ISystemConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ISystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ISystemConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getDefaultVrComponents:I = 0x6

.field static final blacklist TRANSACTION_getDisabledUntilUsedPreinstalledCarrierApps:I = 0x1

.field static final blacklist TRANSACTION_getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries:I = 0x3

.field static final blacklist TRANSACTION_getDisabledUntilUsedPreinstalledCarrierAssociatedApps:I = 0x2

.field static final blacklist TRANSACTION_getEnabledComponentOverrides:I = 0x5

.field static final blacklist TRANSACTION_getEnhancedConfirmationTrustedInstallers:I = 0x9

.field static final blacklist TRANSACTION_getEnhancedConfirmationTrustedPackages:I = 0x8

.field static final blacklist TRANSACTION_getPreventUserDisablePackages:I = 0x7

.field static final blacklist TRANSACTION_getSystemPermissionUids:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "android.os.ISystemConfig"

    invoke-virtual {p0, p0, v0}, Landroid/os/ISystemConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/ISystemConfig;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_4
    const-string v0, "android.os.ISystemConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/ISystemConfig;

    if-eqz v1, :cond_14

    .line 89
    move-object v1, v0

    check-cast v1, Landroid/os/ISystemConfig;

    return-object v1

    .line 91
    :cond_14
    new-instance v1, Landroid/os/ISystemConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ISystemConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 100
    packed-switch p0, :pswitch_data_22

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 136
    :pswitch_5
    const-string v0, "getEnhancedConfirmationTrustedInstallers"

    return-object v0

    .line 132
    :pswitch_8
    const-string v0, "getEnhancedConfirmationTrustedPackages"

    return-object v0

    .line 128
    :pswitch_b
    const-string v0, "getPreventUserDisablePackages"

    return-object v0

    .line 124
    :pswitch_e
    const-string v0, "getDefaultVrComponents"

    return-object v0

    .line 120
    :pswitch_11
    const-string v0, "getEnabledComponentOverrides"

    return-object v0

    .line 116
    :pswitch_14
    const-string/jumbo v0, "getSystemPermissionUids"

    return-object v0

    .line 112
    :pswitch_18
    const-string v0, "getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries"

    return-object v0

    .line 108
    :pswitch_1b
    const-string v0, "getDisabledUntilUsedPreinstalledCarrierAssociatedApps"

    return-object v0

    .line 104
    :pswitch_1e
    const-string v0, "getDisabledUntilUsedPreinstalledCarrierApps"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
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

    .line 95
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 431
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 147
    invoke-static {p1}, Landroid/os/ISystemConfig$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    const-string v0, "android.os.ISystemConfig"

    .line 152
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 153
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 156
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    return v1

    .line 159
    :cond_16
    packed-switch p1, :pswitch_data_90

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 225
    :pswitch_1e
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getEnhancedConfirmationTrustedInstallers()Ljava/util/List;

    move-result-object v2

    .line 226
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SignedPackageParcel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 228
    goto :goto_8f

    .line 218
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SignedPackageParcel;>;"
    :pswitch_29
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getEnhancedConfirmationTrustedPackages()Ljava/util/List;

    move-result-object v2

    .line 219
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SignedPackageParcel;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 221
    goto :goto_8f

    .line 211
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SignedPackageParcel;>;"
    :pswitch_34
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getPreventUserDisablePackages()Ljava/util/List;

    move-result-object v2

    .line 212
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 214
    goto :goto_8f

    .line 204
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3f
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDefaultVrComponents()Ljava/util/List;

    move-result-object v2

    .line 205
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 207
    goto :goto_8f

    .line 195
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/os/ISystemConfig$Stub;->getEnabledComponentOverrides(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 198
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 200
    goto :goto_8f

    .line 185
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2}, Landroid/os/ISystemConfig$Stub;->getSystemPermissionUids(Ljava/lang/String;)[I

    move-result-object v3

    .line 188
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 190
    goto :goto_8f

    .line 177
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":[I
    :pswitch_6e
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;

    move-result-object v2

    .line 178
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 180
    goto :goto_8f

    .line 170
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_79
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;

    move-result-object v2

    .line 171
    .restart local v2    # "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 173
    goto :goto_8f

    .line 163
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_84
    invoke-virtual {p0}, Landroid/os/ISystemConfig$Stub;->getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/List;

    move-result-object v2

    .line 164
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 166
    nop

    .line 235
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_8f
    return v1

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_84
        :pswitch_79
        :pswitch_6e
        :pswitch_5c
        :pswitch_4a
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
