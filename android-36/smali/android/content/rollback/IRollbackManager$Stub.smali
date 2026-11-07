.class public abstract Landroid/content/rollback/IRollbackManager$Stub;
.super Landroid/os/Binder;
.source "IRollbackManager.java"

# interfaces
.implements Landroid/content/rollback/IRollbackManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/rollback/IRollbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/rollback/IRollbackManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_blockRollbackManager:I = 0x8

.field static final blacklist TRANSACTION_commitRollback:I = 0x3

.field static final blacklist TRANSACTION_expireRollbackForPackage:I = 0x6

.field static final blacklist TRANSACTION_getAvailableRollbacks:I = 0x1

.field static final blacklist TRANSACTION_getRecentlyCommittedRollbacks:I = 0x2

.field static final blacklist TRANSACTION_notifyStagedSession:I = 0x7

.field static final blacklist TRANSACTION_reloadPersistedData:I = 0x5

.field static final blacklist TRANSACTION_snapshotAndRestoreUserData:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    const-string v0, "android.content.rollback.IRollbackManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/rollback/IRollbackManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 75
    if-nez p0, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    const-string v0, "android.content.rollback.IRollbackManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/rollback/IRollbackManager;

    if-eqz v1, :cond_14

    .line 80
    move-object v1, v0

    check-cast v1, Landroid/content/rollback/IRollbackManager;

    return-object v1

    .line 82
    :cond_14
    new-instance v1, Landroid/content/rollback/IRollbackManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/rollback/IRollbackManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 91
    packed-switch p0, :pswitch_data_20

    .line 127
    const/4 v0, 0x0

    return-object v0

    .line 123
    :pswitch_5
    const-string v0, "blockRollbackManager"

    return-object v0

    .line 119
    :pswitch_8
    const-string/jumbo v0, "notifyStagedSession"

    return-object v0

    .line 115
    :pswitch_c
    const-string v0, "expireRollbackForPackage"

    return-object v0

    .line 111
    :pswitch_f
    const-string/jumbo v0, "reloadPersistedData"

    return-object v0

    .line 107
    :pswitch_13
    const-string/jumbo v0, "snapshotAndRestoreUserData"

    return-object v0

    .line 103
    :pswitch_17
    const-string v0, "commitRollback"

    return-object v0

    .line 99
    :pswitch_1a
    const-string v0, "getRecentlyCommittedRollbacks"

    return-object v0

    .line 95
    :pswitch_1d
    const-string v0, "getAvailableRollbacks"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 86
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 410
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 134
    invoke-static {p1}, Landroid/content/rollback/IRollbackManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 138
    const-string v0, "android.content.rollback.IRollbackManager"

    .line 139
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 143
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v1

    .line 146
    :cond_16
    packed-switch p1, :pswitch_data_ba

    .line 232
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 224
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 225
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {p0, v2, v3}, Landroid/content/rollback/IRollbackManager$Stub;->blockRollbackManager(J)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object v3, p0

    goto/16 :goto_b8

    .line 214
    .end local v2    # "_arg0":J
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2}, Landroid/content/rollback/IRollbackManager$Stub;->notifyStagedSession(I)I

    move-result v3

    .line 217
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    move-object v3, p0

    goto/16 :goto_b8

    .line 205
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2}, Landroid/content/rollback/IRollbackManager$Stub;->expireRollbackForPackage(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    move-object v3, p0

    goto :goto_b8

    .line 198
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_52
    invoke-virtual {p0}, Landroid/content/rollback/IRollbackManager$Stub;->reloadPersistedData()V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object v3, p0

    goto :goto_b8

    .line 180
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 184
    .local v5, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 186
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 188
    .local v7, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 190
    .local v9, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 191
    .local v10, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Landroid/content/rollback/IRollbackManager$Stub;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    goto :goto_b8

    .line 165
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":[I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":J
    .end local v9    # "_arg4":Ljava/lang/String;
    .end local v10    # "_arg5":I
    :pswitch_7d
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .local v2, "_arg0":I
    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ParceledListSlice;

    .line 169
    .local v4, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "_arg2":Ljava/lang/String;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentSender;

    .line 172
    .local v6, "_arg3":Landroid/content/IntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v4, v5, v6}, Landroid/content/rollback/IRollbackManager$Stub;->commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_b8

    .line 157
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Landroid/content/pm/ParceledListSlice;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Landroid/content/IntentSender;
    :pswitch_a0
    move-object v3, p0

    invoke-virtual {p0}, Landroid/content/rollback/IRollbackManager$Stub;->getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 158
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 160
    goto :goto_b8

    .line 150
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_ac
    move-object v3, p0

    invoke-virtual {p0}, Landroid/content/rollback/IRollbackManager$Stub;->getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 151
    .restart local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 153
    nop

    .line 235
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :goto_b8
    return v1

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_a0
        :pswitch_7d
        :pswitch_5a
        :pswitch_52
        :pswitch_43
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
