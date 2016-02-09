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
.field builtCE32:I

.field ce32:I

.field context:Ljava/lang/String;

.field defaultCE32:I

.field next:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ct"    # Ljava/lang/String;
    .param p2, "ce"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 353
    iput-object p1, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@6
    .line 354
    iput p2, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    #@8
    .line 355
    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->defaultCE32:I

    #@a
    .line 356
    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->builtCE32:I

    #@c
    .line 357
    const/4 v0, -0x1

    #@d
    iput v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    #@f
    .line 352
    return-void
.end method


# virtual methods
.method hasContext()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 360
    iget-object v1, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-le v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method prefixLength()I
    .locals 2

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@6
    move-result v0

    #@7
    return v0
.end method
