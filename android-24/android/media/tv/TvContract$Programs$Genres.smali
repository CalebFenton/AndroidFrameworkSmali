.class public final Landroid/media/tv/TvContract$Programs$Genres;
.super Ljava/lang/Object;
.source "TvContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContract$Programs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation


# static fields
.field public static final ANIMAL_WILDLIFE:Ljava/lang/String; = "ANIMAL_WILDLIFE"

.field public static final ARTS:Ljava/lang/String; = "ARTS"

.field private static final CANONICAL_GENRES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMEDY:Ljava/lang/String; = "COMEDY"

.field private static final COMMA:C = ','

.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final DOUBLE_QUOTE:C = '\"'

.field public static final DRAMA:Ljava/lang/String; = "DRAMA"

.field public static final EDUCATION:Ljava/lang/String; = "EDUCATION"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ENTERTAINMENT:Ljava/lang/String; = "ENTERTAINMENT"

.field public static final FAMILY_KIDS:Ljava/lang/String; = "FAMILY_KIDS"

.field public static final GAMING:Ljava/lang/String; = "GAMING"

.field public static final LIFE_STYLE:Ljava/lang/String; = "LIFE_STYLE"

.field public static final MOVIES:Ljava/lang/String; = "MOVIES"

.field public static final MUSIC:Ljava/lang/String; = "MUSIC"

.field public static final NEWS:Ljava/lang/String; = "NEWS"

.field public static final PREMIER:Ljava/lang/String; = "PREMIER"

.field public static final SHOPPING:Ljava/lang/String; = "SHOPPING"

.field public static final SPORTS:Ljava/lang/String; = "SPORTS"

.field public static final TECH_SCIENCE:Ljava/lang/String; = "TECH_SCIENCE"

.field public static final TRAVEL:Ljava/lang/String; = "TRAVEL"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1468
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@7
    .line 1470
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@9
    const-string/jumbo v1, "FAMILY_KIDS"

    #@c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@f
    .line 1471
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@11
    const-string/jumbo v1, "SPORTS"

    #@14
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@17
    .line 1472
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@19
    const-string/jumbo v1, "SHOPPING"

    #@1c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@1f
    .line 1473
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@21
    const-string/jumbo v1, "MOVIES"

    #@24
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@27
    .line 1474
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@29
    const-string/jumbo v1, "COMEDY"

    #@2c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2f
    .line 1475
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@31
    const-string/jumbo v1, "TRAVEL"

    #@34
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@37
    .line 1476
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@39
    const-string/jumbo v1, "DRAMA"

    #@3c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@3f
    .line 1477
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@41
    const-string/jumbo v1, "EDUCATION"

    #@44
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@47
    .line 1478
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@49
    const-string/jumbo v1, "ANIMAL_WILDLIFE"

    #@4c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@4f
    .line 1479
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@51
    const-string/jumbo v1, "NEWS"

    #@54
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@57
    .line 1480
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@59
    const-string/jumbo v1, "GAMING"

    #@5c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@5f
    .line 1481
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@61
    const-string/jumbo v1, "ARTS"

    #@64
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@67
    .line 1482
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@69
    const-string/jumbo v1, "ENTERTAINMENT"

    #@6c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@6f
    .line 1483
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@71
    const-string/jumbo v1, "LIFE_STYLE"

    #@74
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@77
    .line 1484
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@79
    const-string/jumbo v1, "MUSIC"

    #@7c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@7f
    .line 1485
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@81
    const-string/jumbo v1, "PREMIER"

    #@84
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@87
    .line 1486
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@89
    const-string/jumbo v1, "TECH_SCIENCE"

    #@8c
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@8f
    .line 1493
    const/4 v0, 0x0

    #@90
    new-array v0, v0, [Ljava/lang/String;

    #@92
    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@94
    .line 1416
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "genres"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1544
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v7

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 1546
    sget-object v7, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    #@a
    return-object v7

    #@b
    .line 1548
    :cond_0
    const/16 v7, 0x2c

    #@d
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    #@10
    move-result v7

    #@11
    if-ne v7, v8, :cond_1

    #@13
    const/16 v7, 0x22

    #@15
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    #@18
    move-result v7

    #@19
    if-ne v7, v8, :cond_1

    #@1b
    .line 1549
    const/4 v7, 0x1

    #@1c
    new-array v7, v7, [Ljava/lang/String;

    #@1e
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@21
    move-result-object v8

    #@22
    aput-object v8, v7, v9

    #@24
    return-object v7

    #@25
    .line 1551
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    .line 1552
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 1553
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@32
    move-result v3

    #@33
    .line 1554
    .local v3, "length":I
    const/4 v1, 0x0

    #@34
    .line 1555
    .local v1, "escape":Z
    const/4 v2, 0x0

    #@35
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    #@37
    .line 1556
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v0

    #@3b
    .line 1557
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@3e
    .line 1575
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 1576
    const/4 v1, 0x0

    #@42
    .line 1555
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_0

    #@45
    .line 1559
    :sswitch_0
    if-nez v1, :cond_2

    #@47
    .line 1560
    const/4 v1, 0x1

    #@48
    .line 1561
    goto :goto_1

    #@49
    .line 1565
    :sswitch_1
    if-nez v1, :cond_2

    #@4b
    .line 1566
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    .line 1567
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@56
    move-result v7

    #@57
    if-lez v7, :cond_3

    #@59
    .line 1568
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5c
    .line 1570
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@5e
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    .line 1571
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    #@62
    .line 1578
    .end local v0    # "c":C
    .end local v6    # "string":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v7

    #@66
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@69
    move-result-object v6

    #@6a
    .line 1579
    .restart local v6    # "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@6d
    move-result v7

    #@6e
    if-lez v7, :cond_5

    #@70
    .line 1580
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@73
    .line 1582
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@76
    move-result v7

    #@77
    new-array v7, v7, [Ljava/lang/String;

    #@79
    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@7c
    move-result-object v7

    #@7d
    check-cast v7, [Ljava/lang/String;

    #@7f
    return-object v7

    #@80
    .line 1557
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method public static varargs encode([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "genres"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1505
    if-nez p0, :cond_0

    #@3
    .line 1507
    return-object v3

    #@4
    .line 1509
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 1510
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, ""

    #@c
    .line 1511
    .local v2, "separator":Ljava/lang/String;
    const/4 v3, 0x0

    #@d
    array-length v4, p0

    #@e
    :goto_0
    if-ge v3, v4, :cond_1

    #@10
    aget-object v0, p0, v3

    #@12
    .line 1512
    .local v0, "genre":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v5

    #@16
    invoke-static {v0}, Landroid/media/tv/TvContract$Programs$Genres;->encodeToCsv(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1513
    const-string/jumbo v2, ","

    #@20
    .line 1511
    add-int/lit8 v3, v3, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1515
    .end local v0    # "genre":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    return-object v3
.end method

.method private static encodeToCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "genre"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x22

    #@2
    .line 1519
    new-instance v3, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1520
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    .line 1521
    .local v2, "length":I
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@e
    .line 1522
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 1523
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@15
    .line 1531
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@18
    .line 1521
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1525
    :sswitch_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    goto :goto_1

    #@1f
    .line 1528
    :sswitch_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    goto :goto_1

    #@23
    .line 1533
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    return-object v4

    #@28
    .line 1523
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method public static isCanonical(Ljava/lang/String;)Z
    .locals 1
    .param p0, "genre"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1592
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
