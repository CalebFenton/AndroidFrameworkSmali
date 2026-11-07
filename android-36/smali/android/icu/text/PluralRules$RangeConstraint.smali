.class Landroid/icu/text/PluralRules$RangeConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Landroid/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeConstraint"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final greylist-max-o inRange:Z

.field private final greylist-max-o integersOnly:Z

.field private final greylist-max-o lowerBound:D

.field private final greylist-max-o mod:I

.field private final greylist-max-o operand:Landroid/icu/text/PluralRules$Operand;

.field private final greylist-max-o range_list:[J

.field private final greylist-max-o upperBound:D


# direct methods
.method constructor greylist-max-o <init>(IZLandroid/icu/text/PluralRules$Operand;ZDD[J)V
    .registers 10
    .param p1, "mod"    # I
    .param p2, "inRange"    # Z
    .param p3, "operand"    # Landroid/icu/text/PluralRules$Operand;
    .param p4, "integersOnly"    # Z
    .param p5, "lowBound"    # D
    .param p7, "highBound"    # D
    .param p9, "vals"    # [J

    .line 1756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1757
    iput p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    .line 1758
    iput-boolean p2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    .line 1759
    iput-boolean p4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    .line 1760
    iput-wide p5, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    .line 1761
    iput-wide p7, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    .line 1762
    iput-object p9, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    .line 1763
    iput-object p3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    .line 1764
    return-void
.end method


# virtual methods
.method public greylist-max-o isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z
    .registers 10
    .param p1, "number"    # Landroid/icu/text/PluralRules$IFixedDecimal;

    .line 1768
    iget-object v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    invoke-interface {p1, v0}, Landroid/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    .line 1769
    .local v0, "n":D
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_15

    double-to-long v6, v0

    long-to-double v6, v6

    sub-double v6, v0, v6

    cmpl-double v2, v6, v3

    if-nez v2, :cond_25

    :cond_15
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v6, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    if-ne v2, v6, :cond_29

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    .line 1770
    invoke-interface {p1, v2}, Landroid/icu/text/PluralRules$IFixedDecimal;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v6

    cmpl-double v2, v6, v3

    if-eqz v2, :cond_29

    .line 1771
    :cond_25
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    xor-int/2addr v2, v5

    return v2

    .line 1773
    :cond_29
    iget v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz v2, :cond_31

    .line 1774
    iget v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    int-to-double v2, v2

    rem-double/2addr v0, v2

    .line 1776
    :cond_31
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    cmpl-double v2, v0, v2

    const/4 v3, 0x0

    if-ltz v2, :cond_40

    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpg-double v2, v0, v6

    if-gtz v2, :cond_40

    move v2, v5

    goto :goto_41

    :cond_40
    move v2, v3

    .line 1777
    .local v2, "test":Z
    :goto_41
    if-eqz v2, :cond_6b

    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v4, :cond_6b

    .line 1778
    const/4 v2, 0x0

    .line 1779
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_49
    if-nez v2, :cond_6b

    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v6, v6

    if-ge v4, v6, :cond_6b

    .line 1780
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    aget-wide v6, v6, v4

    long-to-double v6, v6

    cmpl-double v6, v0, v6

    if-ltz v6, :cond_66

    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    add-int/lit8 v7, v4, 0x1

    aget-wide v6, v6, v7

    long-to-double v6, v6

    cmpg-double v6, v0, v6

    if-gtz v6, :cond_66

    move v6, v5

    goto :goto_67

    :cond_66
    move v6, v3

    :goto_67
    move v2, v6

    .line 1779
    add-int/lit8 v4, v4, 0x2

    goto :goto_49

    .line 1783
    .end local v4    # "i":I
    :cond_6b
    iget-boolean v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-ne v4, v2, :cond_70

    goto :goto_71

    :cond_70
    move v5, v3

    :goto_71
    return v5
.end method

.method public greylist-max-o isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .registers 10
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    .line 1788
    iget-wide v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_14

    iget-wide v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    .line 1789
    .local v0, "valueIsZero":Z
    :goto_15
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    if-eq v3, v4, :cond_2d

    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    if-eq v3, v4, :cond_2d

    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    if-eq v3, v4, :cond_2d

    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v4, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    if-ne v3, v4, :cond_33

    :cond_2d
    iget-boolean v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eq v3, v0, :cond_33

    move v3, v1

    goto :goto_34

    :cond_33
    move v3, v2

    .line 1792
    .local v3, "hasDecimals":Z
    :goto_34
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_80

    .line 1805
    return v2

    .line 1800
    :pswitch_3c
    if-eqz v3, :cond_4a

    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v5, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    if-eq v4, v5, :cond_4a

    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v5, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    if-ne v4, v5, :cond_5f

    :cond_4a
    iget-boolean v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-nez v4, :cond_56

    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5f

    :cond_56
    iget v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-nez v4, :cond_5f

    iget-boolean v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v4, :cond_5f

    goto :goto_60

    :cond_5f
    move v1, v2

    :goto_60
    return v1

    .line 1794
    :pswitch_61
    if-nez v3, :cond_7f

    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v5, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    if-eq v4, v5, :cond_75

    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v5, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    if-eq v4, v5, :cond_75

    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    sget-object v5, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    if-ne v4, v5, :cond_7e

    :cond_75
    iget v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-nez v4, :cond_7e

    iget-boolean v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v4, :cond_7e

    goto :goto_7f

    :cond_7e
    move v1, v2

    :cond_7f
    :goto_7f
    return v1

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_61
        :pswitch_3c
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v0

    .line 1811
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1812
    iget v0, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    if-eqz v0, :cond_1a

    .line 1813
    const-string v0, " % "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1815
    :cond_1a
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    cmpl-double v0, v2, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_26

    move v0, v8

    goto :goto_27

    :cond_26
    move v0, v7

    .line 1816
    .local v0, "isList":Z
    :goto_27
    nop

    .line 1817
    const-string v2, " = "

    const-string v3, " != "

    if-nez v0, :cond_35

    iget-boolean v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v4, :cond_33

    goto :goto_49

    :cond_33
    move-object v2, v3

    goto :goto_49

    .line 1818
    :cond_35
    iget-boolean v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    if-eqz v4, :cond_40

    iget-boolean v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v4, :cond_3e

    goto :goto_49

    :cond_3e
    move-object v2, v3

    goto :goto_49

    .line 1819
    :cond_40
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    if-eqz v2, :cond_47

    const-string v2, " within "

    goto :goto_49

    :cond_47
    const-string v2, " not within "

    .line 1816
    :goto_49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1821
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    if-eqz v2, :cond_6f

    .line 1822
    const/4 v2, 0x0

    move v9, v2

    .local v9, "i":I
    :goto_52
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    array-length v2, v2

    if-ge v9, v2, :cond_6e

    .line 1823
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    aget-wide v2, v2, v9

    long-to-double v2, v2

    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    add-int/lit8 v5, v9, 0x1

    aget-wide v4, v4, v5

    long-to-double v4, v4

    if-eqz v9, :cond_67

    move v6, v8

    goto :goto_68

    :cond_67
    move v6, v7

    :goto_68
    invoke-static/range {v1 .. v6}, Landroid/icu/text/PluralRules;->-$$Nest$smaddRange(Ljava/lang/StringBuilder;DDZ)V

    .line 1822
    add-int/lit8 v9, v9, 0x2

    goto :goto_52

    .end local v9    # "i":I
    :cond_6e
    goto :goto_77

    .line 1826
    :cond_6f
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/icu/text/PluralRules;->-$$Nest$smaddRange(Ljava/lang/StringBuilder;DDZ)V

    .line 1828
    :goto_77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
