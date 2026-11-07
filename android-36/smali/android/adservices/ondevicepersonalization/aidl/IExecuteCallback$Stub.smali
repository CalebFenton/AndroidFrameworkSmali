.class public abstract Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;
.super Landroid/os/Binder;
.source "IExecuteCallback.java"

# interfaces
.implements Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onError:I = 0x2

.field static final blacklist TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "android.adservices.ondevicepersonalization.aidl.IExecuteCallback"

    invoke-virtual {p0, p0, v0}, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, "android.adservices.ondevicepersonalization.aidl.IExecuteCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;

    if-eqz v1, :cond_14

    .line 47
    move-object v1, v0

    check-cast v1, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback;

    return-object v1

    .line 49
    :cond_14
    new-instance v1, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 58
    packed-switch p0, :pswitch_data_c

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 66
    :pswitch_5
    const-string v0, "onError"

    return-object v0

    .line 62
    :pswitch_8
    const-string v0, "onSuccess"

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

    .line 53
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 77
    invoke-static {p1}, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 81
    const-string v0, "android.adservices.ondevicepersonalization.aidl.IExecuteCallback"

    .line 82
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 86
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return v1

    .line 89
    :cond_16
    packed-switch p1, :pswitch_data_52

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 104
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 106
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 110
    .local v4, "_arg2":[B
    sget-object v5, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 111
    .local v5, "_arg3":Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 112
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;->onError(II[BLandroid/adservices/ondevicepersonalization/CalleeMetadata;)V

    .line 113
    goto :goto_50

    .line 94
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[B
    .end local v5    # "_arg3":Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    :pswitch_39
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 96
    .local v2, "_arg0":Landroid/os/Bundle;
    sget-object v3, Landroid/adservices/ondevicepersonalization/CalleeMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    .line 97
    .local v3, "_arg1":Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 98
    invoke-virtual {p0, v2, v3}, Landroid/adservices/ondevicepersonalization/aidl/IExecuteCallback$Stub;->onSuccess(Landroid/os/Bundle;Landroid/adservices/ondevicepersonalization/CalleeMetadata;)V

    .line 99
    nop

    .line 120
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    :goto_50
    return v1

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_39
        :pswitch_1e
    .end packed-switch
.end method
