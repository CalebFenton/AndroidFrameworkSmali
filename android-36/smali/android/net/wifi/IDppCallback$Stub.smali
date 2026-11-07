.class public abstract Landroid/net/wifi/IDppCallback$Stub;
.super Landroid/os/Binder;
.source "IDppCallback.java"

# interfaces
.implements Landroid/net/wifi/IDppCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IDppCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IDppCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onBootstrapUriGenerated:I = 0x5

.field static final blacklist TRANSACTION_onFailure:I = 0x3

.field static final blacklist TRANSACTION_onProgress:I = 0x4

.field static final blacklist TRANSACTION_onSuccess:I = 0x2

.field static final blacklist TRANSACTION_onSuccessConfigReceived:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    const-string v0, "android.net.wifi.IDppCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IDppCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IDppCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 69
    if-nez p0, :cond_4

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    const-string v0, "android.net.wifi.IDppCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 73
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IDppCallback;

    if-eqz v1, :cond_14

    .line 74
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/IDppCallback;

    return-object v1

    .line 76
    :cond_14
    new-instance v1, Landroid/net/wifi/IDppCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IDppCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 85
    packed-switch p0, :pswitch_data_14

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 105
    :pswitch_5
    const-string v0, "onBootstrapUriGenerated"

    return-object v0

    .line 101
    :pswitch_8
    const-string v0, "onProgress"

    return-object v0

    .line 97
    :pswitch_b
    const-string v0, "onFailure"

    return-object v0

    .line 93
    :pswitch_e
    const-string v0, "onSuccess"

    return-object v0

    .line 89
    :pswitch_11
    const-string v0, "onSuccessConfigReceived"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 80
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 279
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 116
    invoke-static {p1}, Landroid/net/wifi/IDppCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 120
    const-string v0, "android.net.wifi.IDppCallback"

    .line 121
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    return v1

    .line 128
    :cond_16
    packed-switch p1, :pswitch_data_54

    .line 173
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 167
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/wifi/IDppCallback$Stub;->onBootstrapUriGenerated(Ljava/lang/String;)V

    .line 169
    goto :goto_52

    .line 160
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IDppCallback$Stub;->onProgress(I)V

    .line 162
    goto :goto_52

    .line 147
    .end local v2    # "_arg0":I
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 154
    .local v5, "_arg3":[I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/wifi/IDppCallback$Stub;->onFailure(ILjava/lang/String;Ljava/lang/String;[I)V

    .line 155
    goto :goto_52

    .line 140
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":[I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IDppCallback$Stub;->onSuccess(I)V

    .line 142
    goto :goto_52

    .line 133
    .end local v2    # "_arg0":I
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 134
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/IDppCallback$Stub;->onSuccessConfigReceived(I)V

    .line 135
    nop

    .line 176
    .end local v2    # "_arg0":I
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_42
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
