.class public abstract Lcom/android/internal/os/IDropBoxManagerService$Stub;
.super Landroid/os/Binder;
.source "IDropBoxManagerService.java"

# interfaces
.implements Lcom/android/internal/os/IDropBoxManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IDropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.os.IDropBoxManagerService"

.field static final blacklist TRANSACTION_addData:I = 0x1

.field static final blacklist TRANSACTION_addFile:I = 0x2

.field static final greylist-max-o TRANSACTION_getNextEntry:I = 0x4

.field static final blacklist TRANSACTION_getNextEntryWithAttribution:I = 0x5

.field static final greylist-max-o TRANSACTION_isTagEnabled:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IDropBoxManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "com.android.internal.os.IDropBoxManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/os/IDropBoxManagerService;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/android/internal/os/IDropBoxManagerService;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_14

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 98
    :pswitch_5
    const-string v0, "getNextEntryWithAttribution"

    return-object v0

    .line 94
    :pswitch_8
    const-string v0, "getNextEntry"

    return-object v0

    .line 90
    :pswitch_b
    const-string v0, "isTagEnabled"

    return-object v0

    .line 86
    :pswitch_e
    const-string v0, "addFile"

    return-object v0

    .line 82
    :pswitch_11
    const-string v0, "addData"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
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

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 317
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    const-string v0, "com.android.internal.os.IDropBoxManagerService"

    .line 114
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_16
    packed-switch p1, :pswitch_data_a0

    .line 191
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 176
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 180
    .local v5, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;

    move-result-object v2

    .line 185
    .local v2, "_result":Landroid/os/DropBoxManager$Entry;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    goto :goto_9e

    .line 162
    .end local v2    # "_result":Landroid/os/DropBoxManager$Entry;
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1":J
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/lang/String;
    :pswitch_3e
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 166
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->getNextEntry(Ljava/lang/String;JLjava/lang/String;)Landroid/os/DropBoxManager$Entry;

    move-result-object v7

    .line 169
    .local v7, "_result":Landroid/os/DropBoxManager$Entry;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 171
    goto :goto_9e

    .line 152
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_result":Landroid/os/DropBoxManager$Entry;
    :pswitch_59
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->isTagEnabled(Ljava/lang/String;)Z

    move-result v4

    .line 155
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    goto :goto_9e

    .line 139
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_6c
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 143
    .local v4, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 144
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    goto :goto_9e

    .line 126
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "_arg2":I
    :pswitch_87
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 130
    .local v4, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 131
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/os/IDropBoxManagerService$Stub;->addData(Ljava/lang/String;[BI)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    nop

    .line 194
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":[B
    .end local v5    # "_arg2":I
    :goto_9e
    return v1

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_87
        :pswitch_6c
        :pswitch_59
        :pswitch_3e
        :pswitch_1f
    .end packed-switch
.end method
