.class public final enum Landroid/icu/number/NumberFormatter$RoundingPriority;
.super Ljava/lang/Enum;
.source "NumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoundingPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/number/NumberFormatter$RoundingPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/number/NumberFormatter$RoundingPriority;

.field public static final enum whitelist test-api RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

.field public static final enum whitelist test-api STRICT:Landroid/icu/number/NumberFormatter$RoundingPriority;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/number/NumberFormatter$RoundingPriority;
    .registers 2

    .line 116
    sget-object v0, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    sget-object v1, Landroid/icu/number/NumberFormatter$RoundingPriority;->STRICT:Landroid/icu/number/NumberFormatter$RoundingPriority;

    filled-new-array {v0, v1}, [Landroid/icu/number/NumberFormatter$RoundingPriority;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 120
    new-instance v0, Landroid/icu/number/NumberFormatter$RoundingPriority;

    const-string v1, "RELAXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$RoundingPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    .line 125
    new-instance v0, Landroid/icu/number/NumberFormatter$RoundingPriority;

    const-string v1, "STRICT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/number/NumberFormatter$RoundingPriority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/number/NumberFormatter$RoundingPriority;->STRICT:Landroid/icu/number/NumberFormatter$RoundingPriority;

    .line 116
    invoke-static {}, Landroid/icu/number/NumberFormatter$RoundingPriority;->$values()[Landroid/icu/number/NumberFormatter$RoundingPriority;

    move-result-object v0

    sput-object v0, Landroid/icu/number/NumberFormatter$RoundingPriority;->$VALUES:[Landroid/icu/number/NumberFormatter$RoundingPriority;

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

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/number/NumberFormatter$RoundingPriority;
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

    .line 116
    const-class v0, Landroid/icu/number/NumberFormatter$RoundingPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/number/NumberFormatter$RoundingPriority;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/number/NumberFormatter$RoundingPriority;
    .registers 1

    .line 116
    sget-object v0, Landroid/icu/number/NumberFormatter$RoundingPriority;->$VALUES:[Landroid/icu/number/NumberFormatter$RoundingPriority;

    invoke-virtual {v0}, [Landroid/icu/number/NumberFormatter$RoundingPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/number/NumberFormatter$RoundingPriority;

    return-object v0
.end method
