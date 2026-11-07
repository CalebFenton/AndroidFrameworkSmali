.class final enum Landroid/icu/number/NumberSkeletonImpl$ParseState;
.super Ljava/lang/Enum;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ParseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberSkeletonImpl$ParseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_CURRENCY_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_FRACTION_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_IDENTIFIER_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_INCREMENT_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_INTEGER_WIDTH:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_NUMBERING_SYSTEM:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_PER_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_SCALE:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_SCIENTIFIC:Landroid/icu/number/NumberSkeletonImpl$ParseState;

.field public static final enum blacklist STATE_UNIT_USAGE:Landroid/icu/number/NumberSkeletonImpl$ParseState;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/number/NumberSkeletonImpl$ParseState;
    .registers 13

    .line 49
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v1, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v2, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_FRACTION_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v3, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v4, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_INCREMENT_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v5, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v6, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PER_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v7, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_IDENTIFIER_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v8, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_UNIT_USAGE:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v9, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_CURRENCY_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v10, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_INTEGER_WIDTH:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v11, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NUMBERING_SYSTEM:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    sget-object v12, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCALE:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    filled-new-array/range {v0 .. v12}, [Landroid/icu/number/NumberSkeletonImpl$ParseState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NULL:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 54
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_SCIENTIFIC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 55
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_FRACTION_PRECISION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_FRACTION_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 56
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_PRECISION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 59
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_INCREMENT_PRECISION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_INCREMENT_PRECISION:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 60
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_MEASURE_UNIT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 61
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_PER_MEASURE_UNIT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_PER_MEASURE_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 62
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_IDENTIFIER_UNIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_IDENTIFIER_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 63
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_UNIT_USAGE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_UNIT_USAGE:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 64
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_CURRENCY_UNIT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_CURRENCY_UNIT:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 65
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_INTEGER_WIDTH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_INTEGER_WIDTH:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 66
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_NUMBERING_SYSTEM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_NUMBERING_SYSTEM:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 67
    new-instance v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    const-string v1, "STATE_SCALE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberSkeletonImpl$ParseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCALE:Landroid/icu/number/NumberSkeletonImpl$ParseState;

    .line 49
    invoke-static {}, Landroid/icu/number/NumberSkeletonImpl$ParseState;->$values()[Landroid/icu/number/NumberSkeletonImpl$ParseState;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->$VALUES:[Landroid/icu/number/NumberSkeletonImpl$ParseState;

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

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/number/NumberSkeletonImpl$ParseState;
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

    .line 49
    const-class v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/number/NumberSkeletonImpl$ParseState;
    .registers 1

    .line 49
    sget-object v0, Landroid/icu/number/NumberSkeletonImpl$ParseState;->$VALUES:[Landroid/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v0}, [Landroid/icu/number/NumberSkeletonImpl$ParseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberSkeletonImpl$ParseState;

    return-object v0
.end method
