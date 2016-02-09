.class public abstract Landroid/os/storage/IMountServiceListener$Stub;
.super Landroid/os/Binder;
.source "IMountServiceListener.java"

# interfaces
.implements Landroid/os/storage/IMountServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountServiceListener"

.field static final TRANSACTION_onDiskDestroyed:I = 0x7

.field static final TRANSACTION_onDiskScanned:I = 0x6

.field static final TRANSACTION_onStorageStateChanged:I = 0x2

.field static final TRANSACTION_onUsbMassStorageConnectionChanged:I = 0x1

.field static final TRANSACTION_onVolumeForgotten:I = 0x5

.field static final TRANSACTION_onVolumeRecordChanged:I = 0x4

.field static final TRANSACTION_onVolumeStateChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 38
    const-string/jumbo v0, "IMountServiceListener"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 46
    if-nez p0, :cond_0

    #@3
    .line 47
    return-object v1

    #@4
    .line 49
    :cond_0
    const-string/jumbo v1, "IMountServiceListener"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/storage/IMountServiceListener;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 51
    check-cast v0, Landroid/os/storage/IMountServiceListener;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 53
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountServiceListener$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/storage/IMountServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 57
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 63
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 124
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v11

    #@7
    return v11

    #@8
    .line 65
    :sswitch_0
    const-string/jumbo v11, "IMountServiceListener"

    #@b
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 66
    const/4 v11, 0x1

    #@f
    return v11

    #@10
    .line 69
    :sswitch_1
    const-string/jumbo v11, "IMountServiceListener"

    #@13
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v11

    #@1a
    if-eqz v11, :cond_0

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 72
    .local v0, "connected":Z
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/storage/IMountServiceListener$Stub;->onUsbMassStorageConnectionChanged(Z)V

    #@20
    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@23
    .line 74
    const/4 v11, 0x1

    #@24
    return v11

    #@25
    .line 71
    .end local v0    # "connected":Z
    :cond_0
    const/4 v0, 0x0

    #@26
    .restart local v0    # "connected":Z
    goto :goto_0

    #@27
    .line 77
    .end local v0    # "connected":Z
    :sswitch_2
    const-string/jumbo v11, "IMountServiceListener"

    #@2a
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@30
    move-result-object v7

    #@31
    .line 79
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    .line 80
    .local v6, "oldState":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 81
    .local v4, "newState":Ljava/lang/String;
    invoke-virtual {p0, v7, v6, v4}, Landroid/os/storage/IMountServiceListener$Stub;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3f
    .line 83
    const/4 v11, 0x1

    #@40
    return v11

    #@41
    .line 86
    .end local v4    # "newState":Ljava/lang/String;
    .end local v6    # "oldState":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v11, "IMountServiceListener"

    #@44
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@47
    .line 87
    const/4 v11, 0x0

    #@48
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4b
    move-result-object v9

    #@4c
    check-cast v9, Landroid/os/storage/VolumeInfo;

    #@4e
    .line 88
    .local v9, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v5

    #@52
    .line 89
    .local v5, "oldState":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v3

    #@56
    .line 90
    .local v3, "newState":I
    invoke-virtual {p0, v9, v5, v3}, Landroid/os/storage/IMountServiceListener$Stub;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    #@59
    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5c
    .line 92
    const/4 v11, 0x1

    #@5d
    return v11

    #@5e
    .line 95
    .end local v3    # "newState":I
    .end local v5    # "oldState":I
    .end local v9    # "vol":Landroid/os/storage/VolumeInfo;
    :sswitch_4
    const-string/jumbo v11, "IMountServiceListener"

    #@61
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@64
    .line 96
    const/4 v11, 0x0

    #@65
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@68
    move-result-object v8

    #@69
    check-cast v8, Landroid/os/storage/VolumeRecord;

    #@6b
    .line 97
    .local v8, "rec":Landroid/os/storage/VolumeRecord;
    invoke-virtual {p0, v8}, Landroid/os/storage/IMountServiceListener$Stub;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    #@6e
    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@71
    .line 99
    const/4 v11, 0x1

    #@72
    return v11

    #@73
    .line 102
    .end local v8    # "rec":Landroid/os/storage/VolumeRecord;
    :sswitch_5
    const-string/jumbo v11, "IMountServiceListener"

    #@76
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@79
    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7c
    move-result-object v2

    #@7d
    .line 104
    .local v2, "fsUuid":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/storage/IMountServiceListener$Stub;->onVolumeForgotten(Ljava/lang/String;)V

    #@80
    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@83
    .line 106
    const/4 v11, 0x1

    #@84
    return v11

    #@85
    .line 109
    .end local v2    # "fsUuid":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v11, "IMountServiceListener"

    #@88
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8b
    .line 110
    const/4 v11, 0x0

    #@8c
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@8f
    move-result-object v1

    #@90
    check-cast v1, Landroid/os/storage/DiskInfo;

    #@92
    .line 111
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v10

    #@96
    .line 112
    .local v10, "volumeCount":I
    invoke-virtual {p0, v1, v10}, Landroid/os/storage/IMountServiceListener$Stub;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    #@99
    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c
    .line 114
    const/4 v11, 0x1

    #@9d
    return v11

    #@9e
    .line 117
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    .end local v10    # "volumeCount":I
    :sswitch_7
    const-string/jumbo v11, "IMountServiceListener"

    #@a1
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a4
    .line 118
    const/4 v11, 0x0

    #@a5
    invoke-virtual {p2, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@a8
    move-result-object v1

    #@a9
    check-cast v1, Landroid/os/storage/DiskInfo;

    #@ab
    .line 119
    .restart local v1    # "disk":Landroid/os/storage/DiskInfo;
    invoke-virtual {p0, v1}, Landroid/os/storage/IMountServiceListener$Stub;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    #@ae
    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b1
    .line 121
    const/4 v11, 0x1

    #@b2
    return v11

    #@b3
    .line 63
    nop

    #@b4
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
