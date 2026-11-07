.class public abstract Landroid/media/tv/extension/time/IBroadcastTime$Stub;
.super Landroid/os/Binder;
.source "IBroadcastTime.java"

# interfaces
.implements Landroid/media/tv/extension/time/IBroadcastTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/time/IBroadcastTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/time/IBroadcastTime$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getLocalTime:I = 0x2

.field static final blacklist TRANSACTION_getLocalTimePerStream:I = 0x5

.field static final blacklist TRANSACTION_getTimeZoneInfo:I = 0x3

.field static final blacklist TRANSACTION_getUtcTime:I = 0x1

.field static final blacklist TRANSACTION_getUtcTimePerStream:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.media.tv.extension.time.IBroadcastTime"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/time/IBroadcastTime;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.media.tv.extension.time.IBroadcastTime"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/time/IBroadcastTime;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/time/IBroadcastTime;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/media/tv/extension/time/IBroadcastTime$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_18

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 92
    :pswitch_5
    const-string v0, "getLocalTimePerStream"

    return-object v0

    .line 88
    :pswitch_8
    const-string/jumbo v0, "getUtcTimePerStream"

    return-object v0

    .line 84
    :pswitch_c
    const-string/jumbo v0, "getTimeZoneInfo"

    return-object v0

    .line 80
    :pswitch_10
    const-string v0, "getLocalTime"

    return-object v0

    .line 76
    :pswitch_13
    const-string/jumbo v0, "getUtcTime"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 276
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 103
    invoke-static {p1}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 107
    const-string v0, "android.media.tv.extension.time.IBroadcastTime"

    .line 108
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 109
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v1

    .line 115
    :cond_16
    packed-switch p1, :pswitch_data_64

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 151
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getLocalTimePerStream(Ljava/lang/String;)J

    move-result-wide v3

    .line 154
    .local v3, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    goto :goto_63

    .line 141
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getUtcTimePerStream(Ljava/lang/String;)J

    move-result-wide v3

    .line 144
    .restart local v3    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    goto :goto_63

    .line 133
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":J
    :pswitch_42
    invoke-virtual {p0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getTimeZoneInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 134
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 136
    goto :goto_63

    .line 126
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_4d
    invoke-virtual {p0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getLocalTime()J

    move-result-wide v2

    .line 127
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    goto :goto_63

    .line 119
    .end local v2    # "_result":J
    :pswitch_58
    invoke-virtual {p0}, Landroid/media/tv/extension/time/IBroadcastTime$Stub;->getUtcTime()J

    move-result-wide v2

    .line 120
    .restart local v2    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 122
    nop

    .line 163
    .end local v2    # "_result":J
    :goto_63
    return v1

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_58
        :pswitch_4d
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
