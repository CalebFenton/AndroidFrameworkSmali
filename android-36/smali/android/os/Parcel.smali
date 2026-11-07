.class public final Landroid/os/Parcel;
.super Ljava/lang/Object;
.source "Parcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Parcel$ReadWriteHelper;,
        Landroid/os/Parcel$LazyValue;,
        Landroid/os/Parcel$SquashReadHelper;,
        Landroid/os/Parcel$ClassLoaderProvider;,
        Landroid/os/Parcel$ParcelFlags;
    }
.end annotation


# static fields
.field private static final blacklist ARRAY_ALLOCATION_LIMIT:I = 0xf4240

.field private static final greylist-max-o DEBUG_ARRAY_MAP:Z = false

.field private static final greylist-max-o DEBUG_RECYCLE:Z = false

.field private static final greylist-max-o EX_BAD_PARCELABLE:I = -0x2

.field public static final blacklist EX_HAS_NOTED_APPOPS_REPLY_HEADER:I = -0x7f

.field private static final blacklist EX_HAS_STRICTMODE_REPLY_HEADER:I = -0x80

.field private static final greylist-max-o EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final greylist-max-o EX_ILLEGAL_STATE:I = -0x5

.field private static final greylist-max-o EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final greylist-max-o EX_NULL_POINTER:I = -0x4

.field private static final greylist-max-o EX_PARCELABLE:I = -0x9

.field private static final greylist-max-o EX_SECURITY:I = -0x1

.field private static final greylist-max-o EX_SERVICE_SPECIFIC:I = -0x8

.field private static final greylist-max-o EX_TRANSACTION_FAILED:I = -0x81

.field private static final greylist-max-o EX_UNSUPPORTED_OPERATION:I = -0x7

.field public static final blacklist FLAG_IS_REPLY_FROM_BLOCKING_ALLOWED_OBJECT:I = 0x1

.field public static final blacklist FLAG_PROPAGATE_ALLOW_BLOCKING:I = 0x2

.field private static final blacklist OK:I = 0x0

.field private static final greylist-max-o POOL_SIZE:I = 0x20

.field private static final blacklist SIZE_BOOLEAN:I = 0x4

.field private static final blacklist SIZE_BYTE:I = 0x1

.field private static final blacklist SIZE_CHAR:I = 0x2

.field private static final blacklist SIZE_COMPLEX_TYPE:I = 0x1

.field private static final blacklist SIZE_DOUBLE:I = 0x8

.field private static final blacklist SIZE_FLOAT:I = 0x4

.field private static final blacklist SIZE_INT:I = 0x4

.field private static final blacklist SIZE_LONG:I = 0x8

.field private static final blacklist SIZE_SHORT:I = 0x2

.field public static final whitelist STRING_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Parcel"

.field private static final greylist-max-o VAL_BOOLEAN:I = 0x9

.field private static final greylist-max-o VAL_BOOLEANARRAY:I = 0x17

.field private static final greylist-max-o VAL_BUNDLE:I = 0x3

.field private static final greylist-max-o VAL_BYTE:I = 0x14

.field private static final greylist-max-o VAL_BYTEARRAY:I = 0xd

.field private static final blacklist VAL_CHAR:I = 0x1d

.field private static final blacklist VAL_CHARARRAY:I = 0x1f

.field private static final greylist-max-o VAL_CHARSEQUENCE:I = 0xa

.field private static final greylist-max-o VAL_CHARSEQUENCEARRAY:I = 0x18

.field private static final greylist-max-o VAL_DOUBLE:I = 0x8

.field private static final greylist-max-o VAL_DOUBLEARRAY:I = 0x1c

.field private static final greylist-max-o VAL_FLOAT:I = 0x7

.field private static final blacklist VAL_FLOATARRAY:I = 0x20

.field private static final greylist-max-o VAL_IBINDER:I = 0xf

.field private static final greylist-max-o VAL_INTARRAY:I = 0x12

.field private static final greylist-max-o VAL_INTEGER:I = 0x1

.field private static final greylist-max-o VAL_LIST:I = 0xb

.field private static final greylist-max-o VAL_LONG:I = 0x6

.field private static final greylist-max-o VAL_LONGARRAY:I = 0x13

.field private static final greylist-max-o VAL_MAP:I = 0x2

.field private static final greylist-max-o VAL_NULL:I = -0x1

.field private static final greylist-max-o VAL_OBJECTARRAY:I = 0x11

.field private static final greylist-max-o VAL_PARCELABLE:I = 0x4

.field private static final greylist-max-o VAL_PARCELABLEARRAY:I = 0x10

.field private static final greylist-max-o VAL_PERSISTABLEBUNDLE:I = 0x19

.field private static final greylist-max-o VAL_SERIALIZABLE:I = 0x15

.field private static final greylist-max-o VAL_SHORT:I = 0x5

.field private static final blacklist VAL_SHORTARRAY:I = 0x1e

.field private static final greylist-max-o VAL_SIZE:I = 0x1a

.field private static final greylist-max-o VAL_SIZEF:I = 0x1b

.field private static final greylist-max-o VAL_SPARSEARRAY:I = 0xc

.field private static final greylist-max-o VAL_SPARSEBOOLEANARRAY:I = 0x16

.field private static final greylist-max-o VAL_STRING:I = 0x0

.field private static final greylist-max-o VAL_STRINGARRAY:I = 0xe

.field private static final greylist-max-o WRITE_EXCEPTION_STACK_TRACE_THRESHOLD_MS:I = 0x3e8

.field private static final greylist-max-p mCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Parcelable$Creator<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static blacklist sHolderPool:Landroid/os/Parcel;

.field private static blacklist sHolderPoolSize:I

.field private static volatile greylist-max-o sLastWriteExceptionStackTrace:J

.field private static blacklist sOwnedPool:Landroid/os/Parcel;

.field private static blacklist sOwnedPoolSize:I

.field private static final blacklist sPairedCreators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;>;>;"
        }
    .end annotation
.end field

.field private static greylist-max-o sParcelExceptionStackTrace:Z

.field private static final blacklist sPoolSync:Ljava/lang/Object;


# instance fields
.field private blacklist mAllowSquashing:Z

.field private greylist-max-o mClassCookies:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFlags:I

.field private greylist mNativePtr:J

.field private greylist-max-o mNativeSize:J

.field private greylist-max-o mOwnsNativeParcelObject:Z

.field private blacklist mPoolNext:Landroid/os/Parcel;

.field private blacklist mReadSquashableParcelables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

.field private blacklist mRecycled:Z

.field private greylist-max-o mStack:Ljava/lang/RuntimeException;

.field private blacklist mWrittenSquashableParcelables:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Parcelable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mreadValue(Landroid/os/Parcel;Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalueTypeToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/os/Parcel;->valueTypeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 290
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    .line 305
    const/4 v0, 0x0

    sput v0, Landroid/os/Parcel;->sOwnedPoolSize:I

    .line 308
    sput v0, Landroid/os/Parcel;->sHolderPoolSize:I

    .line 504
    new-instance v0, Landroid/os/Parcel$1;

    invoke-direct {v0}, Landroid/os/Parcel$1;-><init>()V

    sput-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    .line 5534
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    .line 5540
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    return-void
.end method

.method private constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "nativePtr"    # J

    .line 5573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mRecycled:Z

    .line 552
    sget-object v1, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v1, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 2876
    iput-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 5578
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->init(J)V

    .line 5579
    return-void
.end method

.method private blacklist checkArrayTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 5132
    .local p1, "requiredArrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "componentTypeToUnparcel":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2f

    .line 5134
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 5135
    .local v0, "requiredComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_c

    .line 5141
    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_2f

    .line 5136
    :cond_c
    new-instance v1, Landroid/os/BadTypeParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to unparcel an array but type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5138
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " required by caller is not an array."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5143
    .end local v0    # "requiredComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2f
    :goto_2f
    return-void
.end method

.method private blacklist checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 5150
    .local p1, "requiredType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "typeToUnparcel":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_3a

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3a

    .line 5151
    :cond_9
    new-instance v0, Landroid/os/BadTypeParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "About to unparcel a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5152
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which is not a subtype of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5153
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " required by caller."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5156
    :cond_3a
    :goto_3a
    return-void
.end method

.method public static blacklist compareData(Landroid/os/Parcel;ILandroid/os/Parcel;II)Z
    .registers 12
    .param p0, "a"    # Landroid/os/Parcel;
    .param p1, "offsetA"    # I
    .param p2, "b"    # Landroid/os/Parcel;
    .param p3, "offsetB"    # I
    .param p4, "length"    # I

    .line 912
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v3, p2, Landroid/os/Parcel;->mNativePtr:J

    move v2, p1

    move v5, p3

    move v6, p4

    .end local p1    # "offsetA":I
    .end local p3    # "offsetB":I
    .end local p4    # "length":I
    .local v2, "offsetA":I
    .local v5, "offsetB":I
    .local v6, "length":I
    invoke-static/range {v0 .. v6}, Landroid/os/Parcel;->nativeCompareDataInRange(JIJII)Z

    move-result p1

    return p1
.end method

.method private greylist-max-o createException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 7
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 3324
    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->createExceptionOrNull(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v0

    .line 3325
    .local v0, "exception":Ljava/lang/Exception;
    if-eqz v0, :cond_8

    .line 3326
    move-object v1, v0

    goto :goto_2a

    .line 3327
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown exception code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3325
    :goto_2a
    return-object v1
.end method

.method private greylist-max-o destroy()V
    .registers 5

    .line 5601
    invoke-direct {p0}, Landroid/os/Parcel;->resetSqaushingState()V

    .line 5602
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 5603
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_14

    .line 5604
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDestroy(J)V

    .line 5606
    :cond_14
    iput-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 5608
    :cond_16
    return-void
.end method

.method private blacklist ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V
    .registers 7
    .param p2, "numDimension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 4434
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-lez p2, :cond_4b

    .line 4438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p2, :cond_2b

    .line 4439
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 4443
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 4438
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4440
    :cond_12
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Array has fewer dimensions than expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4445
    .end local v0    # "i":I
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_32

    .line 4449
    return-void

    .line 4446
    :cond_32
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array has more dimensions than expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4435
    :cond_4b
    new-instance v0, Landroid/os/BadParcelableException;

    const-string v1, "Fixed-size array should have dimensions."

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist ensureReadSquashableParcelables()V
    .registers 2

    .line 2929
    iget-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2930
    return-void

    .line 2932
    :cond_5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    .line 2933
    return-void
.end method

.method private blacklist ensureWithinMemoryLimit(II)V
    .registers 9
    .param p1, "typeSize"    # I
    .param p2, "length"    # I

    .line 1737
    const-string v0, "Parcel"

    const/4 v1, 0x0

    .line 1739
    .local v1, "estimatedAllocationSize":I
    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2
    :try_end_7
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_7} :catch_9

    move v1, v2

    .line 1746
    goto :goto_59

    .line 1740
    :catch_9
    move-exception v2

    .line 1741
    .local v2, "e":Ljava/lang/ArithmeticException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ArithmeticException occurred while multiplying values "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    new-instance v3, Landroid/os/BadParcelableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Estimated allocation size is too large. typeSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 1745
    .local v3, "badParcelableException":Landroid/os/BadParcelableException;
    invoke-static {v3}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 1748
    .end local v2    # "e":Ljava/lang/ArithmeticException;
    .end local v3    # "badParcelableException":Landroid/os/BadParcelableException;
    :goto_59
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v2

    .line 1749
    .local v2, "isInBinderTransaction":Z
    if-eqz v2, :cond_a5

    const v3, 0xf4240

    if-le v1, v3, :cond_a5

    .line 1750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to Allocate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " memory, In Binder Transaction : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allocation of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is above allowed limit of 1MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 1754
    .local v0, "e":Landroid/os/BadParcelableException;
    invoke-static {v0}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 1756
    .end local v0    # "e":Landroid/os/BadParcelableException;
    :cond_a5
    return-void
.end method

.method private varargs blacklist ensureWithinMemoryLimit(I[I)V
    .registers 8
    .param p1, "typeSize"    # I
    .param p2, "dimensions"    # [I

    .line 1722
    const/4 v0, 0x1

    .line 1724
    .local v0, "totalObjects":I
    :try_start_1
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_f

    aget v3, p2, v2

    .line 1725
    .local v3, "dimension":I
    invoke-static {v0, v3}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v4
    :try_end_b
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_b} :catch_10

    move v0, v4

    .line 1724
    .end local v3    # "dimension":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1732
    :cond_f
    goto :goto_48

    .line 1727
    :catch_10
    move-exception v1

    .line 1728
    .local v1, "e":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArithmeticException occurred while multiplying dimensions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Parcel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Estimated array length is too large. Array Dimensions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1730
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 1731
    .local v2, "badParcelableException":Landroid/os/BadParcelableException;
    invoke-static {v2}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 1733
    .end local v1    # "e":Ljava/lang/ArithmeticException;
    .end local v2    # "badParcelableException":Landroid/os/BadParcelableException;
    :goto_48
    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1734
    return-void
.end method

.method private blacklist ensureWrittenSquashableParcelables()V
    .registers 2

    .line 2870
    iget-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    if-eqz v0, :cond_5

    .line 2871
    return-void

    .line 2873
    :cond_5
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    .line 2874
    return-void
.end method

.method private greylist-max-o freeBuffer()V
    .registers 3

    .line 5592
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Parcel;->mFlags:I

    .line 5593
    invoke-direct {p0}, Landroid/os/Parcel;->resetSqaushingState()V

    .line 5594
    iget-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    if-eqz v0, :cond_f

    .line 5595
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeFreeBuffer(J)V

    .line 5597
    :cond_f
    sget-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 5598
    return-void
.end method

.method private static blacklist getClassLoader(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/ClassLoader;
    .registers 2
    .param p0, "loaderProvider"    # Landroid/os/Parcel$ClassLoaderProvider;

    .line 4760
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p0}, Landroid/os/Parcel$ClassLoaderProvider;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_8
    return-object v0
.end method

.method public static blacklist getExceptionCode(Ljava/lang/Throwable;)I
    .registers 4
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 3150
    const/4 v0, 0x0

    .line 3151
    .local v0, "code":I
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_18

    .line 3152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_18

    .line 3155
    const/16 v0, -0x9

    goto :goto_47

    .line 3156
    :cond_18
    instance-of v1, p0, Ljava/lang/SecurityException;

    if-eqz v1, :cond_1e

    .line 3157
    const/4 v0, -0x1

    goto :goto_47

    .line 3158
    :cond_1e
    instance-of v1, p0, Landroid/os/BadParcelableException;

    if-eqz v1, :cond_24

    .line 3159
    const/4 v0, -0x2

    goto :goto_47

    .line 3160
    :cond_24
    instance-of v1, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v1, :cond_2a

    .line 3161
    const/4 v0, -0x3

    goto :goto_47

    .line 3162
    :cond_2a
    instance-of v1, p0, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_30

    .line 3163
    const/4 v0, -0x4

    goto :goto_47

    .line 3164
    :cond_30
    instance-of v1, p0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_36

    .line 3165
    const/4 v0, -0x5

    goto :goto_47

    .line 3166
    :cond_36
    instance-of v1, p0, Landroid/os/NetworkOnMainThreadException;

    if-eqz v1, :cond_3c

    .line 3167
    const/4 v0, -0x6

    goto :goto_47

    .line 3168
    :cond_3c
    instance-of v1, p0, Ljava/lang/UnsupportedOperationException;

    if-eqz v1, :cond_42

    .line 3169
    const/4 v0, -0x7

    goto :goto_47

    .line 3170
    :cond_42
    instance-of v1, p0, Landroid/os/ServiceSpecificException;

    if-eqz v1, :cond_47

    .line 3171
    const/4 v0, -0x8

    .line 3173
    :cond_47
    :goto_47
    return v0
.end method

.method public static native greylist-max-r getGlobalAllocCount()J
.end method

.method public static native greylist-max-r getGlobalAllocSize()J
.end method

.method private static blacklist getItemTypeSize(Ljava/lang/Class;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)I"
        }
    .end annotation

    .line 1698
    .local p0, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1700
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    if-ne v0, v1, :cond_a

    .line 1701
    return v2

    .line 1702
    :cond_a
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_10

    .line 1703
    return v3

    .line 1704
    :cond_10
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_16

    .line 1705
    const/4 v1, 0x2

    return v1

    .line 1706
    :cond_16
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1b

    .line 1707
    return v2

    .line 1708
    :cond_1b
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v4, 0x8

    if-ne v0, v1, :cond_22

    .line 1709
    return v4

    .line 1710
    :cond_22
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_27

    .line 1711
    return v2

    .line 1712
    :cond_27
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2c

    .line 1713
    return v4

    .line 1716
    :cond_2c
    return v3
.end method

.method public static blacklist getValueType(Ljava/lang/Object;)I
    .registers 5
    .param p0, "v"    # Ljava/lang/Object;

    .line 2639
    if-nez p0, :cond_4

    .line 2640
    const/4 v0, -0x1

    return v0

    .line 2641
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2642
    const/4 v0, 0x0

    return v0

    .line 2643
    :cond_a
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_10

    .line 2644
    const/4 v0, 0x1

    return v0

    .line 2645
    :cond_10
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_16

    .line 2646
    const/4 v0, 0x2

    return v0

    .line 2647
    :cond_16
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_1c

    .line 2649
    const/4 v0, 0x3

    return v0

    .line 2650
    :cond_1c
    instance-of v0, p0, Landroid/os/PersistableBundle;

    if-eqz v0, :cond_23

    .line 2652
    const/16 v0, 0x19

    return v0

    .line 2653
    :cond_23
    instance-of v0, p0, Landroid/util/SizeF;

    if-eqz v0, :cond_2a

    .line 2655
    const/16 v0, 0x1b

    return v0

    .line 2656
    :cond_2a
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_30

    .line 2660
    const/4 v0, 0x4

    return v0

    .line 2661
    :cond_30
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_36

    .line 2662
    const/4 v0, 0x5

    return v0

    .line 2663
    :cond_36
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3c

    .line 2664
    const/4 v0, 0x6

    return v0

    .line 2665
    :cond_3c
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_42

    .line 2666
    const/4 v0, 0x7

    return v0

    .line 2667
    :cond_42
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_49

    .line 2668
    const/16 v0, 0x8

    return v0

    .line 2669
    :cond_49
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_50

    .line 2670
    const/16 v0, 0x9

    return v0

    .line 2671
    :cond_50
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_57

    .line 2673
    const/16 v0, 0xa

    return v0

    .line 2674
    :cond_57
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_5e

    .line 2675
    const/16 v0, 0xb

    return v0

    .line 2676
    :cond_5e
    instance-of v0, p0, Landroid/util/SparseArray;

    if-eqz v0, :cond_65

    .line 2677
    const/16 v0, 0xc

    return v0

    .line 2678
    :cond_65
    instance-of v0, p0, [Z

    if-eqz v0, :cond_6c

    .line 2679
    const/16 v0, 0x17

    return v0

    .line 2680
    :cond_6c
    instance-of v0, p0, [B

    if-eqz v0, :cond_73

    .line 2681
    const/16 v0, 0xd

    return v0

    .line 2682
    :cond_73
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_7a

    .line 2683
    const/16 v0, 0xe

    return v0

    .line 2684
    :cond_7a
    instance-of v0, p0, [Ljava/lang/CharSequence;

    if-eqz v0, :cond_81

    .line 2686
    const/16 v0, 0x18

    return v0

    .line 2687
    :cond_81
    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_88

    .line 2688
    const/16 v0, 0xf

    return v0

    .line 2689
    :cond_88
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_8f

    .line 2690
    const/16 v0, 0x10

    return v0

    .line 2691
    :cond_8f
    instance-of v0, p0, [I

    if-eqz v0, :cond_96

    .line 2692
    const/16 v0, 0x12

    return v0

    .line 2693
    :cond_96
    instance-of v0, p0, [J

    if-eqz v0, :cond_9d

    .line 2694
    const/16 v0, 0x13

    return v0

    .line 2695
    :cond_9d
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_a4

    .line 2696
    const/16 v0, 0x14

    return v0

    .line 2697
    :cond_a4
    instance-of v0, p0, Landroid/util/Size;

    if-eqz v0, :cond_ab

    .line 2698
    const/16 v0, 0x1a

    return v0

    .line 2699
    :cond_ab
    instance-of v0, p0, [D

    if-eqz v0, :cond_b2

    .line 2700
    const/16 v0, 0x1c

    return v0

    .line 2701
    :cond_b2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_b9

    .line 2702
    const/16 v0, 0x1d

    return v0

    .line 2703
    :cond_b9
    instance-of v0, p0, [S

    if-eqz v0, :cond_c0

    .line 2704
    const/16 v0, 0x1e

    return v0

    .line 2705
    :cond_c0
    instance-of v0, p0, [C

    if-eqz v0, :cond_c7

    .line 2706
    const/16 v0, 0x1f

    return v0

    .line 2707
    :cond_c7
    instance-of v0, p0, [F

    if-eqz v0, :cond_ce

    .line 2708
    const/16 v0, 0x20

    return v0

    .line 2710
    :cond_ce
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2711
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_e3

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_e3

    .line 2714
    const/16 v1, 0x11

    return v1

    .line 2715
    :cond_e3
    instance-of v1, p0, Ljava/io/Serializable;

    if-eqz v1, :cond_ea

    .line 2717
    const/16 v1, 0x15

    return v1

    .line 2719
    :cond_ea
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel: unknown type for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist hasFileDescriptors(Ljava/lang/Object;)Z
    .registers 6
    .param p0, "value"    # Ljava/lang/Object;

    .line 1027
    instance-of v0, p0, Landroid/os/Parcel;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 1028
    move-object v0, p0

    check-cast v0, Landroid/os/Parcel;

    .line 1029
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1030
    return v1

    .line 1032
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_f
    goto/16 :goto_e3

    :cond_11
    instance-of v0, p0, Landroid/os/Parcel$LazyValue;

    if-eqz v0, :cond_21

    .line 1033
    move-object v0, p0

    check-cast v0, Landroid/os/Parcel$LazyValue;

    .line 1034
    .local v0, "lazy":Landroid/os/Parcel$LazyValue;
    invoke-virtual {v0}, Landroid/os/Parcel$LazyValue;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1035
    return v1

    .line 1037
    .end local v0    # "lazy":Landroid/os/Parcel$LazyValue;
    :cond_1f
    goto/16 :goto_e3

    :cond_21
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_32

    .line 1038
    move-object v0, p0

    check-cast v0, Landroid/os/Parcelable;

    .line 1039
    .local v0, "parcelable":Landroid/os/Parcelable;
    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_30

    .line 1040
    return v1

    .line 1042
    .end local v0    # "parcelable":Landroid/os/Parcelable;
    :cond_30
    goto/16 :goto_e3

    :cond_32
    instance-of v0, p0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_5b

    .line 1043
    move-object v0, p0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1044
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<**>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .local v3, "n":I
    :goto_3e
    if-ge v2, v3, :cond_59

    .line 1045
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 1046
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    goto :goto_58

    .line 1044
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 1047
    :cond_58
    :goto_58
    return v1

    .line 1050
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<**>;"
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_59
    goto/16 :goto_e3

    :cond_5b
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_8e

    .line 1051
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 1052
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1053
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 1054
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    goto :goto_8c

    .line 1057
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_8b
    goto :goto_6a

    .line 1055
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_8c
    :goto_8c
    return v1

    .line 1058
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_8d
    goto :goto_e3

    :cond_8e
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_ab

    .line 1059
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 1060
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "n":I
    :goto_9a
    if-ge v2, v3, :cond_aa

    .line 1061
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 1062
    return v1

    .line 1060
    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .line 1065
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_aa
    goto :goto_e3

    :cond_ab
    instance-of v0, p0, Landroid/util/SparseArray;

    if-eqz v0, :cond_c8

    .line 1066
    move-object v0, p0

    check-cast v0, Landroid/util/SparseArray;

    .line 1067
    .local v0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .restart local v3    # "n":I
    :goto_b7
    if-ge v2, v3, :cond_c7

    .line 1068
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 1069
    return v1

    .line 1067
    :cond_c4
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 1072
    .end local v0    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<*>;"
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_c7
    goto :goto_e3

    :cond_c8
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_e0

    .line 1073
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    .line 1074
    .local v0, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    array-length v3, v0

    .restart local v3    # "n":I
    :goto_d1
    if-ge v2, v3, :cond_df

    .line 1075
    aget-object v4, v0, v2

    invoke-static {v4}, Landroid/os/Parcel;->hasFileDescriptors(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 1076
    return v1

    .line 1074
    :cond_dc
    add-int/lit8 v2, v2, 0x1

    goto :goto_d1

    .line 1079
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_df
    goto :goto_e3

    .line 1080
    :cond_e0
    invoke-static {p0}, Landroid/os/Parcel;->getValueType(Ljava/lang/Object;)I

    .line 1082
    :goto_e3
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist hasFlags(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 724
    iget v0, p0, Landroid/os/Parcel;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o init(J)V
    .registers 5
    .param p1, "nativePtr"    # J

    .line 5582
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 5583
    iput-wide p1, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 5584
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    goto :goto_15

    .line 5586
    :cond_c
    invoke-static {}, Landroid/os/Parcel;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 5587
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    .line 5589
    :goto_15
    return-void
.end method

.method private blacklist isLengthPrefixed(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 5112
    sparse-switch p1, :sswitch_data_8

    .line 5122
    const/4 v0, 0x0

    return v0

    .line 5120
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x4 -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x15 -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic blacklist lambda$createFixedArray$0(Ljava/lang/Class;I)[Landroid/os/IInterface;
    .registers 3
    .param p0, "componentType"    # Ljava/lang/Class;
    .param p1, "n"    # I

    .line 4555
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/IInterface;

    return-object v0
.end method

.method private blacklist markForBinder(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 693
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeMarkForBinder(JLandroid/os/IBinder;)V

    .line 694
    return-void
.end method

.method private static native blacklist nativeAppendFrom(JJII)V
.end method

.method private static native greylist-max-o nativeCompareData(JJ)I
.end method

.method private static native blacklist nativeCompareDataInRange(JIJII)Z
.end method

.method private static native greylist-max-o nativeCreate()J
.end method

.method private static native greylist-max-o nativeCreateByteArray(J)[B
.end method

.method private static native greylist-max-o nativeDataAvail(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDataCapacity(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDataPosition(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDataSize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeEnforceInterface(JLjava/lang/String;)V
.end method

.method private static native blacklist nativeFreeBuffer(J)V
.end method

.method private static native blacklist nativeGetOpenAshmemSize(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeHasBinders(J)Z
.end method

.method private static native blacklist nativeHasBindersInRange(JII)Z
.end method

.method private static native greylist-max-o nativeHasFileDescriptors(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeHasFileDescriptorsInRange(JII)Z
.end method

.method private static native blacklist nativeIsForRpc(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeMarkForBinder(JLandroid/os/IBinder;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeMarkSensitive(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeMarshall(J)[B
.end method

.method private static native blacklist nativeMarshallArray(J[BII)I
.end method

.method private static native blacklist nativeMarshallBuffer(JLjava/nio/ByteBuffer;II)I
.end method

.method private static native greylist-max-o nativePushAllowFds(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadBlob(J)[B
.end method

.method private static native greylist-max-o nativeReadByteArray(J[BI)Z
.end method

.method private static native blacklist nativeReadCallingWorkSourceUid(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadDouble(J)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFloat(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadInt(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadLong(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeReadString16(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReadString8(J)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadStrongBinder(J)Landroid/os/IBinder;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeReplaceCallingWorkSourceUid(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeRestoreAllowFds(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDataCapacity(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDataPosition(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetDataSize(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeSignalExceptionForError(I)V
.end method

.method private static native blacklist nativeUnmarshall(J[BII)V
.end method

.method private static native blacklist nativeUnmarshallBuffer(JLjava/nio/ByteBuffer;II)V
.end method

.method private static native greylist-max-o nativeWriteBlob(J[BII)V
.end method

.method private static native greylist-max-o nativeWriteByteArray(J[BII)V
.end method

.method private static native blacklist nativeWriteDouble(JD)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteFloat(JF)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteInt(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteInterfaceToken(JLjava/lang/String;)V
.end method

.method private static native blacklist nativeWriteLong(JJ)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteString16(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeWriteString8(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteStrongBinder(JLandroid/os/IBinder;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static whitelist obtain()Landroid/os/Parcel;
    .registers 5

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "res":Landroid/os/Parcel;
    sget-object v1, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_4
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    if-eqz v2, :cond_18

    .line 562
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    move-object v0, v2

    .line 563
    iget-object v2, v0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    sput-object v2, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    .line 564
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 565
    sget v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    .line 567
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_39

    .line 571
    const-wide/16 v1, 0x0

    if-nez v0, :cond_24

    .line 572
    new-instance v3, Landroid/os/Parcel;

    invoke-direct {v3, v1, v2}, Landroid/os/Parcel;-><init>(J)V

    move-object v0, v3

    goto :goto_2b

    .line 574
    :cond_24
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/os/Parcel;->mRecycled:Z

    .line 578
    sget-object v3, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    iput-object v3, v0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 581
    :goto_2b
    iget-wide v3, v0, Landroid/os/Parcel;->mNativePtr:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_38

    .line 582
    const-string v1, "Parcel"

    const-string v2, "Obtained Parcel object has null native pointer. Invalid state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_38
    return-object v0

    .line 567
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v2
.end method

.method protected static final greylist-max-o obtain(I)Landroid/os/Parcel;
    .registers 2
    .param p0, "obj"    # I

    .line 5544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected static final greylist-max-o obtain(J)Landroid/os/Parcel;
    .registers 5
    .param p0, "obj"    # J

    .line 5549
    const/4 v0, 0x0

    .line 5550
    .local v0, "res":Landroid/os/Parcel;
    sget-object v1, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 5551
    :try_start_4
    sget-object v2, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    if-eqz v2, :cond_18

    .line 5552
    sget-object v2, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    move-object v0, v2

    .line 5553
    iget-object v2, v0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    sput-object v2, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    .line 5554
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 5555
    sget v2, Landroid/os/Parcel;->sHolderPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/os/Parcel;->sHolderPoolSize:I

    .line 5557
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_29

    .line 5561
    if-nez v0, :cond_22

    .line 5562
    new-instance v1, Landroid/os/Parcel;

    invoke-direct {v1, p0, p1}, Landroid/os/Parcel;-><init>(J)V

    move-object v0, v1

    goto :goto_28

    .line 5564
    :cond_22
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/os/Parcel;->mRecycled:Z

    .line 5568
    invoke-direct {v0, p0, p1}, Landroid/os/Parcel;->init(J)V

    .line 5570
    :goto_28
    return-object v0

    .line 5557
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public static whitelist obtain(Landroid/os/IBinder;)Landroid/os/Parcel;
    .registers 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 599
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-direct {v0, p0}, Landroid/os/Parcel;->markForBinder(Landroid/os/IBinder;)V

    .line 600
    return-object v0
.end method

.method private greylist-max-o readArrayInternal([Ljava/lang/Object;ILjava/lang/ClassLoader;)V
    .registers 7
    .param p1, "outVal"    # [Ljava/lang/Object;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 5781
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_10

    .line 5782
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {p0, p3, v2, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 5783
    .local v1, "value":Ljava/lang/Object;
    aput-object v1, p1, v0

    .line 5781
    .end local v1    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5785
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method private blacklist readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 5793
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5794
    .local v0, "n":I
    if-gez v0, :cond_8

    .line 5795
    const/4 v1, 0x0

    return-object v1

    .line 5797
    :cond_8
    if-nez p2, :cond_d

    new-array v1, v0, [Ljava/lang/Object;

    goto :goto_11

    :cond_d
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    :goto_11
    check-cast v1, [Ljava/lang/Object;

    .line 5799
    .local v1, "outVal":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_22

    .line 5800
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 5801
    .local v3, "value":Ljava/lang/Object;, "TT;"
    aput-object v3, v1, v2

    .line 5799
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 5803
    .end local v2    # "i":I
    :cond_22
    return-object v1
.end method

.method private blacklist readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 5765
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5766
    .local v0, "n":I
    if-gez v0, :cond_8

    .line 5767
    const/4 v1, 0x0

    return-object v1

    .line 5769
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5770
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5771
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-direct {p0, v1, v0, p1, p2}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 5772
    return-object v1
.end method

.method private blacklist readArrayMapInternal(Landroid/util/ArrayMap;ILandroid/os/Parcel$ClassLoaderProvider;)V
    .registers 11
    .param p2, "size"    # I
    .param p3, "loaderProvider"    # Landroid/os/Parcel$ClassLoaderProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Landroid/os/Parcel$ClassLoaderProvider;",
            ")V"
        }
    .end annotation

    .line 5665
    .local p1, "outVal":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<-Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .end local p1    # "outVal":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<-Ljava/lang/String;Ljava/lang/Object;>;"
    .end local p2    # "size":I
    .end local p3    # "loaderProvider":Landroid/os/Parcel$ClassLoaderProvider;
    .local v1, "outVal":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<-Ljava/lang/String;Ljava/lang/Object;>;"
    .local v2, "size":I
    .local v5, "loaderProvider":Landroid/os/Parcel$ClassLoaderProvider;
    invoke-virtual/range {v0 .. v6}, Landroid/os/Parcel;->readArrayMap(Landroid/util/ArrayMap;IZZLandroid/os/Parcel$ClassLoaderProvider;[I)V

    .line 5666
    return-void
.end method

.method private blacklist readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 10
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TK;>;",
            "Ljava/lang/Class<",
            "+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5633
    .local p2, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<+TK;>;"
    .local p3, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5634
    .local v2, "n":I
    if-gez v2, :cond_8

    .line 5635
    const/4 v0, 0x0

    return-object v0

    .line 5637
    :cond_8
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5638
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 5639
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TK;TV;>;"
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<+TK;>;"
    .end local p3    # "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    .local v3, "loader":Ljava/lang/ClassLoader;
    .local v4, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<+TK;>;"
    .local v5, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5640
    return-object v1
.end method

.method private blacklist readLazyValue(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/Object;
    .registers 10
    .param p1, "loaderProvider"    # Landroid/os/Parcel$ClassLoaderProvider;

    .line 4742
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 4743
    .local v2, "start":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4744
    .local v4, "type":I
    invoke-direct {p0, v4}, Landroid/os/Parcel;->isLengthPrefixed(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 4745
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4746
    .local v6, "objectLength":I
    if-gez v6, :cond_16

    .line 4747
    return-object v1

    .line 4749
    :cond_16
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-static {v0, v6}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v7

    .line 4750
    .local v7, "end":I
    sub-int v3, v7, v2

    .line 4751
    .local v3, "valueLength":I
    invoke-virtual {p0, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4752
    new-instance v0, Landroid/os/Parcel$LazyValue;

    move-object v1, p0

    move-object v5, p1

    .end local p1    # "loaderProvider":Landroid/os/Parcel$ClassLoaderProvider;
    .local v5, "loaderProvider":Landroid/os/Parcel$ClassLoaderProvider;
    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel$LazyValue;-><init>(Landroid/os/Parcel;IIILandroid/os/Parcel$ClassLoaderProvider;)V

    move-object p1, v1

    return-object v0

    .line 4754
    .end local v3    # "valueLength":I
    .end local v5    # "loaderProvider":Landroid/os/Parcel$ClassLoaderProvider;
    .end local v6    # "objectLength":I
    .end local v7    # "end":I
    .restart local p1    # "loaderProvider":Landroid/os/Parcel$ClassLoaderProvider;
    :cond_2c
    move-object v5, p1

    move-object p1, p0

    .end local p1    # "loaderProvider":Landroid/os/Parcel$ClassLoaderProvider;
    .restart local v5    # "loaderProvider":Landroid/os/Parcel$ClassLoaderProvider;
    invoke-static {v5}, Landroid/os/Parcel;->getClassLoader(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v4, v0, v1}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;)V
    .registers 5
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "n"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 5740
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 5741
    return-void
.end method

.method private blacklist readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V
    .registers 6
    .param p2, "n"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 5748
    .local p1, "outVal":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5750
    :goto_4
    if-lez p2, :cond_14

    .line 5751
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, p4, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5753
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5754
    nop

    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 p2, p2, -0x1

    .line 5755
    goto :goto_4

    .line 5756
    :cond_14
    return-void
.end method

.method private blacklist readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 8
    .param p2, "n"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 5653
    .local p1, "outVal":Ljava/util/Map;, "Ljava/util/Map<-TK;-TV;>;"
    .local p4, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p5, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5655
    :goto_4
    if-lez p2, :cond_1a

    .line 5656
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, p4, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 5657
    .local v1, "key":Ljava/lang/Object;, "TK;"
    new-array v0, v0, [Ljava/lang/Class;

    invoke-direct {p0, p3, p5, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5658
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5659
    nop

    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    add-int/lit8 p2, p2, -0x1

    .line 5660
    goto :goto_4

    .line 5661
    :cond_1a
    return-void
.end method

.method private blacklist readMapInternal(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 11
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 5646
    .local p1, "outVal":Ljava/util/Map;, "Ljava/util/Map<-TK;-TV;>;"
    .local p3, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5647
    .local v2, "n":I
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "outVal":Ljava/util/Map;, "Ljava/util/Map<-TK;-TV;>;"
    .end local p2    # "loader":Ljava/lang/ClassLoader;
    .end local p3    # "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .end local p4    # "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    .local v1, "outVal":Ljava/util/Map;, "Ljava/util/Map<-TK;-TV;>;"
    .local v3, "loader":Ljava/lang/ClassLoader;
    .local v4, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local v5, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5648
    return-void
.end method

.method private blacklist readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 5420
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5421
    .local v0, "n":I
    if-gez v0, :cond_8

    .line 5422
    const/4 v1, 0x0

    return-object v1

    .line 5424
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5425
    if-nez p2, :cond_11

    new-array v1, v0, [Landroid/os/Parcelable;

    goto :goto_15

    :cond_11
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    :goto_15
    check-cast v1, [Ljava/lang/Object;

    .line 5426
    .local v1, "p":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v0, :cond_23

    .line 5427
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5426
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 5429
    .end local v2    # "i":I
    :cond_23
    return-object v1
.end method

.method private blacklist readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
    .registers 12
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .line 5282
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5283
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5284
    return-object v1

    .line 5288
    :cond_8
    sget-object v2, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    monitor-enter v2

    .line 5289
    :try_start_b
    sget-object v3, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    .line 5290
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 5291
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;>;"
    if-nez v3, :cond_2b

    .line 5292
    sget-object v4, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5293
    sget-object v4, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5294
    const/4 v4, 0x0

    .local v4, "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    goto :goto_31

    .line 5296
    .end local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    :cond_2b
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 5298
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;>;"
    .restart local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    :goto_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_1ef

    .line 5300
    if-eqz v4, :cond_73

    .line 5301
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable$Creator;

    .line 5302
    .local v1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    .line 5303
    .local v2, "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_72

    .line 5304
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_72

    .line 5305
    :cond_45
    new-instance v3, Landroid/os/BadTypeParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable creator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a subclass of required class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5306
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided in the parameter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5311
    :cond_72
    :goto_72
    return-object v1

    .line 5320
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .end local v2    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_73
    if-nez p1, :cond_87

    :try_start_75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_88

    .line 5359
    :catch_7e
    move-exception v1

    goto/16 :goto_174

    .line 5355
    :catch_81
    move-exception v1

    goto/16 :goto_18d

    .line 5351
    :catch_84
    move-exception v1

    goto/16 :goto_1be

    .line 5320
    :cond_87
    move-object v2, p1

    .line 5323
    .local v2, "parcelableClassLoader":Ljava/lang/ClassLoader;
    :goto_88
    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 5325
    .local v3, "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Landroid/os/Parcelable;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_15b

    .line 5329
    if-eqz p2, :cond_cb

    .line 5330
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_9e

    goto :goto_cb

    .line 5331
    :cond_9e
    new-instance v1, Landroid/os/BadTypeParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable creator "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a subclass of required class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 5332
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided in the parameter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1

    .line 5337
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_cb
    :goto_cb
    const-string v5, "CREATOR"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 5338
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_142

    .line 5342
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 5343
    .local v6, "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_129

    .line 5350
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable$Creator;
    :try_end_eb
    .catch Ljava/lang/IllegalAccessException; {:try_start_75 .. :try_end_eb} :catch_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_75 .. :try_end_eb} :catch_81
    .catch Ljava/lang/NoSuchFieldException; {:try_start_75 .. :try_end_eb} :catch_7e

    .line 5363
    .end local v2    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    nop

    .line 5364
    if-eqz v1, :cond_110

    .line 5370
    sget-object v2, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    monitor-enter v2

    .line 5371
    :try_start_f1
    sget-object v5, Landroid/os/Parcel;->sPairedCreators:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5372
    sget-object v5, Landroid/os/Parcel;->mCreators:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5373
    monitor-exit v2

    .line 5375
    return-object v1

    .line 5373
    :catchall_10d
    move-exception v5

    monitor-exit v2
    :try_end_10f
    .catchall {:try_start_f1 .. :try_end_10f} :catchall_10d

    throw v5

    .line 5365
    :cond_110
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires a non-null Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5346
    .end local v1    # "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    .restart local v2    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    .restart local v5    # "f":Ljava/lang/reflect/Field;
    .restart local v6    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_129
    :try_start_129
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1

    .line 5339
    .end local v6    # "creatorType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_142
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parcelable protocol requires the CREATOR object to be static on class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1

    .line 5326
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_15b
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parcelable protocol requires subclassing from Parcelable on class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v1
    :try_end_174
    .catch Ljava/lang/IllegalAccessException; {:try_start_129 .. :try_end_174} :catch_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_129 .. :try_end_174} :catch_81
    .catch Ljava/lang/NoSuchFieldException; {:try_start_129 .. :try_end_174} :catch_7e

    .line 5360
    .end local v2    # "parcelableClassLoader":Ljava/lang/ClassLoader;
    .end local v3    # "parcelableClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "name":Ljava/lang/String;
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    .restart local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :goto_174
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable protocol requires a Parcelable.Creator object called CREATOR on class "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5356
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :goto_18d
    const-string v2, "Parcel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found when unmarshalling: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5357
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClassNotFoundException when unmarshalling: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5352
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :goto_1be
    const-string v2, "Parcel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal access when unmarshalling: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5353
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException when unmarshalling: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5298
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "creatorAndParcelableClass":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/Parcelable$Creator<*>;Ljava/lang/Class<*>;>;"
    :catchall_1ef
    move-exception v1

    :try_start_1f0
    monitor-exit v2
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1ef

    throw v1
.end method

.method private blacklist readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5206
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 5207
    .local v0, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    if-nez v0, :cond_8

    .line 5208
    const/4 v1, 0x0

    return-object v1

    .line 5210
    :cond_8
    instance-of v1, v0, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v1, :cond_14

    .line 5211
    move-object v1, v0

    check-cast v1, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 5213
    .local v1, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v1, p0, p1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 5215
    .end local v1    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_14
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private blacklist readParcelableListInternal(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 4244
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4245
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 4246
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4247
    return-object p1

    .line 4249
    :cond_b
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 4252
    .local v1, "m":I
    const/4 v2, 0x0

    .line 4253
    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_22

    if-ge v2, v0, :cond_22

    .line 4254
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4253
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 4256
    :cond_22
    :goto_22
    if-ge v2, v0, :cond_2e

    .line 4257
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4256
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 4259
    :cond_2e
    :goto_2e
    if-ge v2, v1, :cond_36

    .line 4260
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4259
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 4262
    :cond_36
    return-object p1
.end method

.method private blacklist readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 14
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5473
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 5474
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 5478
    const/4 v1, 0x0

    return-object v1

    .line 5482
    :cond_8
    const-string v1, " provided in the parameter"

    const-string v2, " is not a subclass of required class "

    const-string v3, "Serializable object "

    const-string v4, ")"

    if-eqz p2, :cond_4b

    if-eqz p1, :cond_4b

    .line 5486
    const/4 v5, 0x0

    :try_start_15
    invoke-static {v0, v5, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 5487
    .local v5, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_4b

    .line 5488
    :cond_20
    new-instance v6, Landroid/os/BadTypeParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5489
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5490
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v6

    .line 5493
    .end local v5    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "name":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 5494
    .local v5, "serializedData":[B
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5495
    .local v6, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v7, Landroid/os/Parcel$2;

    invoke-direct {v7, p0, v6, p1}, Landroid/os/Parcel$2;-><init>(Landroid/os/Parcel;Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    .line 5507
    .local v7, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    .line 5508
    .local v8, "object":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_9b

    if-nez p1, :cond_9b

    .line 5512
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_6c

    goto :goto_9b

    .line 5513
    :cond_6c
    new-instance v9, Landroid/os/BadTypeParcelableException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5514
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5515
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "name":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/Parcel;
    .end local p1    # "loader":Ljava/lang/ClassLoader;
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v9
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_9b} :catch_ba
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_9b} :catch_9c

    .line 5518
    .restart local v0    # "name":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/Parcel;
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :cond_9b
    :goto_9b
    return-object v8

    .line 5523
    .end local v5    # "serializedData":[B
    .end local v6    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .end local v8    # "object":Ljava/lang/Object;, "TT;"
    :catch_9c
    move-exception v1

    .line 5524
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable encountered ClassNotFoundException reading a Serializable object (name = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 5519
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_ba
    move-exception v1

    .line 5520
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable encountered IOException reading a Serializable object (name = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;
    .registers 7
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 5827
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5828
    .local v0, "n":I
    if-gez v0, :cond_8

    .line 5829
    const/4 v1, 0x0

    return-object v1

    .line 5831
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5832
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 5834
    .local v1, "outVal":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    :goto_11
    if-lez v0, :cond_25

    .line 5835
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5836
    .local v2, "key":I
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 5837
    .local v3, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5838
    nop

    .end local v2    # "key":I
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, -0x1

    .line 5839
    goto :goto_11

    .line 5840
    :cond_25
    return-object v1
.end method

.method private greylist-max-o readSparseArrayInternal(Landroid/util/SparseArray;ILjava/lang/ClassLoader;)V
    .registers 6
    .param p1, "outVal"    # Landroid/util/SparseArray;
    .param p2, "N"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 5812
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5813
    :goto_4
    if-lez p2, :cond_15

    .line 5814
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5815
    .local v0, "key":I
    invoke-virtual {p0, p3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 5816
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 5817
    nop

    .end local v0    # "key":I
    .end local v1    # "value":Ljava/lang/Object;
    add-int/lit8 p2, p2, -0x1

    .line 5818
    goto :goto_4

    .line 5819
    :cond_15
    return-void
.end method

.method private greylist-max-o readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V
    .registers 6
    .param p1, "outVal"    # Landroid/util/SparseBooleanArray;
    .param p2, "N"    # I

    .line 5845
    nop

    :goto_1
    if-lez p2, :cond_17

    .line 5846
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5847
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 5849
    .local v2, "value":Z
    :goto_10
    invoke-virtual {p1, v0, v2}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 5850
    nop

    .end local v0    # "key":I
    .end local v2    # "value":Z
    add-int/lit8 p2, p2, -0x1

    .line 5851
    goto :goto_1

    .line 5852
    :cond_17
    return-void
.end method

.method private greylist-max-o readSparseIntArrayInternal(Landroid/util/SparseIntArray;I)V
    .registers 5
    .param p1, "outVal"    # Landroid/util/SparseIntArray;
    .param p2, "N"    # I

    .line 5855
    nop

    :goto_1
    if-lez p2, :cond_12

    .line 5856
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5857
    .local v0, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5858
    .local v1, "value":I
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 5859
    nop

    .end local v0    # "key":I
    .end local v1    # "value":I
    add-int/lit8 p2, p2, -0x1

    .line 5860
    goto :goto_1

    .line 5861
    :cond_12
    return-void
.end method

.method private blacklist readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .param p1, "type"    # I
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4927
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/Class;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private varargs blacklist readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .param p1, "type"    # I
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 4944
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p4, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1b2

    .line 5094
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    .line 5095
    .local v0, "off":I
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unmarshalling unknown type code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5090
    .end local v0    # "off":I
    :pswitch_38
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    .line 5091
    .local v0, "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5086
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_3e
    invoke-virtual {p0}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    .line 5087
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5082
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_44
    invoke-virtual {p0}, Landroid/os/Parcel;->createShortArray()[S

    move-result-object v0

    .line 5083
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5078
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_4a
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 5079
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5074
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_55
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    .line 5075
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5070
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_5b
    invoke-virtual {p0}, Landroid/os/Parcel;->readSizeF()Landroid/util/SizeF;

    move-result-object v0

    .line 5071
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5066
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_61
    invoke-virtual {p0}, Landroid/os/Parcel;->readSize()Landroid/util/Size;

    move-result-object v0

    .line 5067
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5062
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_67
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 5063
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5012
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_6d
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 5013
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5000
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_73
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 5001
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5054
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_79
    invoke-virtual {p0}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 5055
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5038
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_7f
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 5039
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5034
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_85
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 5035
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5030
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_8f
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 5031
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5026
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_95
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 5027
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5020
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_9b
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 5021
    .local v0, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_a5

    move-object v1, v0

    goto :goto_a7

    :cond_a5
    const-class v1, Ljava/lang/Object;

    :goto_a7
    invoke-direct {p0, p3, v1}, Landroid/os/Parcel;->checkArrayTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5022
    invoke-direct {p0, p2, v0}, Landroid/os/Parcel;->readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 5023
    .local v1, "object":Ljava/lang/Object;
    move-object v0, v1

    goto/16 :goto_178

    .line 5042
    .end local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    :pswitch_b1
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 5043
    .restart local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_bb

    move-object v1, v0

    goto :goto_bd

    :cond_bb
    const-class v1, Landroid/os/Parcelable;

    :goto_bd
    invoke-direct {p0, p3, v1}, Landroid/os/Parcel;->checkArrayTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5044
    invoke-direct {p0, p2, v0}, Landroid/os/Parcel;->readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 5045
    .restart local v1    # "object":Ljava/lang/Object;
    move-object v0, v1

    goto/16 :goto_178

    .line 5016
    .end local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    :pswitch_c7
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5017
    .local v0, "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5008
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_cd
    invoke-virtual {p0}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 5009
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5004
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_d3
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 5005
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 5048
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_d9
    const-class v0, Landroid/util/SparseArray;

    invoke-direct {p0, p3, v0}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5049
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 5050
    .local v0, "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, v0}, Landroid/os/Parcel;->readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v1

    .line 5051
    .restart local v1    # "object":Ljava/lang/Object;
    move-object v0, v1

    goto/16 :goto_178

    .line 4994
    .end local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    :pswitch_eb
    const-class v0, Ljava/util/ArrayList;

    invoke-direct {p0, p3, v0}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4995
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 4996
    .restart local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p2, v0}, Landroid/os/Parcel;->readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4997
    .restart local v1    # "object":Ljava/lang/Object;
    move-object v0, v1

    goto/16 :goto_178

    .line 4990
    .end local v0    # "itemType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "object":Ljava/lang/Object;
    :pswitch_fd
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4991
    .local v0, "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 4986
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_103
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_10a

    goto :goto_10b

    :cond_10a
    move v0, v1

    :goto_10b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4987
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 4982
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_111
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 4983
    .restart local v0    # "object":Ljava/lang/Object;
    goto/16 :goto_178

    .line 4978
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_11b
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 4979
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_178

    .line 4974
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_124
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4975
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_178

    .line 4970
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_12d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 4971
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_178

    .line 4966
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_137
    invoke-direct {p0, p2, p3}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 4967
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_178

    .line 5058
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_13c
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 5059
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_178

    .line 4958
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_141
    const-class v2, Ljava/util/HashMap;

    invoke-direct {p0, p3, v2}, Landroid/os/Parcel;->checkTypeToUnparcel(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4959
    invoke-static {p4, v1}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 4960
    .local v2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p4, v0}, Lcom/android/internal/util/ArrayUtils;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 4961
    .local v3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_156

    move v4, v0

    goto :goto_157

    :cond_156
    move v4, v1

    :goto_157
    if-nez v3, :cond_15b

    move v5, v0

    goto :goto_15c

    :cond_15b
    move v5, v1

    :goto_15c
    if-ne v4, v5, :cond_15f

    goto :goto_160

    :cond_15f
    move v0, v1

    :goto_160
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 4962
    invoke-direct {p0, p2, v2, v3}, Landroid/os/Parcel;->readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    .line 4963
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_178

    .line 4954
    .end local v0    # "object":Ljava/lang/Object;
    .end local v2    # "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_168
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4955
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_178

    .line 4950
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_171
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 4951
    .restart local v0    # "object":Ljava/lang/Object;
    goto :goto_178

    .line 4946
    .end local v0    # "object":Ljava/lang/Object;
    :pswitch_176
    const/4 v0, 0x0

    .line 4947
    .restart local v0    # "object":Ljava/lang/Object;
    nop

    .line 5099
    :goto_178
    if-eqz v0, :cond_1b0

    if-eqz p3, :cond_1b0

    invoke-virtual {p3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_183

    goto :goto_1b0

    .line 5100
    :cond_183
    new-instance v1, Landroid/os/BadTypeParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparcelled object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an instance of required class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 5101
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " provided in the parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadTypeParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5104
    :cond_1b0
    :goto_1b0
    return-object v0

    nop

    :pswitch_data_1b2
    .packed-switch -0x1
        :pswitch_176
        :pswitch_171
        :pswitch_168
        :pswitch_141
        :pswitch_13c
        :pswitch_137
        :pswitch_12d
        :pswitch_124
        :pswitch_11b
        :pswitch_111
        :pswitch_103
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_d3
        :pswitch_cd
        :pswitch_c7
        :pswitch_b1
        :pswitch_9b
        :pswitch_95
        :pswitch_8f
        :pswitch_85
        :pswitch_7f
        :pswitch_79
        :pswitch_73
        :pswitch_6d
        :pswitch_67
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_4a
        :pswitch_44
        :pswitch_3e
        :pswitch_38
    .end packed-switch
.end method

.method private varargs blacklist readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 4697
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "itemTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4699
    .local v0, "type":I
    invoke-direct {p0, v0}, Landroid/os/Parcel;->isLengthPrefixed(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 4700
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4701
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 4702
    .local v2, "start":I
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 4703
    .local v3, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    sub-int/2addr v4, v2

    .line 4704
    .local v4, "actual":I
    if-eq v4, v1, :cond_5d

    .line 4705
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unparcelling of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4706
    invoke-static {v0}, Landroid/os/Parcel;->valueTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  consumed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes, but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expected."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4705
    const-string v6, "Parcel"

    invoke-static {v6, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    .end local v1    # "length":I
    .end local v2    # "start":I
    .end local v4    # "actual":I
    :cond_5d
    goto :goto_62

    .line 4710
    .end local v3    # "object":Ljava/lang/Object;, "TT;"
    :cond_5e
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/Parcel;->readValue(ILjava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 4712
    .restart local v3    # "object":Ljava/lang/Object;, "TT;"
    :goto_62
    return-object v3
.end method

.method private blacklist resetSqaushingState()V
    .registers 3

    .line 2914
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    if-eqz v0, :cond_b

    .line 2915
    const-string v0, "Parcel"

    const-string v1, "allowSquashing wasn\'t restored."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    .line 2918
    iput-object v0, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    .line 2919
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2920
    return-void
.end method

.method public static greylist-max-o setStackTraceParceling(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 3069
    sput-boolean p0, Landroid/os/Parcel;->sParcelExceptionStackTrace:Z

    .line 3070
    return-void
.end method

.method private static blacklist valueTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 5871
    packed-switch p0, :pswitch_data_7e

    .line 5904
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5901
    :pswitch_1d
    const-string v0, "VAL_FLOATARRAY"

    return-object v0

    .line 5900
    :pswitch_20
    const-string v0, "VAL_CHARARRAY"

    return-object v0

    .line 5899
    :pswitch_23
    const-string v0, "VAL_SHORTARRAY"

    return-object v0

    .line 5898
    :pswitch_26
    const-string v0, "VAL_CHAR"

    return-object v0

    .line 5897
    :pswitch_29
    const-string v0, "VAL_DOUBLEARRAY"

    return-object v0

    .line 5896
    :pswitch_2c
    const-string v0, "VAL_SIZEF"

    return-object v0

    .line 5895
    :pswitch_2f
    const-string v0, "VAL_SIZE"

    return-object v0

    .line 5876
    :pswitch_32
    const-string v0, "VAL_PERSISTABLEBUNDLE"

    return-object v0

    .line 5889
    :pswitch_35
    const-string v0, "VAL_CHARSEQUENCEARRAY"

    return-object v0

    .line 5886
    :pswitch_38
    const-string v0, "VAL_BOOLEANARRAY"

    return-object v0

    .line 5903
    :pswitch_3b
    const-string v0, "VAL_SERIALIZABLE"

    return-object v0

    .line 5894
    :pswitch_3e
    const-string v0, "VAL_BYTE"

    return-object v0

    .line 5893
    :pswitch_41
    const-string v0, "VAL_LONGARRAY"

    return-object v0

    .line 5892
    :pswitch_44
    const-string v0, "VAL_INTARRAY"

    return-object v0

    .line 5902
    :pswitch_47
    const-string v0, "VAL_OBJECTARRAY"

    return-object v0

    .line 5891
    :pswitch_4a
    const-string v0, "VAL_PARCELABLEARRAY"

    return-object v0

    .line 5890
    :pswitch_4d
    const-string v0, "VAL_IBINDER"

    return-object v0

    .line 5888
    :pswitch_50
    const-string v0, "VAL_STRINGARRAY"

    return-object v0

    .line 5887
    :pswitch_53
    const-string v0, "VAL_BYTEARRAY"

    return-object v0

    .line 5885
    :pswitch_56
    const-string v0, "VAL_SPARSEARRAY"

    return-object v0

    .line 5884
    :pswitch_59
    const-string v0, "VAL_LIST"

    return-object v0

    .line 5883
    :pswitch_5c
    const-string v0, "VAL_CHARSEQUENCE"

    return-object v0

    .line 5882
    :pswitch_5f
    const-string v0, "VAL_BOOLEAN"

    return-object v0

    .line 5881
    :pswitch_62
    const-string v0, "VAL_DOUBLE"

    return-object v0

    .line 5880
    :pswitch_65
    const-string v0, "VAL_FLOAT"

    return-object v0

    .line 5879
    :pswitch_68
    const-string v0, "VAL_LONG"

    return-object v0

    .line 5878
    :pswitch_6b
    const-string v0, "VAL_SHORT"

    return-object v0

    .line 5877
    :pswitch_6e
    const-string v0, "VAL_PARCELABLE"

    return-object v0

    .line 5875
    :pswitch_71
    const-string v0, "VAL_BUNDLE"

    return-object v0

    .line 5874
    :pswitch_74
    const-string v0, "VAL_MAP"

    return-object v0

    .line 5873
    :pswitch_77
    const-string v0, "VAL_INTEGER"

    return-object v0

    .line 5872
    :pswitch_7a
    const-string v0, "VAL_NULL"

    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch -0x1
        :pswitch_7a
        :pswitch_3
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_3
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist writeException$ravenwood(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 3136
    invoke-static {p1}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v0

    .line 3137
    .local v0, "code":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3138
    if-nez v0, :cond_17

    .line 3139
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_11

    .line 3140
    move-object v1, p1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 3142
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3144
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3145
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3146
    return-void
.end method

.method private blacklist writeFixedArrayInternal(Ljava/lang/Object;II[I)V
    .registers 10
    .param p2, "parcelableFlags"    # I
    .param p3, "index"    # I
    .param p4, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;II[I)V"
        }
    .end annotation

    .line 2511
    .local p1, "val":Ljava/lang/Object;, "TT;"
    array-length v0, p4

    if-ge p3, v0, :cond_139

    .line 2516
    aget v0, p4, p3

    .line 2519
    .local v0, "length":I
    if-eqz p1, :cond_131

    .line 2522
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_118

    .line 2525
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_f1

    .line 2533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 2534
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_45

    add-int/lit8 v2, p3, 0x1

    array-length v3, p4

    if-ne v2, v3, :cond_2b

    goto :goto_45

    .line 2535
    :cond_2b
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array has fewer dimensions than expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2538
    :cond_45
    :goto_45
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_51

    .line 2539
    move-object v2, p1

    check-cast v2, [Z

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto/16 :goto_d6

    .line 2540
    :cond_51
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_5d

    .line 2541
    move-object v2, p1

    check-cast v2, [B

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_d6

    .line 2542
    :cond_5d
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_69

    .line 2543
    move-object v2, p1

    check-cast v2, [C

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharArray([C)V

    goto/16 :goto_d6

    .line 2544
    :cond_69
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_74

    .line 2545
    move-object v2, p1

    check-cast v2, [I

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_d6

    .line 2546
    :cond_74
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7f

    .line 2547
    move-object v2, p1

    check-cast v2, [J

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    goto :goto_d6

    .line 2548
    :cond_7f
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_8a

    .line 2549
    move-object v2, p1

    check-cast v2, [F

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    goto :goto_d6

    .line 2550
    :cond_8a
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_95

    .line 2551
    move-object v2, p1

    check-cast v2, [D

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeDoubleArray([D)V

    goto :goto_d6

    .line 2552
    :cond_95
    const-class v2, Landroid/os/IBinder;

    if-ne v1, v2, :cond_a0

    .line 2553
    move-object v2, p1

    check-cast v2, [Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeBinderArray([Landroid/os/IBinder;)V

    goto :goto_d6

    .line 2554
    :cond_a0
    const-class v2, Landroid/os/IInterface;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 2555
    move-object v2, p1

    check-cast v2, [Landroid/os/IInterface;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInterfaceArray([Landroid/os/IInterface;)V

    goto :goto_d6

    .line 2556
    :cond_af
    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 2557
    move-object v2, p1

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_d6

    .line 2558
    :cond_be
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 2559
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2560
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c8
    if-ge v2, v0, :cond_d6

    .line 2561
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v3, p2, v4, p4}, Landroid/os/Parcel;->writeFixedArrayInternal(Ljava/lang/Object;II[I)V

    .line 2560
    add-int/lit8 v2, v2, 0x1

    goto :goto_c8

    .line 2567
    .end local v2    # "i":I
    :cond_d6
    :goto_d6
    return-void

    .line 2565
    :cond_d7
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown type for fixed-size array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2526
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f1
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad length: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2527
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2523
    :cond_118
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2520
    :cond_131
    new-instance v1, Landroid/os/BadParcelableException;

    const-string v2, "Non-null array shouldn\'t have a null array."

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2512
    .end local v0    # "length":I
    :cond_139
    new-instance v0, Landroid/os/BadParcelableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Array has more dimensions than expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist writeNoException$ravenwood()V
    .registers 2

    .line 3233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3234
    return-void
.end method


# virtual methods
.method public blacklist addFlags(I)V
    .registers 3
    .param p1, "flags"    # I

    .line 719
    iget v0, p0, Landroid/os/Parcel;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/os/Parcel;->mFlags:I

    .line 720
    return-void
.end method

.method public final greylist-max-o adoptClassCookies(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "from"    # Landroid/os/Parcel;

    .line 953
    iget-object v0, p1, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 954
    return-void
.end method

.method public blacklist allowSquashing()Z
    .registers 3

    .line 2896
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2897
    .local v0, "previous":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2898
    return v0
.end method

.method public final whitelist appendFrom(Landroid/os/Parcel;II)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 902
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    move v4, p2

    move v5, p3

    .end local p2    # "offset":I
    .end local p3    # "length":I
    .local v4, "offset":I
    .local v5, "length":I
    invoke-static/range {v0 .. v5}, Landroid/os/Parcel;->nativeAppendFrom(JJII)V

    .line 903
    return-void
.end method

.method public greylist-max-o compareData(Landroid/os/Parcel;)I
    .registers 6
    .param p1, "other"    # Landroid/os/Parcel;

    .line 907
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    iget-wide v2, p1, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/os/Parcel;->nativeCompareData(JJ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o copyClassCookies()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 958
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public final whitelist createBinderArray()[Landroid/os/IBinder;
    .registers 5

    .line 2184
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2185
    .local v0, "N":I
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 2186
    if-ltz v0, :cond_19

    .line 2187
    new-array v1, v0, [Landroid/os/IBinder;

    .line 2188
    .local v1, "val":[Landroid/os/IBinder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_18

    .line 2189
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2188
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2191
    .end local v2    # "i":I
    :cond_18
    return-object v1

    .line 2193
    .end local v1    # "val":[Landroid/os/IBinder;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createBinderArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 4088
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4089
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 4090
    const/4 v1, 0x0

    return-object v1

    .line 4092
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4093
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4094
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :goto_11
    if-lez v0, :cond_1d

    .line 4095
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4096
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 4098
    :cond_1d
    return-object v1
.end method

.method public final whitelist createBooleanArray()[Z
    .registers 5

    .line 1760
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1761
    .local v0, "N":I
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1765
    if-ltz v0, :cond_26

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_26

    .line 1766
    new-array v1, v0, [Z

    .line 1767
    .local v1, "val":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_25

    .line 1768
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    aput-boolean v3, v1, v2

    .line 1767
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1770
    .end local v2    # "i":I
    :cond_25
    return-object v1

    .line 1772
    .end local v1    # "val":[Z
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createByteArray()[B
    .registers 3

    .line 3706
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeCreateByteArray(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createCharArray()[C
    .registers 5

    .line 1842
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1843
    .local v0, "N":I
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1844
    if-ltz v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    shr-int/lit8 v1, v2, 0x2

    if-gt v0, v1, :cond_22

    .line 1845
    new-array v1, v0, [C

    .line 1846
    .local v1, "val":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_21

    .line 1847
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 1846
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1849
    .end local v2    # "i":I
    :cond_21
    return-object v1

    .line 1851
    .end local v1    # "val":[C
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createDoubleArray()[D
    .registers 6

    .line 1996
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1997
    .local v0, "N":I
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1999
    if-ltz v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_22

    .line 2000
    new-array v1, v0, [D

    .line 2001
    .local v1, "val":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_21

    .line 2002
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 2001
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 2004
    .end local v2    # "i":I
    :cond_21
    return-object v1

    .line 2006
    .end local v1    # "val":[D
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist createExceptionOrNull(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 6
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 3332
    packed-switch p1, :pswitch_data_68

    .line 3356
    const/4 v0, 0x0

    return-object v0

    .line 3340
    :pswitch_5
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3342
    :pswitch_b
    new-instance v0, Landroid/os/BadParcelableException;

    invoke-direct {v0, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3344
    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3346
    :pswitch_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3348
    :pswitch_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3350
    :pswitch_23
    new-instance v0, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {v0}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    return-object v0

    .line 3352
    :pswitch_29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 3354
    :pswitch_2f
    new-instance v0, Landroid/os/ServiceSpecificException;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 3334
    :pswitch_39
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_4e

    .line 3335
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0

    .line 3337
    :cond_4e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [missing Parcelable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_68
    .packed-switch -0x9
        :pswitch_39
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method

.method public varargs whitelist createFixedArray(Ljava/lang/Class;Landroid/os/Parcelable$Creator;[I)Ljava/lang/Object;
    .registers 12
    .param p3, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Parcelable$Creator<",
            "TS;>;[I)TT;"
        }
    .end annotation

    .line 4610
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TS;>;"
    array-length v0, p3

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V

    .line 4612
    const/4 v0, 0x0

    .line 4613
    .local v0, "val":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 4614
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, ", but got "

    const-string v4, "Bad length: expected "

    const/4 v5, 0x0

    if-eqz v2, :cond_4b

    .line 4615
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    .line 4647
    if-eqz v0, :cond_4a

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    aget v6, p3, v5

    if-ne v2, v6, :cond_25

    goto :goto_4a

    .line 4648
    :cond_25
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4649
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4651
    :cond_4a
    :goto_4a
    return-object v0

    .line 4616
    :cond_4b
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 4617
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4618
    .local v2, "length":I
    if-gez v2, :cond_59

    .line 4619
    const/4 v3, 0x0

    return-object v3

    .line 4621
    :cond_59
    aget v6, p3, v5

    if-ne v2, v6, :cond_85

    .line 4627
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 4628
    .local v3, "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_61
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 4629
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_61

    .line 4632
    :cond_6c
    invoke-static {v3}, Landroid/os/Parcel;->getItemTypeSize(Ljava/lang/Class;)I

    move-result v4

    .line 4633
    .local v4, "typeSize":I
    invoke-direct {p0, v4, p3}, Landroid/os/Parcel;->ensureWithinMemoryLimit(I[I)V

    .line 4635
    invoke-static {v3, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 4636
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_78
    if-ge v5, v2, :cond_84

    .line 4637
    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 4636
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 4639
    .end local v5    # "i":I
    :cond_84
    return-object v0

    .line 4622
    .end local v3    # "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "typeSize":I
    :cond_85
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4641
    .end local v2    # "length":I
    :cond_a6
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type for fixed-size array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs whitelist createFixedArray(Ljava/lang/Class;Ljava/util/function/Function;[I)Ljava/lang/Object;
    .registers 12
    .param p3, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TS;>;[I)TT;"
        }
    .end annotation

    .line 4550
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TS;>;"
    array-length v0, p3

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V

    .line 4552
    const/4 v0, 0x0

    .line 4553
    .local v0, "val":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 4554
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Landroid/os/IInterface;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, ", but got "

    const-string v4, "Bad length: expected "

    const/4 v5, 0x0

    if-eqz v2, :cond_50

    .line 4555
    new-instance v2, Landroid/os/Parcel$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/os/Parcel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->createInterfaceArray(Ljava/util/function/IntFunction;Ljava/util/function/Function;)[Landroid/os/IInterface;

    move-result-object v0

    .line 4588
    if-eqz v0, :cond_4f

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    aget v6, p3, v5

    if-ne v2, v6, :cond_2a

    goto :goto_4f

    .line 4589
    :cond_2a
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4590
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4592
    :cond_4f
    :goto_4f
    return-object v0

    .line 4557
    :cond_50
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 4558
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4559
    .local v2, "length":I
    if-gez v2, :cond_5e

    .line 4560
    const/4 v3, 0x0

    return-object v3

    .line 4562
    :cond_5e
    aget v6, p3, v5

    if-ne v2, v6, :cond_8a

    .line 4568
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 4569
    .local v3, "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_66
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 4570
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_66

    .line 4573
    :cond_71
    invoke-static {v3}, Landroid/os/Parcel;->getItemTypeSize(Ljava/lang/Class;)I

    move-result v4

    .line 4574
    .local v4, "typeSize":I
    invoke-direct {p0, v4, p3}, Landroid/os/Parcel;->ensureWithinMemoryLimit(I[I)V

    .line 4576
    invoke-static {v3, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 4577
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7d
    if-ge v5, v2, :cond_89

    .line 4578
    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 4577
    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    .line 4580
    .end local v5    # "i":I
    :cond_89
    return-object v0

    .line 4563
    .end local v3    # "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "typeSize":I
    :cond_8a
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4582
    .end local v2    # "length":I
    :cond_ab
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type for fixed-size array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs whitelist createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .registers 11
    .param p2, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[I)TT;"
        }
    .end annotation

    .line 4477
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->ensureClassHasExpectedDimensions(Ljava/lang/Class;I)V

    .line 4479
    const/4 v0, 0x0

    .line 4480
    .local v0, "val":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 4481
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, ", but got "

    const-string v4, "Bad length: expected "

    const/4 v5, 0x0

    if-ne v1, v2, :cond_17

    .line 4482
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    goto :goto_55

    .line 4483
    :cond_17
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_20

    .line 4484
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    goto :goto_55

    .line 4485
    :cond_20
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_29

    .line 4486
    invoke-virtual {p0}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v0

    goto :goto_55

    .line 4487
    :cond_29
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_32

    .line 4488
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    goto :goto_55

    .line 4489
    :cond_32
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3b

    .line 4490
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    goto :goto_55

    .line 4491
    :cond_3b
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_44

    .line 4492
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    goto :goto_55

    .line 4493
    :cond_44
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_4d

    .line 4494
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    goto :goto_55

    .line 4495
    :cond_4d
    const-class v2, Landroid/os/IBinder;

    if-ne v1, v2, :cond_86

    .line 4496
    invoke-virtual {p0}, Landroid/os/Parcel;->createBinderArray()[Landroid/os/IBinder;

    move-result-object v0

    .line 4528
    :goto_55
    if-eqz v0, :cond_85

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    aget v6, p2, v5

    if-ne v2, v6, :cond_60

    goto :goto_85

    .line 4529
    :cond_60
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4530
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4532
    :cond_85
    :goto_85
    return-object v0

    .line 4497
    :cond_86
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 4498
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4499
    .local v2, "length":I
    if-gez v2, :cond_94

    .line 4500
    const/4 v3, 0x0

    return-object v3

    .line 4502
    :cond_94
    aget v6, p2, v5

    if-ne v2, v6, :cond_c0

    .line 4508
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 4509
    .local v3, "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_9c
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 4510
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_9c

    .line 4513
    :cond_a7
    invoke-static {v3}, Landroid/os/Parcel;->getItemTypeSize(Ljava/lang/Class;)I

    move-result v4

    .line 4514
    .local v4, "typeSize":I
    invoke-direct {p0, v4, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(I[I)V

    .line 4516
    invoke-static {v3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 4517
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b3
    if-ge v5, v2, :cond_bf

    .line 4518
    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;)V

    .line 4517
    add-int/lit8 v5, v5, 0x1

    goto :goto_b3

    .line 4520
    .end local v5    # "i":I
    :cond_bf
    return-object v0

    .line 4503
    .end local v3    # "innermost":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "typeSize":I
    :cond_c0
    new-instance v6, Landroid/os/BadParcelableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4522
    .end local v2    # "length":I
    :cond_e1
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type for fixed-size array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist createFloatArray()[F
    .registers 5

    .line 1957
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1958
    .local v0, "N":I
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1960
    if-ltz v0, :cond_21

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_21

    .line 1961
    new-array v1, v0, [F

    .line 1962
    .local v1, "val":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_20

    .line 1963
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    aput v3, v1, v2

    .line 1962
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1965
    .end local v2    # "i":I
    :cond_20
    return-object v1

    .line 1967
    .end local v1    # "val":[F
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createIntArray()[I
    .registers 5

    .line 1880
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1881
    .local v0, "N":I
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1882
    if-ltz v0, :cond_21

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_21

    .line 1883
    new-array v1, v0, [I

    .line 1884
    .local v1, "val":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_20

    .line 1885
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v1, v2

    .line 1884
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1887
    .end local v2    # "i":I
    :cond_20
    return-object v1

    .line 1889
    .end local v1    # "val":[I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createInterfaceArray(Ljava/util/function/IntFunction;Ljava/util/function/Function;)[Landroid/os/IInterface;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 2219
    .local p1, "newArray":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2220
    .local v0, "N":I
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 2221
    if-ltz v0, :cond_23

    .line 2222
    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/IInterface;

    .line 2223
    .local v1, "val":[Landroid/os/IInterface;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_22

    .line 2224
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    aput-object v3, v1, v2

    .line 2223
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2226
    .end local v2    # "i":I
    :cond_22
    return-object v1

    .line 2228
    .end local v1    # "val":[Landroid/os/IInterface;, "[TT;"
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createInterfaceArrayList(Ljava/util/function/Function;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 4115
    .local p1, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4116
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 4117
    const/4 v1, 0x0

    return-object v1

    .line 4119
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4121
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_11
    if-lez v0, :cond_23

    .line 4122
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4123
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 4125
    :cond_23
    return-object v1
.end method

.method public final whitelist createLongArray()[J
    .registers 6

    .line 1918
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1919
    .local v0, "N":I
    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1921
    if-ltz v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_22

    .line 1922
    new-array v1, v0, [J

    .line 1923
    .local v1, "val":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_21

    .line 1924
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1923
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1926
    .end local v2    # "i":I
    :cond_21
    return-object v1

    .line 1928
    .end local v1    # "val":[J
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method public final greylist-max-o createRawFileDescriptorArray()[Ljava/io/FileDescriptor;
    .registers 5

    .line 3482
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3483
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 3484
    const/4 v1, 0x0

    return-object v1

    .line 3486
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3487
    new-array v1, v0, [Ljava/io/FileDescriptor;

    .line 3488
    .local v1, "f":[Ljava/io/FileDescriptor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_1a

    .line 3489
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3488
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 3491
    .end local v2    # "i":I
    :cond_1a
    return-object v1
.end method

.method public blacklist createShortArray()[S
    .registers 5

    .line 1803
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1804
    .local v0, "n":I
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 1805
    if-ltz v0, :cond_22

    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    shr-int/lit8 v1, v2, 0x2

    if-gt v0, v1, :cond_22

    .line 1806
    new-array v1, v0, [S

    .line 1807
    .local v1, "val":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v0, :cond_21

    .line 1808
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    .line 1807
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1810
    .end local v2    # "i":I
    :cond_21
    return-object v1

    .line 1812
    .end local v1    # "val":[S
    :cond_22
    const/4 v1, 0x0

    return-object v1
.end method

.method public final blacklist createString16Array()[Ljava/lang/String;
    .registers 5

    .line 2091
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2092
    .local v0, "N":I
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 2093
    if-ltz v0, :cond_19

    .line 2094
    new-array v1, v0, [Ljava/lang/String;

    .line 2095
    .local v1, "val":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_18

    .line 2096
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2095
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2098
    .end local v2    # "i":I
    :cond_18
    return-object v1

    .line 2100
    .end local v1    # "val":[Ljava/lang/String;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public final blacklist createString8Array()[Ljava/lang/String;
    .registers 5

    .line 2050
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2051
    .local v0, "N":I
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 2052
    if-ltz v0, :cond_19

    .line 2053
    new-array v1, v0, [Ljava/lang/String;

    .line 2054
    .local v1, "val":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_18

    .line 2055
    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2054
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2057
    .end local v2    # "i":I
    :cond_18
    return-object v1

    .line 2059
    .end local v1    # "val":[Ljava/lang/String;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public final whitelist createStringArray()[Ljava/lang/String;
    .registers 2

    .line 2027
    invoke-virtual {p0}, Landroid/os/Parcel;->createString16Array()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist createStringArrayList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4062
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4063
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 4064
    const/4 v1, 0x0

    return-object v1

    .line 4066
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4067
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 4068
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_11
    if-lez v0, :cond_1d

    .line 4069
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4070
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 4072
    :cond_1d
    return-object v1
.end method

.method public final whitelist createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 4279
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4280
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 4281
    const/4 v1, 0x0

    return-object v1

    .line 4283
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4284
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    .line 4285
    .local v1, "l":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_1c

    .line 4286
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4285
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4288
    .end local v2    # "i":I
    :cond_1c
    return-object v1
.end method

.method public final whitelist createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3953
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3954
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 3955
    const/4 v1, 0x0

    return-object v1

    .line 3957
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3958
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3959
    .local v1, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    :goto_11
    if-lez v0, :cond_1d

    .line 3960
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3961
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 3963
    :cond_1d
    return-object v1
.end method

.method public final whitelist createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 4035
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4036
    .local v0, "count":I
    if-gez v0, :cond_8

    .line 4037
    const/4 v1, 0x0

    return-object v1

    .line 4039
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4040
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 4041
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_24

    .line 4042
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4043
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 4044
    .local v4, "value":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4041
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Landroid/os/Parcelable;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 4046
    .end local v2    # "i":I
    :cond_24
    return-object v1
.end method

.method public final whitelist createTypedSparseArray(Landroid/os/Parcelable$Creator;)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 4006
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4007
    .local v0, "count":I
    if-gez v0, :cond_8

    .line 4008
    const/4 v1, 0x0

    return-object v1

    .line 4010
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4011
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 4012
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_24

    .line 4013
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4014
    .local v3, "index":I
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 4015
    .local v4, "value":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4012
    .end local v3    # "index":I
    .end local v4    # "value":Landroid/os/Parcelable;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 4017
    .end local v2    # "i":I
    :cond_24
    return-object v1
.end method

.method public final whitelist dataAvail()I
    .registers 3

    .line 751
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataAvail(J)I

    move-result v0

    return v0
.end method

.method public final whitelist dataCapacity()I
    .registers 3

    .line 769
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataCapacity(J)I

    move-result v0

    return v0
.end method

.method public final whitelist dataPosition()I
    .registers 3

    .line 759
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataPosition(J)I

    move-result v0

    return v0
.end method

.method public whitelist dataSize()I
    .registers 3

    .line 743
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeDataSize(J)I

    move-result v0

    return v0
.end method

.method public final whitelist enforceInterface(Ljava/lang/String;)V
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 1143
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeEnforceInterface(JLjava/lang/String;)V

    .line 1144
    return-void
.end method

.method public whitelist enforceNoDataAvail()V
    .registers 5

    .line 1153
    invoke-virtual {p0}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    .line 1154
    .local v0, "n":I
    if-gtz v0, :cond_7

    .line 1157
    return-void

    .line 1155
    :cond_7
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcel data not fully consumed, unread size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5618
    invoke-direct {p0}, Landroid/os/Parcel;->destroy()V

    .line 5619
    return-void
.end method

.method public final greylist-max-o getClassCookie(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p1, "clz"    # Ljava/lang/Class;

    .line 926
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 709
    iget v0, p0, Landroid/os/Parcel;->mFlags:I

    return v0
.end method

.method public blacklist getOpenAshmemSize()J
    .registers 3

    .line 5867
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeGetOpenAshmemSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist hasBinders()Z
    .registers 3

    .line 1100
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasBinders(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasBinders(II)Z
    .registers 5
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1123
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeHasBindersInRange(JII)Z

    move-result v0

    return v0
.end method

.method public blacklist hasClassCookie(Ljava/lang/Class;)Z
    .registers 3
    .param p1, "clz"    # Ljava/lang/Class;

    .line 948
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist hasFileDescriptors()Z
    .registers 3

    .line 982
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeHasFileDescriptors(J)Z

    move-result v0

    return v0
.end method

.method public whitelist hasFileDescriptors(II)Z
    .registers 5
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1003
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeHasFileDescriptorsInRange(JII)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasReadWriteHelper()Z
    .registers 3

    .line 660
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    sget-object v1, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final blacklist isForRpc()Z
    .registers 3

    .line 702
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeIsForRpc(J)Z

    move-result v0

    return v0
.end method

.method public final blacklist markSensitive()V
    .registers 3

    .line 686
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarkSensitive(J)V

    .line 687
    return-void
.end method

.method public final blacklist marshall(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 845
    if-eqz p1, :cond_45

    .line 848
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 852
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 853
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 855
    .local v1, "remaining":I
    const/4 v2, 0x0

    .line 856
    .local v2, "marshalledSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 857
    iget-wide v3, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v3, v4, p1, v0, v1}, Landroid/os/Parcel;->nativeMarshallBuffer(JLjava/nio/ByteBuffer;II)I

    move-result v2

    goto :goto_33

    .line 858
    :cond_1e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 859
    iget-wide v3, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 860
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v0

    .line 859
    invoke-static {v3, v4, v5, v6, v1}, Landroid/os/Parcel;->nativeMarshallArray(J[BII)I

    move-result v2

    .line 865
    :goto_33
    add-int v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 866
    return-void

    .line 862
    :cond_39
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 849
    .end local v0    # "position":I
    .end local v1    # "remaining":I
    .end local v2    # "marshalledSize":I
    :cond_3f
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 846
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist marshall()[B
    .registers 3

    .line 825
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeMarshall(J)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist maybeWriteSquashed(Landroid/os/Parcelable;)Z
    .registers 7
    .param p1, "p"    # Landroid/os/Parcelable;

    .line 2963
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 2965
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2966
    return v1

    .line 2968
    :cond_9
    invoke-direct {p0}, Landroid/os/Parcel;->ensureWrittenSquashableParcelables()V

    .line 2969
    iget-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2970
    .local v0, "firstPos":Ljava/lang/Integer;
    if-eqz v0, :cond_27

    .line 2973
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2976
    .local v1, "pos":I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, v1, v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2977
    const/4 v2, 0x1

    return v2

    .line 2980
    .end local v1    # "pos":I
    :cond_27
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2983
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 2984
    .local v2, "pos":I
    iget-object v3, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    return v1
.end method

.method public final greylist-max-o pushAllowFds(Z)Z
    .registers 4
    .param p1, "allowFds"    # Z

    .line 805
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativePushAllowFds(JZ)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o putClassCookies(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 963
    .local p1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class;Ljava/lang/Object;>;"
    if-nez p1, :cond_3

    .line 964
    return-void

    .line 966
    :cond_3
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-nez v0, :cond_e

    .line 967
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 969
    :cond_e
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 970
    return-void
.end method

.method public whitelist readArray(Ljava/lang/ClassLoader;)[Ljava/lang/Object;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3839
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3860
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3861
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3798
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 3820
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3821
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readArrayListInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method blacklist readArrayMap(Landroid/util/ArrayMap;IZZLandroid/os/Parcel$ClassLoaderProvider;[I)V
    .registers 12
    .param p2, "size"    # I
    .param p3, "sorted"    # Z
    .param p4, "lazy"    # Z
    .param p5, "loaderProvider"    # Landroid/os/Parcel$ClassLoaderProvider;
    .param p6, "lazyValueCount"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;IZZ",
            "Landroid/os/Parcel$ClassLoaderProvider;",
            "[I)V"
        }
    .end annotation

    .line 5680
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<-Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5681
    :goto_4
    if-lez p2, :cond_30

    .line 5682
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5683
    .local v1, "key":Ljava/lang/String;
    if-eqz p4, :cond_11

    invoke-direct {p0, p5}, Landroid/os/Parcel;->readLazyValue(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_19

    .line 5684
    :cond_11
    invoke-static {p5}, Landroid/os/Parcel;->getClassLoader(Landroid/os/Parcel$ClassLoaderProvider;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 5683
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 5685
    .local v2, "value":Ljava/lang/Object;
    :goto_19
    instance-of v3, v2, Landroid/os/Parcel$LazyValue;

    if-eqz v3, :cond_23

    .line 5686
    const/4 v3, 0x0

    aget v4, p6, v3

    add-int/2addr v4, v0

    aput v4, p6, v3

    .line 5688
    :cond_23
    if-eqz p3, :cond_29

    .line 5689
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    .line 5691
    :cond_29
    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5693
    :goto_2c
    nop

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 p2, p2, -0x1

    .line 5694
    goto :goto_4

    .line 5695
    :cond_30
    if-eqz p3, :cond_35

    .line 5696
    invoke-virtual {p1}, Landroid/util/ArrayMap;->validate()V

    .line 5698
    :cond_35
    return-void
.end method

.method public greylist-max-r readArrayMap(Landroid/util/ArrayMap;Landroid/os/Parcel$ClassLoaderProvider;)V
    .registers 4
    .param p2, "loaderProvider"    # Landroid/os/Parcel$ClassLoaderProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Parcel$ClassLoaderProvider;",
            ")V"
        }
    .end annotation

    .line 5706
    .local p1, "outVal":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<-Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5707
    .local v0, "N":I
    if-gez v0, :cond_7

    .line 5708
    return-void

    .line 5710
    :cond_7
    invoke-direct {p0, p1, v0, p2}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILandroid/os/Parcel$ClassLoaderProvider;)V

    .line 5711
    return-void
.end method

.method public greylist readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;
    .registers 6
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5722
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5723
    .local v0, "size":I
    if-gez v0, :cond_8

    .line 5724
    const/4 v1, 0x0

    return-object v1

    .line 5726
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 5727
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(I)V

    .line 5728
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v0, :cond_1e

    .line 5729
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    .line 5730
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 5728
    .end local v3    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 5732
    .end local v2    # "i":I
    :cond_1e
    return-object v1
.end method

.method public final whitelist readBinderArray([Landroid/os/IBinder;)V
    .registers 5
    .param p1, "val"    # [Landroid/os/IBinder;

    .line 2198
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2199
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 2200
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_13

    .line 2201
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    aput-object v2, p1, v1

    .line 2200
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2206
    .end local v1    # "i":I
    :cond_13
    return-void

    .line 2204
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readBinderList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 4157
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4158
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4159
    .local v1, "N":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4160
    const/4 v2, 0x0

    .line 4161
    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1b

    if-ge v2, v1, :cond_1b

    .line 4162
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4161
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4164
    :cond_1b
    :goto_1b
    if-ge v2, v1, :cond_27

    .line 4165
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4164
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4167
    :cond_27
    :goto_27
    if-ge v2, v0, :cond_2f

    .line 4168
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4167
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4170
    :cond_2f
    return-void
.end method

.method public final whitelist readBlob()[B
    .registers 3

    .line 3726
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadBlob(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readBoolean()Z
    .registers 2

    .line 3433
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final whitelist readBooleanArray([Z)V
    .registers 5
    .param p1, "val"    # [Z

    .line 1777
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1778
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_19

    .line 1779
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 1780
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    aput-boolean v2, p1, v1

    .line 1779
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1785
    .end local v1    # "i":I
    :cond_18
    return-void

    .line 1783
    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readBundle()Landroid/os/Bundle;
    .registers 2

    .line 3626
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 3637
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3638
    .local v0, "length":I
    if-gez v0, :cond_8

    .line 3640
    const/4 v1, 0x0

    return-object v1

    .line 3643
    :cond_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Parcel;I)V

    .line 3644
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_12

    .line 3645
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3647
    :cond_12
    return-object v1
.end method

.method public final whitelist readByte()B
    .registers 2

    .line 3515
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public final whitelist readByteArray([B)V
    .registers 5
    .param p1, "val"    # [B

    .line 3714
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    if-eqz p1, :cond_6

    array-length v2, p1

    goto :goto_7

    :cond_6
    const/4 v2, 0x0

    :goto_7
    invoke-static {v0, v1, p1, v2}, Landroid/os/Parcel;->nativeReadByteArray(J[BI)Z

    move-result v0

    .line 3715
    .local v0, "valid":Z
    if-eqz v0, :cond_e

    .line 3718
    return-void

    .line 3716
    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist readCallingWorkSourceUid()I
    .registers 3

    .line 1185
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadCallingWorkSourceUid(J)I

    move-result v0

    return v0
.end method

.method public final whitelist readCharArray([C)V
    .registers 5
    .param p1, "val"    # [C

    .line 1856
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1857
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_15

    .line 1858
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 1859
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 1858
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1864
    .end local v1    # "i":I
    :cond_14
    return-void

    .line 1862
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final greylist readCharSequence()Ljava/lang/CharSequence;
    .registers 2

    .line 3443
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final greylist-max-o readCharSequenceArray()[Ljava/lang/CharSequence;
    .registers 5

    .line 3745
    const/4 v0, 0x0

    .line 3747
    .local v0, "array":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3748
    .local v1, "length":I
    if-ltz v1, :cond_19

    .line 3750
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3751
    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 3753
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_19

    .line 3755
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v2

    .line 3753
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3759
    .end local v2    # "i":I
    :cond_19
    return-object v0
.end method

.method public final greylist-max-o readCharSequenceList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 3768
    const/4 v0, 0x0

    .line 3770
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3771
    .local v1, "length":I
    if-ltz v1, :cond_1e

    .line 3772
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3773
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    .line 3775
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_1e

    .line 3776
    invoke-virtual {p0}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3775
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3780
    .end local v2    # "i":I
    :cond_1e
    return-object v0
.end method

.method public final greylist readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 5
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 5224
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<*>;"
    instance-of v0, p1, Landroid/os/Parcelable$ClassLoaderCreator;

    if-eqz v0, :cond_e

    .line 5225
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable$ClassLoaderCreator;

    .line 5227
    .local v0, "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    invoke-interface {v0, p0, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    return-object v1

    .line 5229
    .end local v0    # "classLoaderCreator":Landroid/os/Parcelable$ClassLoaderCreator;, "Landroid/os/Parcelable$ClassLoaderCreator<*>;"
    :cond_e
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public final whitelist readDouble()D
    .registers 3

    .line 3387
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist readDoubleArray([D)V
    .registers 6
    .param p1, "val"    # [D

    .line 2011
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2012
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 2013
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_13

    .line 2014
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 2013
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2019
    .end local v1    # "i":I
    :cond_13
    return-void

    .line 2017
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readException()V
    .registers 3

    .line 3246
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 3247
    .local v0, "code":I
    if-eqz v0, :cond_d

    .line 3248
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3249
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 3251
    .end local v1    # "msg":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method public final whitelist readException(ILjava/lang/String;)V
    .registers 10
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 3302
    const/4 v0, 0x0

    .line 3303
    .local v0, "remoteStackTrace":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3304
    .local v1, "remoteStackPayloadSize":I
    if-lez v1, :cond_b

    .line 3305
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 3307
    :cond_b
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->createException(ILjava/lang/String;)Ljava/lang/Exception;

    move-result-object v2

    .line 3309
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2e

    .line 3310
    new-instance v3, Landroid/os/RemoteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote stack trace:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 3312
    .local v3, "cause":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/util/ExceptionUtils;->appendCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3314
    .end local v3    # "cause":Landroid/os/RemoteException;
    :cond_2e
    invoke-static {v2}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V

    .line 3315
    return-void
.end method

.method public final greylist readExceptionCode()I
    .registers 5

    .line 3269
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3270
    .local v0, "code":I
    const/16 v1, -0x7f

    if-ne v0, v1, :cond_f

    .line 3271
    invoke-static {p0}, Landroid/app/AppOpsManager;->readAndLogNotedAppops(Landroid/os/Parcel;)V

    .line 3273
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3276
    :cond_f
    const/16 v1, -0x80

    if-ne v0, v1, :cond_26

    .line 3277
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3278
    .local v1, "headerSize":I
    if-nez v1, :cond_21

    .line 3279
    const-string v2, "Parcel"

    const-string v3, "Unexpected zero-sized Parcel reply header."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 3285
    :cond_21
    invoke-static {p0}, Landroid/os/StrictMode;->readAndHandleBinderCallViolations(Landroid/os/Parcel;)V

    .line 3289
    :goto_24
    const/4 v2, 0x0

    return v2

    .line 3291
    .end local v1    # "headerSize":I
    :cond_26
    return v0
.end method

.method public final whitelist readFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 3465
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 3466
    .local v0, "fd":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_e

    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public whitelist readFixedArray(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 4350
    .local p1, "val":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4351
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_14

    .line 4352
    move-object v1, p1

    check-cast v1, [Z

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    goto/16 :goto_7f

    .line 4353
    :cond_14
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1f

    .line 4354
    move-object v1, p1

    check-cast v1, [B

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_7f

    .line 4355
    :cond_1f
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2a

    .line 4356
    move-object v1, p1

    check-cast v1, [C

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readCharArray([C)V

    goto :goto_7f

    .line 4357
    :cond_2a
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_35

    .line 4358
    move-object v1, p1

    check-cast v1, [I

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readIntArray([I)V

    goto :goto_7f

    .line 4359
    :cond_35
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_40

    .line 4360
    move-object v1, p1

    check-cast v1, [J

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readLongArray([J)V

    goto :goto_7f

    .line 4361
    :cond_40
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4b

    .line 4362
    move-object v1, p1

    check-cast v1, [F

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readFloatArray([F)V

    goto :goto_7f

    .line 4363
    :cond_4b
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_56

    .line 4364
    move-object v1, p1

    check-cast v1, [D

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readDoubleArray([D)V

    goto :goto_7f

    .line 4365
    :cond_56
    const-class v1, Landroid/os/IBinder;

    if-ne v0, v1, :cond_61

    .line 4366
    move-object v1, p1

    check-cast v1, [Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readBinderArray([Landroid/os/IBinder;)V

    goto :goto_7f

    .line 4367
    :cond_61
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 4368
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4369
    .local v1, "length":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_80

    .line 4373
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_72
    if-ge v2, v1, :cond_7e

    .line 4374
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;)V

    .line 4373
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 4376
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_7e
    nop

    .line 4379
    :goto_7f
    return-void

    .line 4370
    .restart local v1    # "length":I
    :cond_80
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad length: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4377
    .end local v1    # "length":I
    :cond_a7
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for fixed-size array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist readFixedArray(Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/Parcelable;",
            ">(TT;",
            "Landroid/os/Parcelable$Creator<",
            "TS;>;)V"
        }
    .end annotation

    .line 4416
    .local p1, "val":Ljava/lang/Object;, "TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TS;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4417
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4418
    move-object v1, p1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {p0, v1, p2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    goto :goto_35

    .line 4419
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 4420
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4421
    .local v1, "length":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_36

    .line 4425
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_34

    .line 4426
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 4425
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 4428
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_34
    nop

    .line 4431
    :goto_35
    return-void

    .line 4422
    .restart local v1    # "length":I
    :cond_36
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad length: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4429
    .end local v1    # "length":I
    :cond_5d
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for fixed-size array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist readFixedArray(Ljava/lang/Object;Ljava/util/function/Function;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Landroid/os/IInterface;",
            ">(TT;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TS;>;)V"
        }
    .end annotation

    .line 4390
    .local p1, "val":Ljava/lang/Object;, "TT;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TS;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4391
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Landroid/os/IInterface;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4392
    move-object v1, p1

    check-cast v1, [Landroid/os/IInterface;

    invoke-virtual {p0, v1, p2}, Landroid/os/Parcel;->readInterfaceArray([Landroid/os/IInterface;Ljava/util/function/Function;)V

    goto :goto_35

    .line 4393
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 4394
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4395
    .local v1, "length":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_36

    .line 4399
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_34

    .line 4400
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Landroid/os/Parcel;->readFixedArray(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 4399
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 4402
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_34
    nop

    .line 4405
    :goto_35
    return-void

    .line 4396
    .restart local v1    # "length":I
    :cond_36
    new-instance v2, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad length: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4403
    .end local v1    # "length":I
    :cond_5d
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type for fixed-size array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readFloat()F
    .registers 3

    .line 3379
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFloat(J)F

    move-result v0

    return v0
.end method

.method public final whitelist readFloatArray([F)V
    .registers 5
    .param p1, "val"    # [F

    .line 1972
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1973
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 1974
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_13

    .line 1975
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    aput v2, p1, v1

    .line 1974
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1980
    .end local v1    # "i":I
    :cond_13
    return-void

    .line 1978
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3600
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/os/Parcel;->readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readHashMap(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 5
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TK;>;",
            "Ljava/lang/Class<",
            "+TV;>;)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3614
    .local p2, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<+TK;>;"
    .local p3, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3615
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3616
    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->readHashMapInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readInt()I
    .registers 3

    .line 3364
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadInt(J)I

    move-result v0

    return v0
.end method

.method public final whitelist readIntArray([I)V
    .registers 5
    .param p1, "val"    # [I

    .line 1894
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1895
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 1896
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_13

    .line 1897
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aput v2, p1, v1

    .line 1896
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1902
    .end local v1    # "i":I
    :cond_13
    return-void

    .line 1900
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readInterfaceArray([Landroid/os/IInterface;Ljava/util/function/Function;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">([TT;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 2243
    .local p1, "val":[Landroid/os/IInterface;, "[TT;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2244
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_1a

    .line 2245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_19

    .line 2246
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    aput-object v2, p1, v1

    .line 2245
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2251
    .end local v1    # "i":I
    :cond_19
    return-void

    .line 2249
    :cond_1a
    new-instance v1, Landroid/os/BadParcelableException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readInterfaceList(Ljava/util/List;Ljava/util/function/Function;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TT;>;)V"
        }
    .end annotation

    .line 4180
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "asInterface":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/os/IBinder;TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4181
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4182
    .local v1, "N":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4183
    const/4 v2, 0x0

    .line 4184
    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_21

    if-ge v2, v1, :cond_21

    .line 4185
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4184
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4187
    :cond_21
    :goto_21
    if-ge v2, v1, :cond_33

    .line 4188
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4187
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 4190
    :cond_33
    :goto_33
    if-ge v2, v0, :cond_3b

    .line 4191
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4190
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 4193
    :cond_3b
    return-void
.end method

.method public final whitelist readList(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p1, "outVal"    # Ljava/util/List;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3560
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3561
    .local v0, "N":I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 3562
    return-void
.end method

.method public whitelist readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V
    .registers 5
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "-TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3581
    .local p1, "outVal":Ljava/util/List;, "Ljava/util/List<-TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3582
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3583
    .local v0, "n":I
    invoke-direct {p0, p1, v0, p2, p3}, Landroid/os/Parcel;->readListInternal(Ljava/util/List;ILjava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 3584
    return-void
.end method

.method public final whitelist readLong()J
    .registers 3

    .line 3371
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist readLongArray([J)V
    .registers 6
    .param p1, "val"    # [J

    .line 1933
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1934
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 1935
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_13

    .line 1936
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    aput-wide v2, p1, v1

    .line 1935
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1941
    .end local v1    # "i":I
    :cond_13
    return-void

    .line 1939
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3529
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3530
    return-void
.end method

.method public whitelist readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "-TK;-TV;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 3542
    .local p1, "outVal":Ljava/util/Map;, "Ljava/util/Map<-TK;-TV;>;"
    .local p3, "clazzKey":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p4, "clazzValue":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3543
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3544
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3545
    return-void
.end method

.method greylist-max-o readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;)V
    .registers 10
    .param p1, "outVal"    # Ljava/util/Map;
    .param p2, "n"    # I
    .param p3, "loader"    # Ljava/lang/ClassLoader;

    .line 5627
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "outVal":Ljava/util/Map;
    .end local p2    # "n":I
    .end local p3    # "loader":Ljava/lang/ClassLoader;
    .local v1, "outVal":Ljava/util/Map;
    .local v2, "n":I
    .local v3, "loader":Ljava/lang/ClassLoader;
    invoke-direct/range {v0 .. v5}, Landroid/os/Parcel;->readMapInternal(Ljava/util/Map;ILjava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 5628
    return-void
.end method

.method public final whitelist readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
    .registers 3
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    return-object v0
.end method

.method public whitelist readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5196
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5197
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5393
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    return-object v0
.end method

.method public whitelist readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 5413
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5251
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readParcelableCreator(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .line 5271
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5272
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readParcelableCreatorInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;
    .registers 4
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4212
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/os/Parcel;->readParcelableListInternal(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .param p2, "cl"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 4233
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4234
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4235
    invoke-direct {p0, p1, p2, p3}, Landroid/os/Parcel;->readParcelableListInternal(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readPersistableBundle()Landroid/os/PersistableBundle;
    .registers 2

    .line 3657
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readPersistableBundle(Ljava/lang/ClassLoader;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 3668
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3669
    .local v0, "length":I
    if-gez v0, :cond_8

    .line 3671
    const/4 v1, 0x0

    return-object v1

    .line 3674
    :cond_8
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1, p0, v0}, Landroid/os/PersistableBundle;-><init>(Landroid/os/Parcel;I)V

    .line 3675
    .local v1, "bundle":Landroid/os/PersistableBundle;
    if-eqz p1, :cond_12

    .line 3676
    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3678
    :cond_12
    return-object v1
.end method

.method public final greylist readRawFileDescriptor()Ljava/io/FileDescriptor;
    .registers 3

    .line 3472
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadFileDescriptor(J)Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final greylist-max-o readRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "val"    # [Ljava/io/FileDescriptor;

    .line 3501
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3502
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 3503
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_13

    .line 3504
    invoke-virtual {p0}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    aput-object v2, p1, v1

    .line 3503
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3509
    .end local v1    # "i":I
    :cond_13
    return-void

    .line 3507
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist readSerializable()Ljava/io/Serializable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5446
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public whitelist readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 5462
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5463
    nop

    .line 5464
    if-nez p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, p1

    .line 5463
    :goto_10
    invoke-direct {p0, v0, p2}, Landroid/os/Parcel;->readSerializableInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readShortArray([S)V
    .registers 5
    .param p1, "val"    # [S

    .line 1818
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1819
    .local v0, "n":I
    array-length v1, p1

    if-ne v0, v1, :cond_15

    .line 1820
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 1821
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p1, v1

    .line 1820
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1826
    .end local v1    # "i":I
    :cond_14
    return-void

    .line 1824
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist readSize()Landroid/util/Size;
    .registers 4

    .line 3686
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3687
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3688
    .local v1, "height":I
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public final whitelist readSizeF()Landroid/util/SizeF;
    .registers 4

    .line 3696
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 3697
    .local v0, "width":F
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 3698
    .local v1, "height":F
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2
.end method

.method public whitelist readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3879
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Parcel;->readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation

    .line 3900
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3901
    invoke-direct {p0, p1, p2}, Landroid/os/Parcel;->readSparseArrayInternal(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readSparseBooleanArray()Landroid/util/SparseBooleanArray;
    .registers 3

    .line 3911
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3912
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 3913
    const/4 v1, 0x0

    return-object v1

    .line 3915
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3916
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 3917
    .local v1, "sa":Landroid/util/SparseBooleanArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseBooleanArrayInternal(Landroid/util/SparseBooleanArray;I)V

    .line 3918
    return-object v1
.end method

.method public final greylist-max-o readSparseIntArray()Landroid/util/SparseIntArray;
    .registers 3

    .line 3928
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3929
    .local v0, "N":I
    if-gez v0, :cond_8

    .line 3930
    const/4 v1, 0x0

    return-object v1

    .line 3932
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3933
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 3934
    .local v1, "sa":Landroid/util/SparseIntArray;
    invoke-direct {p0, v1, v0}, Landroid/os/Parcel;->readSparseIntArrayInternal(Landroid/util/SparseIntArray;I)V

    .line 3935
    return-object v1
.end method

.method public blacklist readSquashed(Landroid/os/Parcel$SquashReadHelper;)Landroid/os/Parcelable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel$SquashReadHelper<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3013
    .local p1, "reader":Landroid/os/Parcel$SquashReadHelper;, "Landroid/os/Parcel$SquashReadHelper<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3014
    .local v0, "offset":I
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 3016
    .local v1, "pos":I
    if-nez v0, :cond_19

    .line 3018
    invoke-interface {p1, p0}, Landroid/os/Parcel$SquashReadHelper;->readRawParceled(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 3019
    .local v2, "p":Landroid/os/Parcelable;, "TT;"
    invoke-direct {p0}, Landroid/os/Parcel;->ensureReadSquashableParcelables()V

    .line 3020
    iget-object v3, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3021
    return-object v2

    .line 3024
    .end local v2    # "p":Landroid/os/Parcelable;, "TT;"
    :cond_19
    sub-int v2, v1, v0

    .line 3026
    .local v2, "firstAbsolutePos":I
    iget-object v3, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 3027
    .local v3, "p":Landroid/os/Parcelable;
    if-nez v3, :cond_6b

    .line 3028
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3029
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    iget-object v6, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_45

    .line 3030
    iget-object v6, p0, Landroid/os/Parcel;->mReadSquashableParcelables:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3029
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 3032
    .end local v5    # "i":I
    :cond_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Map doesn\'t contain offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : contains="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3034
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3032
    const-string v6, "Parcel"

    invoke-static {v6, v5}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_6b
    return-object v3
.end method

.method public final whitelist readString()Ljava/lang/String;
    .registers 2

    .line 3395
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString16()Ljava/lang/String;
    .registers 2

    .line 3405
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0}, Landroid/os/Parcel$ReadWriteHelper;->readString16(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString16Array([Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/String;

    .line 2106
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2107
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 2108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_13

    .line 2109
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 2108
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2114
    .end local v1    # "i":I
    :cond_13
    return-void

    .line 2112
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist readString16NoHelper()Ljava/lang/String;
    .registers 3

    .line 3426
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString16(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString8()Ljava/lang/String;
    .registers 2

    .line 3400
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0}, Landroid/os/Parcel$ReadWriteHelper;->readString8(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist readString8Array([Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/String;

    .line 2065
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2066
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 2067
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_13

    .line 2068
    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 2067
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 2073
    .end local v1    # "i":I
    :cond_13
    return-void

    .line 2071
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist readString8NoHelper()Ljava/lang/String;
    .registers 3

    .line 3421
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadString8(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStringArray([Ljava/lang/String;)V
    .registers 2
    .param p1, "val"    # [Ljava/lang/String;

    .line 2031
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->readString16Array([Ljava/lang/String;)V

    .line 2032
    return-void
.end method

.method public final greylist readStringArray()[Ljava/lang/String;
    .registers 2

    .line 3736
    invoke-virtual {p0}, Landroid/os/Parcel;->createString16Array()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStringList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4135
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4136
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4137
    .local v1, "N":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 4138
    const/4 v2, 0x0

    .line 4139
    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1b

    if-ge v2, v1, :cond_1b

    .line 4140
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4139
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 4142
    :cond_1b
    :goto_1b
    if-ge v2, v1, :cond_27

    .line 4143
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 4145
    :cond_27
    :goto_27
    if-ge v2, v0, :cond_2f

    .line 4146
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4145
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 4148
    :cond_2f
    return-void
.end method

.method public greylist-max-o readStringNoHelper()Ljava/lang/String;
    .registers 2

    .line 3416
    invoke-virtual {p0}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readStrongBinder()Landroid/os/IBinder;
    .registers 3

    .line 3450
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/os/Parcel;->nativeReadStrongBinder(J)Landroid/os/IBinder;

    move-result-object v0

    .line 3454
    .local v0, "result":Landroid/os/IBinder;
    if-eqz v0, :cond_12

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/os/Parcel;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3456
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 3458
    :cond_12
    return-object v0
.end method

.method public final whitelist readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)V"
        }
    .end annotation

    .line 4292
    .local p1, "val":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 4293
    .local v0, "N":I
    array-length v1, p1

    if-ne v0, v1, :cond_14

    .line 4294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_13

    .line 4295
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 4294
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 4300
    .end local v1    # "i":I
    :cond_13
    return-void

    .line 4298
    :cond_14
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bad array lengths"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final greylist-max-o readTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4308
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)V"
        }
    .end annotation

    .line 3976
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3977
    .local v0, "M":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3978
    .local v1, "N":I
    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Landroid/os/Parcel;->ensureWithinMemoryLimit(II)V

    .line 3979
    const/4 v2, 0x0

    .line 3980
    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_1b

    if-ge v2, v1, :cond_1b

    .line 3981
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3980
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3983
    :cond_1b
    :goto_1b
    if-ge v2, v1, :cond_27

    .line 3984
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3983
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 3986
    :cond_27
    :goto_27
    if-ge v2, v0, :cond_2f

    .line 3987
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3986
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 3989
    :cond_2f
    return-void
.end method

.method public final whitelist readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 4324
    .local p1, "c":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 4325
    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4327
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 4687
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist recycle()V
    .registers 6

    .line 608
    iget-boolean v0, p0, Landroid/os/Parcel;->mRecycled:Z

    if-nez v0, :cond_45

    .line 615
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Parcel;->mRecycled:Z

    .line 621
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 622
    invoke-direct {p0}, Landroid/os/Parcel;->freeBuffer()V

    .line 624
    iget-boolean v1, p0, Landroid/os/Parcel;->mOwnsNativeParcelObject:Z

    const/16 v2, 0x20

    if-eqz v1, :cond_2a

    .line 625
    sget-object v1, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_16
    sget v3, Landroid/os/Parcel;->sOwnedPoolSize:I

    if-ge v3, v2, :cond_25

    .line 627
    sget-object v2, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    iput-object v2, p0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 628
    sput-object p0, Landroid/os/Parcel;->sOwnedPool:Landroid/os/Parcel;

    .line 629
    sget v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    add-int/2addr v2, v0

    sput v2, Landroid/os/Parcel;->sOwnedPoolSize:I

    .line 631
    :cond_25
    monitor-exit v1

    goto :goto_41

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_27

    throw v0

    .line 633
    :cond_2a
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 634
    sget-object v1, Landroid/os/Parcel;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_31
    sget v3, Landroid/os/Parcel;->sHolderPoolSize:I

    if-ge v3, v2, :cond_40

    .line 636
    sget-object v2, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    iput-object v2, p0, Landroid/os/Parcel;->mPoolNext:Landroid/os/Parcel;

    .line 637
    sput-object p0, Landroid/os/Parcel;->sHolderPool:Landroid/os/Parcel;

    .line 638
    sget v2, Landroid/os/Parcel;->sHolderPoolSize:I

    add-int/2addr v2, v0

    sput v2, Landroid/os/Parcel;->sHolderPoolSize:I

    .line 640
    :cond_40
    monitor-exit v1

    .line 642
    :goto_41
    return-void

    .line 640
    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_42

    throw v0

    .line 609
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recycle called on unowned Parcel. (recycle twice?) Here: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 610
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Original recycle call (if DEBUG_RECYCLE): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "error":Ljava/lang/String;
    const-string v1, "Parcel"

    iget-object v2, p0, Landroid/os/Parcel;->mStack:Ljava/lang/RuntimeException;

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Landroid/os/Parcel;->mStack:Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist removeClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 8
    .param p1, "clz"    # Ljava/lang/Class;
    .param p2, "expectedCookie"    # Ljava/lang/Object;

    .line 931
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    const-string v1, " (with key="

    const-string v2, "Expected to remove "

    const-string v3, "Parcel"

    if-eqz v0, :cond_39

    .line 932
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 933
    .local v0, "removedCookie":Ljava/lang/Object;
    if-eq v0, p2, :cond_38

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") but instead removed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v0    # "removedCookie":Ljava/lang/Object;
    :cond_38
    goto :goto_5b

    .line 938
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") but no cookies were present"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :goto_5b
    return-void
.end method

.method public blacklist replaceCallingWorkSourceUid(I)Z
    .registers 4
    .param p1, "workSourceUid"    # I

    .line 1169
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeReplaceCallingWorkSourceUid(JI)Z

    move-result v0

    return v0
.end method

.method public final greylist-max-o restoreAllowFds(Z)V
    .registers 4
    .param p1, "lastValue"    # Z

    .line 810
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeRestoreAllowFds(JZ)V

    .line 811
    return-void
.end method

.method public blacklist restoreAllowSquashing(Z)V
    .registers 3
    .param p1, "previous"    # Z

    .line 2907
    iput-boolean p1, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    .line 2908
    iget-boolean v0, p0, Landroid/os/Parcel;->mAllowSquashing:Z

    if-nez v0, :cond_9

    .line 2909
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Parcel;->mWrittenSquashableParcelables:Landroid/util/ArrayMap;

    .line 2911
    :cond_9
    return-void
.end method

.method public final greylist-max-o setClassCookie(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .param p1, "clz"    # Ljava/lang/Class;
    .param p2, "cookie"    # Ljava/lang/Object;

    .line 917
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 918
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    .line 920
    :cond_b
    iget-object v0, p0, Landroid/os/Parcel;->mClassCookies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    return-void
.end method

.method public final whitelist setDataCapacity(I)V
    .registers 4
    .param p1, "size"    # I

    .line 800
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataCapacity(JI)V

    .line 801
    return-void
.end method

.method public final whitelist setDataPosition(I)V
    .registers 4
    .param p1, "pos"    # I

    .line 789
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataPosition(JI)V

    .line 790
    return-void
.end method

.method public final whitelist setDataSize(I)V
    .registers 4
    .param p1, "size"    # I

    .line 780
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeSetDataSize(JI)V

    .line 781
    return-void
.end method

.method public blacklist setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 714
    iput p1, p0, Landroid/os/Parcel;->mFlags:I

    .line 715
    return-void
.end method

.method public whitelist setPropagateAllowBlocking()V
    .registers 2

    .line 736
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->addFlags(I)V

    .line 737
    return-void
.end method

.method public greylist-max-o setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V
    .registers 3
    .param p1, "helper"    # Landroid/os/Parcel$ReadWriteHelper;

    .line 651
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    sget-object v0, Landroid/os/Parcel$ReadWriteHelper;->DEFAULT:Landroid/os/Parcel$ReadWriteHelper;

    :goto_6
    iput-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    .line 652
    return-void
.end method

.method public final blacklist unmarshall(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 882
    if-eqz p1, :cond_36

    .line 886
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 887
    .local v0, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 889
    .local v1, "remaining":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 890
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v2, v3, p1, v0, v1}, Landroid/os/Parcel;->nativeUnmarshallBuffer(JLjava/nio/ByteBuffer;II)V

    goto :goto_2a

    .line 891
    :cond_16
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 892
    iget-wide v2, p0, Landroid/os/Parcel;->mNativePtr:J

    .line 893
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v0

    .line 892
    invoke-static {v2, v3, v4, v5, v1}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)V

    .line 898
    :goto_2a
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 899
    return-void

    .line 895
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 883
    .end local v0    # "position":I
    .end local v1    # "remaining":I
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist unmarshall([BII)V
    .registers 6
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 872
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeUnmarshall(J[BII)V

    .line 873
    return-void
.end method

.method public final whitelist writeArray([Ljava/lang/Object;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/Object;

    .line 1618
    if-nez p1, :cond_7

    .line 1619
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    return-void

    .line 1622
    :cond_7
    array-length v0, p1

    .line 1623
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1624
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    :goto_c
    if-ge v1, v0, :cond_16

    .line 1626
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1627
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1629
    :cond_16
    return-void
.end method

.method public greylist-max-r writeArrayMap(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1503
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1504
    return-void
.end method

.method greylist-max-o writeArrayMapInternal(Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1474
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 1475
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1476
    return-void

    .line 1480
    :cond_7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1481
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1487
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_24

    .line 1489
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1487
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1496
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method public greylist-max-r writeArraySet(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1542
    .local p1, "val":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Ljava/lang/Object;>;"
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    .line 1543
    .local v0, "size":I
    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 1545
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1544
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1547
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method public final whitelist writeBinderArray([Landroid/os/IBinder;)V
    .registers 5
    .param p1, "val"    # [Landroid/os/IBinder;

    .line 2117
    if-eqz p1, :cond_12

    .line 2118
    array-length v0, p1

    .line 2119
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 2121
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2120
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2123
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 2124
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    :goto_16
    return-void
.end method

.method public final whitelist writeBinderList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 2366
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    if-nez p1, :cond_7

    .line 2367
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2368
    return-void

    .line 2370
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2371
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2372
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2373
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 2374
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2375
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2377
    :cond_1d
    return-void
.end method

.method public final whitelist writeBlob([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 1226
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Parcel;->writeBlob([BII)V

    .line 1227
    return-void
.end method

.method public final whitelist writeBlob([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 1244
    if-nez p1, :cond_7

    .line 1245
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    return-void

    .line 1248
    :cond_7
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 1249
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteBlob(J[BII)V

    .line 1250
    return-void
.end method

.method public final whitelist writeBoolean(Z)V
    .registers 2
    .param p1, "val"    # Z

    .line 1348
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1349
    return-void
.end method

.method public final whitelist writeBooleanArray([Z)V
    .registers 5
    .param p1, "val"    # [Z

    .line 1686
    if-eqz p1, :cond_12

    .line 1687
    array-length v0, p1

    .line 1688
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1689
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 1690
    aget-boolean v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1689
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1692
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 1693
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1695
    :goto_16
    return-void
.end method

.method public final whitelist writeBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "val"    # Landroid/os/Bundle;

    .line 1554
    if-nez p1, :cond_7

    .line 1555
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1556
    return-void

    .line 1559
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1560
    return-void
.end method

.method public final whitelist writeByte(B)V
    .registers 2
    .param p1, "val"    # B

    .line 1426
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    return-void
.end method

.method public final whitelist writeByteArray([B)V
    .registers 4
    .param p1, "b"    # [B

    .line 1194
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 1195
    return-void
.end method

.method public final whitelist writeByteArray([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 1205
    if-nez p1, :cond_7

    .line 1206
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    return-void

    .line 1209
    :cond_7
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/internal/util/ArrayUtils;->throwsIfOutOfBounds(III)V

    .line 1210
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/Parcel;->nativeWriteByteArray(J[BII)V

    .line 1211
    return-void
.end method

.method public final whitelist writeCharArray([C)V
    .registers 5
    .param p1, "val"    # [C

    .line 1829
    if-eqz p1, :cond_12

    .line 1830
    array-length v0, p1

    .line 1831
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1832
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 1833
    aget-char v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1832
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1835
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 1836
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1838
    :goto_16
    return-void
.end method

.method public final greylist writeCharSequence(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/CharSequence;

    .line 1359
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 1360
    return-void
.end method

.method public final greylist-max-o writeCharSequenceArray([Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/CharSequence;

    .line 2156
    if-eqz p1, :cond_12

    .line 2157
    array-length v0, p1

    .line 2158
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 2160
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2159
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2162
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 2163
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2165
    :goto_16
    return-void
.end method

.method public final greylist-max-o writeCharSequenceList(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 2171
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_19

    .line 2172
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2173
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_18

    .line 2175
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2174
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2177
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_18
    goto :goto_1d

    .line 2178
    :cond_19
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2180
    :goto_1d
    return-void
.end method

.method public final whitelist writeDouble(D)V
    .registers 5
    .param p1, "val"    # D

    .line 1295
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteDouble(JD)I

    move-result v0

    .line 1296
    .local v0, "err":I
    if-eqz v0, :cond_b

    .line 1297
    invoke-static {v0}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1299
    :cond_b
    return-void
.end method

.method public final whitelist writeDoubleArray([D)V
    .registers 6
    .param p1, "val"    # [D

    .line 1983
    if-eqz p1, :cond_12

    .line 1984
    array-length v0, p1

    .line 1985
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1986
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 1987
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1986
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1989
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 1990
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1992
    :goto_16
    return-void
.end method

.method public final whitelist writeException(Ljava/lang/Exception;)V
    .registers 11
    .param p1, "e"    # Ljava/lang/Exception;

    .line 3098
    invoke-static {p0}, Landroid/app/AppOpsManager;->prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V

    .line 3100
    invoke-static {p1}, Landroid/os/Parcel;->getExceptionCode(Ljava/lang/Throwable;)I

    move-result v0

    .line 3101
    .local v0, "code":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3102
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 3103
    if-nez v0, :cond_1d

    .line 3104
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_17

    .line 3105
    move-object v1, p1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 3107
    :cond_17
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3109
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3110
    sget-boolean v1, Landroid/os/Parcel;->sParcelExceptionStackTrace:Z

    if-eqz v1, :cond_2d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    goto :goto_2f

    :cond_2d
    const-wide/16 v1, 0x0

    .line 3111
    .local v1, "timeNow":J
    :goto_2f
    sget-boolean v3, Landroid/os/Parcel;->sParcelExceptionStackTrace:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_44

    sget-wide v5, Landroid/os/Parcel;->sLastWriteExceptionStackTrace:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x3e8

    cmp-long v3, v5, v7

    if-lez v3, :cond_44

    .line 3113
    sput-wide v1, Landroid/os/Parcel;->sLastWriteExceptionStackTrace:J

    .line 3114
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStackTrace(Ljava/lang/Throwable;)V

    goto :goto_47

    .line 3116
    :cond_44
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3118
    :goto_47
    packed-switch v0, :pswitch_data_72

    goto :goto_71

    .line 3120
    :pswitch_4b
    move-object v3, p1

    check-cast v3, Landroid/os/ServiceSpecificException;

    iget v3, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3121
    goto :goto_71

    .line 3124
    :pswitch_54
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 3125
    .local v3, "sizePosition":I
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3126
    move-object v4, p1

    check-cast v4, Landroid/os/Parcelable;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3127
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 3128
    .local v4, "payloadPosition":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3129
    sub-int v5, v4, v3

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3130
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3133
    .end local v3    # "sizePosition":I
    .end local v4    # "payloadPosition":I
    :goto_71
    return-void

    :pswitch_data_72
    .packed-switch -0x9
        :pswitch_54
        :pswitch_4b
    .end packed-switch
.end method

.method public final whitelist writeFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "val"    # Ljava/io/FileDescriptor;

    .line 1389
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V

    .line 1390
    return-void
.end method

.method public varargs whitelist writeFixedArray(Ljava/lang/Object;I[I)V
    .registers 5
    .param p2, "parcelableFlags"    # I
    .param p3, "dimensions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I[I)V"
        }
    .end annotation

    .line 2502
    .local p1, "val":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_7

    .line 2503
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    return-void

    .line 2506
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/os/Parcel;->writeFixedArrayInternal(Ljava/lang/Object;II[I)V

    .line 2507
    return-void
.end method

.method public final whitelist writeFloat(F)V
    .registers 4
    .param p1, "val"    # F

    .line 1284
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFloat(JF)I

    move-result v0

    .line 1285
    .local v0, "err":I
    if-eqz v0, :cond_b

    .line 1286
    invoke-static {v0}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1288
    :cond_b
    return-void
.end method

.method public final whitelist writeFloatArray([F)V
    .registers 5
    .param p1, "val"    # [F

    .line 1944
    if-eqz p1, :cond_12

    .line 1945
    array-length v0, p1

    .line 1946
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1947
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 1948
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1947
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1950
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 1951
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1953
    :goto_16
    return-void
.end method

.method public final whitelist writeInt(I)V
    .registers 4
    .param p1, "val"    # I

    .line 1262
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInt(JI)I

    move-result v0

    .line 1263
    .local v0, "err":I
    if-eqz v0, :cond_b

    .line 1264
    invoke-static {v0}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1266
    :cond_b
    return-void
.end method

.method public final whitelist writeIntArray([I)V
    .registers 5
    .param p1, "val"    # [I

    .line 1867
    if-eqz p1, :cond_12

    .line 1868
    array-length v0, p1

    .line 1869
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 1871
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1870
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1873
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 1874
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    :goto_16
    return-void
.end method

.method public final whitelist writeInterfaceArray([Landroid/os/IInterface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">([TT;)V"
        }
    .end annotation

    .line 2141
    .local p1, "val":[Landroid/os/IInterface;, "[TT;"
    if-eqz p1, :cond_12

    .line 2142
    array-length v0, p1

    .line 2143
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 2145
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2144
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2147
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 2148
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2150
    :goto_16
    return-void
.end method

.method public final whitelist writeInterfaceList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2388
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_7

    .line 2389
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2390
    return-void

    .line 2392
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2393
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2394
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2395
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 2396
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2397
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2399
    :cond_1d
    return-void
.end method

.method public final whitelist writeInterfaceToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "interfaceName"    # Ljava/lang/String;

    .line 1133
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteInterfaceToken(JLjava/lang/String;)V

    .line 1134
    return-void
.end method

.method public final whitelist writeList(Ljava/util/List;)V
    .registers 5
    .param p1, "val"    # Ljava/util/List;

    .line 1599
    if-nez p1, :cond_7

    .line 1600
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    return-void

    .line 1603
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1604
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1605
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    :goto_f
    if-ge v1, v0, :cond_1b

    .line 1607
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1608
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1610
    :cond_1b
    return-void
.end method

.method public final whitelist writeLong(J)V
    .registers 5
    .param p1, "val"    # J

    .line 1273
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/Parcel;->nativeWriteLong(JJ)I

    move-result v0

    .line 1274
    .local v0, "err":I
    if-eqz v0, :cond_b

    .line 1275
    invoke-static {v0}, Landroid/os/Parcel;->nativeSignalExceptionForError(I)V

    .line 1277
    :cond_b
    return-void
.end method

.method public final whitelist writeLongArray([J)V
    .registers 6
    .param p1, "val"    # [J

    .line 1905
    if-eqz p1, :cond_12

    .line 1906
    array-length v0, p1

    .line 1907
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1908
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 1909
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1908
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1911
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 1912
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    :goto_16
    return-void
.end method

.method public final whitelist writeMap(Ljava/util/Map;)V
    .registers 2
    .param p1, "val"    # Ljava/util/Map;

    .line 1441
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeMapInternal(Ljava/util/Map;)V

    .line 1442
    return-void
.end method

.method greylist-max-o writeMapInternal(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1449
    .local p1, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_7

    .line 1450
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1451
    return-void

    .line 1453
    :cond_7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1454
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 1455
    .local v1, "size":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1457
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1458
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1459
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1460
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, -0x1

    .line 1461
    goto :goto_16

    .line 1463
    :cond_34
    if-nez v1, :cond_37

    .line 1467
    return-void

    .line 1464
    :cond_37
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v3, "Map size does not match number of entries!"

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist writeNoException()V
    .registers 4

    .line 3203
    invoke-static {p0}, Landroid/app/AppOpsManager;->prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V

    .line 3218
    invoke-static {}, Landroid/os/StrictMode;->hasGatheredViolations()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 3219
    const/16 v0, -0x80

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3220
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3221
    .local v0, "sizePosition":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3222
    invoke-static {p0}, Landroid/os/StrictMode;->writeGatheredViolationsToParcel(Landroid/os/Parcel;)V

    .line 3223
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 3224
    .local v1, "payloadPosition":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3225
    sub-int v2, v1, v0

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3226
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3227
    .end local v0    # "sizePosition":I
    .end local v1    # "payloadPosition":I
    goto :goto_2c

    .line 3228
    :cond_29
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3230
    :goto_2c
    return-void
.end method

.method public final whitelist writeParcelable(Landroid/os/Parcelable;I)V
    .registers 4
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "parcelableFlags"    # I

    .line 2843
    if-nez p1, :cond_7

    .line 2844
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2845
    return-void

    .line 2847
    :cond_7
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    .line 2848
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2849
    return-void
.end method

.method public final whitelist writeParcelableArray([Landroid/os/Parcelable;I)V
    .registers 6
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .line 4669
    .local p1, "value":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_12

    .line 4670
    array-length v0, p1

    .line 4671
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4672
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 4673
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4672
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4675
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 4676
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4678
    :goto_16
    return-void
.end method

.method public final whitelist writeParcelableCreator(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "p"    # Landroid/os/Parcelable;

    .line 2858
    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2859
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2860
    return-void
.end method

.method public final whitelist writeParcelableList(Ljava/util/List;I)V
    .registers 6
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2409
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_7

    .line 2410
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2411
    return-void

    .line 2414
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2415
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2416
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2417
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 2418
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2419
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2421
    :cond_1d
    return-void
.end method

.method public final whitelist writePersistableBundle(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "val"    # Landroid/os/PersistableBundle;

    .line 1567
    if-nez p1, :cond_7

    .line 1568
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    return-void

    .line 1572
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1573
    return-void
.end method

.method public final greylist-max-o writeRawFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "val"    # Ljava/io/FileDescriptor;

    .line 1397
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteFileDescriptor(JLjava/io/FileDescriptor;)V

    .line 1398
    return-void
.end method

.method public final greylist-max-o writeRawFileDescriptorArray([Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "value"    # [Ljava/io/FileDescriptor;

    .line 1407
    if-eqz p1, :cond_12

    .line 1408
    array-length v0, p1

    .line 1409
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 1411
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1413
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 1414
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1416
    :goto_16
    return-void
.end method

.method public final whitelist writeSerializable(Ljava/io/Serializable;)V
    .registers 8
    .param p1, "s"    # Ljava/io/Serializable;

    .line 3046
    if-nez p1, :cond_7

    .line 3047
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3048
    return-void

    .line 3050
    :cond_7
    invoke-interface {p1}, Ljava/io/Serializable;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3051
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3053
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3055
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_17
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3056
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3057
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 3059
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2b

    .line 3064
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    nop

    .line 3065
    return-void

    .line 3060
    :catch_2b
    move-exception v2

    .line 3061
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Landroid/os/BadParcelableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parcelable encountered IOException writing serializable object (name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist writeShortArray([S)V
    .registers 5
    .param p1, "val"    # [S

    .line 1789
    if-eqz p1, :cond_12

    .line 1790
    array-length v0, p1

    .line 1791
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1792
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 1793
    aget-short v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1792
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1795
    .end local v0    # "n":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 1796
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1798
    :goto_16
    return-void
.end method

.method public final whitelist writeSize(Landroid/util/Size;)V
    .registers 3
    .param p1, "val"    # Landroid/util/Size;

    .line 1580
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    return-void
.end method

.method public final whitelist writeSizeF(Landroid/util/SizeF;)V
    .registers 3
    .param p1, "val"    # Landroid/util/SizeF;

    .line 1589
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1590
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1591
    return-void
.end method

.method public final whitelist writeSparseArray(Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 1638
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    if-nez p1, :cond_7

    .line 1639
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    return-void

    .line 1642
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1643
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    const/4 v1, 0x0

    .line 1645
    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_22

    .line 1646
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1648
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1650
    :cond_22
    return-void
.end method

.method public final whitelist writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V
    .registers 5
    .param p1, "val"    # Landroid/util/SparseBooleanArray;

    .line 1653
    if-nez p1, :cond_7

    .line 1654
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    return-void

    .line 1657
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 1658
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    const/4 v1, 0x0

    .line 1660
    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_23

    .line 1661
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1663
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1665
    :cond_23
    return-void
.end method

.method public final greylist-max-o writeSparseIntArray(Landroid/util/SparseIntArray;)V
    .registers 5
    .param p1, "val"    # Landroid/util/SparseIntArray;

    .line 1671
    if-nez p1, :cond_7

    .line 1672
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1673
    return-void

    .line 1675
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 1676
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1677
    const/4 v1, 0x0

    .line 1678
    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_22

    .line 1679
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1681
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1683
    :cond_22
    return-void
.end method

.method public blacklist writeStackTrace(Ljava/lang/Throwable;)V
    .registers 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 3178
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3179
    .local v0, "sizePosition":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3180
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 3181
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v2, v1

    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3182
    .local v2, "truncatedSize":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3183
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v2, :cond_2e

    .line 3184
    const-string v5, "\tat "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3183
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 3186
    .end local v4    # "i":I
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3187
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 3188
    .local v4, "payloadPosition":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3190
    sub-int v5, v4, v0

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3191
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3192
    return-void
.end method

.method public final whitelist writeString(Ljava/lang/String;)V
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .line 1306
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString16(Ljava/lang/String;)V

    .line 1307
    return-void
.end method

.method public final blacklist writeString16(Ljava/lang/String;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .line 1316
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0, p1}, Landroid/os/Parcel$ReadWriteHelper;->writeString16(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1317
    return-void
.end method

.method public final blacklist writeString16Array([Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/String;

    .line 2077
    if-eqz p1, :cond_12

    .line 2078
    array-length v0, p1

    .line 2079
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2080
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 2081
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString16(Ljava/lang/String;)V

    .line 2080
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2083
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 2084
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2086
    :goto_16
    return-void
.end method

.method public blacklist writeString16NoHelper(Ljava/lang/String;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/String;

    .line 1337
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString16(JLjava/lang/String;)V

    .line 1338
    return-void
.end method

.method public final blacklist writeString8(Ljava/lang/String;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .line 1311
    iget-object v0, p0, Landroid/os/Parcel;->mReadWriteHelper:Landroid/os/Parcel$ReadWriteHelper;

    invoke-virtual {v0, p0, p1}, Landroid/os/Parcel$ReadWriteHelper;->writeString8(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1312
    return-void
.end method

.method public final blacklist writeString8Array([Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # [Ljava/lang/String;

    .line 2036
    if-eqz p1, :cond_12

    .line 2037
    array-length v0, p1

    .line 2038
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2039
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 2040
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 2039
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2042
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 2043
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2045
    :goto_16
    return-void
.end method

.method public blacklist writeString8NoHelper(Ljava/lang/String;)V
    .registers 4
    .param p1, "val"    # Ljava/lang/String;

    .line 1332
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteString8(JLjava/lang/String;)V

    .line 1333
    return-void
.end method

.method public final whitelist writeStringArray([Ljava/lang/String;)V
    .registers 2
    .param p1, "val"    # [Ljava/lang/String;

    .line 2022
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString16Array([Ljava/lang/String;)V

    .line 2023
    return-void
.end method

.method public final whitelist writeStringList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2341
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_7

    .line 2342
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2343
    return-void

    .line 2345
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2346
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2347
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2348
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 2349
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2350
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2352
    :cond_1d
    return-void
.end method

.method public greylist-max-o writeStringNoHelper(Ljava/lang/String;)V
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .line 1327
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 1328
    return-void
.end method

.method public final whitelist writeStrongBinder(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "val"    # Landroid/os/IBinder;

    .line 1367
    iget-wide v0, p0, Landroid/os/Parcel;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/os/Parcel;->nativeWriteStrongBinder(JLandroid/os/IBinder;)V

    .line 1368
    return-void
.end method

.method public final whitelist writeStrongInterface(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "val"    # Landroid/os/IInterface;

    .line 1375
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1376
    return-void
.end method

.method public final whitelist writeTypedArray([Landroid/os/Parcelable;I)V
    .registers 6
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([TT;I)V"
        }
    .end annotation

    .line 2443
    .local p1, "val":[Landroid/os/Parcelable;, "[TT;"
    if-eqz p1, :cond_12

    .line 2444
    array-length v0, p1

    .line 2445
    .local v0, "N":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 2447
    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2446
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2449
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_11
    goto :goto_16

    .line 2450
    :cond_12
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2452
    :goto_16
    return-void
.end method

.method public whitelist writeTypedArrayMap(Landroid/util/ArrayMap;I)V
    .registers 6
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;I)V"
        }
    .end annotation

    .line 1521
    .local p1, "val":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-nez p1, :cond_7

    .line 1522
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1523
    return-void

    .line 1525
    :cond_7
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1526
    .local v0, "count":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1527
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_26

    .line 1528
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1527
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1531
    .end local v1    # "i":I
    :cond_26
    return-void
.end method

.method public final whitelist writeTypedList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2268
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2269
    return-void
.end method

.method public whitelist writeTypedList(Ljava/util/List;I)V
    .registers 6
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2316
    .local p1, "val":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p1, :cond_7

    .line 2317
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    return-void

    .line 2320
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2321
    .local v0, "N":I
    const/4 v1, 0x0

    .line 2322
    .local v1, "i":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 2324
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2325
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2327
    :cond_1d
    return-void
.end method

.method public final whitelist writeTypedObject(Landroid/os/Parcelable;I)V
    .registers 4
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)V"
        }
    .end annotation

    .line 2465
    .local p1, "val":Landroid/os/Parcelable;, "TT;"
    if-eqz p1, :cond_a

    .line 2466
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2467
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e

    .line 2469
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2471
    :goto_e
    return-void
.end method

.method public final whitelist writeTypedSparseArray(Landroid/util/SparseArray;I)V
    .registers 6
    .param p2, "parcelableFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2287
    .local p1, "val":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    if-nez p1, :cond_7

    .line 2288
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2289
    return-void

    .line 2291
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2292
    .local v0, "count":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2293
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_24

    .line 2294
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2295
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p0, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2293
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 2297
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method public blacklist writeValue(ILjava/lang/Object;)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "v"    # Ljava/lang/Object;

    .line 2730
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_134

    .line 2830
    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcel: unable to marshal value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2821
    :pswitch_1d
    move-object v0, p2

    check-cast v0, [F

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2822
    goto/16 :goto_132

    .line 2818
    :pswitch_25
    move-object v0, p2

    check-cast v0, [C

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 2819
    goto/16 :goto_132

    .line 2815
    :pswitch_2d
    move-object v0, p2

    check-cast v0, [S

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeShortArray([S)V

    .line 2816
    goto/16 :goto_132

    .line 2812
    :pswitch_35
    move-object v0, p2

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2813
    goto/16 :goto_132

    .line 2809
    :pswitch_41
    move-object v0, p2

    check-cast v0, [D

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 2810
    goto/16 :goto_132

    .line 2806
    :pswitch_49
    move-object v0, p2

    check-cast v0, Landroid/util/SizeF;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeSizeF(Landroid/util/SizeF;)V

    .line 2807
    goto/16 :goto_132

    .line 2803
    :pswitch_51
    move-object v0, p2

    check-cast v0, Landroid/util/Size;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeSize(Landroid/util/Size;)V

    .line 2804
    goto/16 :goto_132

    .line 2746
    :pswitch_59
    move-object v0, p2

    check-cast v0, Landroid/os/PersistableBundle;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 2747
    goto/16 :goto_132

    .line 2785
    :pswitch_61
    move-object v0, p2

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 2786
    goto/16 :goto_132

    .line 2776
    :pswitch_69
    move-object v0, p2

    check-cast v0, [Z

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 2777
    goto/16 :goto_132

    .line 2827
    :pswitch_71
    move-object v0, p2

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2828
    goto/16 :goto_132

    .line 2800
    :pswitch_79
    move-object v0, p2

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2801
    goto/16 :goto_132

    .line 2797
    :pswitch_85
    move-object v0, p2

    check-cast v0, [J

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2798
    goto/16 :goto_132

    .line 2794
    :pswitch_8d
    move-object v0, p2

    check-cast v0, [I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2795
    goto/16 :goto_132

    .line 2824
    :pswitch_95
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 2825
    goto/16 :goto_132

    .line 2791
    :pswitch_9d
    move-object v1, p2

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2792
    goto/16 :goto_132

    .line 2788
    :pswitch_a5
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2789
    goto/16 :goto_132

    .line 2782
    :pswitch_ad
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2783
    goto/16 :goto_132

    .line 2779
    :pswitch_b5
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2780
    goto/16 :goto_132

    .line 2773
    :pswitch_bd
    move-object v0, p2

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 2774
    goto/16 :goto_132

    .line 2770
    :pswitch_c5
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2771
    goto :goto_132

    .line 2767
    :pswitch_cc
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 2768
    goto :goto_132

    .line 2764
    :pswitch_d3
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2765
    goto :goto_132

    .line 2761
    :pswitch_de
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 2762
    goto :goto_132

    .line 2758
    :pswitch_e9
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2759
    goto :goto_132

    .line 2755
    :pswitch_f4
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2756
    goto :goto_132

    .line 2752
    :pswitch_ff
    move-object v0, p2

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    goto :goto_132

    .line 2749
    :pswitch_10a
    move-object v1, p2

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2750
    goto :goto_132

    .line 2743
    :pswitch_111
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2744
    goto :goto_132

    .line 2740
    :pswitch_118
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 2741
    goto :goto_132

    .line 2737
    :pswitch_11f
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    goto :goto_132

    .line 2734
    :pswitch_12a
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2735
    goto :goto_132

    .line 2732
    :pswitch_131
    nop

    .line 2832
    :goto_132
    return-void

    nop

    :pswitch_data_134
    .packed-switch -0x1
        :pswitch_131
        :pswitch_12a
        :pswitch_11f
        :pswitch_118
        :pswitch_111
        :pswitch_10a
        :pswitch_ff
        :pswitch_f4
        :pswitch_e9
        :pswitch_de
        :pswitch_d3
        :pswitch_cc
        :pswitch_c5
        :pswitch_bd
        :pswitch_b5
        :pswitch_ad
        :pswitch_a5
        :pswitch_9d
        :pswitch_95
        :pswitch_8d
        :pswitch_85
        :pswitch_79
        :pswitch_71
        :pswitch_4
        :pswitch_69
        :pswitch_61
        :pswitch_59
        :pswitch_51
        :pswitch_49
        :pswitch_41
        :pswitch_35
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
    .end packed-switch
.end method

.method public final whitelist writeValue(Ljava/lang/Object;)V
    .registers 7
    .param p1, "v"    # Ljava/lang/Object;

    .line 2613
    instance-of v0, p1, Landroid/os/Parcel$LazyValue;

    if-eqz v0, :cond_b

    .line 2614
    move-object v0, p1

    check-cast v0, Landroid/os/Parcel$LazyValue;

    .line 2615
    .local v0, "value":Landroid/os/Parcel$LazyValue;
    invoke-virtual {v0, p0}, Landroid/os/Parcel$LazyValue;->writeToParcel(Landroid/os/Parcel;)V

    .line 2616
    return-void

    .line 2618
    .end local v0    # "value":Landroid/os/Parcel$LazyValue;
    :cond_b
    invoke-static {p1}, Landroid/os/Parcel;->getValueType(Ljava/lang/Object;)I

    move-result v0

    .line 2619
    .local v0, "type":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2620
    invoke-direct {p0, v0}, Landroid/os/Parcel;->isLengthPrefixed(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2622
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 2623
    .local v1, "length":I
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2625
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 2626
    .local v2, "start":I
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeValue(ILjava/lang/Object;)V

    .line 2627
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 2629
    .local v3, "end":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2630
    sub-int v4, v3, v2

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2631
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2632
    .end local v1    # "length":I
    .end local v2    # "start":I
    .end local v3    # "end":I
    goto :goto_3a

    .line 2633
    :cond_37
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeValue(ILjava/lang/Object;)V

    .line 2635
    :goto_3a
    return-void
.end method
