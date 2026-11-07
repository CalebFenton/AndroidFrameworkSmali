.class public abstract Landroid/os/IHintManager$IHintManagerClient$Stub;
.super Landroid/os/Binder;
.source "IHintManager.java"

# interfaces
.implements Landroid/os/IHintManager$IHintManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHintManager$IHintManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHintManager$IHintManagerClient$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_receiveChannelConfig:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 744
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 745
    const-string v0, "android.os.IHintManager.IHintManagerClient"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHintManager$IHintManagerClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IHintManager$IHintManagerClient;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 753
    if-nez p0, :cond_4

    .line 754
    const/4 v0, 0x0

    return-object v0

    .line 756
    :cond_4
    const-string v0, "android.os.IHintManager.IHintManagerClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 757
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IHintManager$IHintManagerClient;

    if-eqz v1, :cond_14

    .line 758
    move-object v1, v0

    check-cast v1, Landroid/os/IHintManager$IHintManagerClient;

    return-object v1

    .line 760
    :cond_14
    new-instance v1, Landroid/os/IHintManager$IHintManagerClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IHintManager$IHintManagerClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 769
    packed-switch p0, :pswitch_data_a

    .line 777
    const/4 v0, 0x0

    return-object v0

    .line 773
    :pswitch_5
    const-string/jumbo v0, "receiveChannelConfig"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 764
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 784
    invoke-static {p1}, Landroid/os/IHintManager$IHintManagerClient$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 788
    const-string v0, "android.os.IHintManager.IHintManagerClient"

    .line 789
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 790
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 793
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 794
    return v1

    .line 796
    :cond_16
    packed-switch p1, :pswitch_data_2e

    .line 808
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 801
    :pswitch_1e
    sget-object v2, Landroid/hardware/power/ChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/power/ChannelConfig;

    .line 802
    .local v2, "_arg0":Landroid/hardware/power/ChannelConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {p0, v2}, Landroid/os/IHintManager$IHintManagerClient$Stub;->receiveChannelConfig(Landroid/hardware/power/ChannelConfig;)V

    .line 804
    nop

    .line 811
    .end local v2    # "_arg0":Landroid/hardware/power/ChannelConfig;
    return v1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
