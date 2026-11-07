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
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final greylist-max-o constraint:Landroid/icu/text/PluralRules$Constraint;

.field private final blacklist decimalSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

.field private final blacklist integerSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

.field private final greylist-max-o keyword:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetdecimalSamples(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetintegerSamples(Landroid/icu/text/PluralRules$Rule;)Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$DecimalQuantitySamples;Landroid/icu/text/PluralRules$DecimalQuantitySamples;)V
    .registers 5
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "constraint"    # Landroid/icu/text/PluralRules$Constraint;
    .param p3, "integerSamples"    # Landroid/icu/text/PluralRules$DecimalQuantitySamples;
    .param p4, "decimalSamples"    # Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    .line 1928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1929
    iput-object p1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    .line 1930
    iput-object p2, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    .line 1931
    iput-object p3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    .line 1932
    iput-object p4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    .line 1933
    return-void
.end method


# virtual methods
.method public greylist-max-o and(Landroid/icu/text/PluralRules$Constraint;)Landroid/icu/text/PluralRules$Rule;
    .registers 7
    .param p1, "c"    # Landroid/icu/text/PluralRules$Constraint;

    .line 1937
    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    new-instance v2, Landroid/icu/text/PluralRules$AndConstraint;

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Landroid/icu/text/PluralRules$AndConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    iget-object v4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$DecimalQuantitySamples;Landroid/icu/text/PluralRules$DecimalQuantitySamples;)V

    return-object v0
.end method

.method public greylist-max-o appliesTo(Landroid/icu/text/PluralRules$IFixedDecimal;)Z
    .registers 3
    .param p1, "n"    # Landroid/icu/text/PluralRules$IFixedDecimal;

    .line 1950
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o getConstraint()Ljava/lang/String;
    .registers 2

    .line 1973
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v0}, Landroid/icu/text/PluralRules$Constraint;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getKeyword()Ljava/lang/String;
    .registers 2

    .line 1946
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1969
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v1}, Landroid/icu/text/PluralRules$Constraint;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .registers 3
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    .line 1954
    iget-object v0, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o or(Landroid/icu/text/PluralRules$Constraint;)Landroid/icu/text/PluralRules$Rule;
    .registers 7
    .param p1, "c"    # Landroid/icu/text/PluralRules$Constraint;

    .line 1942
    new-instance v0, Landroid/icu/text/PluralRules$Rule;

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    new-instance v2, Landroid/icu/text/PluralRules$OrConstraint;

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-direct {v2, v3, p1}, Landroid/icu/text/PluralRules$OrConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    iget-object v3, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    iget-object v4, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$DecimalQuantitySamples;Landroid/icu/text/PluralRules$DecimalQuantitySamples;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->constraint:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v1}, Landroid/icu/text/PluralRules$Constraint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1960
    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    const-string v2, ""

    const-string v3, " "

    if-nez v1, :cond_25

    move-object v1, v2

    goto :goto_3c

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/icu/text/PluralRules$Rule;->integerSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    invoke-virtual {v4}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1961
    iget-object v1, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    if-nez v1, :cond_45

    goto :goto_5c

    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/PluralRules$Rule;->decimalSamples:Landroid/icu/text/PluralRules$DecimalQuantitySamples;

    invoke-virtual {v2}, Landroid/icu/text/PluralRules$DecimalQuantitySamples;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1959
    return-object v0
.end method
