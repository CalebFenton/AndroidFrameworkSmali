.class public Landroid/os/Debug$MemoryInfo;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemoryInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$MemoryInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Debug$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEAP_DALVIK:I = 0x1

.field public static final HEAP_NATIVE:I = 0x2

.field public static final HEAP_UNKNOWN:I = 0x0

.field public static final NUM_CATEGORIES:I = 0x7

.field public static final NUM_DVK_STATS:I = 0x8

.field public static final NUM_OTHER_STATS:I = 0x11

.field public static final OTHER_APK:I = 0x8

.field public static final OTHER_ART:I = 0xc

.field public static final OTHER_ASHMEM:I = 0x3

.field public static final OTHER_CURSOR:I = 0x2

.field public static final OTHER_DALVIK_ACCOUNTING:I = 0x14

.field public static final OTHER_DALVIK_CODE_CACHE:I = 0x15

.field public static final OTHER_DALVIK_INDIRECT_REFERENCE_TABLE:I = 0x18

.field public static final OTHER_DALVIK_LARGE:I = 0x12

.field public static final OTHER_DALVIK_LINEARALLOC:I = 0x13

.field public static final OTHER_DALVIK_NON_MOVING:I = 0x17

.field public static final OTHER_DALVIK_NORMAL:I = 0x11

.field public static final OTHER_DALVIK_OTHER:I = 0x0

.field public static final OTHER_DALVIK_ZYGOTE:I = 0x16

.field public static final OTHER_DEX:I = 0xa

.field public static final OTHER_GL:I = 0xf

.field public static final OTHER_GL_DEV:I = 0x4

.field public static final OTHER_GRAPHICS:I = 0xe

.field public static final OTHER_JAR:I = 0x7

.field public static final OTHER_OAT:I = 0xb

.field public static final OTHER_OTHER_MEMTRACK:I = 0x10

.field public static final OTHER_SO:I = 0x6

.field public static final OTHER_STACK:I = 0x1

.field public static final OTHER_TTF:I = 0x9

.field public static final OTHER_UNKNOWN_DEV:I = 0x5

.field public static final OTHER_UNKNOWN_MAP:I = 0xd

.field public static final offsetPrivateClean:I = 0x4

.field public static final offsetPrivateDirty:I = 0x2

.field public static final offsetPss:I = 0x0

.field public static final offsetSharedClean:I = 0x5

.field public static final offsetSharedDirty:I = 0x3

.field public static final offsetSwappablePss:I = 0x1

.field public static final offsetSwappedOut:I = 0x6


# instance fields
.field public dalvikPrivateClean:I

.field public dalvikPrivateDirty:I

.field public dalvikPss:I

.field public dalvikSharedClean:I

.field public dalvikSharedDirty:I

.field public dalvikSwappablePss:I

.field public dalvikSwappedOut:I

.field public nativePrivateClean:I

.field public nativePrivateDirty:I

.field public nativePss:I

.field public nativeSharedClean:I

.field public nativeSharedDirty:I

.field public nativeSwappablePss:I

.field public nativeSwappedOut:I

.field public otherPrivateClean:I

.field public otherPrivateDirty:I

.field public otherPss:I

.field public otherSharedClean:I

.field public otherSharedDirty:I

.field private otherStats:[I

.field public otherSwappablePss:I

.field public otherSwappedOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 695
    new-instance v0, Landroid/os/Debug$MemoryInfo$1;

    #@2
    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 114
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 255
    const/16 v0, 0xaf

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@9
    .line 257
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 255
    const/16 v0, 0xaf

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@9
    .line 705
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@c
    .line 704
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/Debug$MemoryInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/Debug$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method

.method public static getOtherLabel(I)Ljava/lang/String;
    .locals 1
    .param p0, "which"    # I

    #@0
    .prologue
    .line 363
    packed-switch p0, :pswitch_data_0

    #@3
    .line 389
    const-string/jumbo v0, "????"

    #@6
    return-object v0

    #@7
    .line 364
    :pswitch_0
    const-string/jumbo v0, "Dalvik Other"

    #@a
    return-object v0

    #@b
    .line 365
    :pswitch_1
    const-string/jumbo v0, "Stack"

    #@e
    return-object v0

    #@f
    .line 366
    :pswitch_2
    const-string/jumbo v0, "Cursor"

    #@12
    return-object v0

    #@13
    .line 367
    :pswitch_3
    const-string/jumbo v0, "Ashmem"

    #@16
    return-object v0

    #@17
    .line 368
    :pswitch_4
    const-string/jumbo v0, "Gfx dev"

    #@1a
    return-object v0

    #@1b
    .line 369
    :pswitch_5
    const-string/jumbo v0, "Other dev"

    #@1e
    return-object v0

    #@1f
    .line 370
    :pswitch_6
    const-string/jumbo v0, ".so mmap"

    #@22
    return-object v0

    #@23
    .line 371
    :pswitch_7
    const-string/jumbo v0, ".jar mmap"

    #@26
    return-object v0

    #@27
    .line 372
    :pswitch_8
    const-string/jumbo v0, ".apk mmap"

    #@2a
    return-object v0

    #@2b
    .line 373
    :pswitch_9
    const-string/jumbo v0, ".ttf mmap"

    #@2e
    return-object v0

    #@2f
    .line 374
    :pswitch_a
    const-string/jumbo v0, ".dex mmap"

    #@32
    return-object v0

    #@33
    .line 375
    :pswitch_b
    const-string/jumbo v0, ".oat mmap"

    #@36
    return-object v0

    #@37
    .line 376
    :pswitch_c
    const-string/jumbo v0, ".art mmap"

    #@3a
    return-object v0

    #@3b
    .line 377
    :pswitch_d
    const-string/jumbo v0, "Other mmap"

    #@3e
    return-object v0

    #@3f
    .line 378
    :pswitch_e
    const-string/jumbo v0, "EGL mtrack"

    #@42
    return-object v0

    #@43
    .line 379
    :pswitch_f
    const-string/jumbo v0, "GL mtrack"

    #@46
    return-object v0

    #@47
    .line 380
    :pswitch_10
    const-string/jumbo v0, "Other mtrack"

    #@4a
    return-object v0

    #@4b
    .line 381
    :pswitch_11
    const-string/jumbo v0, ".Heap"

    #@4e
    return-object v0

    #@4f
    .line 382
    :pswitch_12
    const-string/jumbo v0, ".LOS"

    #@52
    return-object v0

    #@53
    .line 383
    :pswitch_13
    const-string/jumbo v0, ".LinearAlloc"

    #@56
    return-object v0

    #@57
    .line 384
    :pswitch_14
    const-string/jumbo v0, ".GC"

    #@5a
    return-object v0

    #@5b
    .line 385
    :pswitch_15
    const-string/jumbo v0, ".JITCache"

    #@5e
    return-object v0

    #@5f
    .line 386
    :pswitch_16
    const-string/jumbo v0, ".Zygote"

    #@62
    return-object v0

    #@63
    .line 387
    :pswitch_17
    const-string/jumbo v0, ".NonMoving"

    #@66
    return-object v0

    #@67
    .line 388
    :pswitch_18
    const-string/jumbo v0, ".IndirectRef"

    #@6a
    return-object v0

    #@6b
    .line 363
    nop

    #@6c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 642
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMemoryStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "statName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 475
    const-string/jumbo v0, "summary.java-heap"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 477
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    #@c
    move-result v0

    #@d
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0

    #@12
    .line 475
    :cond_0
    const-string/jumbo v0, "summary.native-heap"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 479
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    #@1e
    move-result v0

    #@1f
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0

    #@24
    .line 475
    :cond_1
    const-string/jumbo v0, "summary.code"

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_2

    #@2d
    .line 481
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    #@30
    move-result v0

    #@31
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0

    #@36
    .line 475
    :cond_2
    const-string/jumbo v0, "summary.stack"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_3

    #@3f
    .line 483
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    #@42
    move-result v0

    #@43
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    return-object v0

    #@48
    .line 475
    :cond_3
    const-string/jumbo v0, "summary.graphics"

    #@4b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_4

    #@51
    .line 485
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    #@54
    move-result v0

    #@55
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    return-object v0

    #@5a
    .line 475
    :cond_4
    const-string/jumbo v0, "summary.private-other"

    #@5d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v0

    #@61
    if-eqz v0, :cond_5

    #@63
    .line 487
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    #@66
    move-result v0

    #@67
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    return-object v0

    #@6c
    .line 475
    :cond_5
    const-string/jumbo v0, "summary.system"

    #@6f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_6

    #@75
    .line 489
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    #@78
    move-result v0

    #@79
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7c
    move-result-object v0

    #@7d
    return-object v0

    #@7e
    .line 475
    :cond_6
    const-string/jumbo v0, "summary.total-pss"

    #@81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_7

    #@87
    .line 491
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    #@8a
    move-result v0

    #@8b
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    return-object v0

    #@90
    .line 475
    :cond_7
    const-string/jumbo v0, "summary.total-swap"

    #@93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v0

    #@97
    if-eqz v0, :cond_8

    #@99
    .line 493
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    #@9c
    move-result v0

    #@9d
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    return-object v0

    #@a2
    .line 495
    :cond_8
    const/4 v0, 0x0

    #@a3
    return-object v0
.end method

.method public getMemoryStats()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 506
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 507
    .local v0, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "summary.java-heap"

    #@8
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    #@b
    move-result v2

    #@c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 508
    const-string/jumbo v1, "summary.native-heap"

    #@16
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    #@19
    move-result v2

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 509
    const-string/jumbo v1, "summary.code"

    #@24
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    #@27
    move-result v2

    #@28
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 510
    const-string/jumbo v1, "summary.stack"

    #@32
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    #@35
    move-result v2

    #@36
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    .line 511
    const-string/jumbo v1, "summary.graphics"

    #@40
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    #@43
    move-result v2

    #@44
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 512
    const-string/jumbo v1, "summary.private-other"

    #@4e
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    #@51
    move-result v2

    #@52
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 513
    const-string/jumbo v1, "summary.system"

    #@5c
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    #@5f
    move-result v2

    #@60
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 514
    const-string/jumbo v1, "summary.total-pss"

    #@6a
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    #@6d
    move-result v2

    #@6e
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 515
    const-string/jumbo v1, "summary.total-swap"

    #@78
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    #@7b
    move-result v2

    #@7c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 516
    return-object v0
.end method

.method public getOtherPrivate(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 348
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getOtherPrivateClean(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 343
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x7

    #@4
    add-int/lit8 v1, v1, 0x4

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherPrivateDirty(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 333
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x7

    #@4
    add-int/lit8 v1, v1, 0x2

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherPss(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x7

    #@4
    add-int/lit8 v1, v1, 0x0

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherSharedClean(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 353
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x7

    #@4
    add-int/lit8 v1, v1, 0x5

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherSharedDirty(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x7

    #@4
    add-int/lit8 v1, v1, 0x3

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherSwappablePss(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x7

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getOtherSwappedOut(I)I
    .locals 2
    .param p1, "which"    # I

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@2
    mul-int/lit8 v1, p1, 0x7

    #@4
    add-int/lit8 v1, v1, 0x6

    #@6
    aget v0, v0, v1

    #@8
    return v0
.end method

.method public getSummaryCode()I
    .locals 2

    #@0
    .prologue
    .line 555
    const/4 v0, 0x6

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@4
    move-result v0

    #@5
    .line 556
    const/4 v1, 0x7

    #@6
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@9
    move-result v1

    #@a
    .line 555
    add-int/2addr v0, v1

    #@b
    .line 557
    const/16 v1, 0x8

    #@d
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@10
    move-result v1

    #@11
    .line 555
    add-int/2addr v0, v1

    #@12
    .line 558
    const/16 v1, 0x9

    #@14
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@17
    move-result v1

    #@18
    .line 555
    add-int/2addr v0, v1

    #@19
    .line 559
    const/16 v1, 0xa

    #@1b
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@1e
    move-result v1

    #@1f
    .line 555
    add-int/2addr v0, v1

    #@20
    .line 560
    const/16 v1, 0xb

    #@22
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@25
    move-result v1

    #@26
    .line 555
    add-int/2addr v0, v1

    #@27
    return v0
.end method

.method public getSummaryGraphics()I
    .locals 2

    #@0
    .prologue
    .line 588
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@4
    move-result v0

    #@5
    .line 589
    const/16 v1, 0xe

    #@7
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@a
    move-result v1

    #@b
    .line 588
    add-int/2addr v0, v1

    #@c
    .line 590
    const/16 v1, 0xf

    #@e
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@11
    move-result v1

    #@12
    .line 588
    add-int/2addr v0, v1

    #@13
    return v0
.end method

.method public getSummaryJavaHeap()I
    .locals 2

    #@0
    .prologue
    .line 534
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@2
    const/16 v1, 0xc

    #@4
    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getSummaryNativeHeap()I
    .locals 1

    #@0
    .prologue
    .line 546
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@2
    return v0
.end method

.method public getSummaryPrivateOther()I
    .locals 2

    #@0
    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@3
    move-result v0

    #@4
    .line 600
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@7
    move-result v1

    #@8
    .line 599
    add-int/2addr v0, v1

    #@9
    .line 601
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    #@c
    move-result v1

    #@d
    .line 599
    sub-int/2addr v0, v1

    #@e
    .line 602
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    #@11
    move-result v1

    #@12
    .line 599
    sub-int/2addr v0, v1

    #@13
    .line 603
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    #@16
    move-result v1

    #@17
    .line 599
    sub-int/2addr v0, v1

    #@18
    .line 604
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    #@1b
    move-result v1

    #@1c
    .line 599
    sub-int/2addr v0, v1

    #@1d
    .line 605
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    #@20
    move-result v1

    #@21
    .line 599
    sub-int/2addr v0, v1

    #@22
    return v0
.end method

.method public getSummaryStack()I
    .locals 1

    #@0
    .prologue
    .line 573
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getSummarySystem()I
    .locals 2

    #@0
    .prologue
    .line 615
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@3
    move-result v0

    #@4
    .line 616
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    #@7
    move-result v1

    #@8
    .line 615
    sub-int/2addr v0, v1

    #@9
    .line 617
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    #@c
    move-result v1

    #@d
    .line 615
    sub-int/2addr v0, v1

    #@e
    return v0
.end method

.method public getSummaryTotalPss()I
    .locals 1

    #@0
    .prologue
    .line 625
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSummaryTotalSwap()I
    .locals 1

    #@0
    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getTotalPrivateClean()I
    .locals 2

    #@0
    .prologue
    .line 301
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalPrivateDirty()I
    .locals 2

    #@0
    .prologue
    .line 287
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalPss()I
    .locals 2

    #@0
    .prologue
    .line 264
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalSharedClean()I
    .locals 2

    #@0
    .prologue
    .line 308
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalSharedDirty()I
    .locals 2

    #@0
    .prologue
    .line 294
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalSwappablePss()I
    .locals 2

    #@0
    .prologue
    .line 280
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalSwappedOut()I
    .locals 2

    #@0
    .prologue
    .line 316
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@4
    add-int/2addr v0, v1

    #@5
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    #@7
    add-int/2addr v0, v1

    #@8
    return v0
.end method

.method public getTotalUss()I
    .locals 2

    #@0
    .prologue
    .line 271
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@2
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@4
    add-int/2addr v0, v1

    #@5
    .line 272
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@7
    .line 271
    add-int/2addr v0, v1

    #@8
    .line 272
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@a
    .line 271
    add-int/2addr v0, v1

    #@b
    .line 273
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@d
    .line 271
    add-int/2addr v0, v1

    #@e
    .line 273
    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@10
    .line 271
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@6
    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@c
    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@12
    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@18
    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@1e
    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@24
    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@2a
    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@30
    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@36
    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@3c
    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3f
    move-result v0

    #@40
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@42
    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@48
    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4b
    move-result v0

    #@4c
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@4e
    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@51
    move-result v0

    #@52
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@54
    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@57
    move-result v0

    #@58
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@5a
    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5d
    move-result v0

    #@5e
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@60
    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v0

    #@64
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@66
    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@69
    move-result v0

    #@6a
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@6c
    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6f
    move-result v0

    #@70
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@72
    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@75
    move-result v0

    #@76
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@78
    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v0

    #@7c
    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    #@7e
    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@81
    move-result-object v0

    #@82
    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@84
    .line 670
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 646
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 647
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 648
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 649
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 650
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 651
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 652
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 653
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 654
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2d
    .line 655
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    .line 656
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    .line 657
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 658
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    #@3e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 659
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@46
    .line 660
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    #@48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4b
    .line 661
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    #@4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@50
    .line 662
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    #@52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@55
    .line 663
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    #@57
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5a
    .line 664
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    #@5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5f
    .line 665
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    #@61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 666
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    #@66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    .line 667
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    #@6b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@6e
    .line 645
    return-void
.end method
