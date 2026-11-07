.class public abstract Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaRoute2ProviderServiceCallback.java"

# interfaces
.implements Landroid/media/IMediaRoute2ProviderServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaRoute2ProviderServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyProviderUpdated:I = 0x1

.field static final blacklist TRANSACTION_notifyRequestFailed:I = 0x5

.field static final blacklist TRANSACTION_notifySessionCreated:I = 0x2

.field static final blacklist TRANSACTION_notifySessionReleased:I = 0x4

.field static final blacklist TRANSACTION_notifySessionsUpdated:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    const-string v0, "android.media.IMediaRoute2ProviderServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/IMediaRoute2ProviderServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 51
    if-nez p0, :cond_4

    .line 52
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_4
    const-string v0, "android.media.IMediaRoute2ProviderServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 55
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaRoute2ProviderServiceCallback;

    if-eqz v1, :cond_14

    .line 56
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaRoute2ProviderServiceCallback;

    return-object v1

    .line 58
    :cond_14
    new-instance v1, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 67
    packed-switch p0, :pswitch_data_14

    .line 91
    const/4 v0, 0x0

    return-object v0

    .line 87
    :pswitch_5
    const-string v0, "notifyRequestFailed"

    return-object v0

    .line 83
    :pswitch_8
    const-string v0, "notifySessionReleased"

    return-object v0

    .line 79
    :pswitch_b
    const-string v0, "notifySessionsUpdated"

    return-object v0

    .line 75
    :pswitch_e
    const-string v0, "notifySessionCreated"

    return-object v0

    .line 71
    :pswitch_11
    const-string v0, "notifyProviderUpdated"

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

    .line 62
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 249
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 98
    invoke-static {p1}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 102
    const-string v0, "android.media.IMediaRoute2ProviderServiceCallback"

    .line 103
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 104
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 107
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    return v1

    .line 110
    :cond_16
    packed-switch p1, :pswitch_data_6c

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 149
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 151
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifyRequestFailed(JI)V

    .line 154
    goto :goto_6b

    .line 141
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_2d
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 142
    .local v2, "_arg0":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifySessionReleased(Landroid/media/RoutingSessionInfo;)V

    .line 144
    goto :goto_6b

    .line 133
    .end local v2    # "_arg0":Landroid/media/RoutingSessionInfo;
    :pswitch_3c
    sget-object v2, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 134
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifySessionsUpdated(Ljava/util/List;)V

    .line 136
    goto :goto_6b

    .line 123
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/media/RoutingSessionInfo;>;"
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 125
    .local v2, "_arg0":J
    sget-object v4, Landroid/media/RoutingSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/RoutingSessionInfo;

    .line 126
    .local v4, "_arg1":Landroid/media/RoutingSessionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifySessionCreated(JLandroid/media/RoutingSessionInfo;)V

    .line 128
    goto :goto_6b

    .line 115
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/media/RoutingSessionInfo;
    :pswitch_5c
    sget-object v2, Landroid/media/MediaRoute2ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRoute2ProviderInfo;

    .line 116
    .local v2, "_arg0":Landroid/media/MediaRoute2ProviderInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Landroid/media/IMediaRoute2ProviderServiceCallback$Stub;->notifyProviderUpdated(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 118
    nop

    .line 161
    .end local v2    # "_arg0":Landroid/media/MediaRoute2ProviderInfo;
    :goto_6b
    return v1

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_49
        :pswitch_3c
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
