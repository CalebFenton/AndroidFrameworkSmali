.class public abstract Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;
.super Landroid/os/Binder;
.source "IProcessingUpdateStatusCallback.java"

# interfaces
.implements Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onFailure:I = 0x3

.field static final blacklist TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.service.ondeviceintelligence.IProcessingUpdateStatusCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_4
    const-string v0, "android.service.ondeviceintelligence.IProcessingUpdateStatusCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;

    if-eqz v1, :cond_14

    .line 52
    move-object v1, v0

    check-cast v1, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;

    return-object v1

    .line 54
    :cond_14
    new-instance v1, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 63
    packed-switch p0, :pswitch_data_c

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_5
    const-string v0, "onFailure"

    return-object v0

    .line 67
    :pswitch_8
    const-string v0, "onSuccess"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x2
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

    .line 175
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 82
    invoke-static {p1}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 86
    const-string v0, "android.service.ondeviceintelligence.IProcessingUpdateStatusCallback"

    .line 87
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 94
    :cond_16
    packed-switch p1, :pswitch_data_44

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 108
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 110
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;->onFailure(ILjava/lang/String;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    goto :goto_42

    .line 99
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_30
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 100
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback$Stub;->onSuccess(Landroid/os/PersistableBundle;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    nop

    .line 121
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :goto_42
    return v1

    nop

    :pswitch_data_44
    .packed-switch 0x2
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
