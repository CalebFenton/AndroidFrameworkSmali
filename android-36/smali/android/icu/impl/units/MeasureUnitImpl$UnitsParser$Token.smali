.class Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist fMatch:I

.field private final blacklist type:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 713
    const-class v0, Landroid/icu/impl/units/MeasureUnitImpl;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "fMatch"    # I

    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput p1, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    .line 720
    invoke-direct {p0, p1}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->calculateType(I)Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->type:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 721
    return-void
.end method

.method private blacklist calculateType(I)Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    .registers 4
    .param p1, "fMatch"    # I

    .line 760
    if-lez p1, :cond_21

    .line 764
    const/16 v0, 0x80

    if-ge p1, v0, :cond_9

    .line 765
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_PREFIX:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0

    .line 767
    :cond_9
    const/16 v0, 0xc0

    if-ge p1, v0, :cond_10

    .line 768
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0

    .line 770
    :cond_10
    const/16 v0, 0x100

    if-ge p1, v0, :cond_17

    .line 771
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_INITIAL_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0

    .line 773
    :cond_17
    const/16 v0, 0x200

    if-ge p1, v0, :cond_1e

    .line 774
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_POWER_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0

    .line 777
    :cond_1e
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_SIMPLE_UNIT:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0

    .line 761
    :cond_21
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "fMatch must have a positive value"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public blacklist getInitialCompoundPart()Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
    .registers 2

    .line 741
    nop

    .line 744
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    invoke-static {v0}, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->getInitialCompoundPartFromTrieIndex(I)Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMatch()I
    .registers 2

    .line 734
    nop

    .line 735
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    return v0
.end method

.method public blacklist getPower()I
    .registers 2

    .line 748
    nop

    .line 749
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    invoke-static {v0}, Landroid/icu/impl/units/MeasureUnitImpl$PowerPart;->getPowerFromTrieIndex(I)I

    move-result v0

    return v0
.end method

.method public blacklist getPrefix()Landroid/icu/util/MeasureUnit$MeasurePrefix;
    .registers 2

    .line 728
    nop

    .line 729
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    invoke-static {v0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->-$$Nest$smgetPrefixFromTrieIndex(I)Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSimpleUnitIndex()I
    .registers 2

    .line 753
    nop

    .line 754
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    add-int/lit16 v0, v0, -0x200

    return v0
.end method

.method public blacklist getType()Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    .registers 2

    .line 724
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->type:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0
.end method
