.class public Landroid/icu/impl/units/UnitsData$CategoriesSink;
.super Landroid/icu/impl/UResource$Sink;
.source "UnitsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoriesSink"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field blacklist categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mapFromUnitToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 244
    const-class v0, Landroid/icu/impl/units/UnitsData;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 252
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/UnitsData$CategoriesSink;->mapFromUnitToIndex:Ljava/util/HashMap;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/UnitsData$CategoriesSink;->categories:Ljava/util/ArrayList;

    .line 255
    return-void
.end method


# virtual methods
.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 10
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "noFallback"    # Z

    .line 259
    nop

    .line 260
    nop

    .line 262
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v0

    .line 263
    .local v0, "categoryArray":Landroid/icu/impl/UResource$Array;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {v0, v1, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 264
    nop

    .line 265
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    .line 266
    .local v2, "table":Landroid/icu/impl/UResource$Table;
    nop

    .line 268
    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    .line 269
    nop

    .line 270
    iget-object v3, p0, Landroid/icu/impl/units/UnitsData$CategoriesSink;->mapFromUnitToIndex:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/impl/units/UnitsData$CategoriesSink;->categories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v3, p0, Landroid/icu/impl/units/UnitsData$CategoriesSink;->categories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v2    # "table":Landroid/icu/impl/UResource$Table;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 273
    .end local v1    # "i":I
    :cond_37
    return-void
.end method
