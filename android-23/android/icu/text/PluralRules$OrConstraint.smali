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
.field private static final serialVersionUID:J = 0x13814c681722a76eL


# direct methods
.method constructor <init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V
    .locals 0
    .param p1, "a"    # Landroid/icu/text/PluralRules$Constraint;
    .param p2, "b"    # Landroid/icu/text/PluralRules$Constraint;

    #@0
    .prologue
    .line 1582
    invoke-direct {p0, p1, p2}, Landroid/icu/text/PluralRules$BinaryConstraint;-><init>(Landroid/icu/text/PluralRules$Constraint;Landroid/icu/text/PluralRules$Constraint;)V

    #@3
    .line 1581
    return-void
.end method


# virtual methods
.method public isFulfilled(Landroid/icu/text/PluralRules$FixedDecimal;)Z
    .locals 1
    .param p1, "n"    # Landroid/icu/text/PluralRules$FixedDecimal;

    #@0
    .prologue
    .line 1586
    iget-object v0, p0, Landroid/icu/text/PluralRules$OrConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    #@2
    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$FixedDecimal;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1587
    iget-object v0, p0, Landroid/icu/text/PluralRules$OrConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    #@a
    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isFulfilled(Landroid/icu/text/PluralRules$FixedDecimal;)Z

    #@d
    move-result v0

    #@e
    .line 1586
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 1
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    #@0
    .prologue
    .line 1591
    iget-object v0, p0, Landroid/icu/text/PluralRules$OrConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    #@2
    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1592
    iget-object v0, p0, Landroid/icu/text/PluralRules$OrConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    #@a
    invoke-interface {v0, p1}, Landroid/icu/text/PluralRules$Constraint;->isLimited(Landroid/icu/text/PluralRules$SampleType;)Z

    #@d
    move-result v0

    #@e
    .line 1591
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/text/PluralRules$OrConstraint;->a:Landroid/icu/text/PluralRules$Constraint;

    #@7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, " or "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget-object v1, p0, Landroid/icu/text/PluralRules$OrConstraint;->b:Landroid/icu/text/PluralRules$Constraint;

    #@18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method
