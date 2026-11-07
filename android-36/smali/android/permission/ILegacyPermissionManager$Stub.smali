.class public abstract Landroid/permission/ILegacyPermissionManager$Stub;
.super Landroid/os/Binder;
.source "ILegacyPermissionManager.java"

# interfaces
.implements Landroid/permission/ILegacyPermissionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/ILegacyPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/permission/ILegacyPermissionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkDeviceIdentifierAccess:I = 0x1

.field static final blacklist TRANSACTION_checkPhoneNumberAccess:I = 0x2

.field static final blacklist TRANSACTION_grantDefaultPermissionsToActiveLuiApp:I = 0x7

.field static final blacklist TRANSACTION_grantDefaultPermissionsToCarrierServiceApp:I = 0x9

.field static final blacklist TRANSACTION_grantDefaultPermissionsToEnabledCarrierApps:I = 0x3

.field static final blacklist TRANSACTION_grantDefaultPermissionsToEnabledImsServices:I = 0x4

.field static final blacklist TRANSACTION_grantDefaultPermissionsToEnabledTelephonyDataServices:I = 0x5

.field static final blacklist TRANSACTION_revokeDefaultPermissionsFromDisabledTelephonyDataServices:I = 0x6

.field static final blacklist TRANSACTION_revokeDefaultPermissionsFromLuiApps:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    const-string v0, "android.permission.ILegacyPermissionManager"

    invoke-virtual {p0, p0, v0}, Landroid/permission/ILegacyPermissionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/permission/ILegacyPermissionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    const-string v0, "android.permission.ILegacyPermissionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/permission/ILegacyPermissionManager;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/permission/ILegacyPermissionManager;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/permission/ILegacyPermissionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/permission/ILegacyPermissionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 86
    packed-switch p0, :pswitch_data_28

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_5
    const-string/jumbo v0, "grantDefaultPermissionsToCarrierServiceApp"

    return-object v0

    .line 118
    :pswitch_9
    const-string/jumbo v0, "revokeDefaultPermissionsFromLuiApps"

    return-object v0

    .line 114
    :pswitch_d
    const-string/jumbo v0, "grantDefaultPermissionsToActiveLuiApp"

    return-object v0

    .line 110
    :pswitch_11
    const-string/jumbo v0, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    return-object v0

    .line 106
    :pswitch_15
    const-string/jumbo v0, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    return-object v0

    .line 102
    :pswitch_19
    const-string/jumbo v0, "grantDefaultPermissionsToEnabledImsServices"

    return-object v0

    .line 98
    :pswitch_1d
    const-string/jumbo v0, "grantDefaultPermissionsToEnabledCarrierApps"

    return-object v0

    .line 94
    :pswitch_21
    const-string v0, "checkPhoneNumberAccess"

    return-object v0

    .line 90
    :pswitch_24
    const-string v0, "checkDeviceIdentifierAccess"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
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

    .line 81
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 451
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/permission/ILegacyPermissionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 137
    const-string v6, "android.permission.ILegacyPermissionManager"

    .line 138
    .local v6, "descriptor":Ljava/lang/String;
    const/4 v7, 0x1

    if-lt p1, v7, :cond_d

    const v1, 0xffffff

    if-gt p1, v1, :cond_d

    .line 139
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    const v1, 0x5f4e5446

    if-ne p1, v1, :cond_16

    .line 142
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v7

    .line 145
    :cond_16
    packed-switch p1, :pswitch_data_e8

    .line 262
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 252
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 255
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v1, v2}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    goto/16 :goto_e6

    .line 241
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 244
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v1, v2}, Landroid/permission/ILegacyPermissionManager$Stub;->revokeDefaultPermissionsFromLuiApps([Ljava/lang/String;I)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto/16 :goto_e6

    .line 230
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v1, v2}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToActiveLuiApp(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    goto/16 :goto_e6

    .line 219
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v1, v2}, Landroid/permission/ILegacyPermissionManager$Stub;->revokeDefaultPermissionsFromDisabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_e6

    .line 208
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 210
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 211
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v1, v2}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToEnabledTelephonyDataServices([Ljava/lang/String;I)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_e6

    .line 197
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 199
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v1, v2}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToEnabledImsServices([Ljava/lang/String;I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    goto :goto_e6

    .line 186
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1    # "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v1, v2}, Landroid/permission/ILegacyPermissionManager$Stub;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_e6

    .line 168
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 176
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 177
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/permission/ILegacyPermissionManager$Stub;->checkPhoneNumberAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 179
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    goto :goto_e6

    .line 150
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v8    # "_result":I
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 158
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 159
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/permission/ILegacyPermissionManager$Stub;->checkDeviceIdentifierAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    .line 161
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    nop

    .line 265
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v8    # "_result":I
    :goto_e6
    return v7

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_a0
        :pswitch_8e
        :pswitch_7c
        :pswitch_6a
        :pswitch_57
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
