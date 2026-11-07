.class public abstract Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;
.super Landroid/os/Binder;
.source "IMbmsStreamingService.java"

# interfaces
.implements Landroid/telephony/mbms/vendor/IMbmsStreamingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/vendor/IMbmsStreamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.telephony.mbms.vendor.IMbmsStreamingService"

.field static final greylist-max-o TRANSACTION_dispose:I = 0x6

.field static final greylist-max-o TRANSACTION_getPlaybackUri:I = 0x4

.field static final greylist-max-o TRANSACTION_initialize:I = 0x1

.field static final greylist-max-o TRANSACTION_requestUpdateStreamingServices:I = 0x2

.field static final greylist-max-o TRANSACTION_startStreaming:I = 0x3

.field static final greylist-max-o TRANSACTION_stopStreaming:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    const-string v0, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/vendor/IMbmsStreamingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_4
    const-string v0, "android.telephony.mbms.vendor.IMbmsStreamingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 62
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    if-eqz v1, :cond_14

    .line 63
    move-object v1, v0

    check-cast v1, Landroid/telephony/mbms/vendor/IMbmsStreamingService;

    return-object v1

    .line 65
    :cond_14
    new-instance v1, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 74
    packed-switch p0, :pswitch_data_1a

    .line 102
    const/4 v0, 0x0

    return-object v0

    .line 98
    :pswitch_5
    const-string v0, "dispose"

    return-object v0

    .line 94
    :pswitch_8
    const-string/jumbo v0, "stopStreaming"

    return-object v0

    .line 90
    :pswitch_c
    const-string v0, "getPlaybackUri"

    return-object v0

    .line 86
    :pswitch_f
    const-string/jumbo v0, "startStreaming"

    return-object v0

    .line 82
    :pswitch_13
    const-string/jumbo v0, "requestUpdateStreamingServices"

    return-object v0

    .line 78
    :pswitch_17
    const-string v0, "initialize"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 69
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 335
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 109
    invoke-static {p1}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 113
    const-string v0, "android.telephony.mbms.vendor.IMbmsStreamingService"

    .line 114
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 115
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    return v1

    .line 121
    :cond_16
    packed-switch p1, :pswitch_data_a4

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 187
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 188
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 189
    invoke-virtual {p0, v2}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->dispose(I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto/16 :goto_a3

    .line 176
    .end local v2    # "_arg0":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->stopStreaming(ILjava/lang/String;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    goto :goto_a3

    .line 164
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 169
    .local v4, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 171
    goto :goto_a3

    .line 150
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/net/Uri;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/mbms/IStreamingServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IStreamingServiceCallback;

    move-result-object v4

    .line 155
    .local v4, "_arg2":Landroid/telephony/mbms/IStreamingServiceCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2, v3, v4}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I

    move-result v5

    .line 157
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    goto :goto_a3

    .line 138
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/telephony/mbms/IStreamingServiceCallback;
    .end local v5    # "_result":I
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 141
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->requestUpdateStreamingServices(ILjava/util/List;)I

    move-result v4

    .line 143
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    goto :goto_a3

    .line 126
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "_result":I
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/mbms/IMbmsStreamingSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/mbms/IMbmsStreamingSessionCallback;

    move-result-object v2

    .line 128
    .local v2, "_arg0":Landroid/telephony/mbms/IMbmsStreamingSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 129
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 130
    invoke-virtual {p0, v2, v3}, Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;->initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I

    move-result v4

    .line 131
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    nop

    .line 198
    .end local v2    # "_arg0":Landroid/telephony/mbms/IMbmsStreamingSessionCallback;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :goto_a3
    return v1

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_89
        :pswitch_73
        :pswitch_55
        :pswitch_3f
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
