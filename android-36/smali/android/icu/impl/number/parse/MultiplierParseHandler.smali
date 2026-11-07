.class public Landroid/icu/impl/number/parse/MultiplierParseHandler;
.super Landroid/icu/impl/number/parse/ValidationMatcher;
.source "MultiplierParseHandler.java"


# instance fields
.field private final blacklist multiplier:Landroid/icu/number/Scale;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/number/Scale;)V
    .registers 2
    .param p1, "multiplier"    # Landroid/icu/number/Scale;

    .line 16
    invoke-direct {p0}, Landroid/icu/impl/number/parse/ValidationMatcher;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/icu/impl/number/parse/MultiplierParseHandler;->multiplier:Landroid/icu/number/Scale;

    .line 18
    return-void
.end method


# virtual methods
.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 4
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 22
    iget-object v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v0, :cond_b

    .line 23
    iget-object v0, p0, Landroid/icu/impl/number/parse/MultiplierParseHandler;->multiplier:Landroid/icu/number/Scale;

    iget-object v1, p1, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v0, v1}, Landroid/icu/number/Scale;->applyReciprocalTo(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 26
    :cond_b
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<MultiplierHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/number/parse/MultiplierParseHandler;->multiplier:Landroid/icu/number/Scale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
