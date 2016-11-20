.class public abstract Landroid/media/session/ISessionCallback$Stub;
.super Landroid/os/Binder;
.source "ISessionCallback.java"

# interfaces
.implements Landroid/media/session/ISessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionCallback"

.field static final TRANSACTION_onAdjustVolume:I = 0x15

.field static final TRANSACTION_onCommand:I = 0x1

.field static final TRANSACTION_onCustomAction:I = 0x14

.field static final TRANSACTION_onFastForward:I = 0x10

.field static final TRANSACTION_onMediaButton:I = 0x2

.field static final TRANSACTION_onNext:I = 0xe

.field static final TRANSACTION_onPause:I = 0xc

.field static final TRANSACTION_onPlay:I = 0x7

.field static final TRANSACTION_onPlayFromMediaId:I = 0x8

.field static final TRANSACTION_onPlayFromSearch:I = 0x9

.field static final TRANSACTION_onPlayFromUri:I = 0xa

.field static final TRANSACTION_onPrepare:I = 0x3

.field static final TRANSACTION_onPrepareFromMediaId:I = 0x4

.field static final TRANSACTION_onPrepareFromSearch:I = 0x5

.field static final TRANSACTION_onPrepareFromUri:I = 0x6

.field static final TRANSACTION_onPrevious:I = 0xf

.field static final TRANSACTION_onRate:I = 0x13

.field static final TRANSACTION_onRewind:I = 0x11

.field static final TRANSACTION_onSeekTo:I = 0x12

.field static final TRANSACTION_onSetVolumeTo:I = 0x16

.field static final TRANSACTION_onSkipToTrack:I = 0xb

.field static final TRANSACTION_onStop:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.media.session.ISessionCallback"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;
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
    const-string/jumbo v1, "android.media.session.ISessionCallback"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/session/ISessionCallback;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/media/session/ISessionCallback;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISessionCallback$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/session/ISessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 301
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 46
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

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
    move-result v10

    #@1e
    if-eqz v10, :cond_0

    #@20
    .line 55
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v8

    #@26
    check-cast v8, Landroid/os/Bundle;

    #@28
    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v10

    #@2c
    if-eqz v10, :cond_1

    #@2e
    .line 62
    sget-object v10, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v9

    #@34
    check-cast v9, Landroid/os/ResultReceiver;

    #@36
    .line 67
    :goto_1
    invoke-virtual {p0, v6, v8, v9}, Landroid/media/session/ISessionCallback$Stub;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    #@39
    .line 68
    const/4 v10, 0x1

    #@3a
    return v10

    #@3b
    .line 58
    :cond_0
    const/4 v8, 0x0

    #@3c
    .local v8, "_arg1":Landroid/os/Bundle;
    goto :goto_0

    #@3d
    .line 65
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :cond_1
    const/4 v9, 0x0

    #@3e
    .local v9, "_arg2":Landroid/os/ResultReceiver;
    goto :goto_1

    #@3f
    .line 72
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v9    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_2
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@42
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@45
    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v10

    #@49
    if-eqz v10, :cond_2

    #@4b
    .line 75
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@4d
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    check-cast v1, Landroid/content/Intent;

    #@53
    .line 81
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v7

    #@57
    .line 83
    .local v7, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5a
    move-result v10

    #@5b
    if-eqz v10, :cond_3

    #@5d
    .line 84
    sget-object v10, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5f
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@62
    move-result-object v9

    #@63
    check-cast v9, Landroid/os/ResultReceiver;

    #@65
    .line 89
    :goto_3
    invoke-virtual {p0, v1, v7, v9}, Landroid/media/session/ISessionCallback$Stub;->onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V

    #@68
    .line 90
    const/4 v10, 0x1

    #@69
    return v10

    #@6a
    .line 78
    .end local v7    # "_arg1":I
    :cond_2
    const/4 v1, 0x0

    #@6b
    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_2

    #@6c
    .line 87
    .end local v1    # "_arg0":Landroid/content/Intent;
    .restart local v7    # "_arg1":I
    :cond_3
    const/4 v9, 0x0

    #@6d
    .restart local v9    # "_arg2":Landroid/os/ResultReceiver;
    goto :goto_3

    #@6e
    .line 94
    .end local v7    # "_arg1":I
    .end local v9    # "_arg2":Landroid/os/ResultReceiver;
    :sswitch_3
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@71
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 95
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPrepare()V

    #@77
    .line 96
    const/4 v10, 0x1

    #@78
    return v10

    #@79
    .line 100
    :sswitch_4
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@7c
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7f
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@82
    move-result-object v6

    #@83
    .line 104
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@86
    move-result v10

    #@87
    if-eqz v10, :cond_4

    #@89
    .line 105
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@8b
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8e
    move-result-object v8

    #@8f
    check-cast v8, Landroid/os/Bundle;

    #@91
    .line 110
    :goto_4
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@94
    .line 111
    const/4 v10, 0x1

    #@95
    return v10

    #@96
    .line 108
    :cond_4
    const/4 v8, 0x0

    #@97
    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_4

    #@98
    .line 115
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@9b
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9e
    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@a1
    move-result-object v6

    #@a2
    .line 119
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v10

    #@a6
    if-eqz v10, :cond_5

    #@a8
    .line 120
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@aa
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@ad
    move-result-object v8

    #@ae
    check-cast v8, Landroid/os/Bundle;

    #@b0
    .line 125
    :goto_5
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@b3
    .line 126
    const/4 v10, 0x1

    #@b4
    return v10

    #@b5
    .line 123
    :cond_5
    const/4 v8, 0x0

    #@b6
    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    #@b7
    .line 130
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@ba
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@bd
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@c0
    move-result v10

    #@c1
    if-eqz v10, :cond_6

    #@c3
    .line 133
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c5
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c8
    move-result-object v5

    #@c9
    check-cast v5, Landroid/net/Uri;

    #@cb
    .line 139
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ce
    move-result v10

    #@cf
    if-eqz v10, :cond_7

    #@d1
    .line 140
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@d3
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@d6
    move-result-object v8

    #@d7
    check-cast v8, Landroid/os/Bundle;

    #@d9
    .line 145
    :goto_7
    invoke-virtual {p0, v5, v8}, Landroid/media/session/ISessionCallback$Stub;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@dc
    .line 146
    const/4 v10, 0x1

    #@dd
    return v10

    #@de
    .line 136
    :cond_6
    const/4 v5, 0x0

    #@df
    .local v5, "_arg0":Landroid/net/Uri;
    goto :goto_6

    #@e0
    .line 143
    .end local v5    # "_arg0":Landroid/net/Uri;
    :cond_7
    const/4 v8, 0x0

    #@e1
    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    #@e2
    .line 150
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@e5
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e8
    .line 151
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPlay()V

    #@eb
    .line 152
    const/4 v10, 0x1

    #@ec
    return v10

    #@ed
    .line 156
    :sswitch_8
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@f0
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f3
    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f6
    move-result-object v6

    #@f7
    .line 160
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@fa
    move-result v10

    #@fb
    if-eqz v10, :cond_8

    #@fd
    .line 161
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ff
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@102
    move-result-object v8

    #@103
    check-cast v8, Landroid/os/Bundle;

    #@105
    .line 166
    :goto_8
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    #@108
    .line 167
    const/4 v10, 0x1

    #@109
    return v10

    #@10a
    .line 164
    :cond_8
    const/4 v8, 0x0

    #@10b
    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_8

    #@10c
    .line 171
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_9
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@10f
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@112
    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@115
    move-result-object v6

    #@116
    .line 175
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@119
    move-result v10

    #@11a
    if-eqz v10, :cond_9

    #@11c
    .line 176
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@11e
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@121
    move-result-object v8

    #@122
    check-cast v8, Landroid/os/Bundle;

    #@124
    .line 181
    :goto_9
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    #@127
    .line 182
    const/4 v10, 0x1

    #@128
    return v10

    #@129
    .line 179
    :cond_9
    const/4 v8, 0x0

    #@12a
    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_9

    #@12b
    .line 186
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_a
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@12e
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@131
    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@134
    move-result v10

    #@135
    if-eqz v10, :cond_a

    #@137
    .line 189
    sget-object v10, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@139
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13c
    move-result-object v5

    #@13d
    check-cast v5, Landroid/net/Uri;

    #@13f
    .line 195
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@142
    move-result v10

    #@143
    if-eqz v10, :cond_b

    #@145
    .line 196
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@147
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14a
    move-result-object v8

    #@14b
    check-cast v8, Landroid/os/Bundle;

    #@14d
    .line 201
    :goto_b
    invoke-virtual {p0, v5, v8}, Landroid/media/session/ISessionCallback$Stub;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    #@150
    .line 202
    const/4 v10, 0x1

    #@151
    return v10

    #@152
    .line 192
    :cond_a
    const/4 v5, 0x0

    #@153
    .restart local v5    # "_arg0":Landroid/net/Uri;
    goto :goto_a

    #@154
    .line 199
    .end local v5    # "_arg0":Landroid/net/Uri;
    :cond_b
    const/4 v8, 0x0

    #@155
    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_b

    #@156
    .line 206
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_b
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@159
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15c
    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@15f
    move-result-wide v2

    #@160
    .line 209
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onSkipToTrack(J)V

    #@163
    .line 210
    const/4 v10, 0x1

    #@164
    return v10

    #@165
    .line 214
    .end local v2    # "_arg0":J
    :sswitch_c
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@168
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16b
    .line 215
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPause()V

    #@16e
    .line 216
    const/4 v10, 0x1

    #@16f
    return v10

    #@170
    .line 220
    :sswitch_d
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@173
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@176
    .line 221
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onStop()V

    #@179
    .line 222
    const/4 v10, 0x1

    #@17a
    return v10

    #@17b
    .line 226
    :sswitch_e
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@17e
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@181
    .line 227
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onNext()V

    #@184
    .line 228
    const/4 v10, 0x1

    #@185
    return v10

    #@186
    .line 232
    :sswitch_f
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@189
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18c
    .line 233
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onPrevious()V

    #@18f
    .line 234
    const/4 v10, 0x1

    #@190
    return v10

    #@191
    .line 238
    :sswitch_10
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@194
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@197
    .line 239
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onFastForward()V

    #@19a
    .line 240
    const/4 v10, 0x1

    #@19b
    return v10

    #@19c
    .line 244
    :sswitch_11
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@19f
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a2
    .line 245
    invoke-virtual {p0}, Landroid/media/session/ISessionCallback$Stub;->onRewind()V

    #@1a5
    .line 246
    const/4 v10, 0x1

    #@1a6
    return v10

    #@1a7
    .line 250
    :sswitch_12
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@1aa
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1ad
    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@1b0
    move-result-wide v2

    #@1b1
    .line 253
    .restart local v2    # "_arg0":J
    invoke-virtual {p0, v2, v3}, Landroid/media/session/ISessionCallback$Stub;->onSeekTo(J)V

    #@1b4
    .line 254
    const/4 v10, 0x1

    #@1b5
    return v10

    #@1b6
    .line 258
    .end local v2    # "_arg0":J
    :sswitch_13
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@1b9
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bc
    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1bf
    move-result v10

    #@1c0
    if-eqz v10, :cond_c

    #@1c2
    .line 261
    sget-object v10, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1c4
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c7
    move-result-object v4

    #@1c8
    check-cast v4, Landroid/media/Rating;

    #@1ca
    .line 266
    :goto_c
    invoke-virtual {p0, v4}, Landroid/media/session/ISessionCallback$Stub;->onRate(Landroid/media/Rating;)V

    #@1cd
    .line 267
    const/4 v10, 0x1

    #@1ce
    return v10

    #@1cf
    .line 264
    :cond_c
    const/4 v4, 0x0

    #@1d0
    .local v4, "_arg0":Landroid/media/Rating;
    goto :goto_c

    #@1d1
    .line 271
    .end local v4    # "_arg0":Landroid/media/Rating;
    :sswitch_14
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@1d4
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1d7
    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1da
    move-result-object v6

    #@1db
    .line 275
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1de
    move-result v10

    #@1df
    if-eqz v10, :cond_d

    #@1e1
    .line 276
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e3
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1e6
    move-result-object v8

    #@1e7
    check-cast v8, Landroid/os/Bundle;

    #@1e9
    .line 281
    :goto_d
    invoke-virtual {p0, v6, v8}, Landroid/media/session/ISessionCallback$Stub;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1ec
    .line 282
    const/4 v10, 0x1

    #@1ed
    return v10

    #@1ee
    .line 279
    :cond_d
    const/4 v8, 0x0

    #@1ef
    .restart local v8    # "_arg1":Landroid/os/Bundle;
    goto :goto_d

    #@1f0
    .line 286
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/os/Bundle;
    :sswitch_15
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@1f3
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f6
    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1f9
    move-result v0

    #@1fa
    .line 289
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onAdjustVolume(I)V

    #@1fd
    .line 290
    const/4 v10, 0x1

    #@1fe
    return v10

    #@1ff
    .line 294
    .end local v0    # "_arg0":I
    :sswitch_16
    const-string/jumbo v10, "android.media.session.ISessionCallback"

    #@202
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@205
    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@208
    move-result v0

    #@209
    .line 297
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/session/ISessionCallback$Stub;->onSetVolumeTo(I)V

    #@20c
    .line 298
    const/4 v10, 0x1

    #@20d
    return v10

    #@20e
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
