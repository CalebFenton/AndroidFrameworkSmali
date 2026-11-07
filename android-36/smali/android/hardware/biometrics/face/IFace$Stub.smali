.class public abstract Landroid/hardware/biometrics/face/IFace$Stub;
.super Landroid/os/Binder;
.source "IFace.java"

# interfaces
.implements Landroid/hardware/biometrics/face/IFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/IFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/face/IFace$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSession:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSensorProps:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/IFace$Stub;->markVintfStability()V

    .line 53
    sget-object v0, Landroid/hardware/biometrics/face/IFace$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/face/IFace$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/IFace;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/face/IFace$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/biometrics/face/IFace;

    if-eqz v1, :cond_14

    .line 66
    move-object v1, v0

    check-cast v1, Landroid/hardware/biometrics/face/IFace;

    return-object v1

    .line 68
    :cond_14
    new-instance v1, Landroid/hardware/biometrics/face/IFace$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/biometrics/face/IFace$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 77
    sparse-switch p0, :sswitch_data_12

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 89
    :sswitch_5
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 93
    :sswitch_8
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 85
    :sswitch_b
    const-string v0, "createSession"

    return-object v0

    .line 81
    :sswitch_e
    const-string v0, "getSensorProps"

    return-object v0

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 72
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 258
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 104
    invoke-static {p1}, Landroid/hardware/biometrics/face/IFace$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 108
    sget-object v0, Landroid/hardware/biometrics/face/IFace$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 109
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 110
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return v2

    .line 116
    :cond_16
    if-ne p1, v1, :cond_23

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/IFace$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return v2

    .line 121
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/IFace$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v2

    .line 126
    :cond_33
    packed-switch p1, :pswitch_data_66

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object v4

    .line 143
    .local v4, "_arg2":Landroid/hardware/biometrics/face/ISessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/biometrics/face/IFace$Stub;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Landroid/hardware/biometrics/face/ISession;

    move-result-object v5

    .line 145
    .local v5, "_result":Landroid/hardware/biometrics/face/ISession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 147
    goto :goto_64

    .line 130
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/hardware/biometrics/face/ISessionCallback;
    .end local v5    # "_result":Landroid/hardware/biometrics/face/ISession;
    :pswitch_59
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/IFace$Stub;->getSensorProps()[Landroid/hardware/biometrics/face/SensorProps;

    move-result-object v1

    .line 131
    .local v1, "_result":[Landroid/hardware/biometrics/face/SensorProps;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 133
    nop

    .line 154
    .end local v1    # "_result":[Landroid/hardware/biometrics/face/SensorProps;
    :goto_64
    return v2

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_59
        :pswitch_3b
    .end packed-switch
.end method
