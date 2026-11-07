.class Landroid/icu/text/PluralRules$OrConstraint;
.super Landroid/icu/text/PluralRules$BinaryConstraint;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OrConstraint"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x13814c681722a76eL


# direct methods
.method constructor greylist-max-o <init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V
    .registers 3
    .param p1, "a"    # Landroid/icu/text/PluralRules$Constraint;
    .param p2, "b"    # Landroid/icu/text/PluralRules$Constraint;

    .line 1894
    invoke-direct {p0, p1, p2}, Landroid/icu/text/PluralRules$BinaryConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    .line 1895
    return-void
.end method


# virtual methods
.method public greylist-max-o isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z
    .registers 3
    .param p1, "n"    # Landroid/icu/text/PluralRules$IFixedDecimal;

    .line 1899
    iget-object v0, p0, Landroid/icu/text/PluralRules$OrConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/icu/text/PluralRules$OrConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    .line 1900
    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$IFixedDecimal;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 1899
    :goto_14
    return v0
.end method

.method public greylist-max-o isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .registers 3
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    .line 1905
    iget-object v0, p0, Landroid/icu/text/PluralRules$OrConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/icu/text/PluralRules$OrConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    .line 1906
    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1905
    :goto_13
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/PluralRules$OrConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v1}, Landroid/icu/text/PluralRules$Constraint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/PluralRules$OrConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    invoke-interface {v1}, Landroid/icu/text/PluralRules$Constraint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
