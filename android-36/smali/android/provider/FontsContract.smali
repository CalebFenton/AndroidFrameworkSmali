.class public Landroid/provider/FontsContract;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/FontsContract$FontRequestCallback;,
        Landroid/provider/FontsContract$FontFamilyResult;,
        Landroid/provider/FontsContract$FontInfo;,
        Landroid/provider/FontsContract$Columns;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o SYNC_FONT_FETCH_TIMEOUT_MS:J = 0x1f4L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "FontsContract"

.field private static final greylist-max-o THREAD_RENEWAL_THRESHOLD_MS:I = 0x2710

.field private static final greylist-max-o sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private static volatile greylist-max-o sContext:Landroid/content/Context;

.field private static greylist-max-o sHandler:Landroid/os/Handler;

.field private static greylist-max-o sInQueueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static final greylist-max-o sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

.field private static greylist-max-o sThread:Landroid/os/HandlerThread;

.field private static final greylist-max-o sTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsThread()Landroid/os/HandlerThread;
    .registers 1

    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsHandler(Landroid/os/Handler;)V
    .registers 1

    sput-object p0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsThread(Landroid/os/HandlerThread;)V
    .registers 1

    sput-object p0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    .line 332
    new-instance v0, Landroid/provider/FontsContract$1;

    invoke-direct {v0}, Landroid/provider/FontsContract$1;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    .line 802
    new-instance v0, Landroid/provider/FontsContract$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Landroid/provider/FontsContract$$ExternalSyntheticLambda12;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method public static whitelist buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "fonts"    # [Landroid/provider/FontsContract$FontInfo;

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 660
    return-object v1

    .line 662
    :cond_8
    nop

    .line 663
    invoke-static {p0, p2, p1}, Landroid/provider/FontsContract;->prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v0

    .line 664
    .local v0, "uriBuffer":Ljava/util/Map;, "Ljava/util/Map<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 665
    return-object v1

    .line 668
    :cond_14
    const/4 v2, 0x0

    .line 669
    .local v2, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v3, :cond_6b

    aget-object v6, p2, v5

    .line 670
    .local v6, "fontInfo":Landroid/provider/FontsContract$FontInfo;
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 671
    .local v7, "buffer":Ljava/nio/ByteBuffer;
    if-nez v7, :cond_29

    .line 672
    goto :goto_66

    .line 675
    :cond_29
    :try_start_29
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v8, v7}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;)V

    .line 676
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 677
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->isItalic()Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 678
    const/4 v9, 0x1

    goto :goto_3f

    :cond_3e
    move v9, v4

    .line 677
    :goto_3f
    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 679
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getTtcIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 680
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getAxes()[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 681
    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v8

    .line 682
    .local v8, "font":Landroid/graphics/fonts/Font;
    if-nez v2, :cond_60

    .line 683
    new-instance v9, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v9, v8}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v2, v9

    goto :goto_63

    .line 685
    :cond_60
    invoke-virtual {v2, v8}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_63} :catch_69
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_63} :catch_64

    .line 693
    .end local v8    # "font":Landroid/graphics/fonts/Font;
    :goto_63
    goto :goto_66

    .line 691
    :catch_64
    move-exception v8

    .line 692
    .local v8, "e":Ljava/io/IOException;
    nop

    .line 669
    .end local v6    # "fontInfo":Landroid/provider/FontsContract$FontInfo;
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "e":Ljava/io/IOException;
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 687
    .restart local v6    # "fontInfo":Landroid/provider/FontsContract$FontInfo;
    .restart local v7    # "buffer":Ljava/nio/ByteBuffer;
    :catch_69
    move-exception v3

    .line 690
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-object v1

    .line 695
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v6    # "fontInfo":Landroid/provider/FontsContract$FontInfo;
    .end local v7    # "buffer":Ljava/nio/ByteBuffer;
    :cond_6b
    if-nez v2, :cond_6e

    .line 696
    return-object v1

    .line 699
    :cond_6e
    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    .line 701
    .local v1, "family":Landroid/graphics/fonts/FontFamily;
    new-instance v3, Landroid/graphics/fonts/FontStyle;

    const/16 v5, 0x190

    invoke-direct {v3, v5, v4}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 703
    .local v3, "normal":Landroid/graphics/fonts/FontStyle;
    invoke-virtual {v1, v4}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    .line 704
    .local v4, "bestFont":Landroid/graphics/fonts/Font;
    invoke-virtual {v4}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v5

    .line 705
    .local v5, "bestScore":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_86
    invoke-virtual {v1}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_9f

    .line 706
    invoke-virtual {v1, v6}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v7

    .line 707
    .local v7, "candidate":Landroid/graphics/fonts/Font;
    invoke-virtual {v7}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v8

    .line 708
    .local v8, "score":I
    if-ge v8, v5, :cond_9c

    .line 709
    move-object v4, v7

    .line 710
    move v5, v8

    .line 705
    .end local v7    # "candidate":Landroid/graphics/fonts/Font;
    .end local v8    # "score":I
    :cond_9c
    add-int/lit8 v6, v6, 0x1

    goto :goto_86

    .line 713
    .end local v6    # "i":I
    :cond_9f
    new-instance v6, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v6, v1}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    invoke-virtual {v4}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v6

    return-object v6
.end method

.method private static greylist-max-o convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 4
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v0, "shas":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 830
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 832
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private static greylist-max-o equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 816
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 817
    return v2

    .line 819
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 820
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 821
    return v2

    .line 819
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 824
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "request"    # Landroid/provider/FontRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 626
    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 628
    new-instance v0, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v0

    .line 630
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/FontsContract;->getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 631
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v0, :cond_1f

    .line 632
    new-instance v2, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v2

    .line 636
    :cond_1f
    :try_start_1f
    iget-object v2, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p2, v2, p1}, Landroid/provider/FontsContract;->getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;

    move-result-object v2

    .line 638
    .local v2, "fonts":[Landroid/provider/FontsContract$FontInfo;
    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_2b} :catch_2c

    return-object v3

    .line 639
    .end local v2    # "fonts":[Landroid/provider/FontsContract$FontInfo;
    :catch_2c
    move-exception v2

    .line 640
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3
.end method

.method public static greylist-max-o getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 840
    move-object/from16 v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 841
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/FontsContract$FontInfo;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 842
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 843
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 844
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 845
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 846
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 848
    .local v3, "fileBaseUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v11, "font_italic"

    const-string/jumbo v12, "result_code"

    const-string v6, "_id"

    const-string v7, "file_id"

    const-string v8, "font_ttc_index"

    const-string v9, "font_variation_settings"

    const-string v10, "font_weight"

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v6

    .line 851
    invoke-virtual/range {p1 .. p1}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    .line 848
    const-string/jumbo v7, "query = ?"

    const/4 v9, 0x0

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 854
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_10e

    :try_start_5d
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_10e

    .line 855
    const-string/jumbo v6, "result_code"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 856
    .local v6, "resultCodeColumnIndex":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v7

    .line 857
    const-string v7, "_id"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 858
    .local v7, "idColumnIndex":I
    const-string v8, "file_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 859
    .local v8, "fileIdColumnIndex":I
    const-string v9, "font_ttc_index"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 860
    .local v9, "ttcIndexColumnIndex":I
    const-string v10, "font_variation_settings"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 861
    .local v10, "vsColumnIndex":I
    const-string v11, "font_weight"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 862
    .local v11, "weightColumnIndex":I
    const-string v12, "font_italic"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 863
    .local v12, "italicColumnIndex":I
    :goto_94
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_10e

    .line 864
    const/4 v13, -0x1

    if-eq v6, v13, :cond_a2

    .line 865
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto :goto_a3

    :cond_a2
    const/4 v14, 0x0

    :goto_a3
    move/from16 v21, v14

    .line 866
    .local v21, "resultCode":I
    if-eq v9, v13, :cond_ae

    .line 867
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v17, v14

    goto :goto_b0

    :cond_ae
    const/16 v17, 0x0

    .line 868
    .local v17, "ttcIndex":I
    :goto_b0
    if-eq v10, v13, :cond_b7

    .line 869
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_b8

    :cond_b7
    const/4 v14, 0x0

    .line 872
    .local v14, "variationSettings":Ljava/lang/String;
    :goto_b8
    if-ne v8, v13, :cond_c9

    .line 873
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide/from16 v18, v15

    .line 874
    .local v18, "id":J
    move-wide/from16 v0, v18

    .end local v18    # "id":J
    .local v0, "id":J
    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 875
    .end local v0    # "id":J
    .local v15, "fileUri":Landroid/net/Uri;
    move-object/from16 v16, v15

    goto :goto_d3

    .line 876
    .end local v15    # "fileUri":Landroid/net/Uri;
    :cond_c9
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 877
    .restart local v0    # "id":J
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v16, v15

    .line 881
    .end local v0    # "id":J
    .local v16, "fileUri":Landroid/net/Uri;
    :goto_d3
    if-eq v11, v13, :cond_e9

    if-eq v12, v13, :cond_e9

    .line 882
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 883
    .local v0, "weight":I
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v13, 0x1

    if-ne v1, v13, :cond_e3

    goto :goto_e4

    :cond_e3
    const/4 v13, 0x0

    :goto_e4
    move/from16 v19, v0

    move/from16 v20, v13

    .local v13, "italic":Z
    goto :goto_f1

    .line 885
    .end local v0    # "weight":I
    .end local v13    # "italic":Z
    :cond_e9
    const/16 v0, 0x190

    .line 886
    .restart local v0    # "weight":I
    const/4 v1, 0x0

    move v13, v1

    move/from16 v19, v0

    move/from16 v20, v13

    .line 888
    .end local v0    # "weight":I
    .local v19, "weight":I
    .local v20, "italic":Z
    :goto_f1
    nop

    .line 889
    invoke-static {v14}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v18

    .line 890
    .local v18, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    new-instance v15, Landroid/provider/FontsContract$FontInfo;

    invoke-direct/range {v15 .. v21}, Landroid/provider/FontsContract$FontInfo;-><init>(Landroid/net/Uri;I[Landroid/graphics/fonts/FontVariationAxis;IZI)V

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_fe
    .catchall {:try_start_5d .. :try_end_fe} :catchall_101

    .line 891
    move-object/from16 v1, p2

    .end local v14    # "variationSettings":Ljava/lang/String;
    .end local v16    # "fileUri":Landroid/net/Uri;
    .end local v17    # "ttcIndex":I
    .end local v18    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v19    # "weight":I
    .end local v20    # "italic":Z
    .end local v21    # "resultCode":I
    goto :goto_94

    .line 848
    .end local v6    # "resultCodeColumnIndex":I
    .end local v7    # "idColumnIndex":I
    .end local v8    # "fileIdColumnIndex":I
    .end local v9    # "ttcIndexColumnIndex":I
    .end local v10    # "vsColumnIndex":I
    .end local v11    # "weightColumnIndex":I
    .end local v12    # "italicColumnIndex":I
    :catchall_101
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_10d

    :try_start_105
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_108
    .catchall {:try_start_105 .. :try_end_108} :catchall_109

    goto :goto_10d

    :catchall_109
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10d
    :goto_10d
    throw v1

    .line 893
    :cond_10e
    if-eqz v4, :cond_113

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 894
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_113
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/provider/FontsContract$FontInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/FontsContract$FontInfo;

    return-object v0
.end method

.method public static greylist-max-o getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;
    .registers 14
    .param p0, "request"    # Landroid/provider/FontRequest;

    .line 347
    invoke-virtual {p0}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, "id":Ljava/lang/String;
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Typeface;

    .line 349
    .local v1, "cachedTypeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_10

    .line 350
    return-object v1

    .line 353
    :cond_10
    const-string v0, "FontsContract"

    const-string v3, "Platform version of downloadable fonts is deprecated. Please use androidx version instead."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v8, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 359
    :try_start_1a
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_f8

    move-object v9, v0

    .line 360
    .end local v1    # "cachedTypeface":Landroid/graphics/Typeface;
    .local v9, "cachedTypeface":Landroid/graphics/Typeface;
    if-eqz v9, :cond_27

    .line 361
    :try_start_25
    monitor-exit v8

    return-object v9

    .line 367
    :cond_27
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_47

    .line 369
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "fonts"

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    .line 370
    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 371
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    .line 373
    :cond_47
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 374
    .local v4, "lock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    .line 375
    .local v7, "cond":Ljava/util/concurrent/locks/Condition;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 376
    .local v3, "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/graphics/Typeface;>;"
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    invoke-direct {v6, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 377
    .local v6, "waiting":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 379
    .local v5, "timeout":Ljava/util/concurrent/atomic/AtomicBoolean;
    sget-object v11, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    new-instance v0, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;
    :try_end_65
    .catchall {:try_start_25 .. :try_end_65} :catchall_f5

    move-object v1, p0

    .end local p0    # "request":Landroid/provider/FontRequest;
    .local v1, "request":Landroid/provider/FontRequest;
    :try_start_66
    invoke-direct/range {v0 .. v7}, Landroid/provider/FontsContract$$ExternalSyntheticLambda13;-><init>(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_f1

    .end local v1    # "request":Landroid/provider/FontRequest;
    .restart local p0    # "request":Landroid/provider/FontRequest;
    :try_start_69
    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 403
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    const-wide/16 v11, 0x2710

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x1f4

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    move-wide v11, v0

    .line 406
    .local v11, "remaining":J
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_88
    .catchall {:try_start_69 .. :try_end_88} :catchall_f5

    .line 408
    :try_start_88
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_99

    .line 409
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_eb

    .line 428
    :try_start_94
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v8
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_f5

    .line 409
    return-object v0

    .line 413
    :cond_99
    :try_start_99
    invoke-interface {v7, v11, v12}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0
    :try_end_9d
    .catch Ljava/lang/InterruptedException; {:try_start_99 .. :try_end_9d} :catch_9f
    .catchall {:try_start_99 .. :try_end_9d} :catchall_eb

    .line 416
    .end local v11    # "remaining":J
    .local v0, "remaining":J
    move-wide v11, v0

    goto :goto_a0

    .line 414
    .end local v0    # "remaining":J
    .restart local v11    # "remaining":J
    :catch_9f
    move-exception v0

    .line 417
    :goto_a0
    :try_start_a0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b1

    .line 418
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_ac
    .catchall {:try_start_a0 .. :try_end_ac} :catchall_eb

    .line 428
    :try_start_ac
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v8
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_f5

    .line 418
    return-object v0

    .line 420
    :cond_b1
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-gtz v0, :cond_99

    .line 421
    :try_start_b7
    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    const-string v0, "FontsContract"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Remote font fetch timed out: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    invoke-virtual {p0}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "/"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_b7 .. :try_end_e4} :catchall_eb

    .line 424
    nop

    .line 428
    :try_start_e5
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    monitor-exit v8

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 428
    :catchall_eb
    move-exception v0

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 429
    nop

    .end local v2    # "id":Ljava/lang/String;
    .end local v9    # "cachedTypeface":Landroid/graphics/Typeface;
    .end local p0    # "request":Landroid/provider/FontRequest;
    throw v0
    :try_end_f1
    .catchall {:try_start_e5 .. :try_end_f1} :catchall_f5

    .line 430
    .end local v3    # "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/graphics/Typeface;>;"
    .end local v4    # "lock":Ljava/util/concurrent/locks/Lock;
    .end local v5    # "timeout":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v6    # "waiting":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v7    # "cond":Ljava/util/concurrent/locks/Condition;
    .end local v11    # "remaining":J
    .restart local v1    # "request":Landroid/provider/FontRequest;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v9    # "cachedTypeface":Landroid/graphics/Typeface;
    :catchall_f1
    move-exception v0

    move-object p0, v1

    move-object v1, v9

    .end local v1    # "request":Landroid/provider/FontRequest;
    .restart local p0    # "request":Landroid/provider/FontRequest;
    goto :goto_f9

    :catchall_f5
    move-exception v0

    move-object v1, v9

    goto :goto_f9

    .end local v9    # "cachedTypeface":Landroid/graphics/Typeface;
    .local v1, "cachedTypeface":Landroid/graphics/Typeface;
    :catchall_f8
    move-exception v0

    :goto_f9
    :try_start_f9
    monitor-exit v8
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v0
.end method

.method public static greylist-max-o getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;
    .registers 10
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "request"    # Landroid/provider/FontRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 769
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "providerAuthority":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 771
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_81

    .line 775
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 780
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 781
    return-object v1

    .line 785
    :cond_20
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 787
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Landroid/provider/FontsContract;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    .line 788
    .local v3, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v4, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 790
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 791
    .local v4, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_38
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_58

    .line 793
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 794
    .local v6, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 795
    invoke-static {v3, v6}, Landroid/provider/FontsContract;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 796
    return-object v1

    .line 791
    .end local v6    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 799
    .end local v5    # "i":I
    :cond_58
    const/4 v5, 0x0

    return-object v5

    .line 776
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_5a
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but package was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 777
    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 772
    :cond_81
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic blacklist lambda$getFontSync$0(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .registers 11
    .param p0, "request"    # Landroid/provider/FontRequest;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "holder"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p3, "lock"    # Ljava/util/concurrent/locks/Lock;
    .param p4, "timeout"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p5, "waiting"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p6, "cond"    # Ljava/util/concurrent/locks/Condition;

    .line 381
    :try_start_0
    sget-object v0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;

    move-result-object v0

    .line 382
    .local v0, "result":Landroid/provider/FontsContract$FontFamilyResult;
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v2

    if-nez v2, :cond_21

    .line 383
    sget-object v2, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 384
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_1e

    .line 385
    sget-object v2, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_1e
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_21} :catch_22

    .line 391
    .end local v0    # "result":Landroid/provider/FontsContract$FontFamilyResult;
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_21
    goto :goto_23

    .line 389
    :catch_22
    move-exception v0

    .line 392
    :goto_23
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 394
    :try_start_26
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_33

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 396
    invoke-interface {p6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_38

    .line 399
    :cond_33
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 400
    nop

    .line 401
    return-void

    .line 399
    :catchall_38
    move-exception v0

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 400
    throw v0
.end method

.method static synthetic blacklist lambda$requestFonts$1(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "cachedTypeface"    # Landroid/graphics/Typeface;

    .line 532
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$10(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 598
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$11(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 604
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$12(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "request"    # Landroid/provider/FontRequest;
    .param p3, "callerThreadHandler"    # Landroid/os/Handler;
    .param p4, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 539
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4} :catch_9f

    .line 544
    .local v0, "result":Landroid/provider/FontsContract$FontFamilyResult;
    nop

    .line 547
    sget-object v1, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 548
    .local v1, "anotherCachedTypeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_1c

    .line 549
    new-instance v2, Landroid/provider/FontsContract$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4, v1}, Landroid/provider/FontsContract$$ExternalSyntheticLambda1;-><init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    return-void

    .line 553
    :cond_1c
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v2

    if-eqz v2, :cond_44

    .line 554
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_aa

    .line 565
    new-instance v2, Landroid/provider/FontsContract$$ExternalSyntheticLambda4;

    invoke-direct {v2, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda4;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 567
    return-void

    .line 560
    :pswitch_32
    new-instance v2, Landroid/provider/FontsContract$$ExternalSyntheticLambda3;

    invoke-direct {v2, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda3;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 562
    return-void

    .line 556
    :pswitch_3b
    new-instance v2, Landroid/provider/FontsContract$$ExternalSyntheticLambda2;

    invoke-direct {v2, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda2;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void

    .line 571
    :cond_44
    invoke-virtual {v0}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v2

    .line 572
    .local v2, "fonts":[Landroid/provider/FontsContract$FontInfo;
    if-eqz v2, :cond_96

    array-length v3, v2

    if-nez v3, :cond_4e

    goto :goto_96

    .line 577
    :cond_4e
    array-length v3, v2

    const/4 v4, 0x0

    :goto_50
    if-ge v4, v3, :cond_75

    aget-object v5, v2, v4

    .line 578
    .local v5, "font":Landroid/provider/FontsContract$FontInfo;
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v6

    if-eqz v6, :cond_72

    .line 581
    invoke-virtual {v5}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v3

    .line 582
    .local v3, "resultCode":I
    if-gez v3, :cond_69

    .line 584
    new-instance v4, Landroid/provider/FontsContract$$ExternalSyntheticLambda6;

    invoke-direct {v4, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda6;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_71

    .line 587
    :cond_69
    new-instance v4, Landroid/provider/FontsContract$$ExternalSyntheticLambda7;

    invoke-direct {v4, p4, v3}, Landroid/provider/FontsContract$$ExternalSyntheticLambda7;-><init>(Landroid/provider/FontsContract$FontRequestCallback;I)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    :goto_71
    return-void

    .line 577
    .end local v3    # "resultCode":I
    .end local v5    # "font":Landroid/provider/FontsContract$FontInfo;
    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 594
    :cond_75
    invoke-static {p0, p1, v2}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 595
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-nez v3, :cond_84

    .line 598
    new-instance v4, Landroid/provider/FontsContract$$ExternalSyntheticLambda8;

    invoke-direct {v4, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda8;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    return-void

    .line 603
    :cond_84
    sget-object v4, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v4, Landroid/provider/FontsContract$$ExternalSyntheticLambda9;

    invoke-direct {v4, p4, v3}, Landroid/provider/FontsContract$$ExternalSyntheticLambda9;-><init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {p3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    return-void

    .line 573
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_96
    :goto_96
    new-instance v3, Landroid/provider/FontsContract$$ExternalSyntheticLambda5;

    invoke-direct {v3, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda5;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 575
    return-void

    .line 540
    .end local v0    # "result":Landroid/provider/FontsContract$FontFamilyResult;
    .end local v1    # "anotherCachedTypeface":Landroid/graphics/Typeface;
    .end local v2    # "fonts":[Landroid/provider/FontsContract$FontInfo;
    :catch_9f
    move-exception v0

    .line 541
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Landroid/provider/FontsContract$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4}, Landroid/provider/FontsContract$$ExternalSyntheticLambda0;-><init>(Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    return-void

    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_32
    .end packed-switch
.end method

.method static synthetic blacklist lambda$requestFonts$2(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 541
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$3(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "anotherCachedTypeface"    # Landroid/graphics/Typeface;

    .line 549
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$4(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 556
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$5(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 560
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$6(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 565
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$7(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 573
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$8(Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 584
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$requestFonts$9(Landroid/provider/FontsContract$FontRequestCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;
    .param p1, "resultCode"    # I

    .line 587
    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic blacklist lambda$static$13([B[B)I
    .registers 5
    .param p0, "l"    # [B
    .param p1, "r"    # [B

    .line 803
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_8

    .line 804
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    return v0

    .line 806
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    array-length v1, p0

    if-ge v0, v1, :cond_1b

    .line 807
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_18

    .line 808
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    return v1

    .line 806
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 811
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fonts"    # [Landroid/provider/FontsContract$FontInfo;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/provider/FontsContract$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 728
    move-object/from16 v1, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 729
    .local v2, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 731
    .local v3, "resolver":Landroid/content/ContentResolver;
    array-length v4, v1

    const/4 v0, 0x0

    move v5, v0

    :goto_f
    if-ge v5, v4, :cond_85

    aget-object v6, v1, v5

    .line 732
    .local v6, "font":Landroid/provider/FontsContract$FontInfo;
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 733
    move-object/from16 v9, p2

    goto/16 :goto_82

    .line 736
    :cond_1d
    invoke-virtual {v6}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 737
    .local v7, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 738
    move-object/from16 v9, p2

    goto :goto_82

    .line 741
    :cond_2a
    const/4 v8, 0x0

    .line 742
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    :try_start_2b
    const-string/jumbo v0, "r"
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_7c

    .line 743
    move-object/from16 v9, p2

    :try_start_30
    invoke-virtual {v3, v7, v0, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_7a

    move-object v10, v0

    .line 744
    .local v10, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v10, :cond_74

    .line 745
    :try_start_37
    new-instance v0, Ljava/io/FileInputStream;

    .line 746
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_40} :catch_73
    .catchall {:try_start_37 .. :try_end_40} :catchall_62

    move-object v11, v0

    .line 747
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_41
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v12, v0

    .line 748
    .local v12, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    .line 749
    .local v16, "size":J
    sget-object v13, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_57

    move-object v8, v0

    .line 750
    .end local v12    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v16    # "size":J
    :try_start_53
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_73
    .catchall {:try_start_53 .. :try_end_56} :catchall_62

    .line 752
    .end local v11    # "fis":Ljava/io/FileInputStream;
    goto :goto_74

    .line 745
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catchall_57
    move-exception v0

    move-object v12, v0

    :try_start_59
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception v0

    :try_start_5e
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "font":Landroid/provider/FontsContract$FontInfo;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v10    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "fonts":[Landroid/provider/FontsContract$FontInfo;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_61
    throw v12
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_73
    .catchall {:try_start_5e .. :try_end_62} :catchall_62

    .line 742
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    .restart local v3    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "font":Landroid/provider/FontsContract$FontInfo;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "fonts":[Landroid/provider/FontsContract$FontInfo;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_62
    move-exception v0

    move-object v11, v8

    move-object v8, v0

    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .local v11, "buffer":Ljava/nio/ByteBuffer;
    if-eqz v10, :cond_6f

    :try_start_67
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v0

    :try_start_6c
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "font":Landroid/provider/FontsContract$FontInfo;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "fonts":[Landroid/provider/FontsContract$FontInfo;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    :cond_6f
    :goto_6f
    throw v8
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_70

    .line 754
    .end local v10    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v2    # "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    .restart local v3    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "font":Landroid/provider/FontsContract$FontInfo;
    .restart local v7    # "uri":Landroid/net/Uri;
    .restart local v11    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "fonts":[Landroid/provider/FontsContract$FontInfo;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_70
    move-exception v0

    move-object v8, v11

    goto :goto_7f

    .line 750
    .end local v11    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v10    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_73
    move-exception v0

    .line 754
    :cond_74
    :goto_74
    if-eqz v10, :cond_79

    :try_start_76
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    .line 756
    .end local v10    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_79
    goto :goto_7f

    .line 754
    :catch_7a
    move-exception v0

    goto :goto_7f

    :catch_7c
    move-exception v0

    move-object/from16 v9, p2

    .line 760
    :goto_7f
    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    .end local v6    # "font":Landroid/provider/FontsContract$FontInfo;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    :goto_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 762
    :cond_85
    move-object/from16 v9, p2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist requestFonts(Landroid/content/Context;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/os/CancellationSignal;Landroid/provider/FontsContract$FontRequestCallback;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroid/provider/FontRequest;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "callback"    # Landroid/provider/FontsContract$FontRequestCallback;

    .line 529
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object v5, v0

    .line 530
    .local v5, "callerThreadHandler":Landroid/os/Handler;
    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 531
    .local v0, "cachedTypeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_1d

    .line 532
    new-instance v1, Landroid/provider/FontsContract$$ExternalSyntheticLambda10;

    invoke-direct {v1, p4, v0}, Landroid/provider/FontsContract$$ExternalSyntheticLambda10;-><init>(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    return-void

    .line 536
    :cond_1d
    new-instance v1, Landroid/provider/FontsContract$$ExternalSyntheticLambda11;

    move-object v2, p0

    move-object v4, p1

    move-object v3, p3

    move-object v6, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "request":Landroid/provider/FontRequest;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p4    # "callback":Landroid/provider/FontsContract$FontRequestCallback;
    .local v2, "context":Landroid/content/Context;
    .local v3, "cancellationSignal":Landroid/os/CancellationSignal;
    .local v4, "request":Landroid/provider/FontRequest;
    .local v6, "callback":Landroid/provider/FontsContract$FontRequestCallback;
    invoke-direct/range {v1 .. v6}, Landroid/provider/FontsContract$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    return-void
.end method

.method public static greylist-max-o setApplicationContextForResources(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    .line 181
    return-void
.end method
