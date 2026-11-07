.class final enum Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
.super Ljava/lang/Enum;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum blacklist TYPE_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum blacklist TYPE_INITIAL_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum blacklist TYPE_POWER_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum blacklist TYPE_PREFIX:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum blacklist TYPE_SIMPLE_UNIT:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

.field public static final enum blacklist TYPE_UNDEFINED:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    .registers 6

    .line 780
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_UNDEFINED:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_PREFIX:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    sget-object v2, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    sget-object v3, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_INITIAL_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    sget-object v4, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_POWER_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    sget-object v5, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_SIMPLE_UNIT:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 781
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v1, "TYPE_UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_UNDEFINED:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 782
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v1, "TYPE_PREFIX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_PREFIX:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 784
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v1, "TYPE_COMPOUND_PART"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 786
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v1, "TYPE_INITIAL_COMPOUND_PART"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_INITIAL_COMPOUND_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 787
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v1, "TYPE_POWER_PART"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_POWER_PART:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 788
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    const-string v1, "TYPE_SIMPLE_UNIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_SIMPLE_UNIT:Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    .line 780
    invoke-static {}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->$values()[Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->$VALUES:[Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 780
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
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

    .line 780
    const-class v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    .registers 1

    .line 780
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->$VALUES:[Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    invoke-virtual {v0}, [Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0
.end method
