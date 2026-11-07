.class public abstract Landroid/provider/ICloudMediaSurfaceController$Stub;
.super Landroid/os/Binder;
.source "ICloudMediaSurfaceController.java"

# interfaces
.implements Landroid/provider/ICloudMediaSurfaceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ICloudMediaSurfaceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ICloudMediaSurfaceController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConfigChange:I = 0x9

.field static final blacklist TRANSACTION_onDestroy:I = 0xa

.field static final blacklist TRANSACTION_onMediaPause:I = 0x7

.field static final blacklist TRANSACTION_onMediaPlay:I = 0x6

.field static final blacklist TRANSACTION_onMediaSeekTo:I = 0x8

.field static final blacklist TRANSACTION_onPlayerCreate:I = 0x1

.field static final blacklist TRANSACTION_onPlayerRelease:I = 0x2

.field static final blacklist TRANSACTION_onSurfaceChanged:I = 0x4

.field static final blacklist TRANSACTION_onSurfaceCreated:I = 0x3

.field static final blacklist TRANSACTION_onSurfaceDestroyed:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 58
    const-string v0, "android.provider.ICloudMediaSurfaceController"

    invoke-virtual {p0, p0, v0}, Landroid/provider/ICloudMediaSurfaceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/provider/ICloudMediaSurfaceController;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 66
    if-nez p0, :cond_4

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    const-string v0, "android.provider.ICloudMediaSurfaceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 70
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/provider/ICloudMediaSurfaceController;

    if-eqz v1, :cond_14

    .line 71
    move-object v1, v0

    check-cast v1, Landroid/provider/ICloudMediaSurfaceController;

    return-object v1

    .line 73
    :cond_14
    new-instance v1, Landroid/provider/ICloudMediaSurfaceController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/provider/ICloudMediaSurfaceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 82
    packed-switch p0, :pswitch_data_24

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 122
    :pswitch_5
    const-string v0, "onDestroy"

    return-object v0

    .line 118
    :pswitch_8
    const-string v0, "onConfigChange"

    return-object v0

    .line 114
    :pswitch_b
    const-string v0, "onMediaSeekTo"

    return-object v0

    .line 110
    :pswitch_e
    const-string v0, "onMediaPause"

    return-object v0

    .line 106
    :pswitch_11
    const-string v0, "onMediaPlay"

    return-object v0

    .line 102
    :pswitch_14
    const-string v0, "onSurfaceDestroyed"

    return-object v0

    .line 98
    :pswitch_17
    const-string v0, "onSurfaceChanged"

    return-object v0

    .line 94
    :pswitch_1a
    const-string v0, "onSurfaceCreated"

    return-object v0

    .line 90
    :pswitch_1d
    const-string v0, "onPlayerRelease"

    return-object v0

    .line 86
    :pswitch_20
    const-string v0, "onPlayerCreate"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
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

    .line 77
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 422
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 133
    invoke-static {p1}, Landroid/provider/ICloudMediaSurfaceController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 137
    const-string v0, "android.provider.ICloudMediaSurfaceController"

    .line 138
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 139
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 142
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v1

    .line 145
    :cond_16
    packed-switch p1, :pswitch_data_a2

    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 229
    :pswitch_1e
    invoke-virtual {p0}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onDestroy()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto/16 :goto_a1

    .line 222
    :pswitch_26
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 223
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p0, v2}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onConfigChange(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto :goto_a1

    .line 212
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 215
    .local v3, "_arg1":J
    invoke-virtual {p0, v2, v3, v4}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onMediaSeekTo(IJ)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_a1

    .line 204
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":J
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onMediaPause(I)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_a1

    .line 196
    .end local v2    # "_arg0":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 197
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onMediaPlay(I)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    goto :goto_a1

    .line 188
    .end local v2    # "_arg0":I
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onSurfaceDestroyed(I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    goto :goto_a1

    .line 174
    .end local v2    # "_arg0":I
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 178
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 180
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 181
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onSurfaceChanged(IIII)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    goto :goto_a1

    .line 162
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 164
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 166
    .local v3, "_arg1":Landroid/view/Surface;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onSurfaceCreated(ILandroid/view/Surface;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    goto :goto_a1

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/Surface;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_93
    invoke-virtual {p0}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onPlayerRelease()V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    goto :goto_a1

    .line 149
    :pswitch_9a
    invoke-virtual {p0}, Landroid/provider/ICloudMediaSurfaceController$Stub;->onPlayerCreate()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    nop

    .line 238
    :goto_a1
    return v1

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_93
        :pswitch_7c
        :pswitch_65
        :pswitch_5a
        :pswitch_4f
        :pswitch_44
        :pswitch_35
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method
