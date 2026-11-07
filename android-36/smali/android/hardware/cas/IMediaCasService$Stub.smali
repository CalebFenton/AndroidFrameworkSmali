.class public abstract Landroid/hardware/cas/IMediaCasService$Stub;
.super Landroid/os/Binder;
.source "IMediaCasService.java"

# interfaces
.implements Landroid/hardware/cas/IMediaCasService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/IMediaCasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/cas/IMediaCasService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createDescrambler:I = 0x1

.field static final blacklist TRANSACTION_createPlugin:I = 0x2

.field static final blacklist TRANSACTION_enumeratePlugins:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_isDescramblerSupported:I = 0x4

.field static final blacklist TRANSACTION_isSystemIdSupported:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    invoke-virtual {p0}, Landroid/hardware/cas/IMediaCasService$Stub;->markVintfStability()V

    .line 65
    sget-object v0, Landroid/hardware/cas/IMediaCasService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/cas/IMediaCasService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/cas/IMediaCasService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    sget-object v0, Landroid/hardware/cas/IMediaCasService$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/cas/IMediaCasService;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/hardware/cas/IMediaCasService;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Landroid/hardware/cas/IMediaCasService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/cas/IMediaCasService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
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

    .line 88
    sget-object v0, Landroid/hardware/cas/IMediaCasService$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 89
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v2

    .line 96
    :cond_16
    if-ne p1, v1, :cond_23

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p0}, Landroid/hardware/cas/IMediaCasService$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return v2

    .line 101
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual {p0}, Landroid/hardware/cas/IMediaCasService$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v2

    .line 106
    :cond_33
    packed-switch p1, :pswitch_data_98

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v1}, Landroid/hardware/cas/IMediaCasService$Stub;->isSystemIdSupported(I)Z

    move-result v3

    .line 153
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 155
    goto :goto_96

    .line 140
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v1}, Landroid/hardware/cas/IMediaCasService$Stub;->isDescramblerSupported(I)Z

    move-result v3

    .line 143
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 145
    goto :goto_96

    .line 132
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_5f
    invoke-virtual {p0}, Landroid/hardware/cas/IMediaCasService$Stub;->enumeratePlugins()[Landroid/hardware/cas/AidlCasPluginDescriptor;

    move-result-object v1

    .line 133
    .local v1, "_result":[Landroid/hardware/cas/AidlCasPluginDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 135
    goto :goto_96

    .line 121
    .end local v1    # "_result":[Landroid/hardware/cas/AidlCasPluginDescriptor;
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/cas/ICasListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/cas/ICasListener;

    move-result-object v3

    .line 124
    .local v3, "_arg1":Landroid/hardware/cas/ICasListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v1, v3}, Landroid/hardware/cas/IMediaCasService$Stub;->createPlugin(ILandroid/hardware/cas/ICasListener;)Landroid/hardware/cas/ICas;

    move-result-object v4

    .line 126
    .local v4, "_result":Landroid/hardware/cas/ICas;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 128
    goto :goto_96

    .line 111
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/cas/ICasListener;
    .end local v4    # "_result":Landroid/hardware/cas/ICas;
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 112
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 113
    invoke-virtual {p0, v1}, Landroid/hardware/cas/IMediaCasService$Stub;->createDescrambler(I)Landroid/hardware/cas/IDescrambler;

    move-result-object v3

    .line 114
    .local v3, "_result":Landroid/hardware/cas/IDescrambler;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 116
    nop

    .line 162
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Landroid/hardware/cas/IDescrambler;
    :goto_96
    return v2

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_84
        :pswitch_6a
        :pswitch_5f
        :pswitch_4d
        :pswitch_3b
    .end packed-switch
.end method
