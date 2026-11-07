.class public abstract Landroid/os/IDumpstate$Stub;
.super Landroid/os/Binder;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDumpstate$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelBugreport:I = 0x3

.field static final blacklist TRANSACTION_preDumpUiData:I = 0x1

.field static final blacklist TRANSACTION_retrieveBugreport:I = 0x4

.field static final blacklist TRANSACTION_startBugreport:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 99
    const-string v0, "android.os.IDumpstate"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDumpstate$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 107
    if-nez p0, :cond_4

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_4
    const-string v0, "android.os.IDumpstate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 111
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IDumpstate;

    if-eqz v1, :cond_14

    .line 112
    move-object v1, v0

    check-cast v1, Landroid/os/IDumpstate;

    return-object v1

    .line 114
    :cond_14
    new-instance v1, Landroid/os/IDumpstate$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDumpstate$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 123
    packed-switch p0, :pswitch_data_14

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 139
    :pswitch_5
    const-string/jumbo v0, "retrieveBugreport"

    return-object v0

    .line 135
    :pswitch_9
    const-string v0, "cancelBugreport"

    return-object v0

    .line 131
    :pswitch_c
    const-string/jumbo v0, "startBugreport"

    return-object v0

    .line 127
    :pswitch_10
    const-string/jumbo v0, "preDumpUiData"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 118
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 394
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 150
    invoke-static {p1}, Landroid/os/IDumpstate$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    move/from16 v10, p1

    const-string v11, "android.os.IDumpstate"

    .line 155
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v10, v12, :cond_12

    const v0, 0xffffff

    if-gt v10, v0, :cond_12

    .line 156
    move-object/from16 v13, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 155
    :cond_12
    move-object/from16 v13, p2

    .line 158
    :goto_14
    const v0, 0x5f4e5446

    if-ne v10, v0, :cond_1f

    .line 159
    move-object/from16 v14, p3

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v12

    .line 162
    :cond_1f
    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_ac

    .line 234
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 212
    :pswitch_29
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 218
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 220
    .local v4, "_arg3":Ljava/io/FileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 224
    .local v6, "_arg5":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 226
    .local v7, "_arg6":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v8

    .line 227
    .local v8, "_arg7":Landroid/os/IDumpstateListener;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/os/IDumpstate$Stub;->retrieveBugreport(ILjava/lang/String;ILjava/io/FileDescriptor;Ljava/lang/String;ZZLandroid/os/IDumpstateListener;)V

    .line 229
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    goto :goto_ab

    .line 201
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Ljava/io/FileDescriptor;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Landroid/os/IDumpstateListener;
    :pswitch_58
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {p0, v1, v2}, Landroid/os/IDumpstate$Stub;->cancelBugreport(ILjava/lang/String;)V

    .line 206
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_ab

    .line 176
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    :pswitch_6a
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 182
    .local v3, "_arg2":Ljava/io/FileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 184
    .restart local v4    # "_arg3":Ljava/io/FileDescriptor;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 186
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 188
    .local v6, "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/os/IDumpstateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateListener;

    move-result-object v7

    .line 190
    .local v7, "_arg6":Landroid/os/IDumpstateListener;
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 192
    .local v8, "_arg7":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 193
    .local v9, "_arg8":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/os/IDumpstate$Stub;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;IILandroid/os/IDumpstateListener;ZZ)V

    .line 195
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_ab

    .line 167
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/io/FileDescriptor;
    .end local v4    # "_arg3":Ljava/io/FileDescriptor;
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Landroid/os/IDumpstateListener;
    .end local v8    # "_arg7":Z
    .end local v9    # "_arg8":Z
    :pswitch_9d
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v1}, Landroid/os/IDumpstate$Stub;->preDumpUiData(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v14}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    nop

    .line 237
    .end local v1    # "_arg0":Ljava/lang/String;
    :goto_ab
    return v12

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_9d
        :pswitch_6a
        :pswitch_58
        :pswitch_29
    .end packed-switch
.end method
