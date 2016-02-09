.class public Landroid/icu/text/PluralRules$FixedDecimalRange;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimalRange"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final end:Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final start:Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/icu/text/PluralRules$FixedDecimal;Landroid/icu/text/PluralRules$FixedDecimal;)V
    .locals 3
    .param p1, "start"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .param p2, "end"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 927
    iget v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@5
    iget v1, p2, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 928
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Ranges must have the same number of visible decimals: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "~"

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 930
    :cond_0
    iput-object p1, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    #@30
    .line 931
    iput-object p2, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    #@32
    .line 926
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    iget-object v0, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    #@d
    iget-object v2, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->start:Landroid/icu/text/PluralRules$FixedDecimal;

    #@f
    if-ne v0, v2, :cond_0

    #@11
    const-string/jumbo v0, ""

    #@14
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v2, "~"

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    iget-object v2, p0, Landroid/icu/text/PluralRules$FixedDecimalRange;->end:Landroid/icu/text/PluralRules$FixedDecimal;

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    goto :goto_0
.end method
