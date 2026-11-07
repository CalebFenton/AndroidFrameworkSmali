.class public final enum Landroid/icu/util/MeasureUnit$Complexity;
.super Ljava/lang/Enum;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Complexity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/MeasureUnit$Complexity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/MeasureUnit$Complexity;

.field public static final enum whitelist test-api COMPOUND:Landroid/icu/util/MeasureUnit$Complexity;

.field public static final enum whitelist test-api MIXED:Landroid/icu/util/MeasureUnit$Complexity;

.field public static final enum whitelist test-api SINGLE:Landroid/icu/util/MeasureUnit$Complexity;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/MeasureUnit$Complexity;
    .registers 3

    .line 91
    sget-object v0, Landroid/icu/util/MeasureUnit$Complexity;->SINGLE:Landroid/icu/util/MeasureUnit$Complexity;

    sget-object v1, Landroid/icu/util/MeasureUnit$Complexity;->COMPOUND:Landroid/icu/util/MeasureUnit$Complexity;

    sget-object v2, Landroid/icu/util/MeasureUnit$Complexity;->MIXED:Landroid/icu/util/MeasureUnit$Complexity;

    filled-new-array {v0, v1, v2}, [Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 95
    new-instance v0, Landroid/icu/util/MeasureUnit$Complexity;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/MeasureUnit$Complexity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/MeasureUnit$Complexity;->SINGLE:Landroid/icu/util/MeasureUnit$Complexity;

    .line 100
    new-instance v0, Landroid/icu/util/MeasureUnit$Complexity;

    const-string v1, "COMPOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/MeasureUnit$Complexity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/MeasureUnit$Complexity;->COMPOUND:Landroid/icu/util/MeasureUnit$Complexity;

    .line 105
    new-instance v0, Landroid/icu/util/MeasureUnit$Complexity;

    const-string v1, "MIXED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/MeasureUnit$Complexity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/MeasureUnit$Complexity;->MIXED:Landroid/icu/util/MeasureUnit$Complexity;

    .line 91
    invoke-static {}, Landroid/icu/util/MeasureUnit$Complexity;->$values()[Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v0

    sput-object v0, Landroid/icu/util/MeasureUnit$Complexity;->$VALUES:[Landroid/icu/util/MeasureUnit$Complexity;

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

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/util/MeasureUnit$Complexity;
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

    .line 91
    const-class v0, Landroid/icu/util/MeasureUnit$Complexity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/MeasureUnit$Complexity;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/util/MeasureUnit$Complexity;
    .registers 1

    .line 91
    sget-object v0, Landroid/icu/util/MeasureUnit$Complexity;->$VALUES:[Landroid/icu/util/MeasureUnit$Complexity;

    invoke-virtual {v0}, [Landroid/icu/util/MeasureUnit$Complexity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/MeasureUnit$Complexity;

    return-object v0
.end method
