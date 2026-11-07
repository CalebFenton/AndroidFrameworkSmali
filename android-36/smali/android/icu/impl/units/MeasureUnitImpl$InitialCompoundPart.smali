.class public final enum Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
.super Ljava/lang/Enum;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitialCompoundPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

.field public static final enum blacklist INITIAL_COMPOUND_PART_PER:Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;


# instance fields
.field private final blacklist index:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
    .registers 1

    .line 379
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->INITIAL_COMPOUND_PART_PER:Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    filled-new-array {v0}, [Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 383
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    const-string v1, "INITIAL_COMPOUND_PART_PER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->INITIAL_COMPOUND_PART_PER:Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    .line 379
    invoke-static {}, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->$values()[Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->$VALUES:[Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "powerIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 387
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 388
    iput p3, p0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->index:I

    .line 389
    return-void
.end method

.method public static blacklist getInitialCompoundPartFromTrieIndex(I)Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
    .registers 4
    .param p0, "trieIndex"    # I

    .line 392
    add-int/lit16 v0, p0, -0xc0

    .line 393
    .local v0, "index":I
    if-nez v0, :cond_7

    .line 394
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->INITIAL_COMPOUND_PART_PER:Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    return-object v1

    .line 397
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Incorrect trieIndex"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 379
    const-class v0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
    .registers 1

    .line 379
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->$VALUES:[Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    invoke-virtual {v0}, [Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    return-object v0
.end method


# virtual methods
.method public blacklist getTrieIndex()I
    .registers 2

    .line 401
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->index:I

    add-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public blacklist getValue()I
    .registers 2

    .line 405
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->index:I

    return v0
.end method
