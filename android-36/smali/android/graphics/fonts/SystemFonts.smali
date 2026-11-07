.class public final Landroid/graphics/fonts/SystemFonts;
.super Ljava/lang/Object;
.source "SystemFonts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    }
.end annotation


# static fields
.field private static final blacklist DEVICE_FONTS_XML_DIR:Ljava/lang/String; = "/system/etc/"

.field private static final blacklist DEVICE_FONT_DIR:Ljava/lang/String; = "/system/fonts/"

.field private static final blacklist FONTS_XML:Ljava/lang/String;

.field public static final blacklist LEGACY_FONTS_XML:Ljava/lang/String;

.field private static final blacklist LOCK:Ljava/lang/Object;

.field public static final blacklist OEM_FONT_DIR:Ljava/lang/String; = "/product/fonts/"

.field private static final blacklist OEM_XML:Ljava/lang/String; = "/product/etc/fonts_customization.xml"

.field public static final blacklist SYSTEM_FONT_DIR:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "SystemFonts"

.field private static blacklist sAvailableFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getFontsXmlDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "font_fallback.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->FONTS_XML:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getFontsXmlDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fonts.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->LEGACY_FONTS_XML:Ljava/lang/String;

    .line 64
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemFontDir()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist appendNamedFamilyList(Landroid/text/FontConfig$NamedFamilyList;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 15
    .param p0, "namedFamilyList"    # Landroid/text/FontConfig$NamedFamilyList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$NamedFamilyList;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local p2, "fallbackListMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$NamedFamilyList;->getName()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "familyName":Ljava/lang/String;
    new-instance v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;-><init>(Landroid/graphics/fonts/SystemFonts-IA;)V

    .line 304
    .local v1, "familyListSet":Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    invoke-virtual {p0}, Landroid/text/FontConfig$NamedFamilyList;->getFamilies()Ljava/util/List;

    move-result-object v3

    .line 305
    .local v3, "xmlFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 306
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/text/FontConfig$FontFamily;

    .line 307
    .local v5, "xmlFamily":Landroid/text/FontConfig$FontFamily;
    nop

    .line 308
    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v6

    .line 309
    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v8

    .line 310
    invoke-static {v5, v2}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v9

    .line 307
    const/4 v10, 0x1

    move-object v11, p1

    .end local p1    # "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local v11, "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-static/range {v6 .. v11}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object p1

    .line 314
    .local p1, "family":Landroid/graphics/fonts/FontFamily;
    if-nez p1, :cond_39

    .line 315
    return-void

    .line 317
    :cond_39
    iget-object v6, v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v6, v1, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    .end local v5    # "xmlFamily":Landroid/text/FontConfig$FontFamily;
    .end local p1    # "family":Landroid/graphics/fonts/FontFamily;
    add-int/lit8 v4, v4, 0x1

    move-object p1, v11

    goto :goto_f

    .line 320
    .end local v4    # "i":I
    .end local v11    # "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local p1, "bufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    :cond_4c
    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void
.end method

.method public static blacklist buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;
    .registers 2
    .param p0, "fontConfig"    # Landroid/text/FontConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p0, v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist buildSystemFallback(Landroid/text/FontConfig;Landroid/util/ArrayMap;)Ljava/util/Map;
    .registers 16
    .param p0, "fontConfig"    # Landroid/text/FontConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 414
    .local p1, "outBufferCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 415
    .local v0, "fallbackListMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;>;"
    nop

    .line 416
    invoke-virtual {p0}, Landroid/text/FontConfig;->getLocaleFallbackCustomizations()Ljava/util/List;

    move-result-object v1

    .line 418
    .local v1, "localeFallbacks":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Customization$LocaleFallback;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig;->getNamedFamilyLists()Ljava/util/List;

    move-result-object v2

    .line 419
    .local v2, "namedFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$NamedFamilyList;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 420
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$NamedFamilyList;

    .line 421
    .local v4, "namedFamilyList":Landroid/text/FontConfig$NamedFamilyList;
    invoke-static {v4, p1, v0}, Landroid/graphics/fonts/SystemFonts;->appendNamedFamilyList(Landroid/text/FontConfig$NamedFamilyList;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 419
    .end local v4    # "namedFamilyList":Landroid/text/FontConfig$NamedFamilyList;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 425
    .end local v3    # "i":I
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v3, "customizations":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Customization$LocaleFallback;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    .line 427
    .local v4, "xmlFamilies":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$FontFamily;>;"
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 428
    .local v5, "seenCustomization":Landroid/util/SparseIntArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_d9

    .line 429
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$FontFamily;

    .line 431
    .local v7, "xmlFamily":Landroid/text/FontConfig$FontFamily;
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 432
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_6c

    .line 433
    const/4 v9, -0x1

    invoke-virtual {v5, v8, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    if-eq v11, v9, :cond_4f

    .line 434
    goto :goto_69

    .line 436
    :cond_4f
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 437
    .local v9, "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    invoke-virtual {v7}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v11

    invoke-virtual {v9}, Landroid/text/FontConfig$Customization$LocaleFallback;->getScript()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/graphics/fonts/SystemFonts;->scriptMatch(Landroid/os/LocaleList;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_69

    .line 438
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v5, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 432
    .end local v9    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    :cond_69
    :goto_69
    add-int/lit8 v8, v8, 0x1

    goto :goto_40

    .line 443
    .end local v8    # "j":I
    :cond_6c
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_76

    .line 444
    invoke-static {v7, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    goto :goto_d5

    .line 446
    :cond_76
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_77
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_93

    .line 447
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 448
    .restart local v9    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    invoke-virtual {v9}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v11

    if-nez v11, :cond_90

    .line 449
    invoke-virtual {v9}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v11

    invoke-static {v11, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 446
    .end local v9    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    :cond_90
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    .line 453
    .end local v8    # "j":I
    :cond_93
    const/4 v8, 0x0

    .line 454
    .local v8, "isReplaced":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_95
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_b3

    .line 455
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 456
    .local v11, "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_b0

    .line 457
    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v12

    invoke-static {v12, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 459
    const/4 v8, 0x1

    .line 454
    .end local v11    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    :cond_b0
    add-int/lit8 v9, v9, 0x1

    goto :goto_95

    .line 462
    .end local v9    # "j":I
    :cond_b3
    if-nez v8, :cond_b8

    .line 463
    invoke-static {v7, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 465
    :cond_b8
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_b9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_d5

    .line 466
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/FontConfig$Customization$LocaleFallback;

    .line 467
    .restart local v11    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getOperation()I

    move-result v12

    if-ne v12, v10, :cond_d2

    .line 468
    invoke-virtual {v11}, Landroid/text/FontConfig$Customization$LocaleFallback;->getFamily()Landroid/text/FontConfig$FontFamily;

    move-result-object v12

    invoke-static {v12, v0, p1}, Landroid/graphics/fonts/SystemFonts;->pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V

    .line 465
    .end local v11    # "localeFallback":Landroid/text/FontConfig$Customization$LocaleFallback;
    :cond_d2
    add-int/lit8 v9, v9, 0x1

    goto :goto_b9

    .line 428
    .end local v7    # "xmlFamily":Landroid/text/FontConfig$FontFamily;
    .end local v8    # "isReplaced":Z
    .end local v9    # "j":I
    :cond_d5
    :goto_d5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_30

    .line 476
    .end local v6    # "i":I
    :cond_d9
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 477
    .local v6, "fallbackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_df
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_102

    .line 478
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 479
    .local v8, "fallbackName":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    iget-object v9, v9, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    .line 480
    .local v9, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamily;>;"
    const/4 v10, 0x0

    new-array v10, v10, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/graphics/fonts/FontFamily;

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .end local v8    # "fallbackName":Ljava/lang/String;
    .end local v9    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontFamily;>;"
    add-int/lit8 v7, v7, 0x1

    goto :goto_df

    .line 483
    .end local v7    # "i":I
    :cond_102
    return-object v6
.end method

.method public static blacklist buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;
    .registers 4
    .param p0, "fontConfig"    # Landroid/text/FontConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 494
    .local p1, "fallbackMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 495
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig;->getAliases()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/graphics/Typeface;->initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V

    .line 496
    return-object v0
.end method

.method private static blacklist createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;
    .registers 15
    .param p1, "languageTags"    # Ljava/lang/String;
    .param p2, "variant"    # I
    .param p3, "varFamilyType"    # I
    .param p4, "isDefaultFallback"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Font;",
            ">;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/fonts/FontFamily;"
        }
    .end annotation

    .line 257
    .local p0, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    .local p5, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 258
    return-object v1

    .line 261
    :cond_8
    const/4 v0, 0x0

    .line 262
    .local v0, "b":Landroid/graphics/fonts/FontFamily$Builder;
    const/4 v2, 0x0

    move-object v3, v0

    .end local v0    # "b":Landroid/graphics/fonts/FontFamily$Builder;
    .local v2, "i":I
    .local v3, "b":Landroid/graphics/fonts/FontFamily$Builder;
    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_89

    .line 263
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/text/FontConfig$Font;

    .line 264
    .local v4, "fontConfig":Landroid/text/FontConfig$Font;
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "fullPath":Ljava/lang/String;
    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 266
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_3b

    .line 267
    invoke-interface {p5, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 268
    goto :goto_7f

    .line 270
    :cond_2f
    invoke-static {v5}, Landroid/graphics/fonts/SystemFonts;->mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 271
    invoke-interface {p5, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    if-nez v0, :cond_39

    .line 273
    goto :goto_7f

    .line 272
    :cond_39
    move-object v6, v0

    goto :goto_3c

    .line 266
    :cond_3b
    move-object v6, v0

    .line 279
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :goto_3c
    :try_start_3c
    new-instance v0, Landroid/graphics/fonts/Font$Builder;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v7, p1}, Landroid/graphics/fonts/Font$Builder;-><init>(Ljava/nio/ByteBuffer;Ljava/io/File;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    .line 281
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getTtcIndex()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v4}, Landroid/text/FontConfig$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v0
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_72} :catch_82

    .line 287
    .local v0, "font":Landroid/graphics/fonts/Font;
    nop

    .line 289
    if-nez v3, :cond_7c

    .line 290
    new-instance v7, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v7, v0}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v3, v7

    .end local v3    # "b":Landroid/graphics/fonts/FontFamily$Builder;
    .local v7, "b":Landroid/graphics/fonts/FontFamily$Builder;
    goto :goto_7f

    .line 292
    .end local v7    # "b":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v3    # "b":Landroid/graphics/fonts/FontFamily$Builder;
    :cond_7c
    invoke-virtual {v3, v0}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 262
    .end local v0    # "font":Landroid/graphics/fonts/Font;
    .end local v4    # "fontConfig":Landroid/text/FontConfig$Font;
    .end local v5    # "fullPath":Ljava/lang/String;
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 285
    .restart local v4    # "fontConfig":Landroid/text/FontConfig$Font;
    .restart local v5    # "fullPath":Ljava/lang/String;
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    :catch_82
    move-exception v0

    .line 286
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 295
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "i":I
    .end local v4    # "fontConfig":Landroid/text/FontConfig$Font;
    .end local v5    # "fullPath":Ljava/lang/String;
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    :cond_89
    if-nez v3, :cond_90

    move-object v4, p1

    move v5, p2

    move v8, p3

    move v7, p4

    goto :goto_99

    :cond_90
    const/4 v6, 0x0

    move-object v4, p1

    move v5, p2

    move v8, p3

    move v7, p4

    .end local p1    # "languageTags":Ljava/lang/String;
    .end local p2    # "variant":I
    .end local p3    # "varFamilyType":I
    .end local p4    # "isDefaultFallback":Z
    .local v4, "languageTags":Ljava/lang/String;
    .local v5, "variant":I
    .local v7, "isDefaultFallback":Z
    .local v8, "varFamilyType":I
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/fonts/FontFamily$Builder;->build(Ljava/lang/String;IZZI)Landroid/graphics/fonts/FontFamily;

    move-result-object v1

    :goto_99
    return-object v1
.end method

.method public static whitelist getAvailableFonts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/fonts/Font;",
            ">;"
        }
    .end annotation

    .line 101
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    if-nez v1, :cond_d

    .line 103
    invoke-static {}, Landroid/graphics/fonts/Font;->getAvailableFonts()Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    .line 105
    :cond_d
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 106
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private static blacklist getFontsXmlDir()Ljava/lang/String;
    .registers 1

    .line 79
    const-string v0, "/system/etc/"

    return-object v0
.end method

.method private static blacklist getFontsXmlDir$ravenwood()Ljava/lang/String;
    .registers 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getRavenwoodRuntimePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSystemFontConfig(Ljava/util/Map;JI)Landroid/text/FontConfig;
    .registers 12
    .param p1, "lastModifiedDate"    # J
    .param p3, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .line 334
    .local p0, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->FONTS_XML:Ljava/lang/String;

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    .end local p0    # "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .end local p1    # "lastModifiedDate":J
    .end local p3    # "configVersion":I
    .local v4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local v5, "lastModifiedDate":J
    .local v7, "configVersion":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getSystemFontConfigForTesting(Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .registers 13
    .param p0, "fontsXml"    # Ljava/lang/String;
    .param p2, "lastModifiedDate"    # J
    .param p4, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .line 350
    .local p1, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    move-object v0, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    .end local p0    # "fontsXml":Ljava/lang/String;
    .end local p1    # "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .end local p2    # "lastModifiedDate":J
    .end local p4    # "configVersion":I
    .local v0, "fontsXml":Ljava/lang/String;
    .local v4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    .local v5, "lastModifiedDate":J
    .local v7, "configVersion":I
    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object p0

    return-object p0
.end method

.method static blacklist getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .registers 19
    .param p0, "fontsXml"    # Ljava/lang/String;
    .param p1, "systemFontDir"    # Ljava/lang/String;
    .param p2, "oemXml"    # Ljava/lang/String;
    .param p3, "productFontDir"    # Ljava/lang/String;
    .param p5, "lastModifiedDate"    # J
    .param p7, "configVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .line 381
    .local p4, "updatableFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string v1, "SystemFonts"

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading font config from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static/range {p0 .. p7}, Landroid/graphics/FontListParser;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1c} :catch_3c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_1c} :catch_1d

    return-object v0

    .line 388
    :catch_1d
    move-exception v0

    .line 389
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Failed to parse the system font configuration."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    new-instance v3, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 390
    return-object v3

    .line 384
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3c
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Failed to open/read system font configurations."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    new-instance v3, Landroid/text/FontConfig;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 387
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JI)V

    .line 386
    return-object v3
.end method

.method private static blacklist getSystemFontDir()Ljava/lang/String;
    .registers 1

    .line 88
    const-string v0, "/system/fonts/"

    return-object v0
.end method

.method private static blacklist getSystemFontDir$ravenwood()Ljava/lang/String;
    .registers 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getInstance()Lcom/android/internal/ravenwood/RavenwoodEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/ravenwood/RavenwoodEnvironment;->getRavenwoodRuntimePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSystemPreinstalledFontConfig()Landroid/text/FontConfig;
    .registers 8

    .line 359
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->FONTS_XML:Ljava/lang/String;

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSystemPreinstalledFontConfigFromLegacyXml()Landroid/text/FontConfig;
    .registers 8

    .line 367
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LEGACY_FONTS_XML:Ljava/lang/String;

    sget-object v1, Landroid/graphics/fonts/SystemFonts;->SYSTEM_FONT_DIR:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-string v2, "/product/etc/fonts_customization.xml"

    const-string v3, "/product/fonts/"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Landroid/graphics/fonts/SystemFonts;->getSystemFontConfigInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist mmap(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p0, "fullPath"    # Ljava/lang/String;

    .line 119
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_26

    move-object v1, v0

    .line 120
    .local v1, "file":Ljava/io/FileInputStream;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v2, v0

    .line 121
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 122
    .local v6, "fontSize":J
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1b

    .line 123
    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_26

    .line 122
    return-object v0

    .line 119
    .end local v2    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "fontSize":J
    :catchall_1b
    move-exception v0

    move-object v2, v0

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v0

    :try_start_22
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "fullPath":Ljava/lang/String;
    :goto_25
    throw v2
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_26

    .line 123
    .end local v1    # "file":Ljava/io/FileInputStream;
    .restart local p0    # "fullPath":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist pushFamilyToFallback(Landroid/text/FontConfig$FontFamily;Landroid/util/ArrayMap;Ljava/util/Map;)V
    .registers 15
    .param p0, "xmlFamily"    # Landroid/text/FontConfig$FontFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/FontConfig$FontFamily;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "fallbackMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;>;"
    .local p2, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "languageTags":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getVariant()I

    move-result v3

    .line 199
    .local v3, "variant":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "defaultFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 204
    .local v0, "specificFallbackFonts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;>;"
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v5, :cond_41

    aget-object v7, v4, v6

    .line 205
    .local v7, "font":Landroid/text/FontConfig$Font;
    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v8

    .line 206
    .local v8, "fallbackName":Ljava/lang/String;
    if-nez v8, :cond_2a

    .line 207
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 209
    :cond_2a
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 210
    .local v9, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    if-nez v9, :cond_3b

    .line 211
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v10

    .line 212
    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_3b
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v7    # "font":Landroid/text/FontConfig$Font;
    .end local v8    # "fallbackName":Ljava/lang/String;
    .end local v9    # "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    :goto_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 218
    :cond_41
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4b

    move-object v6, p2

    move-object p2, v1

    goto :goto_56

    .line 219
    :cond_4b
    invoke-static {p0, v5}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v4

    .line 218
    const/4 v5, 0x0

    move-object v6, p2

    .end local p2    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    .local v6, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/nio/ByteBuffer;>;"
    invoke-static/range {v1 .. v6}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v5

    move-object p2, v1

    .end local v1    # "defaultFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    .local p2, "defaultFonts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    :goto_56
    move-object v7, v5

    .line 222
    .local v7, "defaultFamily":Landroid/graphics/fonts/FontFamily;
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_59
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v8, v1, :cond_ad

    .line 223
    invoke-virtual {p1, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 224
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;

    .line 225
    .local v10, "familyListSet":Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    .line 226
    .local v11, "identityHash":I
    iget-object v1, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v1, v11, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v4, :cond_7b

    .line 227
    goto :goto_aa

    .line 229
    :cond_7b
    iget-object v1, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->seenXmlFamilies:Landroid/util/SparseIntArray;

    const/4 v4, 0x1

    invoke-virtual {v1, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 231
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 232
    .local v1, "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    if-nez v1, :cond_91

    .line 233
    if-eqz v7, :cond_aa

    .line 234
    iget-object v4, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 237
    :cond_91
    nop

    .line 238
    invoke-static {p0, v9}, Landroid/graphics/fonts/SystemFonts;->resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I

    move-result v4

    .line 237
    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/graphics/fonts/SystemFonts;->createFontFamily(Ljava/util/List;Ljava/lang/String;IIZLjava/util/Map;)Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    .line 239
    .local v4, "family":Landroid/graphics/fonts/FontFamily;
    if-eqz v4, :cond_a3

    .line 240
    iget-object v5, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 241
    :cond_a3
    if-eqz v7, :cond_aa

    .line 242
    iget-object v5, v10, Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;->familyList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v1    # "fallback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/FontConfig$Font;>;"
    .end local v4    # "family":Landroid/graphics/fonts/FontFamily;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "familyListSet":Landroid/graphics/fonts/SystemFonts$NativeFamilyListSet;
    .end local v11    # "identityHash":I
    :cond_aa
    :goto_aa
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 248
    .end local v8    # "i":I
    :cond_ad
    return-void
.end method

.method public static blacklist resetAvailableFonts()V
    .registers 2

    .line 113
    sget-object v0, Landroid/graphics/fonts/SystemFonts;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/graphics/fonts/SystemFonts;->sAvailableFonts:Ljava/util/Set;

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public static blacklist resolveVarFamilyType(Landroid/text/FontConfig$FontFamily;Ljava/lang/String;)I
    .registers 12
    .param p0, "xmlFamily"    # Landroid/text/FontConfig$FontFamily;
    .param p1, "familyName"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "wghtCount":I
    const/4 v1, 0x0

    .line 135
    .local v1, "italCount":I
    const/4 v2, 0x0

    .line 136
    .local v2, "targetFonts":I
    const/4 v3, 0x0

    .line 138
    .local v3, "hasItalicFont":Z
    invoke-virtual {p0}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v4

    .line 139
    .local v4, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v6, :cond_4e

    .line 140
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/text/FontConfig$Font;

    .line 142
    .local v6, "font":Landroid/text/FontConfig$Font;
    if-nez p1, :cond_20

    .line 143
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2b

    .line 144
    goto :goto_4b

    .line 147
    :cond_20
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getFontFamilyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2b

    .line 148
    goto :goto_4b

    .line 152
    :cond_2b
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getVarTypeAxes()I

    move-result v9

    .line 153
    .local v9, "varTypeAxes":I
    if-nez v9, :cond_32

    .line 155
    return v7

    .line 158
    :cond_32
    and-int/lit8 v7, v9, 0x1

    if-eqz v7, :cond_38

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 162
    :cond_38
    and-int/lit8 v7, v9, 0x2

    if-eqz v7, :cond_3e

    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 166
    :cond_3e
    invoke-virtual {v6}, Landroid/text/FontConfig$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v7

    if-ne v7, v8, :cond_49

    .line 167
    const/4 v3, 0x1

    .line 169
    :cond_49
    add-int/lit8 v2, v2, 0x1

    .line 139
    .end local v6    # "font":Landroid/text/FontConfig$Font;
    .end local v9    # "varTypeAxes":I
    :goto_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 172
    .end local v5    # "i":I
    :cond_4e
    const/4 v5, 0x2

    if-nez v1, :cond_5e

    .line 173
    if-ne v2, v8, :cond_56

    if-ne v0, v8, :cond_56

    .line 176
    return v8

    .line 177
    :cond_56
    if-ne v2, v5, :cond_65

    if-ne v0, v5, :cond_65

    if-eqz v3, :cond_65

    .line 181
    const/4 v5, 0x3

    return v5

    .line 183
    :cond_5e
    if-ne v1, v8, :cond_65

    .line 185
    if-ne v0, v8, :cond_65

    if-ne v2, v8, :cond_65

    .line 186
    return v5

    .line 190
    :cond_65
    return v7
.end method

.method private static blacklist scriptMatch(Landroid/os/LocaleList;Ljava/lang/String;)Z
    .registers 10
    .param p0, "localeList"    # Landroid/os/LocaleList;
    .param p1, "targetScript"    # Ljava/lang/String;

    .line 500
    const/4 v0, 0x0

    if-eqz p0, :cond_91

    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_91

    .line 503
    :cond_b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_90

    .line 504
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 505
    .local v2, "locale":Ljava/util/Locale;
    if-nez v2, :cond_1a

    .line 506
    goto/16 :goto_8b

    .line 508
    :cond_1a
    invoke-static {v2}, Landroid/text/FontConfig;->resolveScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "baseScript":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_26

    .line 510
    return v5

    .line 514
    :cond_26
    const-string v4, "Bopo"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Hanb"

    if-eqz v4, :cond_37

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 516
    return v5

    .line 517
    :cond_37
    const-string v4, "Hani"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "Jpan"

    if-eqz v4, :cond_66

    .line 518
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "Hans"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 519
    const-string v4, "Hant"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    const-string v4, "Kore"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 520
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 523
    :cond_65
    return v5

    .line 525
    :cond_66
    const-string v4, "Hira"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Hrkt"

    if-nez v4, :cond_7e

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 526
    const-string v4, "Kana"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 527
    :cond_7e
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    goto :goto_8f

    .line 503
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "baseScript":Ljava/lang/String;
    :cond_8b
    :goto_8b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    .line 530
    .restart local v2    # "locale":Ljava/util/Locale;
    .restart local v3    # "baseScript":Ljava/lang/String;
    :cond_8f
    :goto_8f
    return v5

    .line 534
    .end local v1    # "i":I
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "baseScript":Ljava/lang/String;
    :cond_90
    return v0

    .line 501
    :cond_91
    :goto_91
    return v0
.end method
