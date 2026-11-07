.class public Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecimalQuantitySamplesRange"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final blacklist end:Landroid/icu/impl/number/DecimalQuantity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final blacklist start:Landroid/icu/impl/number/DecimalQuantity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 7
    .param p1, "start"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "end"    # Landroid/icu/impl/number/DecimalQuantity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    sget-object v0, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    invoke-interface {p2, v2}, Landroid/icu/impl/number/DecimalQuantity;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_18

    .line 1179
    iput-object p1, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->start:Landroid/icu/impl/number/DecimalQuantity;

    .line 1180
    iput-object p2, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->end:Landroid/icu/impl/number/DecimalQuantity;

    .line 1181
    return-void

    .line 1177
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ranges must have the same number of visible decimals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->start:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {v1}, Landroid/icu/impl/number/DecimalQuantity;->toExponentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->end:Landroid/icu/impl/number/DecimalQuantity;

    iget-object v2, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->start:Landroid/icu/impl/number/DecimalQuantity;

    if-ne v1, v2, :cond_18

    const-string v1, ""

    goto :goto_31

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/PluralRules$DecimalQuantitySamplesRange;->end:Landroid/icu/impl/number/DecimalQuantity;

    invoke-interface {v2}, Landroid/icu/impl/number/DecimalQuantity;->toExponentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
