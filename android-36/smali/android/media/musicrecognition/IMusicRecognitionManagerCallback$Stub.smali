.class public abstract Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;
.super Landroid/os/Binder;
.source "IMusicRecognitionManagerCallback.java"

# interfaces
.implements Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAudioStreamClosed:I = 0x3

.field static final blacklist TRANSACTION_onRecognitionFailed:I = 0x2

.field static final blacklist TRANSACTION_onRecognitionSucceeded:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "android.media.musicrecognition.IMusicRecognitionManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_4
    const-string v0, "android.media.musicrecognition.IMusicRecognitionManagerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    if-eqz v1, :cond_14

    .line 54
    move-object v1, v0

    check-cast v1, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;

    return-object v1

    .line 56
    :cond_14
    new-instance v1, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 65
    packed-switch p0, :pswitch_data_e

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 77
    :pswitch_5
    const-string v0, "onAudioStreamClosed"

    return-object v0

    .line 73
    :pswitch_8
    const-string v0, "onRecognitionFailed"

    return-object v0

    .line 69
    :pswitch_b
    const-string v0, "onRecognitionSucceeded"

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

    .line 60
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 190
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 88
    invoke-static {p1}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const-string v0, "android.media.musicrecognition.IMusicRecognitionManagerCallback"

    .line 93
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v1

    .line 100
    :cond_16
    packed-switch p1, :pswitch_data_46

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_1e
    invoke-virtual {p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->onAudioStreamClosed()V

    .line 123
    goto :goto_44

    .line 115
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, v2}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->onRecognitionFailed(I)V

    .line 118
    goto :goto_44

    .line 105
    .end local v2    # "_arg0":I
    :pswitch_2d
    sget-object v2, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaMetadata;

    .line 107
    .local v2, "_arg0":Landroid/media/MediaMetadata;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 108
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 109
    invoke-virtual {p0, v2, v3}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;->onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V

    .line 110
    nop

    .line 130
    .end local v2    # "_arg0":Landroid/media/MediaMetadata;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :goto_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method
