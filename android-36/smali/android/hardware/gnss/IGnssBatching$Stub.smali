.class public abstract Landroid/hardware/gnss/IGnssBatching$Stub;
.super Landroid/os/Binder;
.source "IGnssBatching.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssBatching;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssBatching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssBatching$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cleanup:I = 0x6

.field static final blacklist TRANSACTION_flush:I = 0x4

.field static final blacklist TRANSACTION_getBatchSize:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_init:I = 0x1

.field static final blacklist TRANSACTION_start:I = 0x3

.field static final blacklist TRANSACTION_stop:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->markVintfStability()V

    .line 64
    sget-object v0, Landroid/hardware/gnss/IGnssBatching$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssBatching$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssBatching;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 72
    if-nez p0, :cond_4

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssBatching$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 76
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/gnss/IGnssBatching;

    if-eqz v1, :cond_14

    .line 77
    move-object v1, v0

    check-cast v1, Landroid/hardware/gnss/IGnssBatching;

    return-object v1

    .line 79
    :cond_14
    new-instance v1, Landroid/hardware/gnss/IGnssBatching$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/gnss/IGnssBatching$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 88
    sparse-switch p0, :sswitch_data_1e

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 116
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 120
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 112
    :sswitch_b
    const-string v0, "cleanup"

    return-object v0

    .line 108
    :sswitch_e
    const-string v0, "stop"

    return-object v0

    .line 104
    :sswitch_11
    const-string v0, "flush"

    return-object v0

    .line 100
    :sswitch_14
    const-string v0, "start"

    return-object v0

    .line 96
    :sswitch_17
    const-string v0, "getBatchSize"

    return-object v0

    .line 92
    :sswitch_1a
    const-string v0, "init"

    return-object v0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_17
        0x3 -> :sswitch_14
        0x4 -> :sswitch_11
        0x5 -> :sswitch_e
        0x6 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 83
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 375
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 131
    invoke-static {p1}, Landroid/hardware/gnss/IGnssBatching$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 135
    sget-object v0, Landroid/hardware/gnss/IGnssBatching$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 136
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 137
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v2

    .line 143
    :cond_16
    if-ne p1, v1, :cond_23

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return v2

    .line 148
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v2

    .line 153
    :cond_33
    packed-switch p1, :pswitch_data_80

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 194
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->cleanup()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_7f

    .line 188
    :pswitch_42
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->stop()V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    goto :goto_7f

    .line 182
    :pswitch_49
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->flush()V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto :goto_7f

    .line 174
    :pswitch_50
    sget-object v1, Landroid/hardware/gnss/IGnssBatching$Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/gnss/IGnssBatching$Options;

    .line 175
    .local v1, "_arg0":Landroid/hardware/gnss/IGnssBatching$Options;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssBatching$Stub;->start(Landroid/hardware/gnss/IGnssBatching$Options;)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    goto :goto_7f

    .line 166
    .end local v1    # "_arg0":Landroid/hardware/gnss/IGnssBatching$Options;
    :pswitch_62
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssBatching$Stub;->getBatchSize()I

    move-result v1

    .line 167
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    goto :goto_7f

    .line 158
    .end local v1    # "_result":I
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/IGnssBatchingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssBatchingCallback;

    move-result-object v1

    .line 159
    .local v1, "_arg0":Landroid/hardware/gnss/IGnssBatchingCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssBatching$Stub;->init(Landroid/hardware/gnss/IGnssBatchingCallback;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    nop

    .line 203
    .end local v1    # "_arg0":Landroid/hardware/gnss/IGnssBatchingCallback;
    :goto_7f
    return v2

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_62
        :pswitch_50
        :pswitch_49
        :pswitch_42
        :pswitch_3b
    .end packed-switch
.end method
