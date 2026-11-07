.class public abstract Landroid/hardware/tv/tuner/IFrontendCallback$Stub;
.super Landroid/os/Binder;
.source "IFrontendCallback.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IFrontendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IFrontendCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IFrontendCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onEvent:I = 0x1

.field static final blacklist TRANSACTION_onScanMessage:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->markVintfStability()V

    .line 51
    sget-object v0, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IFrontendCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/tv/tuner/IFrontendCallback;

    if-eqz v1, :cond_14

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/hardware/tv/tuner/IFrontendCallback;

    return-object v1

    .line 66
    :cond_14
    new-instance v1, Landroid/hardware/tv/tuner/IFrontendCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
    return-object p0
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

    .line 74
    sget-object v0, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 75
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v2

    .line 82
    :cond_16
    if-ne p1, v1, :cond_23

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v2

    .line 87
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v2

    .line 92
    :cond_33
    packed-switch p1, :pswitch_data_5a

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 105
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "_arg0":I
    sget-object v3, Landroid/hardware/tv/tuner/FrontendScanMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/tv/tuner/FrontendScanMessage;

    .line 108
    .local v3, "_arg1":Landroid/hardware/tv/tuner/FrontendScanMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v1, v3}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->onScanMessage(ILandroid/hardware/tv/tuner/FrontendScanMessage;)V

    .line 110
    goto :goto_59

    .line 97
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/tv/tuner/FrontendScanMessage;
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, v1}, Landroid/hardware/tv/tuner/IFrontendCallback$Stub;->onEvent(I)V

    .line 100
    nop

    .line 117
    .end local v1    # "_arg0":I
    :goto_59
    return v2

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_3b
    .end packed-switch
.end method
