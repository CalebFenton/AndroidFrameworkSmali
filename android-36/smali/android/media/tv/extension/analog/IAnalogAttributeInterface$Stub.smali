.class public abstract Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;
.super Landroid/os/Binder;
.source "IAnalogAttributeInterface.java"

# interfaces
.implements Landroid/media/tv/extension/analog/IAnalogAttributeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/analog/IAnalogAttributeInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getColorSystemCapability:I = 0x3

.field static final blacklist TRANSACTION_getVersion:I = 0x1

.field static final blacklist TRANSACTION_setColorSystemCapability:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.media.tv.extension.analog.IAnalogAttributeInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/analog/IAnalogAttributeInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.media.tv.extension.analog.IAnalogAttributeInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/analog/IAnalogAttributeInterface;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/analog/IAnalogAttributeInterface;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_10

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 75
    :pswitch_5
    const-string v0, "getColorSystemCapability"

    return-object v0

    .line 71
    :pswitch_8
    const-string/jumbo v0, "setColorSystemCapability"

    return-object v0

    .line 67
    :pswitch_c
    const-string/jumbo v0, "getVersion"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 201
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 86
    invoke-static {p1}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    const-string v0, "android.media.tv.extension.analog.IAnalogAttributeInterface"

    .line 91
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    return v1

    .line 98
    :cond_16
    packed-switch p1, :pswitch_data_44

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 118
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->getColorSystemCapability()[Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 121
    goto :goto_42

    .line 110
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->setColorSystemCapability([Ljava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_42

    .line 102
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_37
    invoke-virtual {p0}, Landroid/media/tv/extension/analog/IAnalogAttributeInterface$Stub;->getVersion()I

    move-result v2

    .line 103
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    nop

    .line 128
    .end local v2    # "_result":I
    :goto_42
    return v1

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_37
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
