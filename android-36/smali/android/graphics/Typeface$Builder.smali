.class public final Landroid/graphics/Typeface$Builder;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field public static final greylist-max-o BOLD_WEIGHT:I = 0x2bc

.field public static final greylist-max-o NORMAL_WEIGHT:I = 0x190


# instance fields
.field private final greylist-max-o mAssetManager:Landroid/content/res/AssetManager;

.field private greylist-max-o mFallbackFamilyName:Ljava/lang/String;

.field private final blacklist mFontBuilder:Landroid/graphics/fonts/Font$Builder;

.field private greylist-max-o mItalic:I

.field private final greylist-max-o mPath:Ljava/lang/String;

.field private greylist-max-o mWeight:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static/range {p0 .. p6}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 561
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 562
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isAsset"    # Z
    .param p4, "cookie"    # I

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 507
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 574
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 575
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 576
    iput-object p2, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "path"    # Ljava/io/File;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 507
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 515
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v0, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 517
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 507
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 531
    :try_start_8
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_12

    .line 537
    .local v0, "builder":Landroid/graphics/fonts/Font$Builder;
    goto :goto_15

    .line 532
    .end local v0    # "builder":Landroid/graphics/fonts/Font$Builder;
    :catch_12
    move-exception v0

    .line 536
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 538
    .local v0, "builder":Landroid/graphics/fonts/Font$Builder;
    :goto_15
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 539
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 540
    iput-object v1, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 507
    iput v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 549
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 551
    iput-object v0, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 552
    return-void
.end method

.method private static greylist-max-o createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "italic"    # I
    .param p6, "fallback"    # Ljava/lang/String;

    .line 677
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    .line 678
    .local v0, "pkgs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 680
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    const-string v4, "-"

    if-ge v3, v2, :cond_21

    .line 681
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 684
    .end local v3    # "i":I
    :cond_21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    if-eqz p3, :cond_6d

    .line 697
    array-length v3, p3

    const/4 v5, 0x0

    :goto_51
    if-ge v5, v3, :cond_6d

    aget-object v6, p3, v5

    .line 698
    .local v6, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v6}, Landroid/graphics/fonts/FontVariationAxis;->getStyleValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .end local v6    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 703
    :cond_6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private greylist-max-o resolveFallbackTypeface()Landroid/graphics/Typeface;
    .registers 7

    .line 707
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 708
    const/4 v0, 0x0

    return-object v0

    .line 711
    :cond_6
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 712
    .local v0, "base":Landroid/graphics/Typeface;
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_16

    iget v1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v1, v2, :cond_16

    .line 713
    return-object v0

    .line 716
    :cond_16
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    if-ne v1, v2, :cond_1f

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmWeight(Landroid/graphics/Typeface;)I

    move-result v1

    goto :goto_21

    :cond_1f
    iget v1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 718
    .local v1, "weight":I
    :goto_21
    iget v3, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v2, :cond_30

    invoke-static {v0}, Landroid/graphics/Typeface;->-$$Nest$fgetmStyle(Landroid/graphics/Typeface;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_35

    goto :goto_34

    :cond_30
    iget v2, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v2, v5, :cond_35

    :goto_34
    move v4, v5

    .line 719
    .local v4, "italic":Z
    :cond_35
    invoke-static {v0, v1, v4}, Landroid/graphics/Typeface;->-$$Nest$smcreateWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/Typeface;
    .registers 10

    .line 728
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    if-nez v0, :cond_9

    .line 729
    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 732
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0

    move-object v1, v0

    .line 733
    .local v1, "font":Landroid/graphics/fonts/Font;
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_35

    :cond_16
    iget-object v2, p0, Landroid/graphics/Typeface$Builder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v3, p0, Landroid/graphics/Typeface$Builder;->mPath:Ljava/lang/String;

    .line 734
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v5

    iget v6, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    iget v7, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 736
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-nez v0, :cond_2e

    const-string/jumbo v0, "sans-serif"

    goto :goto_30

    :cond_2e
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    :goto_30
    move-object v8, v0

    .line 733
    invoke-static/range {v2 .. v8}, Landroid/graphics/Typeface$Builder;->createAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_35
    move-object v2, v0

    .line 737
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_50

    .line 739
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3d} :catch_ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_3d} :catch_ac

    .line 740
    :try_start_3d
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 741
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_4b

    .line 742
    monitor-exit v3

    return-object v0

    .line 744
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_4b
    monitor-exit v3

    goto :goto_50

    :catchall_4d
    move-exception v0

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_4d

    .end local p0    # "this":Landroid/graphics/Typeface$Builder;
    :try_start_4f
    throw v0

    .line 746
    .restart local p0    # "this":Landroid/graphics/Typeface$Builder;
    :cond_50
    :goto_50
    new-instance v0, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v0, v1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v0

    move-object v3, v0

    .line 747
    .local v3, "family":Landroid/graphics/fonts/FontFamily;
    iget v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_68

    .line 748
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    goto :goto_6a

    :cond_68
    iget v0, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    :goto_6a
    move v5, v0

    .line 749
    .local v5, "weight":I
    iget v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    if-ne v0, v4, :cond_78

    .line 750
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    goto :goto_7a

    :cond_78
    iget v0, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    :goto_7a
    move v4, v0

    .line 751
    .local v4, "slant":I
    new-instance v0, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v0, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v5, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 752
    invoke-virtual {v0, v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v0

    move-object v6, v0

    .line 753
    .local v6, "builder":Landroid/graphics/Typeface$CustomFallbackBuilder;
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    if-eqz v0, :cond_93

    .line 754
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setSystemFallback(Ljava/lang/String;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    .line 756
    :cond_93
    invoke-virtual {v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    move-object v7, v0

    .line 757
    .local v7, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_ab

    .line 758
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_9f} :catch_ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_9f} :catch_ac

    .line 759
    :try_start_9f
    invoke-static {}, Landroid/graphics/Typeface;->-$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0, v2, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    monitor-exit v8

    goto :goto_ab

    :catchall_a8
    move-exception v0

    monitor-exit v8
    :try_end_aa
    .catchall {:try_start_9f .. :try_end_aa} :catchall_a8

    .end local p0    # "this":Landroid/graphics/Typeface$Builder;
    :try_start_aa
    throw v0
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ab} :catch_ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_aa .. :try_end_ab} :catch_ac

    .line 762
    .restart local p0    # "this":Landroid/graphics/Typeface$Builder;
    :cond_ab
    :goto_ab
    return-object v7

    .line 763
    .end local v1    # "font":Landroid/graphics/fonts/Font;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "family":Landroid/graphics/fonts/FontFamily;
    .end local v4    # "slant":I
    .end local v5    # "weight":I
    .end local v6    # "builder":Landroid/graphics/Typeface$CustomFallbackBuilder;
    .end local v7    # "typeface":Landroid/graphics/Typeface;
    :catch_ac
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/graphics/Typeface$Builder;->resolveFallbackTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public whitelist setFallback(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .registers 2
    .param p1, "familyName"    # Ljava/lang/String;

    .line 662
    iput-object p1, p0, Landroid/graphics/Typeface$Builder;->mFallbackFamilyName:Ljava/lang/String;

    .line 663
    return-object p0
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;
    .registers 3
    .param p1, "variationSettings"    # Ljava/lang/String;

    .line 625
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    .line 626
    return-object p0
.end method

.method public whitelist setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/Typeface$Builder;
    .registers 3
    .param p1, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;

    .line 635
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    .line 636
    return-object p0
.end method

.method public whitelist setItalic(Z)Landroid/graphics/Typeface$Builder;
    .registers 4
    .param p1, "italic"    # Z

    .line 600
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    .line 601
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    iget v1, p0, Landroid/graphics/Typeface$Builder;->mItalic:I

    invoke-virtual {v0, v1}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 602
    return-object p0
.end method

.method public whitelist setTtcIndex(I)Landroid/graphics/Typeface$Builder;
    .registers 3
    .param p1, "ttcIndex"    # I

    .line 613
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    .line 614
    return-object p0
.end method

.method public whitelist setWeight(I)Landroid/graphics/Typeface$Builder;
    .registers 3
    .param p1, "weight"    # I

    .line 587
    iput p1, p0, Landroid/graphics/Typeface$Builder;->mWeight:I

    .line 588
    iget-object v0, p0, Landroid/graphics/Typeface$Builder;->mFontBuilder:Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v0, p1}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 589
    return-object p0
.end method
