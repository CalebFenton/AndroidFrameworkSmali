.class public abstract Lcom/android/internal/telephony/IWwanSelectorCallback$Stub;
.super Landroid/os/Binder;
.source "IWwanSelectorCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/IWwanSelectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IWwanSelectorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IWwanSelectorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCancel:I = 0x3

.field static final blacklist TRANSACTION_onDomainSelected:I = 0x2

.field static final blacklist TRANSACTION_onRequestEmergencyNetworkScan:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.android.internal.telephony.IWwanSelectorCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IWwanSelectorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWwanSelectorCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "com.android.internal.telephony.IWwanSelectorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IWwanSelectorCallback;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IWwanSelectorCallback;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IWwanSelectorCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IWwanSelectorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 60
    packed-switch p0, :pswitch_data_e

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 72
    :pswitch_5
    const-string v0, "onCancel"

    return-object v0

    .line 68
    :pswitch_8
    const-string v0, "onDomainSelected"

    return-object v0

    .line 64
    :pswitch_b
    const-string v0, "onRequestEmergencyNetworkScan"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 194
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 83
    invoke-static {p1}, Lcom/android/internal/telephony/IWwanSelectorCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 87
    const-string v0, "com.android.internal.telephony.IWwanSelectorCallback"

    .line 88
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 89
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 92
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v1

    .line 95
    :cond_16
    packed-switch p1, :pswitch_data_4e

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 123
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/IWwanSelectorCallback$Stub;->onCancel()V

    .line 124
    goto :goto_4c

    .line 114
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 117
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IWwanSelectorCallback$Stub;->onDomainSelected(IZ)V

    .line 119
    goto :goto_4c

    .line 100
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 102
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 106
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IWwanSelectorResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWwanSelectorResultCallback;

    move-result-object v5

    .line 107
    .local v5, "_arg3":Lcom/android/internal/telephony/IWwanSelectorResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/IWwanSelectorCallback$Stub;->onRequestEmergencyNetworkScan([IIZLcom/android/internal/telephony/IWwanSelectorResultCallback;)V

    .line 109
    nop

    .line 131
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Lcom/android/internal/telephony/IWwanSelectorResultCallback;
    :goto_4c
    return v1

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_31
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
