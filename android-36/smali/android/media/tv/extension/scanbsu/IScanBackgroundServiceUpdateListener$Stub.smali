.class public abstract Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;
.super Landroid/os/Binder;
.source "IScanBackgroundServiceUpdateListener.java"

# interfaces
.implements Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onChannelListUpdate:I = 0x1

.field static final blacklist TRANSACTION_onNetworkListUpdate:I = 0x2

.field static final blacklist TRANSACTION_onTransportStreamingListUpdate:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdateListener"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdateListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 64
    packed-switch p0, :pswitch_data_12

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :pswitch_5
    const-string/jumbo v0, "onTransportStreamingListUpdate"

    return-object v0

    .line 72
    :pswitch_9
    const-string/jumbo v0, "onNetworkListUpdate"

    return-object v0

    .line 68
    :pswitch_d
    const-string/jumbo v0, "onChannelListUpdate"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 241
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 91
    const-string v0, "android.media.tv.extension.scanbsu.IScanBackgroundServiceUpdateListener"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_16
    const-string v2, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_c0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 142
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 145
    .local v5, "_arg1_length":I
    if-gt v5, v3, :cond_40

    .line 147
    if-gez v5, :cond_31

    .line 148
    const/4 v2, 0x0

    .local v2, "_arg1":[Landroid/os/Bundle;
    goto :goto_33

    .line 150
    .end local v2    # "_arg1":[Landroid/os/Bundle;
    :cond_31
    new-array v2, v5, [Landroid/os/Bundle;

    .line 152
    .restart local v2    # "_arg1":[Landroid/os/Bundle;
    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v4, v2}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->onTransportStreamingListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 156
    goto :goto_a8

    .line 146
    .end local v2    # "_arg1":[Landroid/os/Bundle;
    :cond_40
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1_length":I
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    .restart local v5    # "_arg1_length":I
    if-gt v5, v3, :cond_74

    .line 128
    if-gez v5, :cond_65

    .line 129
    const/4 v2, 0x0

    .restart local v2    # "_arg1":[Landroid/os/Bundle;
    goto :goto_67

    .line 131
    .end local v2    # "_arg1":[Landroid/os/Bundle;
    :cond_65
    new-array v2, v5, [Landroid/os/Bundle;

    .line 133
    .restart local v2    # "_arg1":[Landroid/os/Bundle;
    :goto_67
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v4, v2}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->onNetworkListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 137
    goto :goto_a8

    .line 127
    .end local v2    # "_arg1":[Landroid/os/Bundle;
    :cond_74
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1_length":I
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 106
    .restart local v4    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 107
    .restart local v5    # "_arg1_length":I
    if-gt v5, v3, :cond_a9

    .line 109
    if-gez v5, :cond_99

    .line 110
    const/4 v2, 0x0

    .restart local v2    # "_arg1":[Landroid/os/Bundle;
    goto :goto_9b

    .line 112
    .end local v2    # "_arg1":[Landroid/os/Bundle;
    :cond_99
    new-array v2, v5, [Landroid/os/Bundle;

    .line 114
    .restart local v2    # "_arg1":[Landroid/os/Bundle;
    :goto_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v4, v2}, Landroid/media/tv/extension/scanbsu/IScanBackgroundServiceUpdateListener$Stub;->onChannelListUpdate(Ljava/lang/String;[Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 118
    nop

    .line 163
    .end local v2    # "_arg1":[Landroid/os/Bundle;
    .end local v4    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg1_length":I
    :goto_a8
    return v1

    .line 108
    .restart local v4    # "_arg0":Ljava/lang/String;
    .restart local v5    # "_arg1_length":I
    :cond_a9
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_57
        :pswitch_23
    .end packed-switch
.end method
