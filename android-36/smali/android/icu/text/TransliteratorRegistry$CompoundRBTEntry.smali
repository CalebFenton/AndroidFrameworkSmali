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
.field private greylist-max-o ID:Ljava/lang/String;

.field private greylist-max-o compoundFilter:Landroid/icu/text/UnicodeSet;

.field private greylist-max-o dataVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o idBlockVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/icu/text/UnicodeSet;)V
    .registers 5
    .param p1, "theID"    # Ljava/lang/String;
    .param p4, "theCompoundFilter"    # Landroid/icu/text/UnicodeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/icu/text/RuleBasedTransliterator$Data;",
            ">;",
            "Landroid/icu/text/UnicodeSet;",
            ")V"
        }
    .end annotation

    .line 285
    .local p2, "theIDBlockVector":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "theDataVector":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/RuleBasedTransliterator$Data;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->ID:Ljava/lang/String;

    .line 287
    iput-object p2, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    .line 288
    iput-object p3, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    .line 289
    iput-object p4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Landroid/icu/text/UnicodeSet;

    .line 290
    return-void
.end method


# virtual methods
.method public greylist-max-o getInstance()Landroid/icu/text/Transliterator;
    .registers 9

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "transliterators":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/Transliterator;>;"
    const/4 v1, 0x1

    .line 296
    .local v1, "passNumber":I
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 297
    .local v2, "limit":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_68

    .line 298
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 299
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 300
    .local v4, "idBlock":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_36

    .line 301
    invoke-static {v4}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v4    # "idBlock":Ljava/lang/String;
    :cond_36
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_65

    .line 304
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RuleBasedTransliterator$Data;

    .line 305
    .local v4, "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    new-instance v5, Landroid/icu/text/RuleBasedTransliterator;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%Pass"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "passNumber":I
    .local v7, "passNumber":I
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    invoke-direct {v5, v1, v4, v6}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v7

    .line 297
    .end local v4    # "data":Landroid/icu/text/RuleBasedTransliterator$Data;
    .end local v7    # "passNumber":I
    .restart local v1    # "passNumber":I
    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 309
    .end local v3    # "i":I
    :cond_68
    new-instance v3, Landroid/icu/text/CompoundTransliterator;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v0, v4}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    .line 310
    .local v3, "t":Landroid/icu/text/Transliterator;
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    .line 311
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v4, :cond_7d

    .line 312
    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v4}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    .line 314
    :cond_7d
    return-object v3
.end method
