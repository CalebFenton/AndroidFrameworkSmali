.class public abstract Landroid/hardware/cas/IDescrambler$Stub;
.super Landroid/os/Binder;
.source "IDescrambler.java"

# interfaces
.implements Landroid/hardware/cas/IDescrambler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/IDescrambler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/cas/IDescrambler$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_descramble:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_release:I = 0x2

.field static final blacklist TRANSACTION_requiresSecureDecoderComponent:I = 0x3

.field static final blacklist TRANSACTION_setMediaCasSession:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/hardware/cas/IDescrambler$Stub;->markVintfStability()V

    .line 59
    sget-object v0, Landroid/hardware/cas/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/cas/IDescrambler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/cas/IDescrambler;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 67
    if-nez p0, :cond_4

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 70
    :cond_4
    sget-object v0, Landroid/hardware/cas/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 71
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/cas/IDescrambler;

    if-eqz v1, :cond_14

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/hardware/cas/IDescrambler;

    return-object v1

    .line 74
    :cond_14
    new-instance v1, Landroid/hardware/cas/IDescrambler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/cas/IDescrambler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 78
    return-object p0
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

    .line 82
    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v12, Landroid/hardware/cas/IDescrambler$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 83
    .local v12, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v13, 0x1

    if-lt v9, v13, :cond_13

    if-gt v9, v1, :cond_13

    .line 84
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    :cond_13
    const v2, 0x5f4e5446

    if-ne v9, v2, :cond_1c

    .line 87
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return v13

    .line 90
    :cond_1c
    if-ne v9, v1, :cond_29

    .line 91
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p0}, Landroid/hardware/cas/IDescrambler$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v13

    .line 95
    :cond_29
    const v1, 0xfffffe

    if-ne v9, v1, :cond_39

    .line 96
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p0}, Landroid/hardware/cas/IDescrambler$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v13

    .line 100
    :cond_39
    packed-switch v9, :pswitch_data_9c

    .line 149
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 141
    :pswitch_41
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 142
    .local v1, "_arg0":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v1}, Landroid/hardware/cas/IDescrambler$Stub;->setMediaCasSession([B)V

    .line 144
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    goto :goto_9b

    .line 131
    .end local v1    # "_arg0":[B
    :pswitch_4f
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v1}, Landroid/hardware/cas/IDescrambler$Stub;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v2

    .line 134
    .local v2, "_result":Z
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    goto :goto_9b

    .line 124
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_61
    invoke-virtual {p0}, Landroid/hardware/cas/IDescrambler$Stub;->release()V

    .line 125
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_9b

    .line 105
    :pswitch_68
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "_arg0":I
    sget-object v2, Landroid/hardware/cas/SubSample;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/cas/SubSample;

    .line 109
    .local v2, "_arg1":[Landroid/hardware/cas/SubSample;
    sget-object v3, Landroid/hardware/cas/SharedBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/cas/SharedBuffer;

    .line 111
    .local v3, "_arg2":Landroid/hardware/cas/SharedBuffer;
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 113
    .local v4, "_arg3":J
    sget-object v6, Landroid/hardware/cas/DestinationBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/cas/DestinationBuffer;

    .line 115
    .local v6, "_arg4":Landroid/hardware/cas/DestinationBuffer;
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 116
    .local v7, "_arg5":J
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/cas/IDescrambler$Stub;->descramble(I[Landroid/hardware/cas/SubSample;Landroid/hardware/cas/SharedBuffer;JLandroid/hardware/cas/DestinationBuffer;J)I

    move-result v14

    .line 118
    .local v14, "_result":I
    invoke-virtual {v11}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    nop

    .line 152
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":[Landroid/hardware/cas/SubSample;
    .end local v3    # "_arg2":Landroid/hardware/cas/SharedBuffer;
    .end local v4    # "_arg3":J
    .end local v6    # "_arg4":Landroid/hardware/cas/DestinationBuffer;
    .end local v7    # "_arg5":J
    .end local v14    # "_result":I
    :goto_9b
    return v13

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_68
        :pswitch_61
        :pswitch_4f
        :pswitch_41
    .end packed-switch
.end method
