.class public Landroid/icu/impl/number/MultiplierFormatHandler;
.super Ljava/lang/Object;
.source "MultiplierFormatHandler.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# instance fields
.field final blacklist multiplier:Landroid/icu/number/Scale;

.field final blacklist parent:Landroid/icu/impl/number/MicroPropsGenerator;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/number/Scale;Landroid/icu/impl/number/MicroPropsGenerator;)V
    .registers 3
    .param p1, "multiplier"    # Landroid/icu/number/Scale;
    .param p2, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/icu/impl/number/MultiplierFormatHandler;->multiplier:Landroid/icu/number/Scale;

    .line 18
    iput-object p2, p0, Landroid/icu/impl/number/MultiplierFormatHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 4
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 23
    iget-object v0, p0, Landroid/icu/impl/number/MultiplierFormatHandler;->parent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 24
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    iget-object v1, p0, Landroid/icu/impl/number/MultiplierFormatHandler;->multiplier:Landroid/icu/number/Scale;

    invoke-virtual {v1, p1}, Landroid/icu/number/Scale;->applyTo(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 25
    return-object v0
.end method
