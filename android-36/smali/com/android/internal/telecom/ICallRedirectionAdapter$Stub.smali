.class public abstract Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;
.super Landroid/os/Binder;
.source "ICallRedirectionAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallRedirectionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallRedirectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelCall:I = 0x1

.field static final blacklist TRANSACTION_placeCallUnmodified:I = 0x2

.field static final blacklist TRANSACTION_redirectCall:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.android.internal.telecom.ICallRedirectionAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallRedirectionAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "com.android.internal.telecom.ICallRedirectionAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallRedirectionAdapter;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallRedirectionAdapter;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_10

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 79
    :pswitch_5
    const-string/jumbo v0, "redirectCall"

    return-object v0

    .line 75
    :pswitch_9
    const-string/jumbo v0, "placeCallUnmodified"

    return-object v0

    .line 71
    :pswitch_d
    const-string v0, "cancelCall"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 191
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 90
    invoke-static {p1}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 94
    const-string v0, "com.android.internal.telecom.ICallRedirectionAdapter"

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
    packed-switch p1, :pswitch_data_42

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 117
    :pswitch_1e
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 119
    .local v2, "_arg0":Landroid/net/Uri;
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 121
    .local v3, "_arg1":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 122
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 124
    goto :goto_41

    .line 111
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":Landroid/telecom/PhoneAccountHandle;
    .end local v4    # "_arg2":Z
    :pswitch_39
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->placeCallUnmodified()V

    .line 112
    goto :goto_41

    .line 106
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/telecom/ICallRedirectionAdapter$Stub;->cancelCall()V

    .line 107
    nop

    .line 131
    :goto_41
    return v1

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method
