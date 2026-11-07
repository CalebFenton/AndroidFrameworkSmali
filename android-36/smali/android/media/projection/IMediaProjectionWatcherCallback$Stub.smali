.class public abstract Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaProjectionWatcherCallback.java"

# interfaces
.implements Landroid/media/projection/IMediaProjectionWatcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjectionWatcherCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjectionWatcherCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IMediaProjectionWatcherCallback"

.field static final blacklist TRANSACTION_onMediaProjectionEvent:I = 0x4

.field static final blacklist TRANSACTION_onRecordingSessionSet:I = 0x3

.field static final greylist-max-o TRANSACTION_onStart:I = 0x1

.field static final greylist-max-o TRANSACTION_onStop:I = 0x2


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "android.media.projection.IMediaProjectionWatcherCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionWatcherCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    const-string v0, "android.media.projection.IMediaProjectionWatcherCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/projection/IMediaProjectionWatcherCallback;

    if-eqz v1, :cond_14

    .line 70
    move-object v1, v0

    check-cast v1, Landroid/media/projection/IMediaProjectionWatcherCallback;

    return-object v1

    .line 72
    :cond_14
    new-instance v1, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 81
    packed-switch p0, :pswitch_data_12

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_5
    const-string v0, "onMediaProjectionEvent"

    return-object v0

    .line 93
    :pswitch_8
    const-string v0, "onRecordingSessionSet"

    return-object v0

    .line 89
    :pswitch_b
    const-string v0, "onStop"

    return-object v0

    .line 85
    :pswitch_e
    const-string v0, "onStart"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 76
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 260
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 108
    invoke-static {p1}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 112
    const-string v0, "android.media.projection.IMediaProjectionWatcherCallback"

    .line 113
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 114
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 117
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v1

    .line 120
    :cond_16
    packed-switch p1, :pswitch_data_74

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 151
    :pswitch_1e
    sget-object v2, Landroid/media/projection/MediaProjectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjectionEvent;

    .line 153
    .local v2, "_arg0":Landroid/media/projection/MediaProjectionEvent;
    sget-object v3, Landroid/media/projection/MediaProjectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/projection/MediaProjectionInfo;

    .line 155
    .local v3, "_arg1":Landroid/media/projection/MediaProjectionInfo;
    sget-object v4, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ContentRecordingSession;

    .line 156
    .local v4, "_arg2":Landroid/view/ContentRecordingSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v2, v3, v4}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->onMediaProjectionEvent(Landroid/media/projection/MediaProjectionEvent;Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    .line 158
    goto :goto_72

    .line 141
    .end local v2    # "_arg0":Landroid/media/projection/MediaProjectionEvent;
    .end local v3    # "_arg1":Landroid/media/projection/MediaProjectionInfo;
    .end local v4    # "_arg2":Landroid/view/ContentRecordingSession;
    :pswitch_3d
    sget-object v2, Landroid/media/projection/MediaProjectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjectionInfo;

    .line 143
    .local v2, "_arg0":Landroid/media/projection/MediaProjectionInfo;
    sget-object v3, Landroid/view/ContentRecordingSession;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ContentRecordingSession;

    .line 144
    .local v3, "_arg1":Landroid/view/ContentRecordingSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-virtual {p0, v2, v3}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->onRecordingSessionSet(Landroid/media/projection/MediaProjectionInfo;Landroid/view/ContentRecordingSession;)V

    .line 146
    goto :goto_72

    .line 133
    .end local v2    # "_arg0":Landroid/media/projection/MediaProjectionInfo;
    .end local v3    # "_arg1":Landroid/view/ContentRecordingSession;
    :pswitch_54
    sget-object v2, Landroid/media/projection/MediaProjectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjectionInfo;

    .line 134
    .restart local v2    # "_arg0":Landroid/media/projection/MediaProjectionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->onStop(Landroid/media/projection/MediaProjectionInfo;)V

    .line 136
    goto :goto_72

    .line 125
    .end local v2    # "_arg0":Landroid/media/projection/MediaProjectionInfo;
    :pswitch_63
    sget-object v2, Landroid/media/projection/MediaProjectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/projection/MediaProjectionInfo;

    .line 126
    .restart local v2    # "_arg0":Landroid/media/projection/MediaProjectionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 127
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->onStart(Landroid/media/projection/MediaProjectionInfo;)V

    .line 128
    nop

    .line 165
    .end local v2    # "_arg0":Landroid/media/projection/MediaProjectionInfo;
    :goto_72
    return v1

    nop

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_63
        :pswitch_54
        :pswitch_3d
        :pswitch_1e
    .end packed-switch
.end method
