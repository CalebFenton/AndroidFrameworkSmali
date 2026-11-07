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


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Debug$MemoryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o HEAP_DALVIK:I = 0x1

.field public static final greylist-max-o HEAP_NATIVE:I = 0x2

.field public static final greylist-max-o HEAP_UNKNOWN:I = 0x0

.field public static final greylist-max-o NUM_CATEGORIES:I = 0x9

.field public static final greylist NUM_DVK_STATS:I = 0xf

.field public static final greylist NUM_OTHER_STATS:I = 0x11

.field public static final greylist-max-o OFFSET_PRIVATE_CLEAN:I = 0x5

.field public static final greylist-max-o OFFSET_PRIVATE_DIRTY:I = 0x3

.field public static final greylist-max-o OFFSET_PSS:I = 0x0

.field public static final greylist-max-o OFFSET_RSS:I = 0x2

.field public static final greylist-max-o OFFSET_SHARED_CLEAN:I = 0x6

.field public static final greylist-max-o OFFSET_SHARED_DIRTY:I = 0x4

.field public static final greylist-max-o OFFSET_SWAPPABLE_PSS:I = 0x1

.field public static final greylist-max-o OFFSET_SWAPPED_OUT:I = 0x7

.field public static final greylist-max-o OFFSET_SWAPPED_OUT_PSS:I = 0x8

.field public static final greylist-max-o OTHER_APK:I = 0x8

.field public static final greylist-max-o OTHER_ART:I = 0xc

.field public static final greylist-max-o OTHER_ART_APP:I = 0x1e

.field public static final greylist-max-o OTHER_ART_BOOT:I = 0x1f

.field public static final greylist-max-o OTHER_ASHMEM:I = 0x3

.field public static final greylist-max-o OTHER_CURSOR:I = 0x2

.field public static final greylist-max-o OTHER_DALVIK_LARGE:I = 0x12

.field public static final greylist-max-o OTHER_DALVIK_NON_MOVING:I = 0x14

.field public static final greylist-max-o OTHER_DALVIK_NORMAL:I = 0x11

.field public static final greylist-max-o OTHER_DALVIK_OTHER:I = 0x0

.field public static final greylist-max-o OTHER_DALVIK_OTHER_ACCOUNTING:I = 0x16

.field public static final blacklist OTHER_DALVIK_OTHER_APP_CODE_CACHE:I = 0x18

.field public static final greylist-max-o OTHER_DALVIK_OTHER_COMPILER_METADATA:I = 0x19

.field public static final greylist-max-o OTHER_DALVIK_OTHER_INDIRECT_REFERENCE_TABLE:I = 0x1a

.field public static final greylist-max-o OTHER_DALVIK_OTHER_LINEARALLOC:I = 0x15

.field public static final blacklist OTHER_DALVIK_OTHER_ZYGOTE_CODE_CACHE:I = 0x17

.field public static final greylist-max-o OTHER_DALVIK_ZYGOTE:I = 0x13

.field public static final greylist-max-o OTHER_DEX:I = 0xa

.field public static final greylist-max-o OTHER_DEX_APP_DEX:I = 0x1c

.field public static final greylist-max-o OTHER_DEX_APP_VDEX:I = 0x1d

.field public static final greylist-max-o OTHER_DEX_BOOT_VDEX:I = 0x1b

.field public static final greylist-max-o OTHER_DVK_STAT_ART_END:I = 0xe

.field public static final greylist-max-o OTHER_DVK_STAT_ART_START:I = 0xd

.field public static final greylist-max-o OTHER_DVK_STAT_DALVIK_END:I = 0x3

.field public static final greylist-max-o OTHER_DVK_STAT_DALVIK_OTHER_END:I = 0x9

.field public static final greylist-max-o OTHER_DVK_STAT_DALVIK_OTHER_START:I = 0x4

.field public static final greylist-max-o OTHER_DVK_STAT_DALVIK_START:I = 0x0

.field public static final greylist-max-o OTHER_DVK_STAT_DEX_END:I = 0xc

.field public static final greylist-max-o OTHER_DVK_STAT_DEX_START:I = 0xa

.field public static final greylist-max-o OTHER_GL:I = 0xf

.field public static final greylist-max-o OTHER_GL_DEV:I = 0x4

.field public static final greylist-max-o OTHER_GRAPHICS:I = 0xe

.field public static final greylist-max-o OTHER_JAR:I = 0x7

.field public static final greylist-max-o OTHER_OAT:I = 0xb

.field public static final greylist-max-o OTHER_OTHER_MEMTRACK:I = 0x10

.field public static final greylist-max-o OTHER_SO:I = 0x6

.field public static final greylist-max-o OTHER_STACK:I = 0x1

.field public static final greylist-max-o OTHER_TTF:I = 0x9

.field public static final greylist-max-o OTHER_UNKNOWN_DEV:I = 0x5

.field public static final greylist-max-o OTHER_UNKNOWN_MAP:I = 0xd


# instance fields
.field public greylist dalvikPrivateClean:I

.field public whitelist dalvikPrivateDirty:I

.field public whitelist dalvikPss:I

.field public greylist-max-r dalvikRss:I

.field public greylist dalvikSharedClean:I

.field public whitelist dalvikSharedDirty:I

.field public greylist dalvikSwappablePss:I

.field public greylist dalvikSwappedOut:I

.field public greylist-max-r dalvikSwappedOutPss:I

.field public greylist-max-r hasSwappedOutPss:Z

.field public greylist nativePrivateClean:I

.field public whitelist nativePrivateDirty:I

.field public whitelist nativePss:I

.field public greylist-max-r nativeRss:I

.field public greylist nativeSharedClean:I

.field public whitelist nativeSharedDirty:I

.field public greylist nativeSwappablePss:I

.field public greylist nativeSwappedOut:I

.field public greylist-max-r nativeSwappedOutPss:I

.field public greylist otherPrivateClean:I

.field public whitelist otherPrivateDirty:I

.field public whitelist otherPss:I

.field public greylist-max-r otherRss:I

.field public greylist otherSharedClean:I

.field public whitelist otherSharedDirty:I

.field private greylist otherStats:[I

.field public greylist otherSwappablePss:I

.field public greylist otherSwappedOut:I

.field public greylist-max-r otherSwappedOutPss:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 980
    new-instance v0, Landroid/os/Debug$MemoryInfo$1;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo$1;-><init>()V

    sput-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/16 v0, 0x120

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 359
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/16 v0, 0x120

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 990
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 991
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/Debug-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Debug$MemoryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist getOtherLabel(I)Ljava/lang/String;
    .registers 2
    .param p0, "which"    # I

    .line 533
    packed-switch p0, :pswitch_data_66

    .line 566
    const-string v0, "????"

    return-object v0

    .line 565
    :pswitch_6
    const-string v0, ".Boot art"

    return-object v0

    .line 564
    :pswitch_9
    const-string v0, ".App art"

    return-object v0

    .line 563
    :pswitch_c
    const-string v0, ".App vdex"

    return-object v0

    .line 562
    :pswitch_f
    const-string v0, ".App dex"

    return-object v0

    .line 561
    :pswitch_12
    const-string v0, ".Boot vdex"

    return-object v0

    .line 560
    :pswitch_15
    const-string v0, ".IndirectRef"

    return-object v0

    .line 559
    :pswitch_18
    const-string v0, ".CompilerMetadata"

    return-object v0

    .line 558
    :pswitch_1b
    const-string v0, ".AppJIT"

    return-object v0

    .line 557
    :pswitch_1e
    const-string v0, ".ZygoteJIT"

    return-object v0

    .line 556
    :pswitch_21
    const-string v0, ".GC"

    return-object v0

    .line 555
    :pswitch_24
    const-string v0, ".LinearAlloc"

    return-object v0

    .line 554
    :pswitch_27
    const-string v0, ".NonMoving"

    return-object v0

    .line 553
    :pswitch_2a
    const-string v0, ".Zygote"

    return-object v0

    .line 552
    :pswitch_2d
    const-string v0, ".LOS"

    return-object v0

    .line 551
    :pswitch_30
    const-string v0, ".Heap"

    return-object v0

    .line 550
    :pswitch_33
    const-string v0, "Other mtrack"

    return-object v0

    .line 549
    :pswitch_36
    const-string v0, "GL mtrack"

    return-object v0

    .line 548
    :pswitch_39
    const-string v0, "EGL mtrack"

    return-object v0

    .line 547
    :pswitch_3c
    const-string v0, "Other mmap"

    return-object v0

    .line 546
    :pswitch_3f
    const-string v0, ".art mmap"

    return-object v0

    .line 545
    :pswitch_42
    const-string v0, ".oat mmap"

    return-object v0

    .line 544
    :pswitch_45
    const-string v0, ".dex mmap"

    return-object v0

    .line 543
    :pswitch_48
    const-string v0, ".ttf mmap"

    return-object v0

    .line 542
    :pswitch_4b
    const-string v0, ".apk mmap"

    return-object v0

    .line 541
    :pswitch_4e
    const-string v0, ".jar mmap"

    return-object v0

    .line 540
    :pswitch_51
    const-string v0, ".so mmap"

    return-object v0

    .line 539
    :pswitch_54
    const-string v0, "Other dev"

    return-object v0

    .line 538
    :pswitch_57
    const-string v0, "Gfx dev"

    return-object v0

    .line 537
    :pswitch_5a
    const-string v0, "Ashmem"

    return-object v0

    .line 536
    :pswitch_5d
    const-string v0, "Cursor"

    return-object v0

    .line 535
    :pswitch_60
    const-string v0, "Stack"

    return-object v0

    .line 534
    :pswitch_63
    const-string v0, "Dalvik Other"

    return-object v0

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMemoryStat(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "statName"    # Ljava/lang/String;

    .line 652
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c4

    :cond_7
    goto :goto_6c

    :sswitch_8
    const-string/jumbo v0, "summary.total-swap"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_6d

    :sswitch_14
    const-string/jumbo v0, "summary.graphics"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_6d

    :sswitch_1f
    const-string/jumbo v0, "summary.code"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_6d

    :sswitch_2a
    const-string/jumbo v0, "summary.system"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto :goto_6d

    :sswitch_35
    const-string/jumbo v0, "summary.stack"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_6d

    :sswitch_40
    const-string/jumbo v0, "summary.native-heap"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_6d

    :sswitch_4b
    const-string/jumbo v0, "summary.private-other"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto :goto_6d

    :sswitch_56
    const-string/jumbo v0, "summary.total-pss"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_6d

    :sswitch_61
    const-string/jumbo v0, "summary.java-heap"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_6d

    :goto_6c
    const/4 v0, -0x1

    :goto_6d
    packed-switch v0, :pswitch_data_ea

    .line 672
    const/4 v0, 0x0

    return-object v0

    .line 670
    :pswitch_72
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 668
    :pswitch_7b
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 666
    :pswitch_84
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 664
    :pswitch_8d
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 662
    :pswitch_96
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 660
    :pswitch_9f
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 658
    :pswitch_a8
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 656
    :pswitch_b1
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 654
    :pswitch_ba
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_c4
    .sparse-switch
        -0x61279191 -> :sswitch_61
        -0x4e9a1b81 -> :sswitch_56
        -0x40ca2e02 -> :sswitch_4b
        -0x3dffd466 -> :sswitch_40
        -0x283e7dc0 -> :sswitch_35
        0x20bda977 -> :sswitch_2a
        0x61c51735 -> :sswitch_1f
        0x78312fd3 -> :sswitch_14
        0x7b5815c4 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_ba
        :pswitch_b1
        :pswitch_a8
        :pswitch_9f
        :pswitch_96
        :pswitch_8d
        :pswitch_84
        :pswitch_7b
        :pswitch_72
    .end packed-switch
.end method

.method public whitelist getMemoryStats()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 683
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 684
    .local v0, "stats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.java-heap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.native-heap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.stack"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.graphics"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryPrivateOther()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.private-other"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummarySystem()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.system"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalPss()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.total-pss"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwap()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary.total-swap"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    return-object v0
.end method

.method public greylist getOtherPrivate(I)I
    .registers 4
    .param p1, "which"    # I

    .line 512
    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getOtherPrivateClean(I)I
    .registers 4
    .param p1, "which"    # I

    .line 506
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public greylist getOtherPrivateDirty(I)I
    .registers 4
    .param p1, "which"    # I

    .line 495
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public greylist getOtherPss(I)I
    .registers 4
    .param p1, "which"    # I

    .line 479
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherRss(I)I
    .registers 4
    .param p1, "which"    # I

    .line 489
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherSharedClean(I)I
    .registers 4
    .param p1, "which"    # I

    .line 517
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public greylist getOtherSharedDirty(I)I
    .registers 4
    .param p1, "which"    # I

    .line 501
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherSwappablePss(I)I
    .registers 4
    .param p1, "which"    # I

    .line 484
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherSwappedOut(I)I
    .registers 4
    .param p1, "which"    # I

    .line 522
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getOtherSwappedOutPss(I)I
    .registers 4
    .param p1, "which"    # I

    .line 527
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    mul-int/lit8 v1, p1, 0x9

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public greylist getSummaryCode()I
    .registers 3

    .line 735
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    .line 736
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 737
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 739
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 740
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 741
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 742
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 735
    return v0
.end method

.method public blacklist getSummaryCodeRss()I
    .registers 3

    .line 828
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v0

    .line 829
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 830
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 831
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 833
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 834
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 835
    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 828
    return v0
.end method

.method public greylist getSummaryGraphics()I
    .registers 3

    .line 772
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v0

    .line 773
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 774
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 772
    return v0
.end method

.method public blacklist getSummaryGraphicsRss()I
    .registers 3

    .line 851
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v0

    .line 852
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 853
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 851
    return v0
.end method

.method public greylist getSummaryJavaHeap()I
    .registers 3

    .line 712
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivate(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getSummaryJavaHeapRss()I
    .registers 3

    .line 811
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist getSummaryNativeHeap()I
    .registers 2

    .line 725
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    return v0
.end method

.method public blacklist getSummaryNativeHeapRss()I
    .registers 2

    .line 819
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    return v0
.end method

.method public greylist getSummaryPrivateOther()I
    .registers 3

    .line 784
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v0

    .line 785
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v1

    add-int/2addr v0, v1

    .line 786
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeap()I

    move-result v1

    sub-int/2addr v0, v1

    .line 787
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeap()I

    move-result v1

    sub-int/2addr v0, v1

    .line 788
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCode()I

    move-result v1

    sub-int/2addr v0, v1

    .line 789
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStack()I

    move-result v1

    sub-int/2addr v0, v1

    .line 790
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphics()I

    move-result v1

    sub-int/2addr v0, v1

    .line 784
    return v0
.end method

.method public greylist getSummaryStack()I
    .registers 2

    .line 756
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSummaryStackRss()I
    .registers 2

    .line 843
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Debug$MemoryInfo;->getOtherRss(I)I

    move-result v0

    return v0
.end method

.method public greylist getSummarySystem()I
    .registers 3

    .line 801
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    .line 802
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v1

    sub-int/2addr v0, v1

    .line 803
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v1

    sub-int/2addr v0, v1

    .line 801
    return v0
.end method

.method public greylist-max-o getSummaryTotalPss()I
    .registers 2

    .line 875
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSummaryTotalSwap()I
    .registers 2

    .line 890
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getSummaryTotalSwapPss()I
    .registers 2

    .line 900
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v0

    return v0
.end method

.method public blacklist getSummaryUnknownRss()I
    .registers 3

    .line 862
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    move-result v0

    .line 863
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryJavaHeapRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 864
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryNativeHeapRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 865
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryCodeRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 866
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryStackRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 867
    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getSummaryGraphicsRss()I

    move-result v1

    sub-int/2addr v0, v1

    .line 862
    return v0
.end method

.method public whitelist getTotalPrivateClean()I
    .registers 3

    .line 450
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalPrivateDirty()I
    .registers 3

    .line 436
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalPss()I
    .registers 3

    .line 404
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getTotalRss()I
    .registers 3

    .line 429
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherRss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalSharedClean()I
    .registers 3

    .line 457
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalSharedDirty()I
    .registers 3

    .line 443
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist getTotalSwappablePss()I
    .registers 3

    .line 422
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getTotalSwappedOut()I
    .registers 3

    .line 465
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o getTotalSwappedOutPss()I
    .registers 3

    .line 473
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist getTotalUss()I
    .registers 3

    .line 412
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o hasSwappedOutPss()Z
    .registers 2

    .line 909
    iget-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 955
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    .line 956
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a4

    const/4 v0, 0x1

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    iput-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    .line 978
    return-void
.end method

.method public blacklist set(Landroid/os/Debug$MemoryInfo;)V
    .registers 6
    .param p1, "other"    # Landroid/os/Debug$MemoryInfo;

    .line 365
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    .line 366
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    .line 367
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    .line 368
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    .line 369
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    .line 370
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    .line 371
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    .line 372
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    .line 373
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    .line 375
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    .line 376
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    .line 377
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    .line 378
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    .line 379
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    .line 380
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    .line 381
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    .line 382
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    .line 383
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    .line 385
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    .line 386
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    .line 387
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherRss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherRss:I

    .line 388
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    .line 389
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    .line 390
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    .line 391
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    .line 392
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    .line 393
    iget v0, p1, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    iput v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    .line 395
    iget-boolean v0, p1, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    iput-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    .line 397
    iget-object v0, p1, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    iget-object v1, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    iget-object v2, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 917
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikRss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOutPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 926
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 927
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeRss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 929
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 936
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherRss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    iget-boolean v0, p0, Landroid/os/Debug$MemoryInfo;->hasSwappedOutPss:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 944
    iget v0, p0, Landroid/os/Debug$MemoryInfo;->otherSwappedOutPss:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    iget-object v0, p0, Landroid/os/Debug$MemoryInfo;->otherStats:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 946
    return-void
.end method
