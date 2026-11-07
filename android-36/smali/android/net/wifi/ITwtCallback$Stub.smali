.class public abstract Landroid/net/wifi/ITwtCallback$Stub;
.super Landroid/os/Binder;
.source "ITwtCallback.java"

# interfaces
.implements Landroid/net/wifi/ITwtCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ITwtCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ITwtCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onCreate:I = 0x3

.field static final blacklist TRANSACTION_onFailure:I = 0x1

.field static final blacklist TRANSACTION_onTeardown:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.net.wifi.ITwtCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/ITwtCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/ITwtCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "android.net.wifi.ITwtCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/ITwtCallback;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/ITwtCallback;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Landroid/net/wifi/ITwtCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/ITwtCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_e

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_5
    const-string v0, "onCreate"

    return-object v0

    .line 97
    :pswitch_8
    const-string v0, "onTeardown"

    return-object v0

    .line 93
    :pswitch_b
    const-string v0, "onFailure"

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

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 248
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Landroid/net/wifi/ITwtCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const-string v0, "android.net.wifi.ITwtCallback"

    .line 117
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 124
    :cond_16
    packed-switch p1, :pswitch_data_4c

    .line 157
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 143
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 145
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 147
    .local v5, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 149
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 151
    .local v8, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 152
    .local v9, "_arg4":I
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/net/wifi/ITwtCallback$Stub;->onCreate(IJIII)V

    .line 153
    goto :goto_4a

    .line 136
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":J
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :pswitch_38
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/ITwtCallback$Stub;->onTeardown(I)V

    .line 138
    goto :goto_4a

    .line 129
    .end local v2    # "_arg0":I
    :pswitch_41
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 130
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/wifi/ITwtCallback$Stub;->onFailure(I)V

    .line 131
    nop

    .line 160
    .end local v2    # "_arg0":I
    :goto_4a
    return v1

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_41
        :pswitch_38
        :pswitch_1f
    .end packed-switch
.end method
