.class public abstract Landroid/media/IRemoteControlClient$Stub;
.super Landroid/os/Binder;
.source "IRemoteControlClient.java"

# interfaces
.implements Landroid/media/IRemoteControlClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteControlClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRemoteControlClient"

.field static final TRANSACTION_enableRemoteControlDisplay:I = 0x8

.field static final TRANSACTION_informationRequestForDisplay:I = 0x2

.field static final TRANSACTION_onInformationRequested:I = 0x1

.field static final TRANSACTION_plugRemoteControlDisplay:I = 0x4

.field static final TRANSACTION_seekTo:I = 0x9

.field static final TRANSACTION_setBitmapSizeForDisplay:I = 0x6

.field static final TRANSACTION_setCurrentClientGenerationId:I = 0x3

.field static final TRANSACTION_setWantsSyncForDisplay:I = 0x7

.field static final TRANSACTION_unplugRemoteControlDisplay:I = 0x5

.field static final TRANSACTION_updateMetadata:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "android.media.IRemoteControlClient"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/IRemoteControlClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 30
    if-nez p0, :cond_0

    #@3
    .line 31
    return-object v1

    #@4
    .line 33
    :cond_0
    const-string/jumbo v1, "android.media.IRemoteControlClient"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/IRemoteControlClient;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Landroid/media/IRemoteControlClient;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IRemoteControlClient$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/IRemoteControlClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 41
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 49
    :sswitch_0
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 50
    return v9

    #@10
    .line 54
    :sswitch_1
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@13
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 58
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v2

    #@1e
    .line 59
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/media/IRemoteControlClient$Stub;->onInformationRequested(II)V

    #@21
    .line 60
    return v9

    #@22
    .line 64
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_2
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@25
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v8

    #@2c
    invoke-static {v8}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@2f
    move-result-object v1

    #@30
    .line 68
    .local v1, "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v2

    #@34
    .line 70
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v6

    #@38
    .line 71
    .local v6, "_arg2":I
    invoke-virtual {p0, v1, v2, v6}, Landroid/media/IRemoteControlClient$Stub;->informationRequestForDisplay(Landroid/media/IRemoteControlDisplay;II)V

    #@3b
    .line 72
    return v9

    #@3c
    .line 76
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v2    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_3
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@3f
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    .line 79
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/IRemoteControlClient$Stub;->setCurrentClientGenerationId(I)V

    #@49
    .line 80
    return v9

    #@4a
    .line 84
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@4d
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@50
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@53
    move-result-object v8

    #@54
    invoke-static {v8}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@57
    move-result-object v1

    #@58
    .line 88
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v2

    #@5c
    .line 90
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v6

    #@60
    .line 91
    .restart local v6    # "_arg2":I
    invoke-virtual {p0, v1, v2, v6}, Landroid/media/IRemoteControlClient$Stub;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)V

    #@63
    .line 92
    return v9

    #@64
    .line 96
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v2    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_5
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@67
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6a
    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6d
    move-result-object v8

    #@6e
    invoke-static {v8}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@71
    move-result-object v1

    #@72
    .line 99
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p0, v1}, Landroid/media/IRemoteControlClient$Stub;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    #@75
    .line 100
    return v9

    #@76
    .line 104
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    :sswitch_6
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@79
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@7c
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@7f
    move-result-object v8

    #@80
    invoke-static {v8}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@83
    move-result-object v1

    #@84
    .line 108
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@87
    move-result v2

    #@88
    .line 110
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8b
    move-result v6

    #@8c
    .line 111
    .restart local v6    # "_arg2":I
    invoke-virtual {p0, v1, v2, v6}, Landroid/media/IRemoteControlClient$Stub;->setBitmapSizeForDisplay(Landroid/media/IRemoteControlDisplay;II)V

    #@8f
    .line 112
    return v9

    #@90
    .line 116
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v2    # "_arg1":I
    .end local v6    # "_arg2":I
    :sswitch_7
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@93
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@99
    move-result-object v8

    #@9a
    invoke-static {v8}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@9d
    move-result-object v1

    #@9e
    .line 120
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a1
    move-result v8

    #@a2
    if-eqz v8, :cond_0

    #@a4
    const/4 v3, 0x1

    #@a5
    .line 121
    .local v3, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v1, v3}, Landroid/media/IRemoteControlClient$Stub;->setWantsSyncForDisplay(Landroid/media/IRemoteControlDisplay;Z)V

    #@a8
    .line 122
    return v9

    #@a9
    .line 120
    .end local v3    # "_arg1":Z
    :cond_0
    const/4 v3, 0x0

    #@aa
    .restart local v3    # "_arg1":Z
    goto :goto_0

    #@ab
    .line 126
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v3    # "_arg1":Z
    :sswitch_8
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@ae
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b1
    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b4
    move-result-object v8

    #@b5
    invoke-static {v8}, Landroid/media/IRemoteControlDisplay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteControlDisplay;

    #@b8
    move-result-object v1

    #@b9
    .line 130
    .restart local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@bc
    move-result v8

    #@bd
    if-eqz v8, :cond_1

    #@bf
    const/4 v3, 0x1

    #@c0
    .line 131
    .restart local v3    # "_arg1":Z
    :goto_1
    invoke-virtual {p0, v1, v3}, Landroid/media/IRemoteControlClient$Stub;->enableRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;Z)V

    #@c3
    .line 132
    return v9

    #@c4
    .line 130
    .end local v3    # "_arg1":Z
    :cond_1
    const/4 v3, 0x0

    #@c5
    .restart local v3    # "_arg1":Z
    goto :goto_1

    #@c6
    .line 136
    .end local v1    # "_arg0":Landroid/media/IRemoteControlDisplay;
    .end local v3    # "_arg1":Z
    :sswitch_9
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@c9
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cc
    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@cf
    move-result v0

    #@d0
    .line 140
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@d3
    move-result-wide v4

    #@d4
    .line 141
    .local v4, "_arg1":J
    invoke-virtual {p0, v0, v4, v5}, Landroid/media/IRemoteControlClient$Stub;->seekTo(IJ)V

    #@d7
    .line 142
    return v9

    #@d8
    .line 146
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":J
    :sswitch_a
    const-string/jumbo v8, "android.media.IRemoteControlClient"

    #@db
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@de
    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v0

    #@e2
    .line 150
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e5
    move-result v2

    #@e6
    .line 152
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@e9
    move-result v8

    #@ea
    if-eqz v8, :cond_2

    #@ec
    .line 153
    sget-object v8, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ee
    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f1
    move-result-object v7

    #@f2
    check-cast v7, Landroid/media/Rating;

    #@f4
    .line 158
    :goto_2
    invoke-virtual {p0, v0, v2, v7}, Landroid/media/IRemoteControlClient$Stub;->updateMetadata(IILandroid/media/Rating;)V

    #@f7
    .line 159
    return v9

    #@f8
    .line 156
    :cond_2
    const/4 v7, 0x0

    #@f9
    .local v7, "_arg2":Landroid/media/Rating;
    goto :goto_2

    #@fa
    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
