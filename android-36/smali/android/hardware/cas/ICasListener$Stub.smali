.class public abstract Landroid/hardware/cas/ICasListener$Stub;
.super Landroid/os/Binder;
.source "ICasListener.java"

# interfaces
.implements Landroid/hardware/cas/ICasListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/ICasListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/cas/ICasListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onEvent:I = 0x1

.field static final blacklist TRANSACTION_onSessionEvent:I = 0x2

.field static final blacklist TRANSACTION_onStatusUpdate:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    invoke-virtual {p0}, Landroid/hardware/cas/ICasListener$Stub;->markVintfStability()V

    .line 54
    sget-object v0, Landroid/hardware/cas/ICasListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/cas/ICasListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/cas/ICasListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    sget-object v0, Landroid/hardware/cas/ICasListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/cas/ICasListener;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/hardware/cas/ICasListener;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/hardware/cas/ICasListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/cas/ICasListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
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

    .line 77
    sget-object v0, Landroid/hardware/cas/ICasListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v2

    .line 85
    :cond_16
    if-ne p1, v1, :cond_23

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p0}, Landroid/hardware/cas/ICasListener$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v2

    .line 90
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p0}, Landroid/hardware/cas/ICasListener$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v2

    .line 95
    :cond_33
    packed-switch p1, :pswitch_data_7e

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 128
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 130
    .local v1, "_arg0":B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v1, v3}, Landroid/hardware/cas/ICasListener$Stub;->onStatusUpdate(BI)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    goto :goto_7d

    .line 113
    .end local v1    # "_arg0":B
    .end local v3    # "_arg1":I
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 115
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 117
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 119
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 120
    .local v5, "_arg3":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/hardware/cas/ICasListener$Stub;->onSessionEvent([BII[B)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    goto :goto_7d

    .line 100
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[B
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 105
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 106
    invoke-virtual {p0, v1, v3, v4}, Landroid/hardware/cas/ICasListener$Stub;->onEvent(II[B)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    nop

    .line 141
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    :goto_7d
    return v2

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_67
        :pswitch_4d
        :pswitch_3b
    .end packed-switch
.end method
