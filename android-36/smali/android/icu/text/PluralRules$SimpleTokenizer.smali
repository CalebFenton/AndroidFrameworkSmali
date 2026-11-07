.class Landroid/icu/text/PluralRules$SimpleTokenizer;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleTokenizer"
.end annotation


# static fields
.field static final greylist-max-o BREAK_AND_IGNORE:Landroid/icu/text/UnicodeSet;

.field static final greylist-max-o BREAK_AND_KEEP:Landroid/icu/text/UnicodeSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1420
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Landroid/icu/text/UnicodeSet;

    .line 1421
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_34

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Landroid/icu/text/UnicodeSet;

    return-void

    :array_24
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data

    :array_34
    .array-data 4
        0x21
        0x21
        0x25
        0x25
        0x2c
        0x2c
        0x2e
        0x2e
        0x3d
        0x3d
    .end array-data
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 1419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "source"    # Ljava/lang/String;

    .line 1423
    const/4 v0, -0x1

    .line 1424
    .local v0, "last":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 1426
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1427
    .local v3, "ch":C
    sget-object v4, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1428
    if-ltz v0, :cond_43

    .line 1429
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    const/4 v0, -0x1

    goto :goto_43

    .line 1432
    :cond_24
    sget-object v4, Landroid/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v3}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1433
    if-ltz v0, :cond_35

    .line 1434
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1436
    :cond_35
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    const/4 v0, -0x1

    goto :goto_43

    .line 1438
    :cond_40
    if-gez v0, :cond_43

    .line 1439
    move v0, v2

    .line 1425
    .end local v3    # "ch":C
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1442
    .end local v2    # "i":I
    :cond_46
    if-ltz v0, :cond_4f

    .line 1443
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1445
    :cond_4f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method
