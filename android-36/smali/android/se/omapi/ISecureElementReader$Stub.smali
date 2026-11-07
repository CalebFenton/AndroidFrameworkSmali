.class public abstract Landroid/se/omapi/ISecureElementReader$Stub;
.super Landroid/os/Binder;
.source "ISecureElementReader.java"

# interfaces
.implements Landroid/se/omapi/ISecureElementReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/se/omapi/ISecureElementReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/se/omapi/ISecureElementReader$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String;

.field static final greylist-max-o TRANSACTION_closeSessions:I = 0x3

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final greylist-max-o TRANSACTION_isSecureElementPresent:I = 0x1

.field static final greylist-max-o TRANSACTION_openSession:I = 0x2

.field static final blacklist TRANSACTION_reset:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 267
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$se$omapi$ISecureElementReader"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/se/omapi/ISecureElementReader$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->markVintfStability()V

    .line 60
    sget-object v0, Landroid/se/omapi/ISecureElementReader$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/se/omapi/ISecureElementReader$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementReader;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    sget-object v0, Landroid/se/omapi/ISecureElementReader$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/se/omapi/ISecureElementReader;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/se/omapi/ISecureElementReader;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/se/omapi/ISecureElementReader$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/se/omapi/ISecureElementReader$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 79
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

    .line 83
    sget-object v0, Landroid/se/omapi/ISecureElementReader$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v2

    .line 91
    :cond_16
    if-ne p1, v1, :cond_23

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v2

    .line 96
    :cond_23
    const v1, 0xfffffe

    if-ne p1, v1, :cond_33

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    return v2

    .line 101
    :cond_33
    packed-switch p1, :pswitch_data_64

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 125
    :pswitch_3b
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->reset()Z

    move-result v1

    .line 126
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 128
    goto :goto_63

    .line 119
    .end local v1    # "_result":Z
    :pswitch_46
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->closeSessions()V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    goto :goto_63

    .line 112
    :pswitch_4d
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->openSession()Landroid/se/omapi/ISecureElementSession;

    move-result-object v1

    .line 113
    .local v1, "_result":Landroid/se/omapi/ISecureElementSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 115
    goto :goto_63

    .line 105
    .end local v1    # "_result":Landroid/se/omapi/ISecureElementSession;
    :pswitch_58
    invoke-virtual {p0}, Landroid/se/omapi/ISecureElementReader$Stub;->isSecureElementPresent()Z

    move-result v1

    .line 106
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    nop

    .line 135
    .end local v1    # "_result":Z
    :goto_63
    return v2

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_58
        :pswitch_4d
        :pswitch_46
        :pswitch_3b
    .end packed-switch
.end method
