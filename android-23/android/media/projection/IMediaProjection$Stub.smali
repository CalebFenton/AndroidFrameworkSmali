.class public abstract Landroid/media/projection/IMediaProjection$Stub;
.super Landroid/os/Binder;
.source "IMediaProjection.java"

# interfaces
.implements Landroid/media/projection/IMediaProjection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IMediaProjection"

.field static final TRANSACTION_applyVirtualDisplayFlags:I = 0x6

.field static final TRANSACTION_canProjectAudio:I = 0x3

.field static final TRANSACTION_canProjectSecureVideo:I = 0x5

.field static final TRANSACTION_canProjectVideo:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x7

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.media.projection.IMediaProjection"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IMediaProjection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.media.projection.IMediaProjection"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/projection/IMediaProjection;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/media/projection/IMediaProjection;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/projection/IMediaProjection$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/projection/IMediaProjection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v4

    #@9
    return v4

    #@a
    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.media.projection.IMediaProjection"

    #@d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    return v5

    #@11
    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.media.projection.IMediaProjection"

    #@14
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1a
    move-result-object v4

    #@1b
    invoke-static {v4}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    #@1e
    move-result-object v1

    #@1f
    .line 51
    .local v1, "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    invoke-virtual {p0, v1}, Landroid/media/projection/IMediaProjection$Stub;->start(Landroid/media/projection/IMediaProjectionCallback;)V

    #@22
    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 53
    return v5

    #@26
    .line 57
    .end local v1    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    :sswitch_2
    const-string/jumbo v4, "android.media.projection.IMediaProjection"

    #@29
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2c
    .line 58
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->stop()V

    #@2f
    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@32
    .line 60
    return v5

    #@33
    .line 64
    :sswitch_3
    const-string/jumbo v6, "android.media.projection.IMediaProjection"

    #@36
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39
    .line 65
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectAudio()Z

    #@3c
    move-result v3

    #@3d
    .line 66
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@40
    .line 67
    if-eqz v3, :cond_0

    #@42
    move v4, v5

    #@43
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 68
    return v5

    #@47
    .line 72
    .end local v3    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "android.media.projection.IMediaProjection"

    #@4a
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4d
    .line 73
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectVideo()Z

    #@50
    move-result v3

    #@51
    .line 74
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@54
    .line 75
    if-eqz v3, :cond_1

    #@56
    move v4, v5

    #@57
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 76
    return v5

    #@5b
    .line 80
    .end local v3    # "_result":Z
    :sswitch_5
    const-string/jumbo v6, "android.media.projection.IMediaProjection"

    #@5e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@61
    .line 81
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjection$Stub;->canProjectSecureVideo()Z

    #@64
    move-result v3

    #@65
    .line 82
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@68
    .line 83
    if-eqz v3, :cond_2

    #@6a
    move v4, v5

    #@6b
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 84
    return v5

    #@6f
    .line 88
    .end local v3    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.media.projection.IMediaProjection"

    #@72
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@75
    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@78
    move-result v0

    #@79
    .line 91
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/media/projection/IMediaProjection$Stub;->applyVirtualDisplayFlags(I)I

    #@7c
    move-result v2

    #@7d
    .line 92
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@80
    .line 93
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@83
    .line 94
    return v5

    #@84
    .line 98
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_7
    const-string/jumbo v4, "android.media.projection.IMediaProjection"

    #@87
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8a
    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8d
    move-result-object v4

    #@8e
    invoke-static {v4}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    #@91
    move-result-object v1

    #@92
    .line 101
    .restart local v1    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    invoke-virtual {p0, v1}, Landroid/media/projection/IMediaProjection$Stub;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    #@95
    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@98
    .line 103
    return v5

    #@99
    .line 107
    .end local v1    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    :sswitch_8
    const-string/jumbo v4, "android.media.projection.IMediaProjection"

    #@9c
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9f
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a2
    move-result-object v4

    #@a3
    invoke-static {v4}, Landroid/media/projection/IMediaProjectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionCallback;

    #@a6
    move-result-object v1

    #@a7
    .line 110
    .restart local v1    # "_arg0":Landroid/media/projection/IMediaProjectionCallback;
    invoke-virtual {p0, v1}, Landroid/media/projection/IMediaProjection$Stub;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    #@aa
    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad
    .line 112
    return v5

    #@ae
    .line 39
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
