.class public abstract Landroid/app/IUriGrantsManager$Stub;
.super Landroid/os/Binder;
.source "IUriGrantsManager.java"

# interfaces
.implements Landroid/app/IUriGrantsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IUriGrantsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUriGrantsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkGrantUriPermission_ignoreNonSystem:I = 0x7

.field static final blacklist TRANSACTION_clearGrantedUriPermissions:I = 0x5

.field static final blacklist TRANSACTION_getGrantedUriPermissions:I = 0x4

.field static final blacklist TRANSACTION_getUriPermissions:I = 0x6

.field static final blacklist TRANSACTION_grantUriPermissionFromOwner:I = 0x3

.field static final blacklist TRANSACTION_releasePersistableUriPermission:I = 0x2

.field static final blacklist TRANSACTION_takePersistableUriPermission:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.app.IUriGrantsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IUriGrantsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IUriGrantsManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "android.app.IUriGrantsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IUriGrantsManager;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/app/IUriGrantsManager;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Landroid/app/IUriGrantsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IUriGrantsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_1e

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 113
    :pswitch_5
    const-string v0, "checkGrantUriPermission_ignoreNonSystem"

    return-object v0

    .line 109
    :pswitch_8
    const-string/jumbo v0, "getUriPermissions"

    return-object v0

    .line 105
    :pswitch_c
    const-string v0, "clearGrantedUriPermissions"

    return-object v0

    .line 101
    :pswitch_f
    const-string v0, "getGrantedUriPermissions"

    return-object v0

    .line 97
    :pswitch_12
    const-string/jumbo v0, "grantUriPermissionFromOwner"

    return-object v0

    .line 93
    :pswitch_16
    const-string/jumbo v0, "releasePersistableUriPermission"

    return-object v0

    .line 89
    :pswitch_1a
    const-string/jumbo v0, "takePersistableUriPermission"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 417
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 124
    invoke-static {p1}, Landroid/app/IUriGrantsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    move-object v8, p3

    const-string v9, "android.app.IUriGrantsManager"

    .line 129
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt p1, v10, :cond_e

    const v0, 0xffffff

    if-gt p1, v0, :cond_e

    .line 130
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_e
    const v0, 0x5f4e5446

    if-ne p1, v0, :cond_17

    .line 133
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v10

    .line 136
    :cond_17
    packed-switch p1, :pswitch_data_f4

    .line 246
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 229
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 231
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 235
    .local v3, "_arg2":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 237
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 238
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IUriGrantsManager$Stub;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v6

    .line 240
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    goto/16 :goto_f3

    .line 215
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Landroid/net/Uri;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 219
    .local v2, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 220
    .local v3, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/IUriGrantsManager$Stub;->getUriPermissions(Ljava/lang/String;ZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 222
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v4, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 224
    goto/16 :goto_f3

    .line 204
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Z
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 207
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v1, v2}, Landroid/app/IUriGrantsManager$Stub;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    goto/16 :goto_f3

    .line 192
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v1, v2}, Landroid/app/IUriGrantsManager$Stub;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 197
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 199
    goto :goto_f3

    .line 171
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 173
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "_arg2":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 179
    .local v4, "_arg3":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 181
    .restart local v5    # "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 183
    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 184
    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IUriGrantsManager$Stub;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_f3

    .line 156
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/net/Uri;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    :pswitch_b7
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 158
    .local v1, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 160
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 163
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 164
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IUriGrantsManager$Stub;->releasePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_f3

    .line 141
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :pswitch_d5
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 143
    .restart local v1    # "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 147
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IUriGrantsManager$Stub;->takePersistableUriPermission(Landroid/net/Uri;ILjava/lang/String;I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    nop

    .line 249
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :goto_f3
    return v10

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_b7
        :pswitch_8c
        :pswitch_76
        :pswitch_63
        :pswitch_48
        :pswitch_1f
    .end packed-switch
.end method
