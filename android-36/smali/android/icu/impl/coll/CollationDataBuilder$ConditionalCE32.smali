.class final Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConditionalCE32"
.end annotation


# instance fields
.field blacklist builtCE32:I

.field blacklist ce32:I

.field blacklist context:Ljava/lang/String;

.field blacklist defaultCE32:I

.field blacklist era:I

.field blacklist next:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "ct"    # Ljava/lang/String;
    .param p2, "ce"    # I

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->era:I

    .line 356
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    .line 357
    iput p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 358
    const/4 v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    .line 359
    iput v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    .line 360
    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    .line 361
    return-void
.end method


# virtual methods
.method blacklist hasContext()Z
    .registers 3

    .line 363
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method blacklist prefixLength()I
    .registers 3

    .line 364
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
