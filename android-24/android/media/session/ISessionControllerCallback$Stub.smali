.class public abstract Landroid/media/session/ISessionControllerCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionControllerCallback.java"

# interfaces
.implements Landroid/media/session/ISessionControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionControllerCallback"

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
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.media.session.ISessionControllerCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.session.ISessionControllerCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/session/ISessionControllerCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/media/session/ISessionControllerCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/session/ISessionControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    #@c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v9

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    #@13
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    .line 54
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_0

    #@20
    .line 55
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v7

    #@26
    check-cast v7, Landroid/os/Bundle;

    #@28
    .line 60
    :goto_0
    invoke-virtual {p0, v6, v7}, Landroid/media/session/ISessionControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2b
    .line 61
    return v9

    #@2c
    .line 58
    :cond_0
    const/4 v7, 0x0

    #@2d
    .local v7, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@2e
    .line 65
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    #@31
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 66
    invoke-virtual {p0}, Landroid/media/session/ISessionControllerCallback$Stub;->onSessionDestroyed()V

    #@37
    .line 67
    return v9

    #@38
    .line 71
    :sswitch_3
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    #@3b
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v8

    #@42
    if-eqz v8, :cond_1

    #@44
    .line 74
    sget-object v8, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@46
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49
    move-result-object v3

    #@4a
    check-cast v3, Landroid/media/session/PlaybackState;

    #@4c
    .line 79
    :goto_1
    invoke-virtual {p0, v3}, Landroid/media/session/ISessionControllerCallback$Stub;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    #@4f
    .line 80
    return v9

    #@50
    .line 77
    :cond_1
    const/4 v3, 0x0

    #@51
    .local v3, "_arg0":Landroid/media/session/PlaybackState;
    goto :goto_1

    #@52
    .line 84
    .end local v3    # "_arg0":Landroid/media/session/PlaybackState;
    :sswitch_4
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    #@55
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@58
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v8

    #@5c
    if-eqz v8, :cond_2

    #@5e
    .line 87
    sget-object v8, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    #@60
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@63
    move-result-object v1

    #@64
    check-cast v1, Landroid/media/MediaMetadata;

    #@66
    .line 92
    :goto_2
    invoke-virtual {p0, v1}, Landroid/media/session/ISessionControllerCallback$Stub;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    #@69
    .line 93
    return v9

    #@6a
    .line 90
    :cond_2
    const/4 v1, 0x0

    #@6b
    .local v1, "_arg0":Landroid/media/MediaMetadata;
    goto :goto_2

    #@6c
    .line 97
    .end local v1    # "_arg0":Landroid/media/MediaMetadata;
    :sswitch_5
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    #@6f
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@72
    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v8

    #@76
    if-eqz v8, :cond_3

    #@78
    .line 100
    sget-object v8, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@7a
    invoke-interface {v8, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Landroid/content/pm/ParceledListSlice;

    #@80
    .line 105
    :goto_3
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V

    #@83
    .line 106
    return v9

    #@84
    .line 103
    :cond_3
    const/4 v0, 0x0

    #@85
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_3

    #@86
    .line 110
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_6
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    #@89
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8f
    move-result v8

    #@90
    if-eqz v8, :cond_4

    #@92
    .line 113
    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@94
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@97
    move-result-object v5

    #@98
    check-cast v5, Ljava/lang/CharSequence;

    #@9a
    .line 118
    :goto_4
    invoke-virtual {p0, v5}, Landroid/media/session/ISessionControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    #@9d
    .line 119
    return v9

    #@9e
    .line 116
    :cond_4
    const/4 v5, 0x0

    #@9f
    .local v5, "_arg0":Ljava/lang/CharSequence;
    goto :goto_4

    #@a0
    .line 123
    .end local v5    # "_arg0":Ljava/lang/CharSequence;
    :sswitch_7
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    #@a3
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a6
    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a9
    move-result v8

    #@aa
    if-eqz v8, :cond_5

    #@ac
    .line 126
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ae
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@b1
    move-result-object v4

    #@b2
    check-cast v4, Landroid/os/Bundle;

    #@b4
    .line 131
    :goto_5
    invoke-virtual {p0, v4}, Landroid/media/session/ISessionControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    #@b7
    .line 132
    return v9

    #@b8
    .line 129
    :cond_5
    const/4 v4, 0x0

    #@b9
    .local v4, "_arg0":Landroid/os/Bundle;
    goto :goto_5

    #@ba
    .line 136
    .end local v4    # "_arg0":Landroid/os/Bundle;
    :sswitch_8
    const-string/jumbo v8, "android.media.session.ISessionControllerCallback"

    #@bd
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c0
    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c3
    move-result v8

    #@c4
    if-eqz v8, :cond_6

    #@c6
    .line 139
    sget-object v8, Landroid/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c8
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cb
    move-result-object v2

    #@cc
    check-cast v2, Landroid/media/session/ParcelableVolumeInfo;

    #@ce
    .line 144
    :goto_6
    invoke-virtual {p0, v2}, Landroid/media/session/ISessionControllerCallback$Stub;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V

    #@d1
    .line 145
    return v9

    #@d2
    .line 142
    :cond_6
    const/4 v2, 0x0

    #@d3
    .local v2, "_arg0":Landroid/media/session/ParcelableVolumeInfo;
    goto :goto_6

    #@d4
    .line 41
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
