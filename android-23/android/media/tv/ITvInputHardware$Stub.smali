.class public abstract Landroid/media/tv/ITvInputHardware$Stub;
.super Landroid/os/Binder;
.source "ITvInputHardware.java"

# interfaces
.implements Landroid/media/tv/ITvInputHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputHardware"

.field static final TRANSACTION_dispatchKeyEventToHdmi:I = 0x3

.field static final TRANSACTION_overrideAudioSink:I = 0x4

.field static final TRANSACTION_setStreamVolume:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 22
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputHardware;
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
    const-string/jumbo v1, "android.media.tv.ITvInputHardware"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/tv/ITvInputHardware;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 35
    check-cast v0, Landroid/media/tv/ITvInputHardware;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputHardware$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 45
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v0

    #@7
    return v0

    #@8
    .line 49
    :sswitch_0
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    #@b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 50
    const/4 v0, 0x1

    #@f
    return v0

    #@10
    .line 54
    :sswitch_1
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    #@13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 57
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v8

    #@22
    check-cast v8, Landroid/view/Surface;

    #@24
    .line 63
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 64
    sget-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v9

    #@30
    check-cast v9, Landroid/media/tv/TvStreamConfig;

    #@32
    .line 69
    :goto_1
    invoke-virtual {p0, v8, v9}, Landroid/media/tv/ITvInputHardware$Stub;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    #@35
    move-result v10

    #@36
    .line 70
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 71
    if-eqz v10, :cond_2

    #@3b
    const/4 v0, 0x1

    #@3c
    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3f
    .line 72
    const/4 v0, 0x1

    #@40
    return v0

    #@41
    .line 60
    .end local v10    # "_result":Z
    :cond_0
    const/4 v8, 0x0

    #@42
    .local v8, "_arg0":Landroid/view/Surface;
    goto :goto_0

    #@43
    .line 67
    .end local v8    # "_arg0":Landroid/view/Surface;
    :cond_1
    const/4 v9, 0x0

    #@44
    .local v9, "_arg1":Landroid/media/tv/TvStreamConfig;
    goto :goto_1

    #@45
    .line 71
    .end local v9    # "_arg1":Landroid/media/tv/TvStreamConfig;
    .restart local v10    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    #@46
    goto :goto_2

    #@47
    .line 76
    .end local v10    # "_result":Z
    :sswitch_2
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    #@4a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    #@50
    move-result v6

    #@51
    .line 79
    .local v6, "_arg0":F
    invoke-virtual {p0, v6}, Landroid/media/tv/ITvInputHardware$Stub;->setStreamVolume(F)V

    #@54
    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@57
    .line 81
    const/4 v0, 0x1

    #@58
    return v0

    #@59
    .line 85
    .end local v6    # "_arg0":F
    :sswitch_3
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    #@5c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5f
    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@62
    move-result v0

    #@63
    if-eqz v0, :cond_3

    #@65
    .line 88
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@67
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@6a
    move-result-object v7

    #@6b
    check-cast v7, Landroid/view/KeyEvent;

    #@6d
    .line 93
    :goto_3
    invoke-virtual {p0, v7}, Landroid/media/tv/ITvInputHardware$Stub;->dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z

    #@70
    move-result v10

    #@71
    .line 94
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@74
    .line 95
    if-eqz v10, :cond_4

    #@76
    const/4 v0, 0x1

    #@77
    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 96
    const/4 v0, 0x1

    #@7b
    return v0

    #@7c
    .line 91
    .end local v10    # "_result":Z
    :cond_3
    const/4 v7, 0x0

    #@7d
    .local v7, "_arg0":Landroid/view/KeyEvent;
    goto :goto_3

    #@7e
    .line 95
    .end local v7    # "_arg0":Landroid/view/KeyEvent;
    .restart local v10    # "_result":Z
    :cond_4
    const/4 v0, 0x0

    #@7f
    goto :goto_4

    #@80
    .line 100
    .end local v10    # "_result":Z
    :sswitch_4
    const-string/jumbo v0, "android.media.tv.ITvInputHardware"

    #@83
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@86
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@89
    move-result v1

    #@8a
    .line 104
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8d
    move-result-object v2

    #@8e
    .line 106
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@91
    move-result v3

    #@92
    .line 108
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v4

    #@96
    .line 110
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@99
    move-result v5

    #@9a
    .local v5, "_arg4":I
    move-object v0, p0

    #@9b
    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware$Stub;->overrideAudioSink(ILjava/lang/String;III)V

    #@9e
    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a1
    .line 113
    const/4 v0, 0x1

    #@a2
    return v0

    #@a3
    .line 45
    nop

    #@a4
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
