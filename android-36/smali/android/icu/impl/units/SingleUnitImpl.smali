.class public Landroid/icu/impl/units/SingleUnitImpl;
.super Ljava/lang/Object;
.source "SingleUnitImpl.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist dimensionality:I

.field private blacklist index:I

.field private blacklist simpleUnitID:Ljava/lang/String;

.field private blacklist unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->dimensionality:I

    .line 42
    sget-object v0, Landroid/icu/util/MeasureUnit$MeasurePrefix;->ONE:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    iput-object v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/icu/util/MeasureUnit;
    .registers 3

    .line 55
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0, p0}, Landroid/icu/impl/units/MeasureUnitImpl;-><init>(Landroid/icu/impl/units/SingleUnitImpl;)V

    .line 56
    .local v0, "measureUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v1

    return-object v1
.end method

.method blacklist compareTo(Landroid/icu/impl/units/SingleUnitImpl;)I
    .registers 10
    .param p1, "other"    # Landroid/icu/impl/units/SingleUnitImpl;

    .line 104
    iget v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->dimensionality:I

    const/4 v1, 0x1

    if-gez v0, :cond_a

    iget v0, p1, Landroid/icu/impl/units/SingleUnitImpl;->dimensionality:I

    if-lez v0, :cond_a

    .line 106
    return v1

    .line 108
    :cond_a
    iget v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->dimensionality:I

    const/4 v2, -0x1

    if-lez v0, :cond_14

    iget v0, p1, Landroid/icu/impl/units/SingleUnitImpl;->dimensionality:I

    if-gez v0, :cond_14

    .line 109
    return v2

    .line 112
    :cond_14
    iget v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    invoke-static {v0}, Landroid/icu/impl/units/UnitsData;->getCategoryIndexOfSimpleUnit(I)I

    move-result v0

    .line 113
    .local v0, "thisCategoryIndex":I
    iget v3, p1, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    invoke-static {v3}, Landroid/icu/impl/units/UnitsData;->getCategoryIndexOfSimpleUnit(I)I

    move-result v3

    .line 114
    .local v3, "otherCategoryIndex":I
    if-ge v0, v3, :cond_23

    .line 115
    return v2

    .line 117
    :cond_23
    if-le v0, v3, :cond_26

    .line 118
    return v1

    .line 121
    :cond_26
    iget v4, p0, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    iget v5, p1, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    if-ge v4, v5, :cond_2d

    .line 122
    return v2

    .line 124
    :cond_2d
    iget v4, p0, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    iget v5, p1, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    if-le v4, v5, :cond_34

    .line 125
    return v1

    .line 132
    :cond_34
    iget-object v4, p0, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    invoke-virtual {v4}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v4

    .line 133
    .local v4, "unitBase":I
    iget-object v5, p1, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    invoke-virtual {v5}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v5

    .line 136
    .local v5, "otherUnitBase":I
    const/16 v6, 0x400

    if-ne v4, v6, :cond_4d

    iget-object v7, p0, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    invoke-virtual {v7}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    goto :goto_53

    .line 137
    :cond_4d
    iget-object v7, p0, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    invoke-virtual {v7}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v7

    :goto_53
    nop

    .line 139
    .local v7, "unitPowerComp":I
    if-ne v5, v6, :cond_5f

    iget-object v6, p1, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    invoke-virtual {v6}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    goto :goto_65

    .line 140
    :cond_5f
    iget-object v6, p1, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    invoke-virtual {v6}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v6

    :goto_65
    nop

    .line 142
    .local v6, "otherUnitPowerComp":I
    if-ge v7, v6, :cond_69

    .line 143
    return v1

    .line 145
    :cond_69
    if-le v7, v6, :cond_6c

    .line 146
    return v2

    .line 149
    :cond_6c
    if-ge v4, v5, :cond_6f

    .line 150
    return v1

    .line 152
    :cond_6f
    if-le v4, v5, :cond_72

    .line 153
    return v2

    .line 156
    :cond_72
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist copy()Landroid/icu/impl/units/SingleUnitImpl;
    .registers 3

    .line 45
    new-instance v0, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-direct {v0}, Landroid/icu/impl/units/SingleUnitImpl;-><init>()V

    .line 46
    .local v0, "result":Landroid/icu/impl/units/SingleUnitImpl;
    iget v1, p0, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    iput v1, v0, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    .line 47
    iget v1, p0, Landroid/icu/impl/units/SingleUnitImpl;->dimensionality:I

    iput v1, v0, Landroid/icu/impl/units/SingleUnitImpl;->dimensionality:I

    .line 48
    iget-object v1, p0, Landroid/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    iput-object v1, v0, Landroid/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    iput-object v1, v0, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    .line 51
    return-object v0
.end method

.method public blacklist getDimensionality()I
    .registers 2

    .line 179
    iget v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->dimensionality:I

    return v0
.end method

.method public blacklist getIndex()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    return v0
.end method

.method public blacklist getNeutralIdentifier()Ljava/lang/String;
    .registers 5

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 66
    .local v1, "absPower":I
    nop

    .line 68
    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    goto :goto_35

    .line 70
    :cond_12
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    .line 71
    const-string v2, "square-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 72
    :cond_1b
    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    .line 73
    const-string v2, "cubic-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 74
    :cond_24
    const/16 v2, 0xf

    if-gt v1, v2, :cond_4c

    .line 75
    const-string v2, "pow"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :goto_35
    invoke-virtual {p0}, Landroid/icu/impl/units/SingleUnitImpl;->getPrefix()Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/MeasureUnit$MeasurePrefix;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 79
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unit Identifier Syntax Error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getPrefix()Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    return-object v0
.end method

.method public blacklist getSimpleUnitID()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    return-object v0
.end method

.method blacklist isCompatibleWith(Landroid/icu/impl/units/SingleUnitImpl;)Z
    .registers 3
    .param p1, "other"    # Landroid/icu/impl/units/SingleUnitImpl;

    .line 166
    invoke-virtual {p0, p1}, Landroid/icu/impl/units/SingleUnitImpl;->compareTo(Landroid/icu/impl/units/SingleUnitImpl;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist setDimensionality(I)V
    .registers 2
    .param p1, "dimensionality"    # I

    .line 183
    iput p1, p0, Landroid/icu/impl/units/SingleUnitImpl;->dimensionality:I

    .line 184
    return-void
.end method

.method public blacklist setPrefix(Landroid/icu/util/MeasureUnit$MeasurePrefix;)V
    .registers 2
    .param p1, "unitPrefix"    # Landroid/icu/util/MeasureUnit$MeasurePrefix;

    .line 191
    iput-object p1, p0, Landroid/icu/impl/units/SingleUnitImpl;->unitPrefix:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    .line 192
    return-void
.end method

.method public blacklist setSimpleUnit(I[Ljava/lang/String;)V
    .registers 4
    .param p1, "simpleUnitIndex"    # I
    .param p2, "simpleUnits"    # [Ljava/lang/String;

    .line 174
    iput p1, p0, Landroid/icu/impl/units/SingleUnitImpl;->index:I

    .line 175
    aget-object v0, p2, p1

    iput-object v0, p0, Landroid/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    .line 176
    return-void
.end method
