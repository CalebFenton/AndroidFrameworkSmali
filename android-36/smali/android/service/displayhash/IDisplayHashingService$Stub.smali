.class public abstract Landroid/service/displayhash/IDisplayHashingService$Stub;
.super Landroid/os/Binder;
.source "IDisplayHashingService.java"

# interfaces
.implements Landroid/service/displayhash/IDisplayHashingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/displayhash/IDisplayHashingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/displayhash/IDisplayHashingService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_generateDisplayHash:I = 0x1

.field static final blacklist TRANSACTION_getDisplayHashAlgorithms:I = 0x3

.field static final blacklist TRANSACTION_getIntervalBetweenRequestsMillis:I = 0x4

.field static final blacklist TRANSACTION_verifyDisplayHash:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "android.service.displayhash.IDisplayHashingService"

    invoke-virtual {p0, p0, v0}, Landroid/service/displayhash/IDisplayHashingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/displayhash/IDisplayHashingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_4
    const-string v0, "android.service.displayhash.IDisplayHashingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/displayhash/IDisplayHashingService;

    if-eqz v1, :cond_14

    .line 89
    move-object v1, v0

    check-cast v1, Landroid/service/displayhash/IDisplayHashingService;

    return-object v1

    .line 91
    :cond_14
    new-instance v1, Landroid/service/displayhash/IDisplayHashingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/displayhash/IDisplayHashingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 100
    packed-switch p0, :pswitch_data_12

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 116
    :pswitch_5
    const-string v0, "getIntervalBetweenRequestsMillis"

    return-object v0

    .line 112
    :pswitch_8
    const-string v0, "getDisplayHashAlgorithms"

    return-object v0

    .line 108
    :pswitch_b
    const-string/jumbo v0, "verifyDisplayHash"

    return-object v0

    .line 104
    :pswitch_f
    const-string v0, "generateDisplayHash"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
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

    .line 301
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 127
    invoke-static {p1}, Landroid/service/displayhash/IDisplayHashingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 131
    const-string v0, "android.service.displayhash.IDisplayHashingService"

    .line 132
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 133
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v1

    .line 139
    :cond_16
    packed-switch p1, :pswitch_data_84

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 180
    :pswitch_1e
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 181
    .local v2, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/service/displayhash/IDisplayHashingService$Stub;->getIntervalBetweenRequestsMillis(Landroid/os/RemoteCallback;)V

    .line 183
    goto :goto_82

    .line 172
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_2d
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 173
    .restart local v2    # "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/service/displayhash/IDisplayHashingService$Stub;->getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V

    .line 175
    goto :goto_82

    .line 160
    .end local v2    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 162
    .local v2, "_arg0":[B
    sget-object v3, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/displayhash/DisplayHash;

    .line 164
    .local v3, "_arg1":Landroid/view/displayhash/DisplayHash;
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 165
    .local v4, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2, v3, v4}, Landroid/service/displayhash/IDisplayHashingService$Stub;->verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V

    .line 167
    goto :goto_82

    .line 144
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":Landroid/view/displayhash/DisplayHash;
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 146
    .local v6, "_arg0":[B
    sget-object v2, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/hardware/HardwareBuffer;

    .line 148
    .local v7, "_arg1":Landroid/hardware/HardwareBuffer;
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/graphics/Rect;

    .line 150
    .local v8, "_arg2":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "_arg3":Ljava/lang/String;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/os/RemoteCallback;

    .line 153
    .local v10, "_arg4":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/service/displayhash/IDisplayHashingService$Stub;->generateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    .line 155
    nop

    .line 190
    .end local v6    # "_arg0":[B
    .end local v7    # "_arg1":Landroid/hardware/HardwareBuffer;
    .end local v8    # "_arg2":Landroid/graphics/Rect;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Landroid/os/RemoteCallback;
    :goto_82
    return v1

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_57
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
