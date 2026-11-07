.class public abstract Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;
.super Landroid/os/Binder;
.source "IMuxTuneSession.java"

# interfaces
.implements Landroid/media/tv/extension/tune/IMuxTuneSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/tune/IMuxTuneSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/tune/IMuxTuneSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSessionToken:I = 0x4

.field static final blacklist TRANSACTION_release:I = 0x3

.field static final blacklist TRANSACTION_start:I = 0x1

.field static final blacklist TRANSACTION_stop:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.media.tv.extension.tune.IMuxTuneSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/tune/IMuxTuneSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.media.tv.extension.tune.IMuxTuneSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/tune/IMuxTuneSession;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/tune/IMuxTuneSession;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_16

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 85
    :pswitch_5
    const-string/jumbo v0, "getSessionToken"

    return-object v0

    .line 81
    :pswitch_9
    const-string/jumbo v0, "release"

    return-object v0

    .line 77
    :pswitch_d
    const-string/jumbo v0, "stop"

    return-object v0

    .line 73
    :pswitch_11
    const-string/jumbo v0, "start"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 241
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 96
    invoke-static {p1}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 100
    const-string v0, "android.media.tv.extension.tune.IMuxTuneSession"

    .line 101
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_16
    packed-switch p1, :pswitch_data_56

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    goto :goto_55

    .line 133
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->release()V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    goto :goto_55

    .line 127
    :pswitch_30
    invoke-virtual {p0}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->stop()V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    goto :goto_55

    .line 113
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 117
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 119
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 120
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/media/tv/extension/tune/IMuxTuneSession$Stub;->start(IIILandroid/os/Bundle;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    nop

    .line 149
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :goto_55
    return v1

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
