.class public abstract Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;
.super Landroid/os/Binder;
.source "ITransportSelectorCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/ITransportSelectorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITransportSelectorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITransportSelectorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCreated:I = 0x1

.field static final blacklist TRANSACTION_onSelectionTerminated:I = 0x4

.field static final blacklist TRANSACTION_onWlanSelected:I = 0x2

.field static final blacklist TRANSACTION_onWwanSelectedAsync:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "com.android.internal.telephony.ITransportSelectorCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITransportSelectorCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "com.android.internal.telephony.ITransportSelectorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ITransportSelectorCallback;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ITransportSelectorCallback;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_12

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 79
    :pswitch_5
    const-string v0, "onSelectionTerminated"

    return-object v0

    .line 75
    :pswitch_8
    const-string v0, "onWwanSelectedAsync"

    return-object v0

    .line 71
    :pswitch_b
    const-string v0, "onWlanSelected"

    return-object v0

    .line 67
    :pswitch_e
    const-string v0, "onCreated"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
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

    .line 214
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 90
    invoke-static {p1}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 94
    const-string v0, "com.android.internal.telephony.ITransportSelectorCallback"

    .line 95
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 96
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 99
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return v1

    .line 102
    :cond_16
    packed-switch p1, :pswitch_data_54

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 131
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->onSelectionTerminated(I)V

    .line 134
    goto :goto_52

    .line 123
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITransportSelectorResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITransportSelectorResultCallback;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Lcom/android/internal/telephony/ITransportSelectorResultCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->onWwanSelectedAsync(Lcom/android/internal/telephony/ITransportSelectorResultCallback;)V

    .line 126
    goto :goto_52

    .line 115
    .end local v2    # "_arg0":Lcom/android/internal/telephony/ITransportSelectorResultCallback;
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 116
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->onWlanSelected(Z)V

    .line 118
    goto :goto_52

    .line 107
    .end local v2    # "_arg0":Z
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IDomainSelector$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IDomainSelector;

    move-result-object v2

    .line 108
    .local v2, "_arg0":Lcom/android/internal/telephony/IDomainSelector;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ITransportSelectorCallback$Stub;->onCreated(Lcom/android/internal/telephony/IDomainSelector;)V

    .line 110
    nop

    .line 141
    .end local v2    # "_arg0":Lcom/android/internal/telephony/IDomainSelector;
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_43
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
