.class public abstract Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;
.super Landroid/os/Binder;
.source "IOadUpdateInterface.java"

# interfaces
.implements Landroid/media/tv/extension/oad/IOadUpdateInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/extension/oad/IOadUpdateInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getOadStatus:I = 0x2

.field static final blacklist TRANSACTION_getSoftwareVersion:I = 0x9

.field static final blacklist TRANSACTION_setOadStatus:I = 0x1

.field static final blacklist TRANSACTION_startDetect:I = 0x5

.field static final blacklist TRANSACTION_startDownload:I = 0x7

.field static final blacklist TRANSACTION_startScan:I = 0x3

.field static final blacklist TRANSACTION_stopDetect:I = 0x6

.field static final blacklist TRANSACTION_stopDownload:I = 0x8

.field static final blacklist TRANSACTION_stopScan:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.media.tv.extension.oad.IOadUpdateInterface"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/tv/extension/oad/IOadUpdateInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.media.tv.extension.oad.IOadUpdateInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/extension/oad/IOadUpdateInterface;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/media/tv/extension/oad/IOadUpdateInterface;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 90
    packed-switch p0, :pswitch_data_28

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 126
    :pswitch_5
    const-string/jumbo v0, "getSoftwareVersion"

    return-object v0

    .line 122
    :pswitch_9
    const-string/jumbo v0, "stopDownload"

    return-object v0

    .line 118
    :pswitch_d
    const-string/jumbo v0, "startDownload"

    return-object v0

    .line 114
    :pswitch_11
    const-string/jumbo v0, "stopDetect"

    return-object v0

    .line 110
    :pswitch_15
    const-string/jumbo v0, "startDetect"

    return-object v0

    .line 106
    :pswitch_19
    const-string/jumbo v0, "stopScan"

    return-object v0

    .line 102
    :pswitch_1d
    const-string/jumbo v0, "startScan"

    return-object v0

    .line 98
    :pswitch_21
    const-string v0, "getOadStatus"

    return-object v0

    .line 94
    :pswitch_24
    const-string/jumbo v0, "setOadStatus"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 387
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 137
    invoke-static {p1}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    const-string v0, "android.media.tv.extension.oad.IOadUpdateInterface"

    .line 142
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 143
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 146
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    return v1

    .line 149
    :cond_16
    packed-switch p1, :pswitch_data_6e

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 205
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->getSoftwareVersion()I

    move-result v2

    .line 206
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    goto :goto_6c

    .line 199
    .end local v2    # "_result":I
    :pswitch_29
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->stopDownload()V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_6c

    .line 193
    :pswitch_30
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->startDownload()V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    goto :goto_6c

    .line 187
    :pswitch_37
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->stopDetect()V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    goto :goto_6c

    .line 181
    :pswitch_3e
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->startDetect()V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_6c

    .line 175
    :pswitch_45
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->stopScan()V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_6c

    .line 169
    :pswitch_4c
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->startScan()V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_6c

    .line 162
    :pswitch_53
    invoke-virtual {p0}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->getOadStatus()Z

    move-result v2

    .line 163
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 165
    goto :goto_6c

    .line 154
    .end local v2    # "_result":Z
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 155
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 156
    invoke-virtual {p0, v2}, Landroid/media/tv/extension/oad/IOadUpdateInterface$Stub;->setOadStatus(Z)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    nop

    .line 215
    .end local v2    # "_arg0":Z
    :goto_6c
    return v1

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_53
        :pswitch_4c
        :pswitch_45
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
