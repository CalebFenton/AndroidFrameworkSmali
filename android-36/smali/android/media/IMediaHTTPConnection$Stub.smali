.class public abstract Landroid/media/IMediaHTTPConnection$Stub;
.super Landroid/os/Binder;
.source "IMediaHTTPConnection.java"

# interfaces
.implements Landroid/media/IMediaHTTPConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaHTTPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaHTTPConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.IMediaHTTPConnection"

.field static final greylist-max-o TRANSACTION_connect:I = 0x1

.field static final greylist-max-o TRANSACTION_disconnect:I = 0x2

.field static final greylist-max-o TRANSACTION_getMIMEType:I = 0x5

.field static final greylist-max-o TRANSACTION_getSize:I = 0x4

.field static final greylist-max-o TRANSACTION_getUri:I = 0x6

.field static final greylist-max-o TRANSACTION_readAt:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.media.IMediaHTTPConnection"

    invoke-virtual {p0, p0, v0}, Landroid/media/IMediaHTTPConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/IMediaHTTPConnection;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_4
    const-string v0, "android.media.IMediaHTTPConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IMediaHTTPConnection;

    if-eqz v1, :cond_14

    .line 65
    move-object v1, v0

    check-cast v1, Landroid/media/IMediaHTTPConnection;

    return-object v1

    .line 67
    :cond_14
    new-instance v1, Landroid/media/IMediaHTTPConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IMediaHTTPConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 76
    packed-switch p0, :pswitch_data_18

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 100
    :pswitch_5
    const-string v0, "getUri"

    return-object v0

    .line 96
    :pswitch_8
    const-string v0, "getMIMEType"

    return-object v0

    .line 92
    :pswitch_b
    const-string v0, "getSize"

    return-object v0

    .line 88
    :pswitch_e
    const-string v0, "readAt"

    return-object v0

    .line 84
    :pswitch_11
    const-string v0, "disconnect"

    return-object v0

    .line 80
    :pswitch_14
    const-string v0, "connect"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
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

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 313
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 111
    invoke-static {p1}, Landroid/media/IMediaHTTPConnection$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 115
    const-string v0, "android.media.IMediaHTTPConnection"

    .line 116
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 120
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v1

    .line 123
    :cond_16
    packed-switch p1, :pswitch_data_74

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 171
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    goto :goto_72

    .line 164
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getMIMEType()Ljava/lang/String;

    move-result-object v2

    .line 165
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    goto :goto_72

    .line 157
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_34
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->getSize()J

    move-result-wide v2

    .line 158
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    goto :goto_72

    .line 146
    .end local v2    # "_result":J
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 148
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 149
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/IMediaHTTPConnection$Stub;->readAt(JI)I

    move-result v5

    .line 151
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    goto :goto_72

    .line 139
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_result":I
    :pswitch_55
    invoke-virtual {p0}, Landroid/media/IMediaHTTPConnection$Stub;->disconnect()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_72

    .line 128
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v2, v3}, Landroid/media/IMediaHTTPConnection$Stub;->connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 133
    .local v4, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 135
    nop

    .line 181
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Landroid/os/IBinder;
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_55
        :pswitch_3f
        :pswitch_34
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
