.class public Landroid/icu/impl/number/ConstantAffixModifier;
.super Ljava/lang/Object;
.source "ConstantAffixModifier.java"

# interfaces
.implements Landroid/icu/impl/number/Modifier;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final blacklist EMPTY:Landroid/icu/impl/number/ConstantAffixModifier;


# instance fields
.field private final blacklist field:Ljava/text/Format$Field;

.field private final blacklist prefix:Ljava/lang/String;

.field private final blacklist strong:Z

.field private final blacklist suffix:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    nop

    .line 17
    new-instance v0, Landroid/icu/impl/number/ConstantAffixModifier;

    invoke-direct {v0}, Landroid/icu/impl/number/ConstantAffixModifier;-><init>()V

    sput-object v0, Landroid/icu/impl/number/ConstantAffixModifier;->EMPTY:Landroid/icu/impl/number/ConstantAffixModifier;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->strong:Z

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/text/Format$Field;Z)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "field"    # Ljava/text/Format$Field;
    .param p4, "strong"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    if-nez p1, :cond_9

    move-object v1, v0

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    iput-object v1, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    .line 45
    if-nez p2, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, p2

    :goto_10
    iput-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    .line 47
    iput-boolean p4, p0, Landroid/icu/impl/number/ConstantAffixModifier;->strong:Z

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/icu/impl/FormattedStringBuilder;II)I
    .registers 7
    .param p1, "output"    # Landroid/icu/impl/FormattedStringBuilder;
    .param p2, "leftIndex"    # I
    .param p3, "rightIndex"    # I

    .line 61
    iget-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    invoke-virtual {p1, p3, v0, v1}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v0

    .line 62
    .local v0, "length":I
    iget-object v1, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    invoke-virtual {p1, p2, v1, v2}, Landroid/icu/impl/FormattedStringBuilder;->insert(ILjava/lang/CharSequence;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    return v0
.end method

.method public blacklist containsField(Ljava/text/Format$Field;)Z
    .registers 3
    .param p1, "field"    # Ljava/text/Format$Field;

    .line 84
    nop

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCodePointCount()I
    .registers 5

    .line 73
    iget-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getParameters()Landroid/icu/impl/number/Modifier$Parameters;
    .registers 2

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPrefixLength()I
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public blacklist isStrong()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->strong:Z

    return v0
.end method

.method public blacklist strictEquals(Landroid/icu/impl/number/Modifier;)Z
    .registers 6
    .param p1, "other"    # Landroid/icu/impl/number/Modifier;

    .line 95
    instance-of v0, p1, Landroid/icu/impl/number/ConstantAffixModifier;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 96
    return v1

    .line 98
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/number/ConstantAffixModifier;

    .line 99
    .local v0, "_other":Landroid/icu/impl/number/ConstantAffixModifier;
    iget-object v2, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    iget-object v3, v0, Landroid/icu/impl/number/ConstantAffixModifier;->field:Ljava/text/Format$Field;

    if-ne v2, v3, :cond_2a

    iget-boolean v2, p0, Landroid/icu/impl/number/ConstantAffixModifier;->strong:Z

    iget-boolean v3, v0, Landroid/icu/impl/number/ConstantAffixModifier;->strong:Z

    if-ne v2, v3, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    iget-object v0, p0, Landroid/icu/impl/number/ConstantAffixModifier;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/ConstantAffixModifier;->suffix:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<ConstantAffixModifier prefix:\'%s\' suffix:\'%s\'>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
