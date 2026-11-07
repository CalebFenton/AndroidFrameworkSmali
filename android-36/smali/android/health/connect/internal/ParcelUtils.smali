.class public final Landroid/health/connect/internal/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;
    }
.end annotation


# static fields
.field public static final blacklist IPC_PARCEL_LIMIT:I

.field public static final blacklist USING_PARCEL:I = 0x1

.field public static final blacklist USING_SHARED_MEMORY:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Landroid/health/connect/internal/ParcelUtils;->IPC_PARCEL_LIMIT:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getParcelForSharedMemoryIfRequired(Landroid/os/Parcel;)Landroid/os/Parcel;
    .registers 8
    .param p0, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 44
    .local v0, "parcelType":I
    if-nez v0, :cond_41

    .line 45
    :try_start_6
    sget-object v1, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SharedMemory;
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_e} :catch_3a

    .line 46
    .local v1, "memory":Landroid/os/SharedMemory;
    :try_start_e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 47
    .local v2, "dataParcel":Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 48
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v4, v4, [B

    .line 49
    .local v4, "payload":[B
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 50
    array-length v5, v4

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 51
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_2e

    .line 52
    nop

    .line 53
    if-eqz v1, :cond_2d

    :try_start_2a
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V
    :try_end_2d
    .catch Landroid/system/ErrnoException; {:try_start_2a .. :try_end_2d} :catch_3a

    .line 52
    :cond_2d
    return-object v2

    .line 45
    .end local v2    # "dataParcel":Landroid/os/Parcel;
    .end local v3    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "payload":[B
    :catchall_2e
    move-exception v2

    if-eqz v1, :cond_39

    :try_start_31
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v3

    :try_start_36
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "parcelType":I
    .end local p0    # "in":Landroid/os/Parcel;
    :cond_39
    :goto_39
    throw v2
    :try_end_3a
    .catch Landroid/system/ErrnoException; {:try_start_36 .. :try_end_3a} :catch_3a

    .line 53
    .end local v1    # "memory":Landroid/os/SharedMemory;
    .restart local v0    # "parcelType":I
    .restart local p0    # "in":Landroid/os/Parcel;
    :catch_3a
    move-exception v1

    .line 54
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 57
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_41
    return-object p0
.end method

.method public static blacklist getSharedMemoryForParcel(Landroid/os/Parcel;I)Landroid/os/SharedMemory;
    .registers 6
    .param p0, "dataParcel"    # Landroid/os/Parcel;
    .param p1, "dataParcelSize"    # I

    .line 62
    :try_start_0
    const-string v0, "RecordsParcelSharedMemory"

    .line 63
    invoke-static {v0, p1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    .line 64
    .local v0, "sharedMemory":Landroid/os/SharedMemory;
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 65
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 66
    .local v2, "data":[B
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_12} :catch_13

    .line 67
    return-object v0

    .line 68
    .end local v0    # "sharedMemory":Landroid/os/SharedMemory;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "data":[B
    :catch_13
    move-exception v0

    .line 69
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist putToRequiredMemory(Landroid/os/Parcel;ILandroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;)V
    .registers 8
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .param p2, "parcelRunnable"    # Landroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 81
    .local v0, "dataParcel":Landroid/os/Parcel;
    :try_start_4
    invoke-interface {p2, v0}, Landroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;->writeToParcel(Landroid/os/Parcel;)V

    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 83
    .local v1, "dataParcelSize":I
    sget v2, Landroid/health/connect/internal/ParcelUtils;->IPC_PARCEL_LIMIT:I

    if-le v1, v2, :cond_2d

    .line 84
    nop

    .line 85
    invoke-static {v0, v1}, Landroid/health/connect/internal/ParcelUtils;->getSharedMemoryForParcel(Landroid/os/Parcel;I)Landroid/os/SharedMemory;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_39

    .line 86
    .local v2, "sharedMemory":Landroid/os/SharedMemory;
    const/4 v3, 0x0

    :try_start_15
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v2, p0, p1}, Landroid/os/SharedMemory;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_21

    .line 88
    if-eqz v2, :cond_20

    :try_start_1d
    invoke-virtual {v2}, Landroid/os/SharedMemory;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_39

    .line 84
    .end local v2    # "sharedMemory":Landroid/os/SharedMemory;
    :cond_20
    goto :goto_34

    .restart local v2    # "sharedMemory":Landroid/os/SharedMemory;
    :catchall_21
    move-exception v3

    if-eqz v2, :cond_2c

    :try_start_24
    invoke-virtual {v2}, Landroid/os/SharedMemory;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v4

    :try_start_29
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dataParcel":Landroid/os/Parcel;
    .end local p0    # "dest":Landroid/os/Parcel;
    .end local p1    # "flags":I
    .end local p2    # "parcelRunnable":Landroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;
    :cond_2c
    :goto_2c
    throw v3

    .line 90
    .end local v2    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local v0    # "dataParcel":Landroid/os/Parcel;
    .restart local p0    # "dest":Landroid/os/Parcel;
    .restart local p1    # "flags":I
    .restart local p2    # "parcelRunnable":Landroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;
    :cond_2d
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-interface {p2, p0}, Landroid/health/connect/internal/ParcelUtils$IPutToParcelRunnable;->writeToParcel(Landroid/os/Parcel;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_39

    .line 94
    .end local v1    # "dataParcelSize":I
    :goto_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    nop

    .line 96
    return-void

    .line 94
    :catchall_39
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    throw v1
.end method
