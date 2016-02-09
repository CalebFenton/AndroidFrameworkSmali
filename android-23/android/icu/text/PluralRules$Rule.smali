.class Landroid/icu/text/PluralRules$Rule;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final constraint:Landroid/icu/text/PluralRules$Constraint;

.field private final decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

.field private final integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

.field private final keyword:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "constraint"    # Landroid/icu/text/PluralRules$Constraint;
    .param p3, "integerSamples"    # Landroid/icu/text/PluralRules$FixedDecimalSamples;
    .param p4, "decimalSamples"    # Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@0
    .prologue
    .line 1611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1612
    iput-object p1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    #@5
    .line 1613
    iput-object p2, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    #@7
    .line 1614
    iput-object p3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@9
    .line 1615
    iput-object p4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@b
    .line 1611
    return-void
.end method


# virtual methods
.method public and(Landroid/icu/text/PluralRules$Constraint;)Landroid/icu/text/PluralRules$Rule;
    .locals 5
    .param p1, "c"    # Landroid/icu/text/PluralRules$Constraint;

    #@0
    .prologue
    .line 1620
    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    #@2
    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    #@4
    new-instance v2, Landroid/icu/text/PluralRules$AndConstraint;

    #@6
    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    #@8
    invoke-direct {v2, v3, p1}, Landroid/icu/text/PluralRules$AndConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    #@b
    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@d
    iget-object v4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@f
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    #@12
    return-object v0
.end method

.method public appliesTo(Landroid/icu/text/PluralRules$FixedDecimal;)Z
    .locals 1
    .param p1, "n"    # Landroid/icu/text/PluralRules$FixedDecimal;

    #@0
    .prologue
    .line 1633
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    #@2
    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$FixedDecimal;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getConstraint()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1657
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1629
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1653
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    #@8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    #@0
    .prologue
    .line 1637
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    #@2
    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public or(Landroid/icu/text/PluralRules$Constraint;)Landroid/icu/text/PluralRules$Rule;
    .locals 5
    .param p1, "c"    # Landroid/icu/text/PluralRules$Constraint;

    #@0
    .prologue
    .line 1625
    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    #@2
    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    #@4
    new-instance v2, Landroid/icu/text/PluralRules$OrConstraint;

    #@6
    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    #@8
    invoke-direct {v2, v3, p1}, Landroid/icu/text/PluralRules$OrConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    #@b
    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@d
    iget-object v4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@f
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$FixedDecimalSamples;Landroid/icu/text/PluralRules$FixedDecimalSamples;)V

    #@12
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ": "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    #@14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    .line 1642
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@1e
    if-nez v0, :cond_0

    #@20
    const-string/jumbo v0, ""

    #@23
    .line 1641
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 1643
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@29
    if-nez v0, :cond_1

    #@2b
    const-string/jumbo v0, ""

    #@2e
    .line 1641
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0

    #@37
    .line 1642
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v2, " "

    #@3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    iget-object v2, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@45
    invoke-virtual {v2}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    goto :goto_0

    #@52
    .line 1643
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v2, " "

    #@5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    iget-object v2, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$FixedDecimalSamples;

    #@60
    invoke-virtual {v2}, Landroid/icu/text/PluralRules$FixedDecimalSamples;->toString()Ljava/lang/String;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    goto :goto_1
.end method
