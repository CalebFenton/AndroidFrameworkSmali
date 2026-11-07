.class public Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;
.super Landroid/icu/impl/UResource$Sink;
.source "UnitsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleUnitIdentifiersSink"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist simpleUnitCategories:[I

.field blacklist simpleUnits:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 122
    const-class v0, Landroid/icu/impl/units/UnitsData;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnits:[Ljava/lang/String;

    .line 124
    iput-object v0, p0, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnitCategories:[I

    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 11
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 128
    nop

    .line 129
    nop

    .line 131
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 132
    .local v0, "simpleUnitsTable":Landroid/icu/impl/UResource$Table;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "simpleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "simpleUnitCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    invoke-interface {v0, v3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 135
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kilogram"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 141
    goto :goto_47

    .line 145
    :cond_24
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v4

    .line 146
    .local v4, "table":Landroid/icu/impl/UResource$Table;
    const-string v5, "target"

    invoke-interface {v4, v5, p2}, Landroid/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Landroid/icu/impl/UResource$Value;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 150
    goto :goto_47

    .line 153
    :cond_31
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "target":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v6, Landroid/icu/impl/units/UnitsData$Categories;->baseUnitToIndex:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    .end local v4    # "table":Landroid/icu/impl/UResource$Table;
    .end local v5    # "target":Ljava/lang/String;
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 159
    .end local v3    # "i":I
    :cond_4a
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnits:[Ljava/lang/String;

    .line 160
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnitCategories:[I

    .line 161
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 162
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_62
    iget-object v5, p0, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnitCategories:[I

    array-length v5, v5

    if-ge v4, v5, :cond_78

    .line 164
    iget-object v5, p0, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnitCategories:[I

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v4

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 166
    .end local v4    # "i":I
    :cond_78
    return-void
.end method
