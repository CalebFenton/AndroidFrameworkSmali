.class public abstract Landroid/system/virtualizationservice/IVirtualMachine$Stub;
.super Landroid/os/Binder;
.source "IVirtualMachine.java"

# interfaces
.implements Landroid/system/virtualizationservice/IVirtualMachine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/IVirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualizationservice/IVirtualMachine$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_connectVsock:I = 0x9

.field static final blacklist TRANSACTION_createAccessorBinder:I = 0xa

.field static final blacklist TRANSACTION_getCid:I = 0x1

.field static final blacklist TRANSACTION_getMemoryBalloon:I = 0x7

.field static final blacklist TRANSACTION_getState:I = 0x2

.field static final blacklist TRANSACTION_isMemoryBalloonEnabled:I = 0x6

.field static final blacklist TRANSACTION_registerCallback:I = 0x3

.field static final blacklist TRANSACTION_resume:I = 0xd

.field static final blacklist TRANSACTION_setHostConsoleName:I = 0xb

.field static final blacklist TRANSACTION_setMemoryBalloon:I = 0x8

.field static final blacklist TRANSACTION_start:I = 0x4

.field static final blacklist TRANSACTION_stop:I = 0x5

.field static final blacklist TRANSACTION_suspend:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "android.system.virtualizationservice.IVirtualMachine"

    invoke-virtual {p0, p0, v0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/system/virtualizationservice/IVirtualMachine;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 108
    if-nez p0, :cond_4

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_4
    const-string v0, "android.system.virtualizationservice.IVirtualMachine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/system/virtualizationservice/IVirtualMachine;

    if-eqz v1, :cond_14

    .line 113
    move-object v1, v0

    check-cast v1, Landroid/system/virtualizationservice/IVirtualMachine;

    return-object v1

    .line 115
    :cond_14
    new-instance v1, Landroid/system/virtualizationservice/IVirtualMachine$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 119
    return-object p0
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

    .line 123
    const-string v0, "android.system.virtualizationservice.IVirtualMachine"

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
    packed-switch p1, :pswitch_data_c0

    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 230
    :pswitch_1e
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->resume()V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    goto/16 :goto_bf

    .line 224
    :pswitch_26
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->suspend()V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    goto/16 :goto_bf

    .line 216
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->setHostConsoleName(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    goto/16 :goto_bf

    .line 204
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 206
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 207
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->createAccessorBinder(Ljava/lang/String;I)Landroid/os/IBinder;

    move-result-object v4

    .line 209
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 211
    goto :goto_bf

    .line 194
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/os/IBinder;
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {p0, v2}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->connectVsock(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 197
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 199
    goto :goto_bf

    .line 185
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 186
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->setMemoryBalloon(J)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_bf

    .line 177
    .end local v2    # "_arg0":J
    :pswitch_73
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->getMemoryBalloon()J

    move-result-wide v2

    .line 178
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    goto :goto_bf

    .line 170
    .end local v2    # "_result":J
    :pswitch_7e
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->isMemoryBalloonEnabled()Z

    move-result v2

    .line 171
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 173
    goto :goto_bf

    .line 164
    .end local v2    # "_result":Z
    :pswitch_89
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->stop()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    goto :goto_bf

    .line 158
    :pswitch_90
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->start()V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    goto :goto_bf

    .line 150
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/virtualizationservice/IVirtualMachineCallback;

    move-result-object v2

    .line 151
    .local v2, "_arg0":Landroid/system/virtualizationservice/IVirtualMachineCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v2}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->registerCallback(Landroid/system/virtualizationservice/IVirtualMachineCallback;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    goto :goto_bf

    .line 142
    .end local v2    # "_arg0":Landroid/system/virtualizationservice/IVirtualMachineCallback;
    :pswitch_a9
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->getState()I

    move-result v2

    .line 143
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    goto :goto_bf

    .line 135
    .end local v2    # "_result":I
    :pswitch_b4
    invoke-virtual {p0}, Landroid/system/virtualizationservice/IVirtualMachine$Stub;->getCid()I

    move-result v2

    .line 136
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    nop

    .line 239
    .end local v2    # "_result":I
    :goto_bf
    return v1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_a9
        :pswitch_97
        :pswitch_90
        :pswitch_89
        :pswitch_7e
        :pswitch_73
        :pswitch_65
        :pswitch_53
        :pswitch_3d
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
