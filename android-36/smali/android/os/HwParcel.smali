.class public Landroid/os/HwParcel;
.super Ljava/lang/Object;
.source "HwParcel.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HwParcel$Status;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_SUCCESS:I = 0x0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "HwParcel"

.field private static final greylist-max-o sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 693
    invoke-static {}, Landroid/os/HwParcel;->native_init()J

    move-result-wide v2

    .line 695
    .local v2, "freeFunction":J
    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    .line 696
    const-class v1, Landroid/os/HwParcel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/os/HwParcel;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 699
    .end local v2    # "freeFunction":J
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/HwParcel;->native_setup(Z)V

    .line 69
    sget-object v0, Landroid/os/HwParcel;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwParcel;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 72
    return-void
.end method

.method private constructor greylist <init>(Z)V
    .registers 5
    .param p1, "allocate"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-direct {p0, p1}, Landroid/os/HwParcel;->native_setup(Z)V

    .line 58
    sget-object v0, Landroid/os/HwParcel;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwParcel;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 61
    return-void
.end method

.method private static final native greylist-max-o native_init()J
.end method

.method private final native greylist-max-o native_setup(Z)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o readBoolVectorAsArray()[Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o readDoubleVectorAsArray()[D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o readFloatVectorAsArray()[F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o readInt16VectorAsArray()[S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o readInt32VectorAsArray()[I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o readInt64VectorAsArray()[J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o readInt8VectorAsArray()[B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native blacklist readNativeHandleAsArray()[Landroid/os/NativeHandle;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o readStringVectorAsArray()[Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o writeBoolVector([Z)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o writeDoubleVector([D)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o writeFloatVector([F)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o writeInt16Vector([S)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o writeInt32Vector([I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o writeInt64Vector([J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o writeInt8Vector([B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native blacklist writeNativeHandleVector([Landroid/os/NativeHandle;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private final native greylist-max-o writeStringVector([Ljava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final native whitelist enforceInterface(Ljava/lang/String;)V
.end method

.method public final native whitelist readBool()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist readBoolVector()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 495
    invoke-direct {p0}, Landroid/os/HwParcel;->readBoolVectorAsArray()[Z

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([Z)[Ljava/lang/Boolean;

    move-result-object v0

    .line 497
    .local v0, "array":[Ljava/lang/Boolean;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native whitelist readBuffer(J)Landroid/os/HwBlob;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist readDouble()D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist readDoubleVector()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 561
    invoke-direct {p0}, Landroid/os/HwParcel;->readDoubleVectorAsArray()[D

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([D)[Ljava/lang/Double;

    move-result-object v0

    .line 563
    .local v0, "array":[Ljava/lang/Double;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native whitelist readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist readEmbeddedHidlMemory(JJJ)Landroid/os/HidlMemory;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist readEmbeddedNativeHandle(JJ)Landroid/os/NativeHandle;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist readFloat()F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist readFloatVector()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 550
    invoke-direct {p0}, Landroid/os/HwParcel;->readFloatVectorAsArray()[F

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([F)[Ljava/lang/Float;

    move-result-object v0

    .line 552
    .local v0, "array":[Ljava/lang/Float;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native whitelist readHidlMemory()Landroid/os/HidlMemory;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist readInt16()S
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist readInt16Vector()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 517
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt16VectorAsArray()[S

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([S)[Ljava/lang/Short;

    move-result-object v0

    .line 519
    .local v0, "array":[Ljava/lang/Short;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native whitelist readInt32()I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist readInt32Vector()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 528
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt32VectorAsArray()[I

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([I)[Ljava/lang/Integer;

    move-result-object v0

    .line 530
    .local v0, "array":[Ljava/lang/Integer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native whitelist readInt64()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist readInt64Vector()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 539
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt64VectorAsArray()[J

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([J)[Ljava/lang/Long;

    move-result-object v0

    .line 541
    .local v0, "array":[Ljava/lang/Long;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native whitelist readInt8()B
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist readInt8Vector()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 506
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt8VectorAsArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([B)[Ljava/lang/Byte;

    move-result-object v0

    .line 508
    .local v0, "array":[Ljava/lang/Byte;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native whitelist readNativeHandle()Landroid/os/NativeHandle;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist readNativeHandleVector()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/NativeHandle;",
            ">;"
        }
    .end annotation

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/HwParcel;->readNativeHandleAsArray()[Landroid/os/NativeHandle;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final native whitelist readString()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist readStringVector()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/HwParcel;->readStringVectorAsArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final native whitelist readStrongBinder()Landroid/os/IHwBinder;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist release()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist releaseTemporaryStorage()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist send()V
.end method

.method public final native whitelist verifySuccess()V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist writeBool(Z)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist writeBoolVector(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 209
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 210
    .local v0, "n":I
    new-array v1, v0, [Z

    .line 211
    .local v1, "array":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 212
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 215
    .end local v2    # "i":I
    :cond_18
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeBoolVector([Z)V

    .line 216
    return-void
.end method

.method public final native whitelist writeBuffer(Landroid/os/HwBlob;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist writeDouble(D)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist writeDoubleVector(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 294
    .local v0, "n":I
    new-array v1, v0, [D

    .line 295
    .local v1, "array":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 296
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 299
    .end local v2    # "i":I
    :cond_18
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeDoubleVector([D)V

    .line 300
    return-void
.end method

.method public final native whitelist writeFloat(F)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist writeFloatVector(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 280
    .local v0, "n":I
    new-array v1, v0, [F

    .line 281
    .local v1, "array":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 282
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 285
    .end local v2    # "i":I
    :cond_18
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeFloatVector([F)V

    .line 286
    return-void
.end method

.method public final native whitelist writeHidlMemory(Landroid/os/HidlMemory;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist writeInt16(S)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist writeInt16Vector(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 237
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 238
    .local v0, "n":I
    new-array v1, v0, [S

    .line 239
    .local v1, "array":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 240
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v1, v2

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 243
    .end local v2    # "i":I
    :cond_18
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeInt16Vector([S)V

    .line 244
    return-void
.end method

.method public final native whitelist writeInt32(I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist writeInt32Vector(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 251
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 252
    .local v0, "n":I
    new-array v1, v0, [I

    .line 253
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 254
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 257
    .end local v2    # "i":I
    :cond_18
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeInt32Vector([I)V

    .line 258
    return-void
.end method

.method public final native whitelist writeInt64(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist writeInt64Vector(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 266
    .local v0, "n":I
    new-array v1, v0, [J

    .line 267
    .local v1, "array":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 268
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 271
    .end local v2    # "i":I
    :cond_18
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeInt64Vector([J)V

    .line 272
    return-void
.end method

.method public final native whitelist writeInt8(B)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist writeInt8Vector(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 224
    .local v0, "n":I
    new-array v1, v0, [B

    .line 225
    .local v1, "array":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 226
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 229
    .end local v2    # "i":I
    :cond_18
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeInt8Vector([B)V

    .line 230
    return-void
.end method

.method public final native whitelist writeInterfaceToken(Ljava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist writeNativeHandle(Landroid/os/NativeHandle;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist writeNativeHandleVector(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/NativeHandle;",
            ">;)V"
        }
    .end annotation

    .line 315
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/NativeHandle;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/NativeHandle;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/NativeHandle;

    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeNativeHandleVector([Landroid/os/NativeHandle;)V

    .line 316
    return-void
.end method

.method public final native whitelist writeStatus(I)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final native whitelist writeString(Ljava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public final whitelist writeStringVector(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 307
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeStringVector([Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public final native whitelist writeStrongBinder(Landroid/os/IHwBinder;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
