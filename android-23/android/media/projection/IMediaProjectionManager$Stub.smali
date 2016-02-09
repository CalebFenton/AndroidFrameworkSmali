.class public abstract Landroid/media/projection/IMediaProjectionManager$Stub;
.super Landroid/os/Binder;
.source "IMediaProjectionManager.java"

# interfaces
.implements Landroid/media/projection/IMediaProjectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/projection/IMediaProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.projection.IMediaProjectionManager"

.field static final TRANSACTION_addCallback:I = 0x6

.field static final TRANSACTION_createProjection:I = 0x2

.field static final TRANSACTION_getActiveProjectionInfo:I = 0x4

.field static final TRANSACTION_hasProjectionPermission:I = 0x1

.field static final TRANSACTION_isValidMediaProjection:I = 0x3

.field static final TRANSACTION_removeCallback:I = 0x7

.field static final TRANSACTION_stopActiveProjection:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.media.projection.IMediaProjectionManager"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;
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
    const-string/jumbo v1, "android.media.projection.IMediaProjectionManager"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/media/projection/IMediaProjectionManager;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/media/projection/IMediaProjectionManager;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/media/projection/IMediaProjectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v9

    #@7
    return v9

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v9, "android.media.projection.IMediaProjectionManager"

    #@b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 44
    const/4 v9, 0x1

    #@f
    return v9

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v9, "android.media.projection.IMediaProjectionManager"

    #@13
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 53
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/media/projection/IMediaProjectionManager$Stub;->hasProjectionPermission(ILjava/lang/String;)Z

    #@21
    move-result v8

    #@22
    .line 54
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 55
    if-eqz v8, :cond_0

    #@27
    const/4 v9, 0x1

    #@28
    :goto_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 56
    const/4 v9, 0x1

    #@2c
    return v9

    #@2d
    .line 55
    :cond_0
    const/4 v9, 0x0

    #@2e
    goto :goto_0

    #@2f
    .line 60
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "android.media.projection.IMediaProjectionManager"

    #@32
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@38
    move-result v0

    #@39
    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 66
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@40
    move-result v4

    #@41
    .line 68
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@44
    move-result v9

    #@45
    if-eqz v9, :cond_1

    #@47
    const/4 v5, 0x1

    #@48
    .line 69
    .local v5, "_arg3":Z
    :goto_1
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/media/projection/IMediaProjectionManager$Stub;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    #@4b
    move-result-object v6

    #@4c
    .line 70
    .local v6, "_result":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 71
    if-eqz v6, :cond_2

    #@51
    invoke-interface {v6}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    #@54
    move-result-object v9

    #@55
    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@58
    .line 72
    const/4 v9, 0x1

    #@59
    return v9

    #@5a
    .line 68
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Landroid/media/projection/IMediaProjection;
    :cond_1
    const/4 v5, 0x0

    #@5b
    .restart local v5    # "_arg3":Z
    goto :goto_1

    #@5c
    .line 71
    .restart local v6    # "_result":Landroid/media/projection/IMediaProjection;
    :cond_2
    const/4 v9, 0x0

    #@5d
    goto :goto_2

    #@5e
    .line 76
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Z
    .end local v6    # "_result":Landroid/media/projection/IMediaProjection;
    :sswitch_3
    const-string/jumbo v9, "android.media.projection.IMediaProjectionManager"

    #@61
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@67
    move-result-object v9

    #@68
    invoke-static {v9}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    #@6b
    move-result-object v1

    #@6c
    .line 79
    .local v1, "_arg0":Landroid/media/projection/IMediaProjection;
    invoke-virtual {p0, v1}, Landroid/media/projection/IMediaProjectionManager$Stub;->isValidMediaProjection(Landroid/media/projection/IMediaProjection;)Z

    #@6f
    move-result v8

    #@70
    .line 80
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@73
    .line 81
    if-eqz v8, :cond_3

    #@75
    const/4 v9, 0x1

    #@76
    :goto_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@79
    .line 82
    const/4 v9, 0x1

    #@7a
    return v9

    #@7b
    .line 81
    :cond_3
    const/4 v9, 0x0

    #@7c
    goto :goto_3

    #@7d
    .line 86
    .end local v1    # "_arg0":Landroid/media/projection/IMediaProjection;
    .end local v8    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "android.media.projection.IMediaProjectionManager"

    #@80
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@83
    .line 87
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    #@86
    move-result-object v7

    #@87
    .line 88
    .local v7, "_result":Landroid/media/projection/MediaProjectionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@8a
    .line 89
    if-eqz v7, :cond_4

    #@8c
    .line 90
    const/4 v9, 0x1

    #@8d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@90
    .line 91
    const/4 v9, 0x1

    #@91
    invoke-virtual {v7, p3, v9}, Landroid/media/projection/MediaProjectionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@94
    .line 96
    :goto_4
    const/4 v9, 0x1

    #@95
    return v9

    #@96
    .line 94
    :cond_4
    const/4 v9, 0x0

    #@97
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@9a
    goto :goto_4

    #@9b
    .line 100
    .end local v7    # "_result":Landroid/media/projection/MediaProjectionInfo;
    :sswitch_5
    const-string/jumbo v9, "android.media.projection.IMediaProjectionManager"

    #@9e
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a1
    .line 101
    invoke-virtual {p0}, Landroid/media/projection/IMediaProjectionManager$Stub;->stopActiveProjection()V

    #@a4
    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a7
    .line 103
    const/4 v9, 0x1

    #@a8
    return v9

    #@a9
    .line 107
    :sswitch_6
    const-string/jumbo v9, "android.media.projection.IMediaProjectionManager"

    #@ac
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@af
    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b2
    move-result-object v9

    #@b3
    invoke-static {v9}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionWatcherCallback;

    #@b6
    move-result-object v2

    #@b7
    .line 110
    .local v2, "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    #@ba
    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@bd
    .line 112
    const/4 v9, 0x1

    #@be
    return v9

    #@bf
    .line 116
    .end local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    :sswitch_7
    const-string/jumbo v9, "android.media.projection.IMediaProjectionManager"

    #@c2
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c5
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@c8
    move-result-object v9

    #@c9
    invoke-static {v9}, Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionWatcherCallback;

    #@cc
    move-result-object v2

    #@cd
    .line 119
    .restart local v2    # "_arg0":Landroid/media/projection/IMediaProjectionWatcherCallback;
    invoke-virtual {p0, v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->removeCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)V

    #@d0
    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d3
    .line 121
    const/4 v9, 0x1

    #@d4
    return v9

    #@d5
    .line 39
    nop

    #@d6
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
