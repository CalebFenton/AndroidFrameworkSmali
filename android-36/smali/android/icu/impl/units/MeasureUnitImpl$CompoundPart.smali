.class public final enum Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;
.super Ljava/lang/Enum;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompoundPart"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

.field public static final enum blacklist AND:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

.field public static final enum blacklist PER:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

.field public static final enum blacklist TIMES:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;


# instance fields
.field private final blacklist index:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;
    .registers 3

    .line 301
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->PER:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->TIMES:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    sget-object v2, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->AND:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    filled-new-array {v0, v1, v2}, [Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 303
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    const-string v1, "PER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->PER:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    .line 305
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    const-string v1, "TIMES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->TIMES:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    .line 307
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    const-string v1, "AND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->AND:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    .line 301
    invoke-static {}, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->$values()[Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->$VALUES:[Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "index"    # I
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

    .line 311
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 312
    iput p3, p0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->index:I

    .line 313
    return-void
.end method

.method public static blacklist getCompoundPartFromTrieIndex(I)Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;
    .registers 4
    .param p0, "trieIndex"    # I

    .line 316
    add-int/lit8 v0, p0, -0x80

    .line 317
    .local v0, "index":I
    packed-switch v0, :pswitch_data_16

    .line 325
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "CompoundPart index must be 0, 1 or 2"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 323
    :pswitch_d
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->AND:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object v1

    .line 321
    :pswitch_10
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->TIMES:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object v1

    .line 319
    :pswitch_13
    sget-object v1, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->PER:Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object v1

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;
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

    .line 301
    const-class v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;
    .registers 1

    .line 301
    sget-object v0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->$VALUES:[Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    invoke-virtual {v0}, [Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;

    return-object v0
.end method


# virtual methods
.method public blacklist getTrieIndex()I
    .registers 2

    .line 330
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->index:I

    add-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public blacklist getValue()I
    .registers 2

    .line 334
    iget v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$CompoundPart;->index:I

    return v0
.end method
