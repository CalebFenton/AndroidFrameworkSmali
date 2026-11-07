.class public abstract Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;
.super Landroid/os/Binder;
.source "ICarrierPrivilegesCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/ICarrierPrivilegesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCarrierPrivilegesChanged:I = 0x1

.field static final blacklist TRANSACTION_onCarrierServiceChanged:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.android.internal.telephony.ICarrierPrivilegesCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierPrivilegesCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_4
    const-string v0, "com.android.internal.telephony.ICarrierPrivilegesCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    if-eqz v1, :cond_14

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ICarrierPrivilegesCallback;

    return-object v1

    .line 48
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string v0, "onCarrierServiceChanged"

    return-object v0

    .line 61
    :pswitch_8
    const-string v0, "onCarrierPrivilegesChanged"

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

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 76
    invoke-static {p1}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 80
    const-string v0, "com.android.internal.telephony.ICarrierPrivilegesCallback"

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
    packed-switch p1, :pswitch_data_3e

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 103
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 106
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->onCarrierServiceChanged(Ljava/lang/String;I)V

    .line 108
    goto :goto_3c

    .line 93
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 95
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 96
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 97
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ICarrierPrivilegesCallback$Stub;->onCarrierPrivilegesChanged(Ljava/util/List;[I)V

    .line 98
    nop

    .line 115
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":[I
    :goto_3c
    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
