.class public Landroid/icu/impl/units/MeasureUnitImpl;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;,
        Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;,
        Landroid/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;,
        Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;,
        Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;,
        Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;,
        Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;,
        Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;
    }
.end annotation


# instance fields
.field private blacklist complexity:Landroid/icu/util/MeasureUnit$Complexity;

.field private blacklist identifier:Ljava/lang/String;

.field private final blacklist singleUnits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/units/SingleUnitImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetsingleUnits(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/icu/util/MeasureUnit$Complexity;->SINGLE:Landroid/icu/util/MeasureUnit$Complexity;

    iput-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->complexity:Landroid/icu/util/MeasureUnit$Complexity;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/units/SingleUnitImpl;)V
    .registers 2
    .param p1, "singleUnit"    # Landroid/icu/impl/units/SingleUnitImpl;

    .line 46
    invoke-direct {p0}, Landroid/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Landroid/icu/impl/units/MeasureUnitImpl;->appendSingleUnit(Landroid/icu/impl/units/SingleUnitImpl;)Z

    .line 48
    return-void
.end method

.method public static blacklist forCurrencyCode(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;
    .registers 2
    .param p0, "currencyCode"    # Ljava/lang/String;

    .line 65
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0}, Landroid/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 66
    .local v0, "result":Landroid/icu/impl/units/MeasureUnitImpl;
    iput-object p0, v0, Landroid/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    .line 67
    return-object v0
.end method

.method public static blacklist forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;
    .registers 2
    .param p0, "identifier"    # Ljava/lang/String;

    .line 58
    invoke-static {p0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->parseForIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist appendSingleUnit(Landroid/icu/impl/units/SingleUnitImpl;)Z
    .registers 7
    .param p1, "singleUnit"    # Landroid/icu/impl/units/SingleUnitImpl;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 170
    return v0

    .line 174
    :cond_7
    const/4 v1, 0x0

    .line 175
    .local v1, "oldUnit":Landroid/icu/impl/units/SingleUnitImpl;
    iget-object v2, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/units/SingleUnitImpl;

    .line 176
    .local v3, "candidate":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v3, p1}, Landroid/icu/impl/units/SingleUnitImpl;->isCompatibleWith(Landroid/icu/impl/units/SingleUnitImpl;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 177
    move-object v1, v3

    .line 178
    goto :goto_23

    .line 180
    .end local v3    # "candidate":Landroid/icu/impl/units/SingleUnitImpl;
    :cond_22
    goto :goto_e

    .line 182
    :cond_23
    :goto_23
    if-eqz v1, :cond_32

    .line 185
    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v2

    invoke-virtual {p1}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 187
    return v0

    .line 191
    :cond_32
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/icu/impl/units/SingleUnitImpl;->copy()Landroid/icu/impl/units/SingleUnitImpl;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4f

    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->complexity:Landroid/icu/util/MeasureUnit$Complexity;

    sget-object v3, Landroid/icu/util/MeasureUnit$Complexity;->SINGLE:Landroid/icu/util/MeasureUnit$Complexity;

    if-ne v0, v3, :cond_4f

    .line 196
    sget-object v0, Landroid/icu/util/MeasureUnit$Complexity;->COMPOUND:Landroid/icu/util/MeasureUnit$Complexity;

    invoke-virtual {p0, v0}, Landroid/icu/impl/units/MeasureUnitImpl;->setComplexity(Landroid/icu/util/MeasureUnit$Complexity;)V

    .line 199
    :cond_4f
    return v2
.end method

.method public blacklist applyDimensionality(I)V
    .registers 5
    .param p1, "dimensionality"    # I

    .line 154
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/units/SingleUnitImpl;

    .line 155
    .local v1, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v2

    mul-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 156
    .end local v1    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    goto :goto_6

    .line 157
    :cond_1b
    return-void
.end method

.method public blacklist build()Landroid/icu/util/MeasureUnit;
    .registers 2

    .line 208
    invoke-static {p0}, Landroid/icu/util/MeasureUnit;->fromMeasureUnitImpl(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    return-object v0
.end method

.method public blacklist copy()Landroid/icu/impl/units/MeasureUnitImpl;
    .registers 6

    .line 71
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0}, Landroid/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 72
    .local v0, "result":Landroid/icu/impl/units/MeasureUnitImpl;
    iget-object v1, p0, Landroid/icu/impl/units/MeasureUnitImpl;->complexity:Landroid/icu/util/MeasureUnit$Complexity;

    iput-object v1, v0, Landroid/icu/impl/units/MeasureUnitImpl;->complexity:Landroid/icu/util/MeasureUnit$Complexity;

    .line 73
    iget-object v1, p0, Landroid/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/units/SingleUnitImpl;

    .line 75
    .local v2, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    iget-object v3, v0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/icu/impl/units/SingleUnitImpl;->copy()Landroid/icu/impl/units/SingleUnitImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v2    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    goto :goto_13

    .line 77
    :cond_29
    return-object v0
.end method

.method public blacklist copyAndSimplify()Landroid/icu/impl/units/MeasureUnitImpl;
    .registers 9

    .line 89
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0}, Landroid/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 90
    .local v0, "result":Landroid/icu/impl/units/MeasureUnitImpl;
    invoke-virtual {p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/units/SingleUnitImpl;

    .line 93
    .local v2, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    const/4 v3, 0x0

    .line 94
    .local v3, "unitExist":Z
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/units/SingleUnitImpl;

    .line 95
    .local v5, "resultSingleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v5}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_60

    .line 97
    invoke-virtual {v5}, Landroid/icu/impl/units/SingleUnitImpl;->getPrefix()Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/icu/impl/units/SingleUnitImpl;->getPrefix()Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_60

    .line 99
    const/4 v3, 0x1

    .line 100
    invoke-virtual {v5}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v4

    invoke-virtual {v2}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 101
    goto :goto_61

    .line 103
    .end local v5    # "resultSingleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    :cond_60
    goto :goto_22

    .line 105
    :cond_61
    :goto_61
    if-nez v3, :cond_66

    .line 106
    invoke-virtual {v0, v2}, Landroid/icu/impl/units/MeasureUnitImpl;->appendSingleUnit(Landroid/icu/impl/units/SingleUnitImpl;)Z

    .line 108
    .end local v2    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    .end local v3    # "unitExist":Z
    :cond_66
    goto :goto_d

    .line 110
    :cond_67
    return-object v0
.end method

.method public blacklist extractIndividualUnitsWithIndices()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;>;"
    invoke-virtual {p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getComplexity()Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v1

    sget-object v2, Landroid/icu/util/MeasureUnit$Complexity;->MIXED:Landroid/icu/util/MeasureUnit$Complexity;

    if-ne v1, v2, :cond_34

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "i":I
    invoke-virtual {p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/units/SingleUnitImpl;

    .line 138
    .local v3, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    new-instance v4, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    new-instance v6, Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v6, v3}, Landroid/icu/impl/units/MeasureUnitImpl;-><init>(Landroid/icu/impl/units/SingleUnitImpl;)V

    invoke-direct {v4, v1, v6}, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;-><init>(ILandroid/icu/impl/units/MeasureUnitImpl;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v3    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    move v1, v5

    goto :goto_16

    .line 141
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_33
    return-object v0

    .line 144
    .end local v1    # "i":I
    :cond_34
    new-instance v1, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/impl/units/MeasureUnitImpl;->copy()Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;-><init>(ILandroid/icu/impl/units/MeasureUnitImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    return-object v0
.end method

.method public blacklist getComplexity()Landroid/icu/util/MeasureUnit$Complexity;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->complexity:Landroid/icu/util/MeasureUnit$Complexity;

    return-object v0
.end method

.method public blacklist getIdentifier()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSingleUnitImpl()Landroid/icu/impl/units/SingleUnitImpl;
    .registers 3

    .line 216
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 217
    new-instance v0, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-direct {v0}, Landroid/icu/impl/units/SingleUnitImpl;-><init>()V

    return-object v0

    .line 219
    :cond_e
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 220
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v0}, Landroid/icu/impl/units/SingleUnitImpl;->copy()Landroid/icu/impl/units/SingleUnitImpl;

    move-result-object v0

    return-object v0

    .line 223
    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getSingleUnits()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/units/SingleUnitImpl;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist serialize()V
    .registers 8

    .line 245
    invoke-virtual {p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 248
    return-void

    .line 252
    :cond_b
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->complexity:Landroid/icu/util/MeasureUnit$Complexity;

    sget-object v1, Landroid/icu/util/MeasureUnit$Complexity;->COMPOUND:Landroid/icu/util/MeasureUnit$Complexity;

    if-ne v0, v1, :cond_1d

    .line 254
    invoke-virtual {p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;

    invoke-direct {v1}, Landroid/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 259
    .local v1, "beforePer":Z
    const/4 v2, 0x0

    .line 261
    .local v2, "firstTimeNegativeDimension":Z
    invoke-virtual {p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/units/SingleUnitImpl;

    .line 262
    .local v4, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    if-eqz v1, :cond_43

    invoke-virtual {v4}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v5

    if-gez v5, :cond_43

    .line 263
    const/4 v1, 0x0

    .line 264
    const/4 v2, 0x1

    goto :goto_4a

    .line 265
    :cond_43
    invoke-virtual {v4}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v5

    if-gez v5, :cond_4a

    .line 266
    const/4 v2, 0x0

    .line 269
    :cond_4a
    :goto_4a
    invoke-virtual {p0}, Landroid/icu/impl/units/MeasureUnitImpl;->getComplexity()Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v5

    sget-object v6, Landroid/icu/util/MeasureUnit$Complexity;->MIXED:Landroid/icu/util/MeasureUnit$Complexity;

    if-ne v5, v6, :cond_5e

    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_7d

    .line 271
    const-string v5, "-and-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 274
    :cond_5e
    if-eqz v2, :cond_72

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_6c

    .line 276
    const-string v5, "per-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 278
    :cond_6c
    const-string v5, "-per-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 281
    :cond_72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_7d

    .line 282
    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_7d
    :goto_7d
    invoke-virtual {v4}, Landroid/icu/impl/units/SingleUnitImpl;->getNeutralIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .end local v4    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    goto :goto_2c

    .line 290
    :cond_85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public blacklist setComplexity(Landroid/icu/util/MeasureUnit$Complexity;)V
    .registers 2
    .param p1, "complexity"    # Landroid/icu/util/MeasureUnit$Complexity;

    .line 238
    iput-object p1, p0, Landroid/icu/impl/units/MeasureUnitImpl;->complexity:Landroid/icu/util/MeasureUnit$Complexity;

    .line 239
    return-void
.end method

.method public blacklist takeReciprocal()V
    .registers 4

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/units/SingleUnitImpl;

    .line 127
    .local v1, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    .line 128
    .end local v1    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    goto :goto_9

    .line 129
    :cond_1f
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasureUnitImpl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/impl/units/MeasureUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
