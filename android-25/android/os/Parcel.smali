.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Parcel$1;
    }
.end annotation


# static fields
.field private static final DEBUG_ARRAY_MAP:Z = false

.field private static final DEBUG_RECYCLE:Z = false

.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_HAS_REPLY_HEADER:I = -0x80

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_SERVICE_SPECIFIC:I = -0x8

.field private static final EX_TRANSACTION_FAILED:I = -0x81

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final POOL_SIZE:I = 0x6

.field public static final STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Parcel"

.field private static final VAL_BOOLEAN:I = 0x9

.field private static final VAL_BOOLEANARRAY:I = 0x17

.field private static final VAL_BUNDLE:I = 0x3

.field private static final VAL_BYTE:I = 0x14

.field private static final VAL_BYTEARRAY:I = 0xd

.field private static final VAL_CHARSEQUENCE:I = 0xa

.field private static final VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final VAL_DOUBLE:I = 0x8

.field private static final VAL_DOUBLEARRAY:I = 0x1c

.field private static final VAL_FLOAT:I = 0x7

.field private static final VAL_IBINDER:I = 0xf

.field private static final VAL_INTARRAY:I = 0x12

.field private static final VAL_INTEGER:I = 0x1

.field private static final VAL_LIST:I = 0xb

.field private static final VAL_LONG:I = 0x6

.field private static final VAL_LONGARRAY:I = 0x13

.field private static final VAL_MAP:I = 0x2

.field private static final VAL_NULL:I = -0x1

.field private static final VAL_OBJECTARRAY:I = 0x11

.field private static final VAL_PARCELABLE:I = 0x4

.field private static final VAL_PARCELABLEARRAY:I = 0x10

.field private static final VAL_PERSISTABLEBUNDLE:I = 0x19

.field private static final VAL_SERIALIZABLE:I = 0x15

.field private static final VAL_SHORT:I = 0x5

.field private static final VAL_SIZE:I = 0x1a

.field private static final VAL_SIZEF:I = 0x1b

.field private static final VAL_SPARSEARRAY:I = 0xc

.field private static final VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final VAL_STRING:I = 0x0

.field private static final VAL_STRINGARRAY:I = 0xe

.field private static final mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private static final sHolderPool:[Landroid/os/Parcel;

.field private static final sOwnedPool:[Landroid/os/Parcel;


# instance fields
.field private mNativePtr:J

.field private mNativeSize:J

.field private mOwnsNativeParcelObject:Z

.field private mStack:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 207
    new-array v0, v1, [Landroid/os/Parcel;

    #@3
    sput-object v0, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    #@5
    .line 208
    new-array v0, v1, [Landroid/os/Parcel;

    #@7
    sput-object v0, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    #@9
    .line 304
    new-instance v0, Landroid/os/Parcel$1;

    #@b
    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    #@e
    .line 303
    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 2640
    new-instance v0, Ljava/util/HashMap;

    #@12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@15
    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    #@17
    .line 189
    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativePtr"    # J

    #@0
    .prologue
    .line 2667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2672
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->init(J)V

    #@6
    .line 2667
    return-void
.end method

.method static native clearFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method static native closeFileDescriptor(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private destroy()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 2692
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 2693
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2694
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@e
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDestroy(J)V

    #@11
    .line 2695
    invoke-direct {p0, v2, v3}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@14
    .line 2697
    :cond_0
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    #@16
    .line 2691
    :cond_1
    return-void
.end method

.method static native dupFileDescriptor(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private freeBuffer()V
    .locals 2

    #@0
    .prologue
    .line 2686
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2687
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@6
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeFreeBuffer(J)J

    #@9
    move-result-wide v0

    #@a
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@d
    .line 2685
    :cond_0
    return-void
.end method

.method public static native getGlobalAllocCount()J
.end method

.method public static native getGlobalAllocSize()J
.end method

.method private init(J)V
    .locals 3
    .param p1, "nativePtr"    # J

    #@0
    .prologue
    .line 2676
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2677
    iput-wide p1, p0, Landroid/os/Parcel;->mNativePtr:J

    #@8
    .line 2678
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@b
    .line 2675
    :goto_0
    return-void

    #@c
    .line 2680
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()J

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@12
    .line 2681
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@15
    goto :goto_0
.end method

.method private static native nativeAppendFrom(JJII)J
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeCreateByteArray(J)[B
.end method

.method private static native nativeDataAvail(J)I
.end method

.method private static native nativeDataCapacity(J)I
.end method

.method private static native nativeDataPosition(J)I
.end method

.method private static native nativeDataSize(J)I
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnforceInterface(JLjava/lang/String;)V
.end method

.method private static native nativeFreeBuffer(J)J
.end method

.method private static native nativeGetBlobAshmemSize(J)J
.end method

.method private static native nativeHasFileDescriptors(J)Z
.end method

.method private static native nativeMarshall(J)[B
.end method

.method private static native nativePushAllowFds(JZ)Z
.end method

.method private static native nativeReadBlob(J)[B
.end method

.method private static native nativeReadDouble(J)D
.end method

.method private static native nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;
.end method

.method private static native nativeReadFloat(J)F
.end method

.method private static native nativeReadInt(J)I
.end method

.method private static native nativeReadLong(J)J
.end method

.method private static native nativeReadString(J)Ljava/lang/String;
.end method

.method private static native nativeReadStrongBinder(J)Landroid/os/IBinder;
.end method

.method private static native nativeRestoreAllowFds(JZ)V
.end method

.method private static native nativeSetDataCapacity(JI)V
.end method

.method private static native nativeSetDataPosition(JI)V
.end method

.method private static native nativeSetDataSize(JI)J
.end method

.method private static native nativeUnmarshall(J[BII)J
.end method

.method private static native nativeWriteBlob(J[BII)V
.end method

.method private static native nativeWriteByteArray(J[BII)V
.end method

.method private static native nativeWriteDouble(JD)V
.end method

.method private static native nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J
.end method

.method private static native nativeWriteFloat(JF)V
.end method

.method private static native nativeWriteInt(JI)V
.end method

.method private static native nativeWriteInterfaceToken(JLjava/lang/String;)V
.end method

.method private static native nativeWriteLong(JJ)V
.end method

.method private static native nativeWriteString(JLjava/lang/String;)V
.end method

.method private static native nativeWriteStrongBinder(JLandroid/os/IBinder;)V
.end method

.method public static obtain()Landroid/os/Parcel;
    .locals 6

    #@0
    .prologue
    .line 317
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    #@2
    .line 318
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    #@3
    .line 320
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    #@5
    if-ge v0, v3, :cond_1

    #@7
    .line 321
    :try_start_0
    aget-object v1, v2, v0

    #@9
    .line 322
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    #@b
    .line 323
    const/4 v3, 0x0

    #@c
    aput-object v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 327
    return-object v1

    #@10
    .line 320
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2

    #@14
    .line 331
    new-instance v3, Landroid/os/Parcel;

    #@16
    const-wide/16 v4, 0x0

    #@18
    invoke-direct {v3, v4, v5}, Landroid/os/Parcel;-><init>(J)V

    #@1b
    return-object v3

    #@1c
    .line 318
    :catchall_0
    move-exception v3

    #@1d
    monitor-exit v2

    #@1e
    throw v3
.end method

.method protected static final obtain(I)Landroid/os/Parcel;
    .locals 1
    .param p0, "obj"    # I

    #@0
    .prologue
    .line 2644
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected static final obtain(J)Landroid/os/Parcel;
    .locals 4
    .param p0, "obj"    # J

    #@0
    .prologue
    .line 2649
    sget-object v2, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    #@2
    .line 2650
    .local v2, "pool":[Landroid/os/Parcel;
    monitor-enter v2

    #@3
    .line 2652
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x6

    #@5
    if-ge v0, v3, :cond_1

    #@7
    .line 2653
    :try_start_0
    aget-object v1, v2, v0

    #@9
    .line 2654
    .local v1, "p":Landroid/os/Parcel;
    if-eqz v1, :cond_0

    #@b
    .line 2655
    const/4 v3, 0x0

    #@c
    aput-object v3, v2, v0

    #@e
    .line 2659
    invoke-direct {v1, p0, p1}, Landroid/os/Parcel;->init(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v2

    #@12
    .line 2660
    return-object v1

    #@13
    .line 2652
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_1
    monitor-exit v2

    #@17
    .line 2664
    new-instance v3, Landroid/os/Parcel;

    #@19
    invoke-direct {v3, p0, p1}, Landroid/os/Parcel;-><init>(J)V

    #@1c
    return-object v3

    #@1d
    .line 2650
    :catchall_0
    move-exception v3

    #@1e
    monitor-exit v2

    #@1f
    throw v3
.end method

.method static native openFileDescriptor(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method private readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # [Ljava/lang/Object;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2802
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    #@3
    .line 2803
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    .line 2805
    .local v1, "value":Ljava/lang/Object;
    aput-object v1, p1, v0

    #@9
    .line 2802
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 2801
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2792
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2793
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 2795
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 2796
    add-int/lit8 p2, p2, -0x1

    #@b
    goto :goto_0

    #@c
    .line 2791
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private final readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;
    .locals 9
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2599
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4
    move-result-object v3

    #@5
    .line 2600
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    #@7
    .line 2604
    return-object v6

    #@8
    .line 2607
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@b
    move-result-object v5

    #@c
    .line 2608
    .local v5, "serializedData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@e
    invoke-direct {v0, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@11
    .line 2610
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v4, Landroid/os/Parcel$2;

    #@13
    invoke-direct {v4, p0, v0, p1}, Landroid/os/Parcel$2;-><init>(Landroid/os/Parcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    #@16
    .line 2624
    .local v4, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@19
    move-result-object v6

    #@1a
    check-cast v6, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    return-object v6

    #@1d
    .line 2629
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v1

    #@1e
    .line 2630
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@20
    new-instance v7, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v8, "Parcelable encountered ClassNotFoundException reading a Serializable object (name = "

    #@28
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v7

    #@30
    .line 2632
    const-string/jumbo v8, ")"

    #@33
    .line 2630
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3e
    throw v6

    #@3f
    .line 2625
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    #@40
    .line 2626
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@42
    new-instance v7, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v8, "Parcelable encountered IOException reading a Serializable object (name = "

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    .line 2628
    const-string/jumbo v8, ")"

    #@55
    .line 2626
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v7

    #@5d
    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@60
    throw v6
.end method

.method private readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/SparseArray;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2811
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2812
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    .line 2813
    .local v0, "key":I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 2815
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@d
    .line 2816
    add-int/lit8 p2, p2, -0x1

    #@f
    goto :goto_0

    #@10
    .line 2810
    .end local v0    # "key":I
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .locals 5
    .param p1, "outVal"    # Landroid/util/SparseBooleanArray;
    .param p2, "N"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2822
    :goto_0
    if-lez p2, :cond_1

    #@4
    .line 2823
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    .line 2824
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@b
    move-result v4

    #@c
    if-ne v4, v2, :cond_0

    #@e
    move v1, v2

    #@f
    .line 2826
    .local v1, "value":Z
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    #@12
    .line 2827
    add-int/lit8 p2, p2, -0x1

    #@14
    goto :goto_0

    #@15
    .end local v1    # "value":Z
    :cond_0
    move v1, v3

    #@16
    .line 2824
    goto :goto_1

    #@17
    .line 2821
    .end local v0    # "key":I
    :cond_1
    return-void
.end method

.method private updateNativeSize(J)V
    .locals 5
    .param p1, "newNativeSize"    # J

    #@0
    .prologue
    .line 620
    iget-boolean v1, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@2
    if-eqz v1, :cond_1

    #@4
    .line 621
    const-wide/32 v2, 0x7fffffff

    #@7
    cmp-long v1, p1, v2

    #@9
    if-lez v1, :cond_0

    #@b
    .line 622
    const-wide/32 p1, 0x7fffffff

    #@e
    .line 624
    :cond_0
    iget-wide v2, p0, Landroid/os/Parcel;->mNativeSize:J

    #@10
    cmp-long v1, p1, v2

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 625
    iget-wide v2, p0, Landroid/os/Parcel;->mNativeSize:J

    #@16
    sub-long v2, p1, v2

    #@18
    long-to-int v0, v2

    #@19
    .line 626
    .local v0, "delta":I
    if-lez v0, :cond_2

    #@1b
    .line 627
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@22
    .line 631
    :goto_0
    iput-wide p1, p0, Landroid/os/Parcel;->mNativeSize:J

    #@24
    .line 619
    .end local v0    # "delta":I
    :cond_1
    return-void

    #@25
    .line 629
    .restart local v0    # "delta":I
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@28
    move-result-object v1

    #@29
    neg-int v2, v0

    #@2a
    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@2d
    goto :goto_0
.end method


# virtual methods
.method public final appendFrom(Landroid/os/Parcel;II)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 463
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    #@4
    move v4, p2

    #@5
    move v5, p3

    #@6
    invoke-static/range {v0 .. v5}, Landroid/os/Parcel;->nativeAppendFrom(JJII)J

    #@9
    move-result-wide v0

    #@a
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@d
    .line 462
    return-void
.end method

.method public final createBinderArray()[Landroid/os/IBinder;
    .locals 4

    #@0
    .prologue
    .line 1173
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1174
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    .line 1175
    new-array v2, v0, [Landroid/os/IBinder;

    #@8
    .line 1176
    .local v2, "val":[Landroid/os/IBinder;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 1177
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@e
    move-result-object v3

    #@f
    aput-object v3, v2, v1

    #@11
    .line 1176
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1179
    :cond_0
    return-object v2

    #@15
    .line 1181
    .end local v1    # "i":I
    .end local v2    # "val":[Landroid/os/IBinder;
    :cond_1
    const/4 v3, 0x0

    #@16
    return-object v3
.end method

.method public final createBinderArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2188
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2189
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2190
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2192
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 2193
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_0
    if-lez v0, :cond_1

    #@f
    .line 2194
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 2195
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 2197
    :cond_1
    return-object v1
.end method

.method public final createBooleanArray()[Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 885
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    .line 889
    .local v0, "N":I
    if-ltz v0, :cond_2

    #@7
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@a
    move-result v3

    #@b
    shr-int/lit8 v3, v3, 0x2

    #@d
    if-gt v0, v3, :cond_2

    #@f
    .line 890
    new-array v2, v0, [Z

    #@11
    .line 891
    .local v2, "val":[Z
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@14
    .line 892
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    const/4 v3, 0x1

    #@1b
    :goto_1
    aput-boolean v3, v2, v1

    #@1d
    .line 891
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    :cond_0
    move v3, v4

    #@21
    .line 892
    goto :goto_1

    #@22
    .line 894
    :cond_1
    return-object v2

    #@23
    .line 896
    .end local v1    # "i":I
    .end local v2    # "val":[Z
    :cond_2
    const/4 v3, 0x0

    #@24
    return-object v3
.end method

.method public final createByteArray()[B
    .locals 2

    #@0
    .prologue
    .line 1937
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeCreateByteArray(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final createCharArray()[C
    .locals 4

    #@0
    .prologue
    .line 924
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 925
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x2

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 926
    new-array v2, v0, [C

    #@10
    .line 927
    .local v2, "val":[C
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 928
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v3

    #@17
    int-to-char v3, v3

    #@18
    aput-char v3, v2, v1

    #@1a
    .line 927
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 930
    :cond_0
    return-object v2

    #@1e
    .line 932
    .end local v1    # "i":I
    .end local v2    # "val":[C
    :cond_1
    const/4 v3, 0x0

    #@1f
    return-object v3
.end method

.method public final createDoubleArray()[D
    .locals 6

    #@0
    .prologue
    .line 1070
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1072
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x3

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 1073
    new-array v2, v0, [D

    #@10
    .line 1074
    .local v2, "val":[D
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 1075
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    #@16
    move-result-wide v4

    #@17
    aput-wide v4, v2, v1

    #@19
    .line 1074
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1077
    :cond_0
    return-object v2

    #@1d
    .line 1079
    .end local v1    # "i":I
    .end local v2    # "val":[D
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public final createFloatArray()[F
    .locals 4

    #@0
    .prologue
    .line 1033
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1035
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x2

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 1036
    new-array v2, v0, [F

    #@10
    .line 1037
    .local v2, "val":[F
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 1038
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@16
    move-result v3

    #@17
    aput v3, v2, v1

    #@19
    .line 1037
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1040
    :cond_0
    return-object v2

    #@1d
    .line 1042
    .end local v1    # "i":I
    .end local v2    # "val":[F
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public final createIntArray()[I
    .locals 4

    #@0
    .prologue
    .line 960
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 961
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x2

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 962
    new-array v2, v0, [I

    #@10
    .line 963
    .local v2, "val":[I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 964
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v3

    #@17
    aput v3, v2, v1

    #@19
    .line 963
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 966
    :cond_0
    return-object v2

    #@1d
    .line 968
    .end local v1    # "i":I
    .end local v2    # "val":[I
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public final createLongArray()[J
    .locals 6

    #@0
    .prologue
    .line 996
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 998
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    #@9
    move-result v3

    #@a
    shr-int/lit8 v3, v3, 0x3

    #@c
    if-gt v0, v3, :cond_1

    #@e
    .line 999
    new-array v2, v0, [J

    #@10
    .line 1000
    .local v2, "val":[J
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@13
    .line 1001
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@16
    move-result-wide v4

    #@17
    aput-wide v4, v2, v1

    #@19
    .line 1000
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1003
    :cond_0
    return-object v2

    #@1d
    .line 1005
    .end local v1    # "i":I
    .end local v2    # "val":[J
    :cond_1
    const/4 v3, 0x0

    #@1e
    return-object v3
.end method

.method public final createRawFileDescriptorArray()[Ljava/io/FileDescriptor;
    .locals 4

    #@0
    .prologue
    .line 1775
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1776
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 1777
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 1779
    :cond_0
    new-array v1, v0, [Ljava/io/FileDescriptor;

    #@a
    .line 1780
    .local v1, "f":[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@d
    .line 1781
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v1, v2

    #@13
    .line 1780
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1783
    :cond_1
    return-object v1
.end method

.method public final createStringArray()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1107
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1108
    .local v0, "N":I
    if-ltz v0, :cond_1

    #@6
    .line 1109
    new-array v2, v0, [Ljava/lang/String;

    #@8
    .line 1110
    .local v2, "val":[Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@b
    .line 1111
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    aput-object v3, v2, v1

    #@11
    .line 1110
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1113
    :cond_0
    return-object v2

    #@15
    .line 1115
    .end local v1    # "i":I
    .end local v2    # "val":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    #@16
    return-object v3
.end method

.method public final createStringArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2164
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2165
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2166
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2168
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 2169
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-lez v0, :cond_1

    #@f
    .line 2170
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 2171
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0

    #@19
    .line 2173
    :cond_1
    return-object v1
.end method

.method public final createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2261
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2262
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2263
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 2265
    :cond_0
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    .line 2266
    .local v2, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@f
    .line 2267
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 2268
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    aput-object v3, v2, v1

    #@1b
    .line 2266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2271
    :cond_2
    return-object v2
.end method

.method public final createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v3, 0x0

    #@1
    .line 2101
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    .line 2102
    .local v0, "N":I
    if-gez v0, :cond_0

    #@7
    .line 2103
    return-object v3

    #@8
    .line 2105
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 2106
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_0
    if-lez v0, :cond_2

    #@f
    .line 2107
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 2108
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 2112
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 2110
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    goto :goto_1

    #@23
    .line 2114
    :cond_2
    return-object v1
.end method

.method public final dataAvail()I
    .locals 2

    #@0
    .prologue
    .line 378
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataAvail(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final dataCapacity()I
    .locals 2

    #@0
    .prologue
    .line 396
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataCapacity(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final dataPosition()I
    .locals 2

    #@0
    .prologue
    .line 386
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataPosition(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final dataSize()I
    .locals 2

    #@0
    .prologue
    .line 370
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataSize(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final enforceInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 483
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeEnforceInterface(JLjava/lang/String;)V

    #@5
    .line 482
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2708
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    #@3
    .line 2702
    return-void
.end method

.method public getBlobAshmemSize()J
    .locals 2

    #@0
    .prologue
    .line 2835
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeGetBlobAshmemSize(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final hasFileDescriptors()Z
    .locals 2

    #@0
    .prologue
    .line 470
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasFileDescriptors(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final marshall()[B
    .locals 2

    #@0
    .prologue
    .line 452
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarshall(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final pushAllowFds(Z)Z
    .locals 2
    .param p1, "allowFds"    # Z

    #@0
    .prologue
    .line 432
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativePushAllowFds(JZ)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2047
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2048
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2049
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2051
    :cond_0
    new-array v1, v0, [Ljava/lang/Object;

    #@a
    .line 2052
    .local v1, "l":[Ljava/lang/Object;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V

    #@d
    .line 2053
    return-object v1
.end method

.method public final readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2031
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2032
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2033
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2035
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    .line 2036
    .local v1, "l":Ljava/util/ArrayList;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    #@10
    .line 2037
    return-object v1
.end method

.method public readArrayMap(Landroid/util/ArrayMap;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2763
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2764
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2765
    return-void

    #@7
    .line 2767
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V

    #@a
    .line 2762
    return-void
.end method

.method readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2729
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2731
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2732
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 2736
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    #@d
    .line 2737
    add-int/lit8 p2, p2, -0x1

    #@f
    goto :goto_0

    #@10
    .line 2739
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->validate()V

    #@13
    .line 2722
    return-void
.end method

.method readArrayMapSafelyInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Landroid/util/ArrayMap;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2749
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2750
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 2753
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 2754
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 2755
    add-int/lit8 p2, p2, -0x1

    #@f
    goto :goto_0

    #@10
    .line 2743
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2778
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v2

    #@4
    .line 2779
    .local v2, "size":I
    if-gez v2, :cond_0

    #@6
    .line 2780
    const/4 v4, 0x0

    #@7
    return-object v4

    #@8
    .line 2782
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    #@a
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    #@d
    .line 2783
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@10
    .line 2784
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    .line 2785
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    #@17
    .line 2783
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2787
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public final readBinderArray([Landroid/os/IBinder;)V
    .locals 4
    .param p1, "val"    # [Landroid/os/IBinder;

    #@0
    .prologue
    .line 1186
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1187
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1188
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1189
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@d
    move-result-object v2

    #@e
    aput-object v2, p1, v1

    #@10
    .line 1188
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1192
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1185
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readBinderList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2234
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 2235
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 2236
    .local v1, "N":I
    const/4 v2, 0x0

    #@9
    .line 2237
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@b
    if-ge v2, v1, :cond_0

    #@d
    .line 2238
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@10
    move-result-object v3

    #@11
    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 2237
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2240
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    #@19
    .line 2241
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 2240
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_1

    #@23
    .line 2243
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    #@25
    .line 2244
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@28
    .line 2243
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 2233
    :cond_2
    return-void
.end method

.method public final readBlob()[B
    .locals 2

    #@0
    .prologue
    .line 1960
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadBlob(J)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final readBooleanArray([Z)V
    .locals 4
    .param p1, "val"    # [Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 901
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    .line 902
    .local v0, "N":I
    array-length v2, p1

    #@6
    if-ne v0, v2, :cond_1

    #@8
    .line 903
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@b
    .line 904
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :goto_1
    aput-boolean v2, p1, v1

    #@14
    .line 903
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    :cond_0
    move v2, v3

    #@18
    .line 904
    goto :goto_1

    #@19
    .line 907
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@1b
    const-string/jumbo v3, "bad array lengths"

    #@1e
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2

    #@22
    .line 900
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readBundle()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 1863
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1873
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 1874
    .local v1, "length":I
    if-gez v1, :cond_0

    #@7
    .line 1876
    return-object v2

    #@8
    .line 1879
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    #@a
    invoke-direct {v0, p0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    #@d
    .line 1880
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_1

    #@f
    .line 1881
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@12
    .line 1883
    :cond_1
    return-object v0
.end method

.method public final readByte()B
    .locals 1

    #@0
    .prologue
    .line 1816
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    int-to-byte v0, v0

    #@7
    return v0
.end method

.method public final readByteArray([B)V
    .locals 4
    .param p1, "val"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1946
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@4
    move-result-object v0

    #@5
    .line 1947
    .local v0, "ba":[B
    array-length v1, v0

    #@6
    array-length v2, p1

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 1948
    array-length v1, v0

    #@a
    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d
    .line 1944
    return-void

    #@e
    .line 1950
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "bad array lengths"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1
.end method

.method public final readCharArray([C)V
    .locals 4
    .param p1, "val"    # [C

    #@0
    .prologue
    .line 937
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 938
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 939
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 940
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v2

    #@e
    int-to-char v2, v2

    #@f
    aput-char v2, p1, v1

    #@11
    .line 939
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 943
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v3, "bad array lengths"

    #@19
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2

    #@1d
    .line 936
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 1746
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@2
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/CharSequence;

    #@8
    return-object v0
.end method

.method public final readCharSequenceArray()[Ljava/lang/CharSequence;
    .locals 4

    #@0
    .prologue
    .line 1989
    const/4 v0, 0x0

    #@1
    .line 1991
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 1992
    .local v2, "length":I
    if-ltz v2, :cond_0

    #@7
    .line 1994
    new-array v0, v2, [Ljava/lang/CharSequence;

    #@9
    .line 1996
    .local v0, "array":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 1998
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@f
    move-result-object v3

    #@10
    aput-object v3, v0, v1

    #@12
    .line 1996
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 2002
    .end local v0    # "array":[Ljava/lang/CharSequence;
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readCharSequenceList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2010
    const/4 v0, 0x0

    #@1
    .line 2012
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 2013
    .local v2, "length":I
    if-ltz v2, :cond_0

    #@7
    .line 2014
    new-instance v0, Ljava/util/ArrayList;

    #@9
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@c
    .line 2016
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@f
    .line 2017
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    .line 2016
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2021
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 2
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2478
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    instance-of v1, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 2480
    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    #@7
    .line 2481
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Landroid/os/Parcelable;

    #@d
    return-object v1

    #@e
    .line 2483
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_0
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/os/Parcelable;

    #@14
    return-object v1
.end method

.method public final readDouble()D
    .locals 2

    #@0
    .prologue
    .line 1731
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadDouble(J)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final readDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    #@0
    .prologue
    .line 1084
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1085
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1086
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1087
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    #@d
    move-result-wide v2

    #@e
    aput-wide v2, p1, v1

    #@10
    .line 1086
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1090
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1083
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readException()V
    .locals 2

    #@0
    .prologue
    .line 1634
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    #@3
    move-result v0

    #@4
    .line 1635
    .local v0, "code":I
    if-eqz v0, :cond_0

    #@6
    .line 1636
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 1637
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    #@d
    .line 1633
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final readException(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1682
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1700
    new-instance v0, Ljava/lang/RuntimeException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unknown exception code: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 1701
    const-string/jumbo v2, " msg "

    #@18
    .line 1700
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 1684
    :pswitch_0
    new-instance v0, Ljava/lang/SecurityException;

    #@2a
    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 1686
    :pswitch_1
    new-instance v0, Landroid/os/BadParcelableException;

    #@30
    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 1688
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@36
    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 1690
    :pswitch_3
    new-instance v0, Ljava/lang/NullPointerException;

    #@3c
    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0

    #@40
    .line 1692
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@42
    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 1694
    :pswitch_5
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    #@48
    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    #@4b
    throw v0

    #@4c
    .line 1696
    :pswitch_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@4e
    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@51
    throw v0

    #@52
    .line 1698
    :pswitch_7
    new-instance v0, Landroid/os/ServiceSpecificException;

    #@54
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v1

    #@58
    invoke-direct {v0, v1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    #@5b
    throw v0

    #@5c
    .line 1682
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readExceptionCode()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1655
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    .line 1656
    .local v0, "code":I
    const/16 v2, -0x80

    #@7
    if-ne v0, v2, :cond_1

    #@9
    .line 1657
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v1

    #@d
    .line 1658
    .local v1, "headerSize":I
    if-nez v1, :cond_0

    #@f
    .line 1659
    const-string/jumbo v2, "Parcel"

    #@12
    const-string/jumbo v3, "Unexpected zero-sized Parcel reply header."

    #@15
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    .line 1669
    :goto_0
    return v4

    #@19
    .line 1665
    :cond_0
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    #@1c
    goto :goto_0

    #@1d
    .line 1671
    .end local v1    # "headerSize":I
    :cond_1
    return v0
.end method

.method public final readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1760
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    #@3
    invoke-static {v2, v3}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    #@6
    move-result-object v0

    #@7
    .line 1761
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    #@9
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    #@b
    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    #@e
    :cond_0
    return-object v1
.end method

.method public final readFloat()F
    .locals 2

    #@0
    .prologue
    .line 1723
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFloat(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final readFloatArray([F)V
    .locals 4
    .param p1, "val"    # [F

    #@0
    .prologue
    .line 1047
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1048
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1049
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1050
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@d
    move-result v2

    #@e
    aput v2, p1, v1

    #@10
    .line 1049
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1053
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1046
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1848
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1849
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 1850
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 1852
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    #@a
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    #@d
    .line 1853
    .local v1, "m":Ljava/util/HashMap;
    invoke-virtual {p0, v1, v0, p1}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    #@10
    .line 1854
    return-object v1
.end method

.method public final readInt()I
    .locals 2

    #@0
    .prologue
    .line 1708
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadInt(J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final readIntArray([I)V
    .locals 4
    .param p1, "val"    # [I

    #@0
    .prologue
    .line 973
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 974
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 975
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 976
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v2

    #@e
    aput v2, p1, v1

    #@10
    .line 975
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 979
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 972
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1835
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1836
    .local v0, "N":I
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V

    #@7
    .line 1834
    return-void
.end method

.method public final readLong()J
    .locals 2

    #@0
    .prologue
    .line 1715
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadLong(J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final readLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    #@0
    .prologue
    .line 1010
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1011
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1012
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1013
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@d
    move-result-wide v2

    #@e
    aput-wide v2, p1, v1

    #@10
    .line 1012
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1016
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1009
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1825
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1826
    .local v0, "N":I
    invoke-virtual {p0, p1, v0, p2}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V

    #@7
    .line 1824
    return-void
.end method

.method readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .locals 2
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2713
    :goto_0
    if-lez p2, :cond_0

    #@2
    .line 2714
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 2715
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 2716
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 2717
    add-int/lit8 p2, p2, -0x1

    #@f
    goto :goto_0

    #@10
    .line 2712
    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2462
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    #@4
    move-result-object v1

    #@5
    .line 2463
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v1, :cond_0

    #@7
    .line 2464
    return-object v2

    #@8
    .line 2466
    :cond_0
    instance-of v2, v1, Landroid/os/Parcelable$ClassLoaderCreator;

    #@a
    if-eqz v2, :cond_1

    #@c
    move-object v0, v1

    #@d
    .line 2468
    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    #@f
    .line 2469
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Landroid/os/Parcelable;

    #@15
    return-object v2

    #@16
    .line 2471
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_1
    invoke-interface {v1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Landroid/os/Parcelable;

    #@1c
    return-object v2
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2564
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2565
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2566
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 2568
    :cond_0
    new-array v2, v0, [Landroid/os/Parcelable;

    #@a
    .line 2569
    .local v2, "p":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@d
    .line 2570
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v2, v1

    #@13
    .line 2569
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 2572
    :cond_1
    return-object v2
.end method

.method public final readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2578
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2579
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2580
    const/4 v3, 0x0

    #@7
    return-object v3

    #@8
    .line 2582
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [Landroid/os/Parcelable;

    #@e
    .line 2583
    .local v2, "p":[Landroid/os/Parcelable;, "[TT;"
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 2584
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v2, v1

    #@17
    .line 2583
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2586
    :cond_1
    return-object v2
.end method

.method public final readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .locals 14
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2488
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4
    move-result-object v7

    #@5
    .line 2489
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_0

    #@7
    .line 2490
    return-object v10

    #@8
    .line 2493
    :cond_0
    sget-object v11, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    #@a
    monitor-enter v11

    #@b
    .line 2494
    :try_start_0
    sget-object v10, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    #@d
    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, Ljava/util/HashMap;

    #@13
    .line 2495
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    if-nez v6, :cond_1

    #@15
    .line 2496
    new-instance v6, Ljava/util/HashMap;

    #@17
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@1a
    .line 2497
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    sget-object v10, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    #@1c
    invoke-virtual {v10, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 2499
    :cond_1
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .line 2500
    .local v0, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v0, :cond_7

    #@27
    .line 2505
    if-nez p1, :cond_2

    #@29
    :try_start_1
    invoke-virtual {p0}, Landroid/os/Parcel;->getClass()Ljava/lang/Class;

    #@2c
    move-result-object v10

    #@2d
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@30
    move-result-object v9

    #@31
    .line 2508
    .local v9, "parcelableClassLoader":Ljava/lang/ClassLoader;
    :goto_0
    const/4 v10, 0x0

    #@32
    invoke-static {v7, v10, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@35
    move-result-object v8

    #@36
    .line 2510
    .local v8, "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Landroid/os/Parcelable;

    #@38
    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@3b
    move-result v10

    #@3c
    if-nez v10, :cond_3

    #@3e
    .line 2511
    new-instance v10, Landroid/os/BadParcelableException;

    #@40
    const-string/jumbo v12, "Parcelable protocol requires that the class implements Parcelable"

    #@43
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@46
    throw v10
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@47
    .line 2529
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v3

    #@48
    .line 2530
    .local v3, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    const-string/jumbo v10, "Parcel"

    #@4b
    new-instance v12, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v13, "Illegal access when unmarshalling: "

    #@53
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v12

    #@57
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v12

    #@5b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v12

    #@5f
    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@62
    .line 2531
    new-instance v10, Landroid/os/BadParcelableException;

    #@64
    .line 2532
    new-instance v12, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v13, "IllegalAccessException when unmarshalling: "

    #@6c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v12

    #@70
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v12

    #@74
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v12

    #@78
    .line 2531
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@7c
    .line 2493
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    :catchall_0
    move-exception v10

    #@7d
    monitor-exit v11

    #@7e
    throw v10

    #@7f
    .line 2505
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/Parcelable$Creator<*>;>;"
    :cond_2
    move-object v9, p1

    #@80
    .restart local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    #@81
    .line 2514
    .restart local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_3
    const-string/jumbo v10, "CREATOR"

    #@84
    invoke-virtual {v8, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@87
    move-result-object v5

    #@88
    .line 2515
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    #@8b
    move-result v10

    #@8c
    and-int/lit8 v10, v10, 0x8

    #@8e
    if-nez v10, :cond_4

    #@90
    .line 2516
    new-instance v10, Landroid/os/BadParcelableException;

    #@92
    new-instance v12, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v13, "Parcelable protocol requires the CREATOR object to be static on class "

    #@9a
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v12

    #@9e
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v12

    #@a2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v12

    #@a6
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v10
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@aa
    .line 2534
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v2

    #@ab
    .line 2535
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    const-string/jumbo v10, "Parcel"

    #@ae
    new-instance v12, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v13, "Class not found when unmarshalling: "

    #@b6
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v12

    #@ba
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v12

    #@be
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v12

    #@c2
    invoke-static {v10, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c5
    .line 2536
    new-instance v10, Landroid/os/BadParcelableException;

    #@c7
    .line 2537
    new-instance v12, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string/jumbo v13, "ClassNotFoundException when unmarshalling: "

    #@cf
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v12

    #@d3
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v12

    #@d7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v12

    #@db
    .line 2536
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@de
    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@df
    .line 2519
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v5    # "f":Ljava/lang/reflect/Field;
    .restart local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_4
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@e2
    move-result-object v1

    #@e3
    .line 2520
    .local v1, "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Landroid/os/Parcelable$Creator;

    #@e5
    invoke-virtual {v10, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@e8
    move-result v10

    #@e9
    if-nez v10, :cond_5

    #@eb
    .line 2523
    new-instance v10, Landroid/os/BadParcelableException;

    #@ed
    new-instance v12, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string/jumbo v13, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    #@f5
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v12

    #@f9
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v12

    #@fd
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v12

    #@101
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@104
    throw v10
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@105
    .line 2539
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :catch_2
    move-exception v4

    #@106
    .line 2540
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    :try_start_6
    new-instance v10, Landroid/os/BadParcelableException;

    #@108
    new-instance v12, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    const-string/jumbo v13, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    #@110
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v12

    #@114
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v12

    #@118
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v12

    #@11c
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@11f
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@120
    .line 2527
    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "f":Ljava/lang/reflect/Field;
    .restart local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_5
    const/4 v10, 0x0

    #@121
    :try_start_7
    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@124
    move-result-object v0

    #@125
    .end local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    check-cast v0, Landroid/os/Parcelable$Creator;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@127
    .line 2544
    .restart local v0    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v0, :cond_6

    #@129
    .line 2545
    :try_start_8
    new-instance v10, Landroid/os/BadParcelableException;

    #@12b
    new-instance v12, Ljava/lang/StringBuilder;

    #@12d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@130
    const-string/jumbo v13, "Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class "

    #@133
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v12

    #@137
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v12

    #@13b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13e
    move-result-object v12

    #@13f
    invoke-direct {v10, v12}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@142
    throw v10

    #@143
    .line 2550
    :cond_6
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@146
    .end local v1    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v8    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    :cond_7
    monitor-exit v11

    #@147
    .line 2554
    return-object v0
.end method

.method public final readPersistableBundle()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 1892
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1902
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 1903
    .local v1, "length":I
    if-gez v1, :cond_0

    #@7
    .line 1905
    return-object v2

    #@8
    .line 1908
    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    #@a
    invoke-direct {v0, p0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Parcel;I)V

    #@d
    .line 1909
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz p1, :cond_1

    #@f
    .line 1910
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@12
    .line 1912
    :cond_1
    return-object v0
.end method

.method public final readRawFileDescriptor()Ljava/io/FileDescriptor;
    .locals 2

    #@0
    .prologue
    .line 1766
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final readRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "val"    # [Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 1793
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1794
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1795
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1796
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    #@d
    move-result-object v2

    #@e
    aput-object v2, p1, v1

    #@10
    .line 1795
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1799
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1792
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readSerializable()Ljava/io/Serializable;
    .locals 1

    #@0
    .prologue
    .line 2595
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final readSize()Landroid/util/Size;
    .locals 3

    #@0
    .prologue
    .line 1919
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 1920
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    .line 1921
    .local v0, "height":I
    new-instance v2, Landroid/util/Size;

    #@a
    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    #@d
    return-object v2
.end method

.method public final readSizeF()Landroid/util/SizeF;
    .locals 3

    #@0
    .prologue
    .line 1928
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@3
    move-result v1

    #@4
    .line 1929
    .local v1, "width":F
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@7
    move-result v0

    #@8
    .line 1930
    .local v0, "height":F
    new-instance v2, Landroid/util/SizeF;

    #@a
    invoke-direct {v2, v1, v0}, Landroid/util/SizeF;-><init>(FF)V

    #@d
    return-object v2
.end method

.method public final readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 2063
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2064
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2065
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2067
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    #@a
    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    #@d
    .line 2068
    .local v1, "sa":Landroid/util/SparseArray;
    invoke-direct {p0, v1, v0, p1}, Landroid/os/Parcel;->readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V

    #@10
    .line 2069
    return-object v1
.end method

.method public final readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .locals 3

    #@0
    .prologue
    .line 2078
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2079
    .local v0, "N":I
    if-gez v0, :cond_0

    #@6
    .line 2080
    const/4 v2, 0x0

    #@7
    return-object v2

    #@8
    .line 2082
    :cond_0
    new-instance v1, Landroid/util/SparseBooleanArray;

    #@a
    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@d
    .line 2083
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    #@10
    .line 2084
    return-object v1
.end method

.method public final readString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1738
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final readStringArray([Ljava/lang/String;)V
    .locals 4
    .param p1, "val"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1120
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1121
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_0

    #@7
    .line 1122
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@a
    .line 1123
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    aput-object v2, p1, v1

    #@10
    .line 1122
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1126
    .end local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "bad array lengths"

    #@18
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1119
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final readStringArray()[Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1968
    const/4 v0, 0x0

    #@1
    .line 1970
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 1971
    .local v2, "length":I
    if-ltz v2, :cond_0

    #@7
    .line 1973
    new-array v0, v2, [Ljava/lang/String;

    #@9
    .line 1975
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    .line 1977
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    aput-object v3, v0, v1

    #@12
    .line 1975
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 1981
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2210
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    .line 2211
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    .line 2212
    .local v1, "N":I
    const/4 v2, 0x0

    #@9
    .line 2213
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@b
    if-ge v2, v1, :cond_0

    #@d
    .line 2214
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 2213
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 2216
    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    #@19
    .line 2217
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    .line 2216
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_1

    #@23
    .line 2219
    :cond_1
    :goto_2
    if-ge v2, v0, :cond_2

    #@25
    .line 2220
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@28
    .line 2219
    add-int/lit8 v2, v2, 0x1

    #@2a
    goto :goto_2

    #@2b
    .line 2209
    :cond_2
    return-void
.end method

.method public final readStrongBinder()Landroid/os/IBinder;
    .locals 2

    #@0
    .prologue
    .line 1753
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadStrongBinder(J)Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2275
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 2276
    .local v0, "N":I
    array-length v2, p1

    #@5
    if-ne v0, v2, :cond_1

    #@7
    .line 2277
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@a
    .line 2278
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 2279
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    aput-object v2, p1, v1

    #@16
    .line 2277
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 2281
    :cond_0
    const/4 v2, 0x0

    #@1a
    aput-object v2, p1, v1

    #@1c
    goto :goto_1

    #@1d
    .line 2285
    .end local v1    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    #@1f
    const-string/jumbo v3, "bad array lengths"

    #@22
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v2

    #@26
    .line 2274
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public final readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2295
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 2130
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@4
    move-result v0

    #@5
    .line 2131
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    .line 2132
    .local v1, "N":I
    const/4 v2, 0x0

    #@a
    .line 2133
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@c
    if-ge v2, v1, :cond_1

    #@e
    .line 2134
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_0

    #@14
    .line 2135
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 2133
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 2137
    :cond_0
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_1

    #@22
    .line 2140
    :cond_1
    :goto_2
    if-ge v2, v1, :cond_3

    #@24
    .line 2141
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_2

    #@2a
    .line 2142
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@31
    .line 2140
    :goto_3
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_2

    #@34
    .line 2144
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_3

    #@38
    .line 2147
    :cond_3
    :goto_4
    if-ge v2, v0, :cond_4

    #@3a
    .line 2148
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@3d
    .line 2147
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_4

    #@40
    .line 2129
    :cond_4
    return-void
.end method

.method public final readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 2310
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 2311
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 2313
    :cond_0
    const/4 v0, 0x0

    #@c
    return-object v0
.end method

.method public final readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 2349
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v1

    #@5
    .line 2351
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    #@8
    .line 2443
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v2

    #@c
    add-int/lit8 v0, v2, -0x4

    #@e
    .line 2444
    .local v0, "off":I
    new-instance v2, Ljava/lang/RuntimeException;

    #@10
    .line 2445
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Parcel "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, ": Unmarshalling unknown type code "

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    const-string/jumbo v4, " at offset "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 2444
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 2353
    .end local v0    # "off":I
    :pswitch_0
    const/4 v2, 0x0

    #@3f
    return-object v2

    #@40
    .line 2356
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    return-object v2

    #@45
    .line 2359
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@48
    move-result v2

    #@49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v2

    #@4d
    return-object v2

    #@4e
    .line 2362
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    #@51
    move-result-object v2

    #@52
    return-object v2

    #@53
    .line 2365
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@56
    move-result-object v2

    #@57
    return-object v2

    #@58
    .line 2368
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@5b
    move-result v2

    #@5c
    int-to-short v2, v2

    #@5d
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@60
    move-result-object v2

    #@61
    return-object v2

    #@62
    .line 2371
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@65
    move-result-wide v2

    #@66
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@69
    move-result-object v2

    #@6a
    return-object v2

    #@6b
    .line 2374
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@6e
    move-result v2

    #@6f
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@72
    move-result-object v2

    #@73
    return-object v2

    #@74
    .line 2377
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    #@77
    move-result-wide v2

    #@78
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@7b
    move-result-object v2

    #@7c
    return-object v2

    #@7d
    .line 2380
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@80
    move-result v3

    #@81
    if-ne v3, v2, :cond_0

    #@83
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@86
    move-result-object v2

    #@87
    return-object v2

    #@88
    :cond_0
    const/4 v2, 0x0

    #@89
    goto :goto_0

    #@8a
    .line 2383
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@8d
    move-result-object v2

    #@8e
    return-object v2

    #@8f
    .line 2386
    :pswitch_b
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    #@92
    move-result-object v2

    #@93
    return-object v2

    #@94
    .line 2389
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    #@97
    move-result-object v2

    #@98
    return-object v2

    #@99
    .line 2392
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@9c
    move-result-object v2

    #@9d
    return-object v2

    #@9e
    .line 2395
    :pswitch_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    return-object v2

    #@a3
    .line 2398
    :pswitch_f
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    #@a6
    move-result-object v2

    #@a7
    return-object v2

    #@a8
    .line 2401
    :pswitch_10
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@ab
    move-result-object v2

    #@ac
    return-object v2

    #@ad
    .line 2404
    :pswitch_11
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;

    #@b0
    move-result-object v2

    #@b1
    return-object v2

    #@b2
    .line 2407
    :pswitch_12
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    #@b5
    move-result-object v2

    #@b6
    return-object v2

    #@b7
    .line 2410
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    #@ba
    move-result-object v2

    #@bb
    return-object v2

    #@bc
    .line 2413
    :pswitch_14
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    #@bf
    move-result v2

    #@c0
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@c3
    move-result-object v2

    #@c4
    return-object v2

    #@c5
    .line 2416
    :pswitch_15
    invoke-direct {p0, p1}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;)Ljava/io/Serializable;

    #@c8
    move-result-object v2

    #@c9
    return-object v2

    #@ca
    .line 2419
    :pswitch_16
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    #@cd
    move-result-object v2

    #@ce
    return-object v2

    #@cf
    .line 2422
    :pswitch_17
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    #@d2
    move-result-object v2

    #@d3
    return-object v2

    #@d4
    .line 2425
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    #@d7
    move-result-object v2

    #@d8
    return-object v2

    #@d9
    .line 2428
    :pswitch_19
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    #@dc
    move-result-object v2

    #@dd
    return-object v2

    #@de
    .line 2431
    :pswitch_1a
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    #@e1
    move-result-object v2

    #@e2
    return-object v2

    #@e3
    .line 2434
    :pswitch_1b
    invoke-virtual {p0}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    #@e6
    move-result-object v2

    #@e7
    return-object v2

    #@e8
    .line 2437
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/Parcel;->readSizeF()Landroid/util/SizeF;

    #@eb
    move-result-object v2

    #@ec
    return-object v2

    #@ed
    .line 2440
    :pswitch_1d
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    #@f0
    move-result-object v2

    #@f1
    return-object v2

    #@f2
    .line 2351
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_19
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_16
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_18
        :pswitch_c
        :pswitch_f
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public final recycle()V
    .locals 4

    #@0
    .prologue
    .line 340
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    #@3
    .line 343
    iget-boolean v2, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 344
    sget-object v1, Landroid/os/Parcel;->sOwnedPool:[Landroid/os/Parcel;

    #@9
    .line 350
    .local v1, "pool":[Landroid/os/Parcel;
    :goto_0
    monitor-enter v1

    #@a
    .line 351
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_1
    const/4 v2, 0x6

    #@c
    if-ge v0, v2, :cond_2

    #@e
    .line 352
    :try_start_0
    aget-object v2, v1, v0

    #@10
    if-nez v2, :cond_1

    #@12
    .line 353
    aput-object p0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    .line 354
    return-void

    #@16
    .line 346
    .end local v0    # "i":I
    .end local v1    # "pool":[Landroid/os/Parcel;
    :cond_0
    const-wide/16 v2, 0x0

    #@18
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    #@1a
    .line 347
    sget-object v1, Landroid/os/Parcel;->sHolderPool:[Landroid/os/Parcel;

    #@1c
    .restart local v1    # "pool":[Landroid/os/Parcel;
    goto :goto_0

    #@1d
    .line 351
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_1

    #@20
    :cond_2
    monitor-exit v1

    #@21
    .line 338
    return-void

    #@22
    .line 350
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v1

    #@24
    throw v2
.end method

.method public final restoreAllowFds(Z)V
    .locals 2
    .param p1, "lastValue"    # Z

    #@0
    .prologue
    .line 437
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(JZ)V

    #@5
    .line 436
    return-void
.end method

.method public final setDataCapacity(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 427
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(JI)V

    #@5
    .line 426
    return-void
.end method

.method public final setDataPosition(I)V
    .locals 2
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 416
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataPosition(JI)V

    #@5
    .line 415
    return-void
.end method

.method public final setDataSize(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 407
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataSize(JI)J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@9
    .line 406
    return-void
.end method

.method public final unmarshall([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 459
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@9
    .line 458
    return-void
.end method

.method public final writeArray([Ljava/lang/Object;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 823
    if-nez p1, :cond_0

    #@2
    .line 824
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 825
    return-void

    #@7
    .line 827
    :cond_0
    array-length v0, p1

    #@8
    .line 828
    .local v0, "N":I
    const/4 v1, 0x0

    #@9
    .line 829
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 830
    :goto_0
    if-ge v1, v0, :cond_1

    #@e
    .line 831
    aget-object v2, p1, v1

    #@10
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@13
    .line 832
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 822
    :cond_1
    return-void
.end method

.method public writeArrayMap(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 736
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    #@3
    .line 735
    return-void
.end method

.method writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 707
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    #@2
    .line 708
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 709
    return-void

    #@7
    .line 713
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    #@a
    move-result v0

    #@b
    .line 714
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 721
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 723
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 724
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@21
    .line 721
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 706
    :cond_1
    return-void
.end method

.method public writeArraySet(Landroid/util/ArraySet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 747
    .local p1, "val":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    #@5
    move-result v1

    #@6
    .line 748
    .local v1, "size":I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 749
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    #@c
    .line 750
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@13
    .line 749
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_1

    #@16
    .line 747
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    const/4 v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 746
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_1
    return-void
.end method

.method public final writeBinderArray([Landroid/os/IBinder;)V
    .locals 3
    .param p1, "val"    # [Landroid/os/IBinder;

    #@0
    .prologue
    .line 1131
    if-eqz p1, :cond_0

    #@2
    .line 1132
    array-length v0, p1

    #@3
    .line 1133
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1134
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1135
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@e
    .line 1134
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1138
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1130
    :cond_1
    return-void
.end method

.method public final writeBinderList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1267
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_0

    #@2
    .line 1268
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1269
    return-void

    #@7
    .line 1271
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 1272
    .local v0, "N":I
    const/4 v1, 0x0

    #@c
    .line 1273
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1274
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 1275
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroid/os/IBinder;

    #@17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1a
    .line 1276
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1266
    :cond_1
    return-void
.end method

.method public final writeBlob([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 519
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeBlob([BII)V

    #@7
    .line 518
    return-void

    #@8
    :cond_0
    move v0, v1

    #@9
    .line 519
    goto :goto_0
.end method

.method public final writeBlob([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 532
    if-nez p1, :cond_0

    #@2
    .line 533
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 534
    return-void

    #@7
    .line 536
    :cond_0
    array-length v0, p1

    #@8
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@b
    .line 537
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@d
    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteBlob(J[BII)V

    #@10
    .line 531
    return-void
.end method

.method public final writeBooleanArray([Z)V
    .locals 3
    .param p1, "val"    # [Z

    #@0
    .prologue
    .line 873
    if-eqz p1, :cond_1

    #@2
    .line 874
    array-length v0, p1

    #@3
    .line 875
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 876
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@9
    .line 877
    aget-boolean v2, p1, v1

    #@b
    if-eqz v2, :cond_0

    #@d
    const/4 v2, 0x1

    #@e
    :goto_1
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 876
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 877
    :cond_0
    const/4 v2, 0x0

    #@15
    goto :goto_1

    #@16
    .line 880
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, -0x1

    #@17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 872
    :cond_2
    return-void
.end method

.method public final writeBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 759
    if-nez p1, :cond_0

    #@2
    .line 760
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 761
    return-void

    #@7
    .line 764
    :cond_0
    const/4 v0, 0x0

    #@8
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@b
    .line 758
    return-void
.end method

.method public final writeByte(B)V
    .locals 0
    .param p1, "val"    # B

    #@0
    .prologue
    .line 667
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    #@3
    .line 666
    return-void
.end method

.method public final writeByteArray([B)V
    .locals 2
    .param p1, "b"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 492
    if-eqz p1, :cond_0

    #@3
    array-length v0, p1

    #@4
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Parcel;->writeByteArray([BII)V

    #@7
    .line 491
    return-void

    #@8
    :cond_0
    move v0, v1

    #@9
    .line 492
    goto :goto_0
.end method

.method public final writeByteArray([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 503
    if-nez p1, :cond_0

    #@2
    .line 504
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 505
    return-void

    #@7
    .line 507
    :cond_0
    array-length v0, p1

    #@8
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@b
    .line 508
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@d
    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(J[BII)V

    #@10
    .line 502
    return-void
.end method

.method public final writeCharArray([C)V
    .locals 3
    .param p1, "val"    # [C

    #@0
    .prologue
    .line 912
    if-eqz p1, :cond_0

    #@2
    .line 913
    array-length v0, p1

    #@3
    .line 914
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 915
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 916
    aget-char v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 915
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 919
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 911
    :cond_1
    return-void
.end method

.method public final writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "val"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 586
    const/4 v0, 0x0

    #@1
    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@4
    .line 585
    return-void
.end method

.method public final writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1146
    if-eqz p1, :cond_0

    #@2
    .line 1147
    array-length v0, p1

    #@3
    .line 1148
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1149
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1150
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@e
    .line 1149
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1153
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1145
    :cond_1
    return-void
.end method

.method public final writeCharSequenceList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1161
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    #@2
    .line 1162
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 1163
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 1164
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@c
    .line 1165
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Ljava/lang/CharSequence;

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@15
    .line 1164
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1168
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@19
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 1160
    :cond_1
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "val"    # D

    #@0
    .prologue
    .line 569
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(JD)V

    #@5
    .line 568
    return-void
.end method

.method public final writeDoubleArray([D)V
    .locals 4
    .param p1, "val"    # [D

    #@0
    .prologue
    .line 1058
    if-eqz p1, :cond_0

    #@2
    .line 1059
    array-length v0, p1

    #@3
    .line 1060
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1061
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1062
    aget-wide v2, p1, v1

    #@b
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    #@e
    .line 1061
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1065
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1057
    :cond_1
    return-void
.end method

.method public final writeException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    #@0
    .prologue
    .line 1557
    const/4 v0, 0x0

    #@1
    .line 1558
    .local v0, "code":I
    instance-of v1, p1, Ljava/lang/SecurityException;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1559
    const/4 v0, -0x1

    #@6
    .line 1575
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 1576
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    #@c
    .line 1577
    if-nez v0, :cond_9

    #@e
    .line 1578
    instance-of v1, p1, Ljava/lang/RuntimeException;

    #@10
    if-eqz v1, :cond_8

    #@12
    .line 1579
    check-cast p1, Ljava/lang/RuntimeException;

    #@14
    .end local p1    # "e":Ljava/lang/Exception;
    throw p1

    #@15
    .line 1560
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_1
    instance-of v1, p1, Landroid/os/BadParcelableException;

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 1561
    const/4 v0, -0x2

    #@1a
    goto :goto_0

    #@1b
    .line 1562
    :cond_2
    instance-of v1, p1, Ljava/lang/IllegalArgumentException;

    #@1d
    if-eqz v1, :cond_3

    #@1f
    .line 1563
    const/4 v0, -0x3

    #@20
    goto :goto_0

    #@21
    .line 1564
    :cond_3
    instance-of v1, p1, Ljava/lang/NullPointerException;

    #@23
    if-eqz v1, :cond_4

    #@25
    .line 1565
    const/4 v0, -0x4

    #@26
    goto :goto_0

    #@27
    .line 1566
    :cond_4
    instance-of v1, p1, Ljava/lang/IllegalStateException;

    #@29
    if-eqz v1, :cond_5

    #@2b
    .line 1567
    const/4 v0, -0x5

    #@2c
    goto :goto_0

    #@2d
    .line 1568
    :cond_5
    instance-of v1, p1, Landroid/os/NetworkOnMainThreadException;

    #@2f
    if-eqz v1, :cond_6

    #@31
    .line 1569
    const/4 v0, -0x6

    #@32
    goto :goto_0

    #@33
    .line 1570
    :cond_6
    instance-of v1, p1, Ljava/lang/UnsupportedOperationException;

    #@35
    if-eqz v1, :cond_7

    #@37
    .line 1571
    const/4 v0, -0x7

    #@38
    goto :goto_0

    #@39
    .line 1572
    :cond_7
    instance-of v1, p1, Landroid/os/ServiceSpecificException;

    #@3b
    if-eqz v1, :cond_0

    #@3d
    .line 1573
    const/4 v0, -0x8

    #@3e
    goto :goto_0

    #@3f
    .line 1581
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    #@41
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@44
    throw v1

    #@45
    .line 1583
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4c
    .line 1584
    instance-of v1, p1, Landroid/os/ServiceSpecificException;

    #@4e
    if-eqz v1, :cond_a

    #@50
    .line 1585
    check-cast p1, Landroid/os/ServiceSpecificException;

    #@52
    .end local p1    # "e":Ljava/lang/Exception;
    iget v1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    #@54
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 1556
    :cond_a
    return-void
.end method

.method public final writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "val"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 616
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/os/Parcel;->updateNativeSize(J)V

    #@9
    .line 615
    return-void
.end method

.method public final writeFloat(F)V
    .locals 2
    .param p1, "val"    # F

    #@0
    .prologue
    .line 561
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFloat(JF)V

    #@5
    .line 560
    return-void
.end method

.method public final writeFloatArray([F)V
    .locals 3
    .param p1, "val"    # [F

    #@0
    .prologue
    .line 1021
    if-eqz p1, :cond_0

    #@2
    .line 1022
    array-length v0, p1

    #@3
    .line 1023
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1024
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1025
    aget v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    #@e
    .line 1024
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1028
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1020
    :cond_1
    return-void
.end method

.method public final writeInt(I)V
    .locals 2
    .param p1, "val"    # I

    #@0
    .prologue
    .line 545
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInt(JI)V

    #@5
    .line 544
    return-void
.end method

.method public final writeIntArray([I)V
    .locals 3
    .param p1, "val"    # [I

    #@0
    .prologue
    .line 948
    if-eqz p1, :cond_0

    #@2
    .line 949
    array-length v0, p1

    #@3
    .line 950
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 951
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 952
    aget v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 951
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 955
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 947
    :cond_1
    return-void
.end method

.method public final writeInterfaceToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 479
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(JLjava/lang/String;)V

    #@5
    .line 478
    return-void
.end method

.method public final writeList(Ljava/util/List;)V
    .locals 3
    .param p1, "val"    # Ljava/util/List;

    #@0
    .prologue
    .line 804
    if-nez p1, :cond_0

    #@2
    .line 805
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 806
    return-void

    #@7
    .line 808
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 809
    .local v0, "N":I
    const/4 v1, 0x0

    #@c
    .line 810
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 811
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 812
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@18
    .line 813
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 803
    :cond_1
    return-void
.end method

.method public final writeLong(J)V
    .locals 3
    .param p1, "val"    # J

    #@0
    .prologue
    .line 553
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(JJ)V

    #@5
    .line 552
    return-void
.end method

.method public final writeLongArray([J)V
    .locals 4
    .param p1, "val"    # [J

    #@0
    .prologue
    .line 984
    if-eqz p1, :cond_0

    #@2
    .line 985
    array-length v0, p1

    #@3
    .line 986
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 987
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 988
    aget-wide v2, p1, v1

    #@b
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@e
    .line 987
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 991
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 983
    :cond_1
    return-void
.end method

.method public final writeMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "val"    # Ljava/util/Map;

    #@0
    .prologue
    .line 682
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    #@3
    .line 681
    return-void
.end method

.method writeMapInternal(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 690
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    #@2
    .line 691
    const/4 v3, -0x1

    #@3
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 692
    return-void

    #@7
    .line 694
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v2

    #@b
    .line 695
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@e
    move-result v3

    #@f
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 696
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 697
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@29
    .line 698
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@30
    goto :goto_0

    #@31
    .line 689
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public final writeNoException()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1610
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 1611
    const/16 v2, -0x80

    #@9
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1612
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@f
    move-result v1

    #@10
    .line 1613
    .local v1, "sizePosition":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 1614
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    #@16
    .line 1615
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@19
    move-result v0

    #@1a
    .line 1616
    .local v0, "payloadPosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@1d
    .line 1617
    sub-int v2, v0, v1

    #@1f
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 1618
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@25
    .line 1596
    .end local v0    # "payloadPosition":I
    .end local v1    # "sizePosition":I
    :goto_0
    return-void

    #@26
    .line 1620
    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    goto :goto_0
.end method

.method public final writeParcelable(Landroid/os/Parcelable;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1491
    if-nez p1, :cond_0

    #@3
    .line 1492
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 1493
    return-void

    #@7
    .line 1495
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    #@a
    .line 1496
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@d
    .line 1490
    return-void
.end method

.method public final writeParcelableArray([Landroid/os/Parcelable;I)V
    .locals 3
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2332
    .local p1, "value":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_0

    #@2
    .line 2333
    array-length v0, p1

    #@3
    .line 2334
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 2335
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 2336
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@e
    .line 2335
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 2339
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 2331
    :cond_1
    return-void
.end method

.method public final writeParcelableCreator(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 1501
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1502
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    .line 1500
    return-void
.end method

.method public final writePersistableBundle(Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "val"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 772
    if-nez p1, :cond_0

    #@2
    .line 773
    const/4 v0, -0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 774
    return-void

    #@7
    .line 777
    :cond_0
    const/4 v0, 0x0

    #@8
    invoke-virtual {p1, p0, v0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@b
    .line 771
    return-void
.end method

.method public final writeRawFileDescriptor(Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "val"    # Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 641
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)J

    #@5
    .line 640
    return-void
.end method

.method public final writeRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "value"    # [Ljava/io/FileDescriptor;

    #@0
    .prologue
    .line 651
    if-eqz p1, :cond_0

    #@2
    .line 652
    array-length v0, p1

    #@3
    .line 653
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 654
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 655
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    #@e
    .line 654
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 658
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 650
    :cond_1
    return-void
.end method

.method public final writeSerializable(Ljava/io/Serializable;)V
    .locals 7
    .param p1, "s"    # Ljava/io/Serializable;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1512
    if-nez p1, :cond_0

    #@3
    .line 1513
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@6
    .line 1514
    return-void

    #@7
    .line 1516
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v4

    #@b
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    .line 1517
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1519
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@14
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@17
    .line 1521
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    #@19
    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1c
    .line 1522
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1f
    .line 1523
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    #@22
    .line 1525
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 1511
    return-void

    #@2a
    .line 1526
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    #@2b
    .line 1527
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    #@2d
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "Parcelable encountered IOException writing serializable object (name = "

    #@35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 1529
    const-string/jumbo v6, ")"

    #@40
    .line 1527
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4b
    throw v4
.end method

.method public final writeSize(Landroid/util/Size;)V
    .locals 1
    .param p1, "val"    # Landroid/util/Size;

    #@0
    .prologue
    .line 785
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 786
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 784
    return-void
.end method

.method public final writeSizeF(Landroid/util/SizeF;)V
    .locals 1
    .param p1, "val"    # Landroid/util/SizeF;

    #@0
    .prologue
    .line 794
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@7
    .line 795
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@e
    .line 793
    return-void
.end method

.method public final writeSparseArray(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 843
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    #@2
    .line 844
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 845
    return-void

    #@7
    .line 847
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    #@a
    move-result v0

    #@b
    .line 848
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 849
    const/4 v1, 0x0

    #@f
    .line 850
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 851
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@14
    move-result v2

    #@15
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 852
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    #@1f
    .line 853
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 842
    :cond_1
    return-void
.end method

.method public final writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "val"    # Landroid/util/SparseBooleanArray;

    #@0
    .prologue
    .line 858
    if-nez p1, :cond_0

    #@2
    .line 859
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 860
    return-void

    #@7
    .line 862
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    #@a
    move-result v0

    #@b
    .line 863
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 864
    const/4 v1, 0x0

    #@f
    .line 865
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@11
    .line 866
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@14
    move-result v2

    #@15
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 867
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    const/4 v2, 0x1

    #@1f
    :goto_1
    int-to-byte v2, v2

    #@20
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    #@23
    .line 868
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_0

    #@26
    .line 867
    :cond_1
    const/4 v2, 0x0

    #@27
    goto :goto_1

    #@28
    .line 857
    :cond_2
    return-void
.end method

.method public final writeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 577
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString(JLjava/lang/String;)V

    #@5
    .line 576
    return-void
.end method

.method public final writeStringArray([Ljava/lang/String;)V
    .locals 3
    .param p1, "val"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1095
    if-eqz p1, :cond_0

    #@2
    .line 1096
    array-length v0, p1

    #@3
    .line 1097
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1098
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@9
    .line 1099
    aget-object v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 1098
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 1102
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, -0x1

    #@12
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1094
    :cond_1
    return-void
.end method

.method public final writeStringList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1242
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@2
    .line 1243
    const/4 v2, -0x1

    #@3
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1244
    return-void

    #@7
    .line 1246
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    .line 1247
    .local v0, "N":I
    const/4 v1, 0x0

    #@c
    .line 1248
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1249
    :goto_0
    if-ge v1, v0, :cond_1

    #@11
    .line 1250
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Ljava/lang/String;

    #@17
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 1251
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 1241
    :cond_1
    return-void
.end method

.method public final writeStrongBinder(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "val"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 594
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(JLandroid/os/IBinder;)V

    #@5
    .line 593
    return-void
.end method

.method public final writeStrongInterface(Landroid/os/IInterface;)V
    .locals 1
    .param p1, "val"    # Landroid/os/IInterface;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 602
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@6
    .line 601
    return-void

    #@7
    .line 602
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    #@a
    move-result-object v0

    #@b
    goto :goto_0
.end method

.method public final writeTypedArray([Landroid/os/Parcelable;I)V
    .locals 4
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1300
    .local p1, "val":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_1

    #@2
    .line 1301
    array-length v0, p1

    #@3
    .line 1302
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1303
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@9
    .line 1304
    aget-object v2, p1, v1

    #@b
    .line 1305
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_0

    #@d
    .line 1306
    const/4 v3, 0x1

    #@e
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1307
    invoke-interface {v2, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 1303
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1309
    :cond_0
    const/4 v3, 0x0

    #@18
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    goto :goto_1

    #@1c
    .line 1313
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_1
    const/4 v3, -0x1

    #@1d
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1299
    :cond_2
    return-void
.end method

.method public final writeTypedList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 1211
    if-nez p1, :cond_0

    #@3
    .line 1212
    const/4 v3, -0x1

    #@4
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1213
    return-void

    #@8
    .line 1215
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v0

    #@c
    .line 1216
    .local v0, "N":I
    const/4 v1, 0x0

    #@d
    .line 1217
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1218
    :goto_0
    if-ge v1, v0, :cond_2

    #@12
    .line 1219
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid/os/Parcelable;

    #@18
    .line 1220
    .local v2, "item":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1

    #@1a
    .line 1221
    const/4 v3, 0x1

    #@1b
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 1222
    invoke-interface {v2, p0, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    .line 1226
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1224
    :cond_1
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    goto :goto_1

    #@28
    .line 1210
    .end local v2    # "item":Landroid/os/Parcelable;, "TT;"
    :cond_2
    return-void
.end method

.method public final writeTypedObject(Landroid/os/Parcelable;I)V
    .locals 1
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1327
    .local p1, "val":Landroid/os/Parcelable;, "TT;"
    if-eqz p1, :cond_0

    #@2
    .line 1328
    const/4 v0, 0x1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1329
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    .line 1326
    :goto_0
    return-void

    #@a
    .line 1331
    :cond_0
    const/4 v0, 0x0

    #@b
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    goto :goto_0
.end method

.method public final writeValue(Ljava/lang/Object;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1379
    if-nez p1, :cond_0

    #@4
    .line 1380
    const/4 v1, -0x1

    #@5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 1378
    .end local p1    # "v":Ljava/lang/Object;
    :goto_0
    return-void

    #@9
    .line 1381
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Ljava/lang/String;

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 1382
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1383
    check-cast p1, Ljava/lang/String;

    #@12
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    goto :goto_0

    #@16
    .line 1384
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/lang/Integer;

    #@18
    if-eqz v3, :cond_2

    #@1a
    .line 1385
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 1386
    check-cast p1, Ljava/lang/Integer;

    #@1f
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v1

    #@23
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    goto :goto_0

    #@27
    .line 1387
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_2
    instance-of v3, p1, Ljava/util/Map;

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 1388
    const/4 v1, 0x2

    #@2c
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2f
    .line 1389
    check-cast p1, Ljava/util/Map;

    #@31
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@34
    goto :goto_0

    #@35
    .line 1390
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_3
    instance-of v3, p1, Landroid/os/Bundle;

    #@37
    if-eqz v3, :cond_4

    #@39
    .line 1392
    const/4 v1, 0x3

    #@3a
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3d
    .line 1393
    check-cast p1, Landroid/os/Bundle;

    #@3f
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@42
    goto :goto_0

    #@43
    .line 1394
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, Landroid/os/PersistableBundle;

    #@45
    if-eqz v3, :cond_5

    #@47
    .line 1395
    const/16 v1, 0x19

    #@49
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@4c
    .line 1396
    check-cast p1, Landroid/os/PersistableBundle;

    #@4e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    #@51
    goto :goto_0

    #@52
    .line 1397
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_5
    instance-of v3, p1, Landroid/os/Parcelable;

    #@54
    if-eqz v3, :cond_6

    #@56
    .line 1401
    const/4 v1, 0x4

    #@57
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 1402
    check-cast p1, Landroid/os/Parcelable;

    #@5c
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@5f
    goto :goto_0

    #@60
    .line 1403
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_6
    instance-of v3, p1, Ljava/lang/Short;

    #@62
    if-eqz v3, :cond_7

    #@64
    .line 1404
    const/4 v1, 0x5

    #@65
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@68
    .line 1405
    check-cast p1, Ljava/lang/Short;

    #@6a
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    #@6d
    move-result v1

    #@6e
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@71
    goto :goto_0

    #@72
    .line 1406
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_7
    instance-of v3, p1, Ljava/lang/Long;

    #@74
    if-eqz v3, :cond_8

    #@76
    .line 1407
    const/4 v1, 0x6

    #@77
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@7a
    .line 1408
    check-cast p1, Ljava/lang/Long;

    #@7c
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@7f
    move-result-wide v2

    #@80
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@83
    goto :goto_0

    #@84
    .line 1409
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_8
    instance-of v3, p1, Ljava/lang/Float;

    #@86
    if-eqz v3, :cond_9

    #@88
    .line 1410
    const/4 v1, 0x7

    #@89
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 1411
    check-cast p1, Ljava/lang/Float;

    #@8e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@91
    move-result v1

    #@92
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@95
    goto/16 :goto_0

    #@97
    .line 1412
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_9
    instance-of v3, p1, Ljava/lang/Double;

    #@99
    if-eqz v3, :cond_a

    #@9b
    .line 1413
    const/16 v1, 0x8

    #@9d
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a0
    .line 1414
    check-cast p1, Ljava/lang/Double;

    #@a2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    #@a5
    move-result-wide v2

    #@a6
    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    #@a9
    goto/16 :goto_0

    #@ab
    .line 1415
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_a
    instance-of v3, p1, Ljava/lang/Boolean;

    #@ad
    if-eqz v3, :cond_c

    #@af
    .line 1416
    const/16 v3, 0x9

    #@b1
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b4
    .line 1417
    check-cast p1, Ljava/lang/Boolean;

    #@b6
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@b9
    move-result v3

    #@ba
    if-eqz v3, :cond_b

    #@bc
    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@bf
    goto/16 :goto_0

    #@c1
    :cond_b
    move v1, v2

    #@c2
    goto :goto_1

    #@c3
    .line 1418
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, Ljava/lang/CharSequence;

    #@c5
    if-eqz v1, :cond_d

    #@c7
    .line 1420
    const/16 v1, 0xa

    #@c9
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@cc
    .line 1421
    check-cast p1, Ljava/lang/CharSequence;

    #@ce
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@d1
    goto/16 :goto_0

    #@d3
    .line 1422
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_d
    instance-of v1, p1, Ljava/util/List;

    #@d5
    if-eqz v1, :cond_e

    #@d7
    .line 1423
    const/16 v1, 0xb

    #@d9
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@dc
    .line 1424
    check-cast p1, Ljava/util/List;

    #@de
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@e1
    goto/16 :goto_0

    #@e3
    .line 1425
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_e
    instance-of v1, p1, Landroid/util/SparseArray;

    #@e5
    if-eqz v1, :cond_f

    #@e7
    .line 1426
    const/16 v1, 0xc

    #@e9
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ec
    .line 1427
    check-cast p1, Landroid/util/SparseArray;

    #@ee
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    #@f1
    goto/16 :goto_0

    #@f3
    .line 1428
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_f
    instance-of v1, p1, [Z

    #@f5
    if-eqz v1, :cond_10

    #@f7
    .line 1429
    const/16 v1, 0x17

    #@f9
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@fc
    .line 1430
    check-cast p1, [Z

    #@fe
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    #@101
    goto/16 :goto_0

    #@103
    .line 1431
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_10
    instance-of v1, p1, [B

    #@105
    if-eqz v1, :cond_11

    #@107
    .line 1432
    const/16 v1, 0xd

    #@109
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10c
    .line 1433
    check-cast p1, [B

    #@10e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    #@111
    goto/16 :goto_0

    #@113
    .line 1434
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_11
    instance-of v1, p1, [Ljava/lang/String;

    #@115
    if-eqz v1, :cond_12

    #@117
    .line 1435
    const/16 v1, 0xe

    #@119
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@11c
    .line 1436
    check-cast p1, [Ljava/lang/String;

    #@11e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@121
    goto/16 :goto_0

    #@123
    .line 1437
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_12
    instance-of v1, p1, [Ljava/lang/CharSequence;

    #@125
    if-eqz v1, :cond_13

    #@127
    .line 1439
    const/16 v1, 0x18

    #@129
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@12c
    .line 1440
    check-cast p1, [Ljava/lang/CharSequence;

    #@12e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    #@131
    goto/16 :goto_0

    #@133
    .line 1441
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_13
    instance-of v1, p1, Landroid/os/IBinder;

    #@135
    if-eqz v1, :cond_14

    #@137
    .line 1442
    const/16 v1, 0xf

    #@139
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@13c
    .line 1443
    check-cast p1, Landroid/os/IBinder;

    #@13e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@141
    goto/16 :goto_0

    #@143
    .line 1444
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_14
    instance-of v1, p1, [Landroid/os/Parcelable;

    #@145
    if-eqz v1, :cond_15

    #@147
    .line 1445
    const/16 v1, 0x10

    #@149
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@14c
    .line 1446
    check-cast p1, [Landroid/os/Parcelable;

    #@14e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    #@151
    goto/16 :goto_0

    #@153
    .line 1447
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_15
    instance-of v1, p1, [I

    #@155
    if-eqz v1, :cond_16

    #@157
    .line 1448
    const/16 v1, 0x12

    #@159
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15c
    .line 1449
    check-cast p1, [I

    #@15e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@161
    goto/16 :goto_0

    #@163
    .line 1450
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_16
    instance-of v1, p1, [J

    #@165
    if-eqz v1, :cond_17

    #@167
    .line 1451
    const/16 v1, 0x13

    #@169
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@16c
    .line 1452
    check-cast p1, [J

    #@16e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeLongArray([J)V

    #@171
    goto/16 :goto_0

    #@173
    .line 1453
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_17
    instance-of v1, p1, Ljava/lang/Byte;

    #@175
    if-eqz v1, :cond_18

    #@177
    .line 1454
    const/16 v1, 0x14

    #@179
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@17c
    .line 1455
    check-cast p1, Ljava/lang/Byte;

    #@17e
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    #@181
    move-result v1

    #@182
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@185
    goto/16 :goto_0

    #@187
    .line 1456
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_18
    instance-of v1, p1, Landroid/util/Size;

    #@189
    if-eqz v1, :cond_19

    #@18b
    .line 1457
    const/16 v1, 0x1a

    #@18d
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@190
    .line 1458
    check-cast p1, Landroid/util/Size;

    #@192
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    #@195
    goto/16 :goto_0

    #@197
    .line 1459
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_19
    instance-of v1, p1, Landroid/util/SizeF;

    #@199
    if-eqz v1, :cond_1a

    #@19b
    .line 1460
    const/16 v1, 0x1b

    #@19d
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a0
    .line 1461
    check-cast p1, Landroid/util/SizeF;

    #@1a2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSizeF(Landroid/util/SizeF;)V

    #@1a5
    goto/16 :goto_0

    #@1a7
    .line 1462
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1a
    instance-of v1, p1, [D

    #@1a9
    if-eqz v1, :cond_1b

    #@1ab
    .line 1463
    const/16 v1, 0x1c

    #@1ad
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b0
    .line 1464
    check-cast p1, [D

    #@1b2
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    #@1b5
    goto/16 :goto_0

    #@1b7
    .line 1466
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1ba
    move-result-object v0

    #@1bb
    .line 1467
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    #@1be
    move-result v1

    #@1bf
    if-eqz v1, :cond_1c

    #@1c1
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@1c4
    move-result-object v1

    #@1c5
    const-class v2, Ljava/lang/Object;

    #@1c7
    if-ne v1, v2, :cond_1c

    #@1c9
    .line 1470
    const/16 v1, 0x11

    #@1cb
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1ce
    .line 1471
    check-cast p1, [Ljava/lang/Object;

    #@1d0
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    #@1d3
    goto/16 :goto_0

    #@1d5
    .line 1472
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1c
    instance-of v1, p1, Ljava/io/Serializable;

    #@1d7
    if-eqz v1, :cond_1d

    #@1d9
    .line 1474
    const/16 v1, 0x15

    #@1db
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1de
    .line 1475
    check-cast p1, Ljava/io/Serializable;

    #@1e0
    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    #@1e3
    goto/16 :goto_0

    #@1e5
    .line 1477
    .restart local p1    # "v":Ljava/lang/Object;
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    #@1e7
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1ec
    const-string/jumbo v3, "Parcel: unable to marshal value "

    #@1ef
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f2
    move-result-object v2

    #@1f3
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f6
    move-result-object v2

    #@1f7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fa
    move-result-object v2

    #@1fb
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1fe
    throw v1
.end method
