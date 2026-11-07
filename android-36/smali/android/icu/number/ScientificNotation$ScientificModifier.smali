.class Landroid/icu/number/ScientificNotation$ScientificModifier;
.super Ljava/lang/Object;
.source "ScientificNotation.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/ScientificNotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScientificModifier"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final blacklist exponent:I

.field final blacklist handler:Landroid/icu/number/ScientificNotation$ScientificHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 288
    const-class v0, Landroid/icu/number/ScientificNotation;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/icu/number/ScientificNotation$ScientificHandler;)V
    .registers 3
    .param p1, "exponent"    # I
    .param p2, "handler"    # Landroid/icu/number/ScientificNotation$ScientificHandler;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput p1, p0, Landroid/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    .line 294
    iput-object p2, p0, Landroid/icu/number/ScientificNotation$ScientificModifier;->handler:Landroid/icu/number/ScientificNotation$ScientificHandler;

    .line 295
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/FormattedStringBuilder;II)I
    .registers 6
    .param p1, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "leftIndex"    # I
    .param p3, "rightIndex"    # I

    .line 299
    iget-object v0, p0, Landroid/icu/number/ScientificNotation$ScientificModifier;->handler:Landroid/icu/number/ScientificNotation$ScientificHandler;

    iget v1, p0, Landroid/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    invoke-static {v0, v1, p1, p3}, Landroid/icu/number/ScientificNotation$ScientificHandler;->-$$Nest$mdoApply(Landroid/icu/number/ScientificNotation$ScientificHandler;ILandroid/icu/impl/FormattedStringBuilder;I)I

    move-result v0

    return v0
.end method

.method public blacklist containsField(Ljava/text/Format$Field;)Z
    .registers 3
    .param p1, "field"    # Ljava/text/Format$Field;

    .line 325
    nop

    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCodePointCount()I
    .registers 2

    .line 313
    const/16 v0, 0x3e7

    return v0
.end method

.method public blacklist getParameters()Landroid/icu/impl/number/Modifier$Parameters;
    .registers 2

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrefixLength()I
    .registers 2

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isStrong()Z
    .registers 2

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist strictEquals(Landroid/icu/impl/number/Modifier;)Z
    .registers 6
    .param p1, "other"    # Landroid/icu/impl/number/Modifier;

    .line 336
    instance-of v0, p1, Landroid/icu/number/ScientificNotation$ScientificModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 337
    return v1

    .line 339
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/number/ScientificNotation$ScientificModifier;

    .line 341
    .local v0, "_other":Landroid/icu/number/ScientificNotation$ScientificModifier;
    iget v2, p0, Landroid/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    iget v3, v0, Landroid/icu/number/ScientificNotation$ScientificModifier;->exponent:I

    if-ne v2, v3, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method
