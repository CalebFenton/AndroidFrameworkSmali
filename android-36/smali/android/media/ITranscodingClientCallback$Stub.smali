.class public abstract Landroid/media/ITranscodingClientCallback$Stub;
.super Landroid/os/Binder;
.source "ITranscodingClientCallback.java"

# interfaces
.implements Landroid/media/ITranscodingClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ITranscodingClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ITranscodingClientCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAwaitNumberOfSessionsChanged:I = 0x7

.field static final blacklist TRANSACTION_onProgressUpdate:I = 0x8

.field static final blacklist TRANSACTION_onTranscodingFailed:I = 0x6

.field static final blacklist TRANSACTION_onTranscodingFinished:I = 0x5

.field static final blacklist TRANSACTION_onTranscodingPaused:I = 0x3

.field static final blacklist TRANSACTION_onTranscodingResumed:I = 0x4

.field static final blacklist TRANSACTION_onTranscodingStarted:I = 0x2

.field static final blacklist TRANSACTION_openFileDescriptor:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 116
    const-string v0, "android.media.ITranscodingClientCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/ITranscodingClientCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_4
    const-string v0, "android.media.ITranscodingClientCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 128
    instance-of v1, v0, Landroid/media/ITranscodingClientCallback;

    if-eqz v1, :cond_13

    .line 129
    check-cast v0, Landroid/media/ITranscodingClientCallback;

    return-object v0

    .line 131
    :cond_13
    new-instance v0, Landroid/media/ITranscodingClientCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/ITranscodingClientCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    const-string v0, "android.media.ITranscodingClientCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 144
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_82

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 213
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 216
    invoke-interface {p0, p1, p2}, Landroid/media/ITranscodingClientCallback;->onProgressUpdate(II)V

    goto :goto_80

    .line 202
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 207
    invoke-interface {p0, p1, p3, p2}, Landroid/media/ITranscodingClientCallback;->onAwaitNumberOfSessionsChanged(III)V

    goto :goto_80

    .line 193
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 196
    invoke-interface {p0, p1, p2}, Landroid/media/ITranscodingClientCallback;->onTranscodingFailed(II)V

    goto :goto_80

    .line 184
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 186
    sget-object p3, Landroid/media/TranscodingResultParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/TranscodingResultParcel;

    .line 187
    invoke-interface {p0, p1, p2}, Landroid/media/ITranscodingClientCallback;->onTranscodingFinished(ILandroid/media/TranscodingResultParcel;)V

    goto :goto_80

    .line 177
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 178
    invoke-interface {p0, p1}, Landroid/media/ITranscodingClientCallback;->onTranscodingResumed(I)V

    goto :goto_80

    .line 170
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 171
    invoke-interface {p0, p1}, Landroid/media/ITranscodingClientCallback;->onTranscodingPaused(I)V

    goto :goto_80

    .line 163
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 164
    invoke-interface {p0, p1}, Landroid/media/ITranscodingClientCallback;->onTranscodingStarted(I)V

    goto :goto_80

    .line 152
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 155
    invoke-interface {p0, p1, p2}, Landroid/media/ITranscodingClientCallback;->openFileDescriptor(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :goto_80
    return v1

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_46
        :pswitch_3a
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method
