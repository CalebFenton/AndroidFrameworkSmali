.class public abstract Landroid/app/role/IRoleController$Stub;
.super Landroid/os/Binder;
.source "IRoleController.java"

# interfaces
.implements Landroid/app/role/IRoleController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/role/IRoleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/role/IRoleController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getLegacyFallbackDisabledRoles:I = 0x8

.field static final blacklist TRANSACTION_grantDefaultRoles:I = 0x1

.field static final blacklist TRANSACTION_isApplicationQualifiedForRole:I = 0x5

.field static final blacklist TRANSACTION_isApplicationVisibleForRole:I = 0x6

.field static final blacklist TRANSACTION_isRoleVisible:I = 0x7

.field static final blacklist TRANSACTION_onAddRoleHolder:I = 0x2

.field static final blacklist TRANSACTION_onClearRoleHolders:I = 0x4

.field static final blacklist TRANSACTION_onRemoveRoleHolder:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.app.role.IRoleController"

    invoke-virtual {p0, p0, v0}, Landroid/app/role/IRoleController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.app.role.IRoleController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/role/IRoleController;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/app/role/IRoleController;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/app/role/IRoleController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/role/IRoleController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_1e

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 108
    :pswitch_5
    const-string v0, "getLegacyFallbackDisabledRoles"

    return-object v0

    .line 104
    :pswitch_8
    const-string v0, "isRoleVisible"

    return-object v0

    .line 100
    :pswitch_b
    const-string v0, "isApplicationVisibleForRole"

    return-object v0

    .line 96
    :pswitch_e
    const-string v0, "isApplicationQualifiedForRole"

    return-object v0

    .line 92
    :pswitch_11
    const-string v0, "onClearRoleHolders"

    return-object v0

    .line 88
    :pswitch_14
    const-string v0, "onRemoveRoleHolder"

    return-object v0

    .line 84
    :pswitch_17
    const-string v0, "onAddRoleHolder"

    return-object v0

    .line 80
    :pswitch_1a
    const-string v0, "grantDefaultRoles"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 358
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 119
    invoke-static {p1}, Landroid/app/role/IRoleController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 123
    const-string v0, "android.app.role.IRoleController"

    .line 124
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 125
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v1

    .line 131
    :cond_16
    packed-switch p1, :pswitch_data_b6

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 211
    :pswitch_1e
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 212
    .local v2, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2}, Landroid/app/role/IRoleController$Stub;->getLegacyFallbackDisabledRoles(Landroid/os/RemoteCallback;)V

    .line 213
    goto/16 :goto_b4

    .line 202
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 205
    .local v3, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2, v3}, Landroid/app/role/IRoleController$Stub;->isRoleVisible(Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 206
    goto/16 :goto_b4

    .line 191
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 196
    .local v4, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/role/IRoleController$Stub;->isApplicationVisibleForRole(Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 197
    goto :goto_b4

    .line 180
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 182
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .restart local v3    # "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 185
    .restart local v4    # "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/role/IRoleController$Stub;->isApplicationQualifiedForRole(Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 186
    goto :goto_b4

    .line 169
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 174
    .restart local v4    # "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/role/IRoleController$Stub;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 175
    goto :goto_b4

    .line 156
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 162
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 163
    .local v5, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/role/IRoleController$Stub;->onRemoveRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 164
    goto :goto_b4

    .line 143
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 149
    .restart local v4    # "_arg2":I
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/RemoteCallback;

    .line 150
    .restart local v5    # "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/role/IRoleController$Stub;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 151
    goto :goto_b4

    .line 136
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_a8
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 137
    .local v2, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p0, v2}, Landroid/app/role/IRoleController$Stub;->grantDefaultRoles(Landroid/os/RemoteCallback;)V

    .line 138
    nop

    .line 220
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :goto_b4
    return v1

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_90
        :pswitch_78
        :pswitch_64
        :pswitch_50
        :pswitch_3c
        :pswitch_2b
        :pswitch_1e
    .end packed-switch
.end method
