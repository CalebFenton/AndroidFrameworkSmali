.class public abstract Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.super Landroid/os/Binder;
.source "ICarrierMessagingCallback.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.carrier.ICarrierMessagingCallback"

.field static final TRANSACTION_onDownloadMmsComplete:I = 0x5

.field static final TRANSACTION_onFilterComplete:I = 0x1

.field static final TRANSACTION_onSendMmsComplete:I = 0x4

.field static final TRANSACTION_onSendMultipartSmsComplete:I = 0x3

.field static final TRANSACTION_onSendSmsComplete:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.service.carrier.ICarrierMessagingCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.service.carrier.ICarrierMessagingCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/service/carrier/ICarrierMessagingCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/service/carrier/ICarrierMessagingCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v5

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onFilterComplete(I)V

    #@1d
    .line 56
    return v5

    #@1e
    .line 60
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    #@21
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    .line 65
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendSmsComplete(II)V

    #@2f
    .line 66
    return v5

    #@30
    .line 70
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_3
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    #@33
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@36
    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    .line 74
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    #@3d
    move-result-object v3

    #@3e
    .line 75
    .local v3, "_arg1":[I
    invoke-virtual {p0, v0, v3}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMultipartSmsComplete(I[I)V

    #@41
    .line 76
    return v5

    #@42
    .line 80
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":[I
    :sswitch_4
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    #@45
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    #@4f
    move-result-object v2

    #@50
    .line 85
    .local v2, "_arg1":[B
    invoke-virtual {p0, v0, v2}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMmsComplete(I[B)V

    #@53
    .line 86
    return v5

    #@54
    .line 90
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[B
    :sswitch_5
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    #@57
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v0

    #@5e
    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onDownloadMmsComplete(I)V

    #@61
    .line 94
    return v5

    #@62
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
