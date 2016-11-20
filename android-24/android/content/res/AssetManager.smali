.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;


# instance fields
.field private mNumRefs:I

.field private mObject:J

.field private final mOffsets:[J

.field private mOpen:Z

.field private mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBlocks:[Landroid/content/res/StringBlock;

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method static synthetic -wrap0(Landroid/content/res/AssetManager;J)I
    .locals 1
    .param p1, "asset"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->readAssetChar(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/content/res/AssetManager;J[BII)I
    .locals 1
    .param p1, "asset"    # J
    .param p3, "b"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->readAsset(J[BII)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(Landroid/content/res/AssetManager;J)J
    .locals 3
    .param p1, "asset"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetLength(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap3(Landroid/content/res/AssetManager;J)J
    .locals 3
    .param p1, "asset"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetRemainingLength(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap4(Landroid/content/res/AssetManager;JJI)J
    .locals 3
    .param p1, "asset"    # J
    .param p3, "offset"    # J
    .param p5, "whence"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->seekAsset(JJI)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap5(Landroid/content/res/AssetManager;J)V
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Landroid/content/res/AssetManager;J)V
    .locals 1
    .param p1, "asset"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->destroyAsset(J)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    #@7
    .line 72
    const/4 v0, 0x0

    #@8
    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    #@a
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    #@b
    .line 75
    const/4 v0, 0x2

    #@c
    new-array v0, v0, [J

    #@e
    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    #@10
    .line 80
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@13
    .line 82
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    #@15
    .line 83
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@17
    .line 94
    monitor-enter p0

    #@18
    .line 99
    const/4 v0, 0x0

    #@19
    :try_start_0
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->init(Z)V

    #@1c
    .line 101
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 93
    return-void

    #@21
    .line 94
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "isSystem"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    new-instance v0, Landroid/util/TypedValue;

    #@6
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    #@b
    .line 75
    const/4 v0, 0x2

    #@c
    new-array v0, v0, [J

    #@e
    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    #@10
    .line 80
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@13
    .line 82
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    #@15
    .line 83
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@17
    .line 122
    invoke-direct {p0, v1}, Landroid/content/res/AssetManager;->init(Z)V

    #@1a
    .line 115
    return-void
.end method

.method private final addAssetPathInternal(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "appAsLib"    # Z

    #@0
    .prologue
    .line 661
    monitor-enter p0

    #@1
    .line 662
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->addAssetPathNative(Ljava/lang/String;Z)I

    #@4
    move-result v0

    #@5
    .line 663
    .local v0, "res":I
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@7
    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 664
    return v0

    #@c
    .line 661
    .end local v0    # "res":I
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0

    #@e
    throw v1
.end method

.method private final native addAssetPathNative(Ljava/lang/String;Z)I
.end method

.method static final native applyStyle(JIIJ[I[I[I)Z
.end method

.method static final native applyThemeStyle(JIZ)V
.end method

.method static final native clearTheme(J)V
.end method

.method static final native copyTheme(JJ)V
.end method

.method private final decRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 880
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    #@6
    .line 883
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    #@8
    if-nez v0, :cond_0

    #@a
    .line 884
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    #@d
    .line 876
    :cond_0
    return-void
.end method

.method private final native deleteTheme(J)V
.end method

.method private final native destroy()V
.end method

.method private final native destroyAsset(J)V
.end method

.method static final native dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static ensureSystemAssets()V
    .locals 3

    #@0
    .prologue
    .line 106
    sget-object v2, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 107
    :try_start_0
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 108
    new-instance v0, Landroid/content/res/AssetManager;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-direct {v0, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    #@d
    .line 109
    .local v0, "system":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    #@11
    .line 110
    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :cond_0
    monitor-exit v2

    #@14
    .line 105
    return-void

    #@15
    .line 106
    :catchall_0
    move-exception v1

    #@16
    monitor-exit v2

    #@17
    throw v1
.end method

.method private final native getArrayStringInfo(I)[I
.end method

.method private final native getArrayStringResource(I)[Ljava/lang/String;
.end method

.method public static final native getAssetAllocations()Ljava/lang/String;
.end method

.method private final native getAssetLength(J)J
.end method

.method private final native getAssetRemainingLength(J)J
.end method

.method public static final native getGlobalAssetCount()I
.end method

.method public static final native getGlobalAssetManagerCount()I
.end method

.method private final native getNativeStringBlock(I)J
.end method

.method private final native getStringBlockCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    #@3
    .line 133
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    #@5
    return-object v0
.end method

.method static final native getThemeChangingConfigurations(J)I
.end method

.method private final incRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 873
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    #@6
    .line 864
    return-void
.end method

.method private final native init(Z)V
.end method

.method private final native loadResourceBagValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native loadResourceValue(ISLandroid/util/TypedValue;Z)I
.end method

.method static final native loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I
.end method

.method private final native newTheme()J
.end method

.method private final native openAsset(Ljava/lang/String;I)J
.end method

.method private final native openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native openNonAssetNative(ILjava/lang/String;I)J
.end method

.method private final native openXmlAssetNative(ILjava/lang/String;)J
.end method

.method private final native readAsset(J[BII)I
.end method

.method private final native readAssetChar(J)I
.end method

.method static final native resolveAttrs(JII[I[I[I[I)Z
.end method

.method private final native seekAsset(JJI)J
.end method


# virtual methods
.method public final addAssetPath(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 647
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 657
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final addAssetPaths([Ljava/lang/String;)[I
    .locals 3
    .param p1, "paths"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 702
    if-nez p1, :cond_0

    #@3
    .line 703
    return-object v2

    #@4
    .line 706
    :cond_0
    array-length v2, p1

    #@5
    new-array v0, v2, [I

    #@7
    .line 707
    .local v0, "cookies":[I
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@9
    if-ge v1, v2, :cond_1

    #@b
    .line 708
    aget-object v2, p1, v1

    #@d
    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@10
    move-result v2

    #@11
    aput v2, v0, v1

    #@13
    .line 707
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 711
    :cond_1
    return-object v0
.end method

.method public final addOverlayPath(Ljava/lang/String;)I
    .locals 2
    .param p1, "idmapPath"    # Ljava/lang/String;

    #@0
    .prologue
    .line 680
    monitor-enter p0

    #@1
    .line 681
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addOverlayPathNative(Ljava/lang/String;)I

    #@4
    move-result v0

    #@5
    .line 682
    .local v0, "res":I
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@7
    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 683
    return v0

    #@c
    .line 680
    .end local v0    # "res":I
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0

    #@e
    throw v1
.end method

.method public final native addOverlayPathNative(Ljava/lang/String;)I
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 140
    monitor-enter p0

    #@1
    .line 143
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 144
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@8
    .line 145
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->hashCode()I

    #@b
    move-result v0

    #@c
    int-to-long v0, v0

    #@d
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit p0

    #@11
    .line 139
    return-void

    #@12
    .line 140
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method final createTheme()J
    .locals 4

    #@0
    .prologue
    .line 536
    monitor-enter p0

    #@1
    .line 537
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 538
    new-instance v2, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v3, "Assetmanager has been closed"

    #@a
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 536
    :catchall_0
    move-exception v2

    #@f
    monitor-exit p0

    #@10
    throw v2

    #@11
    .line 540
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()J

    #@14
    move-result-wide v0

    #@15
    .line 541
    .local v0, "res":J
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 542
    return-wide v0
.end method

.method final ensureStringBlocks()[Landroid/content/res/StringBlock;
    .locals 1

    #@0
    .prologue
    .line 281
    monitor-enter p0

    #@1
    .line 282
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 283
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    #@7
    iget-object v0, v0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@9
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    #@c
    .line 285
    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    .line 281
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 564
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 566
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 553
    return-void

    #@7
    .line 565
    :catchall_0
    move-exception v0

    #@8
    .line 566
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 565
    throw v0
.end method

.method final native getArrayIntResource(I)[I
.end method

.method final native getArraySize(I)I
.end method

.method public final native getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native getCookieName(I)Ljava/lang/String;
.end method

.method public final native getLocales()[Ljava/lang/String;
.end method

.method public final native getNonSystemLocales()[Ljava/lang/String;
.end method

.method final getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "id"    # I

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@2
    add-int/lit8 v1, p1, -0x1

    #@4
    aget-object v0, v0, v1

    #@6
    invoke-virtual {v0, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method final getResourceBagText(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "bagEntryId"    # I

    #@0
    .prologue
    .line 178
    monitor-enter p0

    #@1
    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    #@3
    .line 180
    .local v1, "outValue":Landroid/util/TypedValue;
    const/4 v2, 0x1

    #@4
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v0

    #@8
    .line 181
    .local v0, "block":I
    if-gez v0, :cond_0

    #@a
    .line 182
    const/4 v2, 0x0

    #@b
    monitor-exit p0

    #@c
    return-object v2

    #@d
    .line 184
    :cond_0
    :try_start_1
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@f
    const/4 v3, 0x3

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 185
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@14
    aget-object v2, v2, v0

    #@16
    iget v3, v1, Landroid/util/TypedValue;->data:I

    #@18
    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    monitor-exit p0

    #@1d
    return-object v2

    #@1e
    .line 187
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    move-result-object v2

    #@22
    monitor-exit p0

    #@23
    return-object v2

    #@24
    .line 178
    .end local v0    # "block":I
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    #@25
    monitor-exit p0

    #@26
    throw v2
.end method

.method final native getResourceEntryName(I)Ljava/lang/String;
.end method

.method final native getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final native getResourceName(I)Ljava/lang/String;
.end method

.method final native getResourcePackageName(I)Ljava/lang/String;
.end method

.method final getResourceStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method final getResourceText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 159
    monitor-enter p0

    #@1
    .line 160
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    #@3
    .line 161
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 162
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result-object v1

    #@f
    monitor-exit p0

    #@10
    return-object v1

    #@11
    .line 164
    :cond_0
    const/4 v1, 0x0

    #@12
    monitor-exit p0

    #@13
    return-object v1

    #@14
    .line 159
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 9
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 234
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    #@3
    move-result-object v5

    #@4
    .line 235
    .local v5, "rawInfoArray":[I
    array-length v6, v5

    #@5
    .line 236
    .local v6, "rawInfoArrayLen":I
    div-int/lit8 v3, v6, 0x2

    #@7
    .line 239
    .local v3, "infoArrayLen":I
    new-array v7, v3, [Ljava/lang/CharSequence;

    #@9
    .line 240
    .local v7, "retArray":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    const/4 v4, 0x0

    #@b
    .local v4, "j":I
    :goto_0
    if-ge v1, v6, :cond_1

    #@d
    .line 241
    aget v0, v5, v1

    #@f
    .line 242
    .local v0, "block":I
    add-int/lit8 v8, v1, 0x1

    #@11
    aget v2, v5, v8

    #@13
    .line 243
    .local v2, "index":I
    if-ltz v2, :cond_0

    #@15
    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@17
    aget-object v8, v8, v0

    #@19
    invoke-virtual {v8, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@1c
    move-result-object v8

    #@1d
    :goto_1
    aput-object v8, v7, v4

    #@1f
    .line 240
    add-int/lit8 v1, v1, 0x2

    #@21
    add-int/lit8 v4, v4, 0x1

    #@23
    goto :goto_0

    #@24
    .line 243
    :cond_0
    const/4 v8, 0x0

    #@25
    goto :goto_1

    #@26
    .line 245
    .end local v0    # "block":I
    .end local v2    # "index":I
    :cond_1
    return-object v7
.end method

.method final native getResourceTypeName(I)Ljava/lang/String;
.end method

.method final getResourceValue(IILandroid/util/TypedValue;Z)Z
    .locals 3
    .param p1, "resId"    # I
    .param p2, "densityDpi"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 217
    int-to-short v1, p2

    #@2
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    #@5
    move-result v0

    #@6
    .line 218
    .local v0, "block":I
    if-gez v0, :cond_0

    #@8
    .line 219
    return v2

    #@9
    .line 221
    :cond_0
    iget v1, p3, Landroid/util/TypedValue;->type:I

    #@b
    const/4 v2, 0x3

    #@c
    if-ne v1, v2, :cond_1

    #@e
    .line 222
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@10
    aget-object v1, v1, v0

    #@12
    iget v2, p3, Landroid/util/TypedValue;->data:I

    #@14
    invoke-virtual {v1, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@1a
    .line 224
    :cond_1
    const/4 v1, 0x1

    #@1b
    return v1
.end method

.method public final native getSizeConfigurations()[Landroid/content/res/Configuration;
.end method

.method final native getStyleAttributes(I)[I
.end method

.method final getThemeValue(JILandroid/util/TypedValue;Z)Z
    .locals 5
    .param p1, "theme"    # J
    .param p3, "resId"    # I
    .param p4, "outValue"    # Landroid/util/TypedValue;
    .param p5, "resolveRefs"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 263
    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I

    #@4
    move-result v0

    #@5
    .line 264
    .local v0, "block":I
    if-gez v0, :cond_0

    #@7
    .line 265
    return v2

    #@8
    .line 267
    :cond_0
    iget v2, p4, Landroid/util/TypedValue;->type:I

    #@a
    const/4 v3, 0x3

    #@b
    if-ne v2, v3, :cond_1

    #@d
    .line 268
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()[Landroid/content/res/StringBlock;

    #@10
    move-result-object v1

    #@11
    .line 269
    .local v1, "blocks":[Landroid/content/res/StringBlock;
    aget-object v2, v1, v0

    #@13
    iget v3, p4, Landroid/util/TypedValue;->data:I

    #@15
    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    #@18
    move-result-object v2

    #@19
    iput-object v2, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@1b
    .line 271
    .end local v1    # "blocks":[Landroid/content/res/StringBlock;
    :cond_1
    const/4 v2, 0x1

    #@1c
    return v2
.end method

.method public final native isUpToDate()Z
.end method

.method public final native list(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final makeStringBlocks([Landroid/content/res/StringBlock;)V
    .locals 8
    .param p1, "seed"    # [Landroid/content/res/StringBlock;

    #@0
    .prologue
    .line 290
    if-eqz p1, :cond_0

    #@2
    array-length v2, p1

    #@3
    .line 291
    .local v2, "seedNum":I
    :goto_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    #@6
    move-result v1

    #@7
    .line 292
    .local v1, "num":I
    new-array v3, v1, [Landroid/content/res/StringBlock;

    #@9
    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@b
    .line 295
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    #@e
    .line 296
    if-ge v0, v2, :cond_1

    #@10
    .line 297
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@12
    aget-object v4, p1, v0

    #@14
    aput-object v4, v3, v0

    #@16
    .line 295
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_1

    #@19
    .line 290
    .end local v0    # "i":I
    .end local v1    # "num":I
    .end local v2    # "seedNum":I
    :cond_0
    const/4 v2, 0x0

    #@1a
    .restart local v2    # "seedNum":I
    goto :goto_0

    #@1b
    .line 299
    .restart local v0    # "i":I
    .restart local v1    # "num":I
    :cond_1
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    #@1d
    new-instance v4, Landroid/content/res/StringBlock;

    #@1f
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getNativeStringBlock(I)J

    #@22
    move-result-wide v6

    #@23
    const/4 v5, 0x1

    #@24
    invoke-direct {v4, v6, v7, v5}, Landroid/content/res/StringBlock;-><init>(JZ)V

    #@27
    aput-object v4, v3, v0

    #@29
    goto :goto_2

    #@2a
    .line 289
    :cond_2
    return-void
.end method

.method public final open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 343
    monitor-enter p0

    #@1
    .line 344
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 345
    new-instance v3, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v4, "Assetmanager has been closed"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 343
    :catchall_0
    move-exception v3

    #@f
    monitor-exit p0

    #@10
    throw v3

    #@11
    .line 347
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)J

    #@14
    move-result-wide v0

    #@15
    .line 348
    .local v0, "asset":J
    const-wide/16 v4, 0x0

    #@17
    cmp-long v3, v0, v4

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 349
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream;)V

    #@21
    .line 350
    .local v2, "res":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Landroid/content/res/AssetManager$AssetInputStream;->hashCode()I

    #@24
    move-result v3

    #@25
    int-to-long v4, v3

    #@26
    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 351
    return-object v2

    #@2b
    .end local v2    # "res":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0

    #@2c
    .line 354
    new-instance v3, Ljava/io/FileNotFoundException;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "Asset file: "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@45
    throw v3
.end method

.method public final openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 359
    monitor-enter p0

    #@1
    .line 360
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 361
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v2, "Assetmanager has been closed"

    #@a
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 359
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 363
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    #@13
    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    #@16
    move-result-object v1

    #@17
    .line 364
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    #@19
    .line 365
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    #@1b
    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    #@1d
    const/4 v3, 0x0

    #@1e
    aget-wide v2, v2, v3

    #@20
    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    #@22
    const/4 v5, 0x1

    #@23
    aget-wide v4, v4, v5

    #@25
    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit p0

    #@29
    return-object v0

    #@2a
    :cond_1
    monitor-exit p0

    #@2b
    .line 368
    new-instance v0, Ljava/io/FileNotFoundException;

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "Asset file: "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0
.end method

.method public final openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 422
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 435
    monitor-enter p0

    #@1
    .line 436
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@3
    if-nez v3, :cond_0

    #@5
    .line 437
    new-instance v3, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v4, "Assetmanager has been closed"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 435
    :catchall_0
    move-exception v3

    #@f
    monitor-exit p0

    #@10
    throw v3

    #@11
    .line 439
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)J

    #@14
    move-result-wide v0

    #@15
    .line 440
    .local v0, "asset":J
    const-wide/16 v4, 0x0

    #@17
    cmp-long v3, v0, v4

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 441
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream;)V

    #@21
    .line 442
    .local v2, "res":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Landroid/content/res/AssetManager$AssetInputStream;->hashCode()I

    #@24
    move-result v3

    #@25
    int-to-long v4, v3

    #@26
    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 443
    return-object v2

    #@2b
    .end local v2    # "res":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0

    #@2c
    .line 446
    new-instance v3, Ljava/io/FileNotFoundException;

    #@2e
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v5, "Asset absolute file: "

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@45
    throw v3
.end method

.method public final openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x2

    #@2
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    monitor-enter p0

    #@1
    .line 457
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 458
    new-instance v0, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v2, "Assetmanager has been closed"

    #@a
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 456
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 461
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    #@13
    .line 460
    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    #@16
    move-result-object v1

    #@17
    .line 462
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    #@19
    .line 463
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    #@1b
    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    #@1d
    const/4 v3, 0x0

    #@1e
    aget-wide v2, v2, v3

    #@20
    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    #@22
    const/4 v5, 0x1

    #@23
    aget-wide v4, v4, v5

    #@25
    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit p0

    #@29
    return-object v0

    #@2a
    :cond_1
    monitor-exit p0

    #@2b
    .line 466
    new-instance v0, Ljava/io/FileNotFoundException;

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "Asset absolute file: "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0
.end method

.method public final openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 451
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method final openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 515
    monitor-enter p0

    #@1
    .line 516
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 517
    new-instance v1, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v4, "Assetmanager has been closed"

    #@a
    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 515
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1

    #@11
    .line 519
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)J

    #@14
    move-result-wide v2

    #@15
    .line 520
    .local v2, "xmlBlock":J
    const-wide/16 v4, 0x0

    #@17
    cmp-long v1, v2, v4

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 521
    new-instance v0, Landroid/content/res/XmlBlock;

    #@1d
    invoke-direct {v0, p0, v2, v3}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V

    #@20
    .line 522
    .local v0, "res":Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->hashCode()I

    #@23
    move-result v1

    #@24
    int-to-long v4, v1

    #@25
    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    monitor-exit p0

    #@29
    .line 523
    return-object v0

    #@2a
    .end local v0    # "res":Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit p0

    #@2b
    .line 526
    new-instance v1, Ljava/io/FileNotFoundException;

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v5, "Asset XML file: "

    #@35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1
.end method

.method final openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 502
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public final openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 487
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    #@3
    move-result-object v0

    #@4
    .line 488
    .local v0, "block":Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    #@7
    move-result-object v1

    #@8
    .line 489
    .local v1, "rp":Landroid/content/res/XmlResourceParser;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    #@b
    .line 490
    return-object v1
.end method

.method public final openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 476
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method final releaseTheme(J)V
    .locals 1
    .param p1, "theme"    # J

    #@0
    .prologue
    .line 547
    monitor-enter p0

    #@1
    .line 548
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->deleteTheme(J)V

    #@4
    .line 549
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 546
    return-void

    #@9
    .line 547
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method final native retrieveArray(I[I)I
.end method

.method final native retrieveAttributes(J[I[I[I)Z
.end method

.method public final native setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V
.end method

.method xmlBlockGone(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 530
    monitor-enter p0

    #@1
    .line 531
    int-to-long v0, p1

    #@2
    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 529
    return-void

    #@7
    .line 530
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method
