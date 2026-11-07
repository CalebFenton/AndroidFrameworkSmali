.class public abstract Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;
.super Landroid/os/Binder;
.source "IStreamingResponseCallback.java"

# interfaces
.implements Landroid/app/ondeviceintelligence/IStreamingResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDataAugmentRequest:I = 0x5

.field static final blacklist TRANSACTION_onFailure:I = 0x4

.field static final blacklist TRANSACTION_onNewContent:I = 0x2

.field static final blacklist TRANSACTION_onSuccess:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.app.ondeviceintelligence.IStreamingResponseCallback"

    invoke-virtual {p0, p0, v0}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IStreamingResponseCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.app.ondeviceintelligence.IStreamingResponseCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_12

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 84
    :pswitch_5
    const-string v0, "onDataAugmentRequest"

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "onFailure"

    return-object v0

    .line 76
    :pswitch_b
    const-string v0, "onSuccess"

    return-object v0

    .line 72
    :pswitch_e
    const-string v0, "onNewContent"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 228
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 95
    invoke-static {p1}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 99
    const-string v0, "android.app.ondeviceintelligence.IStreamingResponseCallback"

    .line 100
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v1

    .line 107
    :cond_16
    packed-switch p1, :pswitch_data_6c

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 140
    :pswitch_1e
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 142
    .local v2, "_arg0":Landroid/os/Bundle;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 143
    .local v3, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;->onDataAugmentRequest(Landroid/os/Bundle;Landroid/os/RemoteCallback;)V

    .line 145
    goto :goto_6a

    .line 128
    .end local v2    # "_arg0":Landroid/os/Bundle;
    .end local v3    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 133
    .local v4, "_arg2":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;->onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 135
    goto :goto_6a

    .line 120
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/PersistableBundle;
    :pswitch_4c
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 121
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-virtual {p0, v2}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;->onSuccess(Landroid/os/Bundle;)V

    .line 123
    goto :goto_6a

    .line 112
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_5b
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 113
    .restart local v2    # "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 114
    invoke-virtual {p0, v2}, Landroid/app/ondeviceintelligence/IStreamingResponseCallback$Stub;->onNewContent(Landroid/os/Bundle;)V

    .line 115
    nop

    .line 152
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :goto_6a
    return v1

    nop

    :pswitch_data_6c
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_4c
        :pswitch_35
        :pswitch_1e
    .end packed-switch
.end method
