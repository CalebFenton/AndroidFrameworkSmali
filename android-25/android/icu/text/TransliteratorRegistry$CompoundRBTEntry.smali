.class Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundRBTEntry"
.end annotation


# instance fields
.field private ID:Ljava/lang/String;

.field private compoundFilter:Landroid/icu/text/UnicodeSet;

.field private dataVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private idBlockVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/icu/text/UnicodeSet;)V
    .locals 0
    .param p1, "theID"    # Ljava/lang/String;
    .param p4, "theCompoundFilter"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;",
            "Landroid/icu/text/UnicodeSet;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 253
    .local p2, "theIDBlockVector":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "theDataVector":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RuleBasedTransliterator$Data;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 256
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->ID:Ljava/lang/String;

    #@5
    .line 257
    iput-object p2, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    #@7
    .line 258
    iput-object p3, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    #@9
    .line 259
    iput-object p4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@b
    .line 255
    return-void
.end method


# virtual methods
.method public getInstance()Landroid/icu/text/Transliterator;
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 263
    new-instance v7, Ljava/util/ArrayList;

    #@3
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 264
    .local v7, "transliterators":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const/4 v4, 0x1

    #@7
    .line 266
    .local v4, "passNumber":I
    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    #@9
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@c
    move-result v8

    #@d
    iget-object v9, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    #@f
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@12
    move-result v9

    #@13
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v3

    #@17
    .line 267
    .local v3, "limit":I
    const/4 v1, 0x0

    #@18
    .local v1, "i":I
    move v5, v4

    #@19
    .end local v4    # "passNumber":I
    .local v5, "passNumber":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1b
    .line 268
    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    #@1d
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@20
    move-result v8

    #@21
    if-ge v1, v8, :cond_0

    #@23
    .line 269
    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    #@25
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/lang/String;

    #@2b
    .line 270
    .local v2, "idBlock":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2e
    move-result v8

    #@2f
    if-lez v8, :cond_0

    #@31
    .line 271
    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@34
    move-result-object v8

    #@35
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 273
    .end local v2    # "idBlock":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    #@3a
    invoke-interface {v8}, Ljava/util/List;->size()I

    #@3d
    move-result v8

    #@3e
    if-ge v1, v8, :cond_3

    #@40
    .line 274
    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    #@42
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v0

    #@46
    check-cast v0, Landroid/icu/text/RuleBasedTransliterator$Data;

    #@48
    .line 275
    .local v0, "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    new-instance v8, Landroid/icu/text/RuleBasedTransliterator;

    #@4a
    new-instance v9, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v10, "%Pass"

    #@52
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v9

    #@56
    add-int/lit8 v4, v5, 0x1

    #@58
    .end local v5    # "passNumber":I
    .restart local v4    # "passNumber":I
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v9

    #@5c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v9

    #@60
    invoke-direct {v8, v9, v0, v11}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    #@63
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@66
    .line 267
    .end local v0    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@68
    move v5, v4

    #@69
    .end local v4    # "passNumber":I
    .restart local v5    # "passNumber":I
    goto :goto_0

    #@6a
    .line 279
    :cond_1
    new-instance v6, Landroid/icu/text/CompoundTransliterator;

    #@6c
    add-int/lit8 v8, v5, -0x1

    #@6e
    invoke-direct {v6, v7, v8}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    #@71
    .line 280
    .local v6, "t":Landroid/icu/text/Transliterator;
    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->ID:Ljava/lang/String;

    #@73
    invoke-virtual {v6, v8}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    #@76
    .line 281
    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@78
    if-eqz v8, :cond_2

    #@7a
    .line 282
    iget-object v8, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Landroid/icu/text/UnicodeSet;

    #@7c
    invoke-virtual {v6, v8}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    #@7f
    .line 284
    :cond_2
    return-object v6

    #@80
    .end local v6    # "t":Landroid/icu/text/Transliterator;
    :cond_3
    move v4, v5

    #@81
    .end local v5    # "passNumber":I
    .restart local v4    # "passNumber":I
    goto :goto_1
.end method
