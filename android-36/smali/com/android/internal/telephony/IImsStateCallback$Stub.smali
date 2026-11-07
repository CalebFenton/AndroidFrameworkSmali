.class public abstract Lcom/android/internal/telephony/IImsStateCallback$Stub;
.super Landroid/os/Binder;
.source "IImsStateCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/IImsStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IImsStateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IImsStateCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAvailable:I = 0x2

.field static final blacklist TRANSACTION_onUnavailable:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.android.internal.telephony.IImsStateCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IImsStateCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.android.internal.telephony.IImsStateCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IImsStateCallback;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/IImsStateCallback;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IImsStateCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IImsStateCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 57
    packed-switch p0, :pswitch_data_c

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 65
    :pswitch_5
    const-string v0, "onAvailable"

    return-object v0

    .line 61
    :pswitch_8
    const-string v0, "onUnavailable"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 52
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 76
    invoke-static {p1}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 80
    const-string v0, "com.android.internal.telephony.IImsStateCallback"

    .line 81
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 88
    :cond_16
    packed-switch p1, :pswitch_data_2e

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 100
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->onAvailable()V

    .line 101
    goto :goto_2d

    .line 93
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 94
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IImsStateCallback$Stub;->onUnavailable(I)V

    .line 96
    nop

    .line 108
    .end local v2    # "_arg0":I
    :goto_2d
    return v1

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
