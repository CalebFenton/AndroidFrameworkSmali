.class public abstract Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.support.v4.media.session.IMediaControllerCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.support.v4.media.session.IMediaControllerCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 47
    :sswitch_0
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    #@c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 48
    return v9

    #@10
    .line 52
    :sswitch_1
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    #@13
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    .line 56
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_0

    #@20
    .line 57
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v7

    #@26
    check-cast v7, Landroid/os/Bundle;

    #@28
    .line 62
    :goto_0
    invoke-virtual {p0, v5, v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2b
    .line 63
    return v9

    #@2c
    .line 60
    :cond_0
    const/4 v7, 0x0

    #@2d
    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@2e
    .line 67
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    #@31
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 68
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    #@37
    .line 69
    return v9

    #@38
    .line 73
    :sswitch_3
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    #@3b
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v8

    #@42
    if-eqz v8, :cond_1

    #@44
    .line 76
    sget-object v8, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49
    move-result-object v3

    #@4a
    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat;

    #@4c
    .line 81
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    #@4f
    .line 82
    return v9

    #@50
    .line 79
    :cond_1
    const/4 v3, 0x0

    #@51
    .local v3, "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    goto :goto_1

    #@52
    .line 86
    .end local v3    # "_arg0":Landroid/support/v4/media/session/PlaybackStateCompat;
    :sswitch_4
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    #@55
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v8

    #@5c
    if-eqz v8, :cond_2

    #@5e
    .line 89
    sget-object v8, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63
    move-result-object v1

    #@64
    check-cast v1, Landroid/support/v4/media/MediaMetadataCompat;

    #@66
    .line 94
    :goto_2
    invoke-virtual {p0, v1}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    #@69
    .line 95
    return v9

    #@6a
    .line 92
    :cond_2
    const/4 v1, 0x0

    #@6b
    .local v1, "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    goto :goto_2

    #@6c
    .line 99
    .end local v1    # "_arg0":Landroid/support/v4/media/MediaMetadataCompat;
    :sswitch_5
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    #@6f
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 101
    sget-object v8, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    #@74
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@77
    move-result-object v6

    #@78
    .line 102
    .local v6, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p0, v6}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    #@7b
    .line 103
    return v9

    #@7c
    .line 107
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :sswitch_6
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    #@7f
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@82
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@85
    move-result v8

    #@86
    if-eqz v8, :cond_3

    #@88
    .line 110
    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@8a
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8d
    move-result-object v4

    #@8e
    check-cast v4, Ljava/lang/CharSequence;

    #@90
    .line 115
    :goto_3
    invoke-virtual {p0, v4}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    #@93
    .line 116
    return v9

    #@94
    .line 113
    :cond_3
    const/4 v4, 0x0

    #@95
    .local v4, "_arg0":Ljava/lang/CharSequence;
    goto :goto_3

    #@96
    .line 120
    .end local v4    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_7
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    #@99
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v8

    #@a0
    if-eqz v8, :cond_4

    #@a2
    .line 123
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@a4
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@a7
    move-result-object v0

    #@a8
    check-cast v0, Landroid/os/Bundle;

    #@aa
    .line 128
    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    #@ad
    .line 129
    return v9

    #@ae
    .line 126
    :cond_4
    const/4 v0, 0x0

    #@af
    .local v0, "_arg0":Landroid/os/Bundle;
    goto :goto_4

    #@b0
    .line 133
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_8
    const-string/jumbo v8, "android.support.v4.media.session.IMediaControllerCallback"

    #@b3
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b6
    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v8

    #@ba
    if-eqz v8, :cond_5

    #@bc
    .line 136
    sget-object v8, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@be
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c1
    move-result-object v2

    #@c2
    check-cast v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    #@c4
    .line 141
    :goto_5
    invoke-virtual {p0, v2}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    #@c7
    .line 142
    return v9

    #@c8
    .line 139
    :cond_5
    const/4 v2, 0x0

    #@c9
    .local v2, "_arg0":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    goto :goto_5

    #@ca
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
