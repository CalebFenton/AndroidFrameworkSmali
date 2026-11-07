.class public abstract Lcom/android/ims/internal/IImsMultiEndpoint$Stub;
.super Landroid/os/Binder;
.source "IImsMultiEndpoint.java"

# interfaces
.implements Lcom/android/ims/internal/IImsMultiEndpoint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsMultiEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsMultiEndpoint$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsMultiEndpoint"

.field static final greylist-max-o TRANSACTION_requestImsExternalCallStateInfo:I = 0x2

.field static final greylist-max-o TRANSACTION_setListener:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "com.android.ims.internal.IImsMultiEndpoint"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "com.android.ims.internal.IImsMultiEndpoint"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsMultiEndpoint;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsMultiEndpoint;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsMultiEndpoint$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_e

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 75
    :pswitch_5
    const-string/jumbo v0, "requestImsExternalCallStateInfo"

    return-object v0

    .line 71
    :pswitch_9
    const-string/jumbo v0, "setListener"

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
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

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 86
    invoke-static {p1}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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
    const-string v0, "com.android.ims.internal.IImsMultiEndpoint"

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
    packed-switch p1, :pswitch_data_38

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 111
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;->requestImsExternalCallStateInfo()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    goto :goto_37

    .line 103
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsExternalCallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsExternalCallStateListener;

    move-result-object v2

    .line 104
    .local v2, "_arg0":Lcom/android/ims/internal/IImsExternalCallStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/IImsMultiEndpoint$Stub;->setListener(Lcom/android/ims/internal/IImsExternalCallStateListener;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    nop

    .line 120
    .end local v2    # "_arg0":Lcom/android/ims/internal/IImsExternalCallStateListener;
    :goto_37
    return v1

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method
