.class public final Landroid/content/res/ApkAssets;
.super Ljava/lang/Object;
.source "ApkAssets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ApkAssets$FormatType;,
        Landroid/content/res/ApkAssets$PropertyFlags;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist FORMAT_APK:I = 0x0

.field private static final blacklist FORMAT_ARSC:I = 0x2

.field private static final blacklist FORMAT_DIR:I = 0x3

.field private static final blacklist FORMAT_IDMAP:I = 0x1

.field public static final blacklist PROPERTY_DISABLE_INCREMENTAL_HARDENING:I = 0x10

.field public static final blacklist PROPERTY_DYNAMIC:I = 0x2

.field public static final blacklist PROPERTY_LOADER:I = 0x4

.field public static final blacklist PROPERTY_ONLY_OVERLAYABLES:I = 0x20

.field private static final blacklist PROPERTY_OVERLAY:I = 0x8

.field public static final blacklist PROPERTY_SYSTEM:I = 0x1

.field private static final blacklist UPTODATE_ALWAYS_TRUE:I = 0x2

.field private static final blacklist UPTODATE_FALSE:I = 0x0

.field private static final blacklist UPTODATE_TRUE:I = 0x1


# instance fields
.field private final blacklist mAssets:Landroid/content/res/loader/AssetsProvider;

.field private final blacklist mFlags:I

.field private final blacklist mIsOverlay:Z

.field private blacklist mName:Ljava/lang/String;

.field private greylist-max-o mNativePtr:J

.field private blacklist mPreviousUpToDateResult:I

.field private greylist-max-o mStringBlock:Landroid/content/res/StringBlock;


# direct methods
.method private constructor blacklist <init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V
    .registers 6
    .param p1, "format"    # I
    .param p2, "flags"    # I
    .param p3, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .param p4, "name"    # Ljava/lang/String;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    .line 354
    iput p2, p0, Landroid/content/res/ApkAssets;->mFlags:I

    .line 355
    iput-object p3, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    .line 356
    if-ne p1, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Landroid/content/res/ApkAssets;->mIsOverlay:Z

    .line 358
    return-void
.end method

.method private constructor blacklist <init>(ILandroid/content/res/loader/AssetsProvider;)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "assets"    # Landroid/content/res/loader/AssetsProvider;

    .line 347
    const/4 v0, 0x0

    const-string v1, "empty"

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 348
    invoke-static {p1, p2}, Landroid/content/res/ApkAssets;->nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 350
    return-void
.end method

.method private constructor blacklist <init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .registers 10
    .param p1, "format"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "friendlyName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1, p4, p5, p3}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 330
    const-string v0, "fd"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    const-string v0, "friendlyName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/ApkAssets;->nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 333
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 334
    return-void
.end method

.method private constructor blacklist <init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V
    .registers 14
    .param p1, "format"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "friendlyName"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p6, "length"    # J
    .param p8, "flags"    # I
    .param p9, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    invoke-direct {p0, p1, p8, p9, p3}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 340
    const-string v0, "fd"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 341
    const-string v0, "friendlyName"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    invoke-static/range {p1 .. p9}, Landroid/content/res/ApkAssets;->nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 343
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 344
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V
    .registers 9
    .param p1, "format"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/content/res/ApkAssets;-><init>(IILandroid/content/res/loader/AssetsProvider;Ljava/lang/String;)V

    .line 321
    const-string/jumbo v0, "path"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    invoke-static {p1, p2, p3, p4}, Landroid/content/res/ApkAssets;->nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 323
    new-instance v0, Landroid/content/res/StringBlock;

    iget-wide v1, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/content/res/ApkAssets;->nativeGetStringBlock(J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/StringBlock;-><init>(JZ)V

    iput-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    .line 324
    return-void
.end method

.method private static blacklist intervalMs(JJ)D
    .registers 8
    .param p0, "beginNs"    # J
    .param p2, "endNs"    # J

    .line 439
    sub-long v0, p2, p0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist loadEmptyForLoader(ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 3
    .param p0, "flags"    # I
    .param p1, "assets"    # Landroid/content/res/loader/AssetsProvider;

    .line 315
    new-instance v0, Landroid/content/res/ApkAssets;

    invoke-direct {v0, p0, p1}, Landroid/content/res/ApkAssets;-><init>(ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadFromDir(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "friendlyName":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "assets":Landroid/content/res/loader/AssetsProvider;
    .local v2, "fd":Ljava/io/FileDescriptor;
    .local v3, "friendlyName":Ljava/lang/String;
    .local v4, "flags":I
    .local v5, "assets":Landroid/content/res/loader/AssetsProvider;
    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 18
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "flags"    # I
    .param p7, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static greylist-max-o loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist loadFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadFromPath(Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .param p2, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadOverlayFromPath(Ljava/lang/String;I)Landroid/content/res/ApkAssets;
    .registers 5
    .param p0, "idmapPath"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/content/res/ApkAssets;-><init>(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 10
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .end local p0    # "fd":Ljava/io/FileDescriptor;
    .end local p1    # "friendlyName":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "assets":Landroid/content/res/loader/AssetsProvider;
    .local v2, "fd":Ljava/io/FileDescriptor;
    .local v3, "friendlyName":Ljava/lang/String;
    .local v4, "flags":I
    .local v5, "assets":Landroid/content/res/loader/AssetsProvider;
    invoke-direct/range {v0 .. v5}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method public static blacklist loadTableFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;
    .registers 18
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "friendlyName"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "flags"    # I
    .param p7, "assets"    # Landroid/content/res/loader/AssetsProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    new-instance v0, Landroid/content/res/ApkAssets;

    const/4 v1, 0x2

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ApkAssets;-><init>(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)V

    return-object v0
.end method

.method private static native blacklist nativeDefinesOverlayable(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeDestroy(J)V
.end method

.method private static native greylist-max-o nativeGetAssetPath(J)Ljava/lang/String;
.end method

.method private static native blacklist nativeGetDebugName(J)Ljava/lang/String;
.end method

.method private static native blacklist nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeGetStringBlock(J)J
.end method

.method private static native blacklist nativeIsUpToDate(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeLoad(ILjava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nativeLoadEmpty(ILandroid/content/res/loader/AssetsProvider;)J
.end method

.method private static native blacklist nativeLoadFd(ILjava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native blacklist nativeLoadFdOffsets(ILjava/io/FileDescriptor;Ljava/lang/String;JJILandroid/content/res/loader/AssetsProvider;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeOpenXml(JLjava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public blacklist close()V
    .registers 5

    .line 501
    monitor-enter p0

    .line 502
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 503
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-eqz v0, :cond_12

    .line 504
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0}, Landroid/content/res/StringBlock;->close()V

    .line 506
    :cond_12
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDestroy(J)V

    .line 507
    iput-wide v2, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    .line 509
    :cond_19
    monitor-exit p0

    .line 510
    return-void

    .line 509
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public blacklist definesOverlayable()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    monitor-enter p0

    .line 434
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeDefinesOverlayable(J)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 435
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "debugName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "assetPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getAssetPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 494
    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->close()V

    .line 495
    return-void
.end method

.method public greylist getAssetPath()Ljava/lang/String;
    .registers 3

    .line 362
    monitor-enter p0

    .line 363
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetAssetPath(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 364
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public blacklist getAssetsProvider()Landroid/content/res/loader/AssetsProvider;
    .registers 2

    .line 395
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mAssets:Landroid/content/res/loader/AssetsProvider;

    return-object v0
.end method

.method public blacklist getDebugName()Ljava/lang/String;
    .registers 5

    .line 369
    monitor-enter p0

    .line 370
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const-string v0, "<destroyed>"

    goto :goto_12

    :cond_c
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/content/res/ApkAssets;->nativeGetDebugName(J)Ljava/lang/String;

    move-result-object v0

    :goto_12
    monitor-exit p0

    return-object v0

    .line 371
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public blacklist getOverlayableInfo(Ljava/lang/String;)Landroid/content/om/OverlayableInfo;
    .registers 4
    .param p1, "overlayableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    monitor-enter p0

    .line 427
    :try_start_1
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeGetOverlayableInfo(JLjava/lang/String;)Landroid/content/om/OverlayableInfo;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 428
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method greylist-max-o getStringFromPool(I)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "idx"    # I

    .line 376
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    if-nez v0, :cond_6

    .line 377
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_6
    monitor-enter p0

    .line 381
    :try_start_7
    iget-object v0, p0, Landroid/content/res/ApkAssets;->mStringBlock:Landroid/content/res/StringBlock;

    invoke-virtual {v0, p1}, Landroid/content/res/StringBlock;->getSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 382
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public blacklist isForLoader()Z
    .registers 2

    .line 387
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isOverlay()Z
    .registers 2

    .line 484
    iget-boolean v0, p0, Landroid/content/res/ApkAssets;->mIsOverlay:Z

    return v0
.end method

.method public blacklist isSharedLib()Z
    .registers 2

    .line 480
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSystem()Z
    .registers 3

    .line 476
    iget v0, p0, Landroid/content/res/ApkAssets;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public greylist-max-o isUpToDate()Z
    .registers 6

    .line 450
    iget v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    .line 451
    iget v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    move v1, v2

    :cond_c
    return v1

    .line 456
    :cond_d
    monitor-enter p0

    .line 458
    :try_start_e
    iget-wide v3, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/content/res/ApkAssets;->nativeIsUpToDate(J)I

    move-result v0

    .line 460
    .local v0, "res":I
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1b

    .line 471
    iput v0, p0, Landroid/content/res/ApkAssets;->mPreviousUpToDateResult:I

    .line 472
    if-eqz v0, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    .line 460
    .end local v0    # "res":I
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public greylist-max-o openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    const-string v0, "fileName"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 409
    monitor-enter p0

    .line 410
    :try_start_6
    iget-wide v0, p0, Landroid/content/res/ApkAssets;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/content/res/ApkAssets;->nativeOpenXml(JLjava/lang/String;)J

    move-result-wide v0

    .line 411
    .local v0, "nativeXmlPtr":J
    new-instance v2, Landroid/content/res/XmlBlock;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v1, v4}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;JZ)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_31

    .line 412
    .local v2, "block":Landroid/content/res/XmlBlock;
    :try_start_13
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_27

    .line 415
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v3, :cond_1f

    .line 418
    nop

    .line 419
    :try_start_1a
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_31

    .line 418
    return-object v3

    .line 416
    :cond_1f
    :try_start_1f
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "block.newParser() returned a null parser"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "nativeXmlPtr":J
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    .end local p0    # "this":Landroid/content/res/ApkAssets;
    .end local p1    # "fileName":Ljava/lang/String;
    throw v4
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    .line 411
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "nativeXmlPtr":J
    .restart local v2    # "block":Landroid/content/res/XmlBlock;
    .restart local p0    # "this":Landroid/content/res/ApkAssets;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_27
    move-exception v3

    :try_start_28
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v4

    :try_start_2d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/content/res/ApkAssets;
    .end local p1    # "fileName":Ljava/lang/String;
    :goto_30
    throw v3

    .line 420
    .end local v0    # "nativeXmlPtr":J
    .end local v2    # "block":Landroid/content/res/XmlBlock;
    .restart local p0    # "this":Landroid/content/res/ApkAssets;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_31

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApkAssets{path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/ApkAssets;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
