.class public final enum Landroid/icu/util/CodePointMap$RangeOption;
.super Ljava/lang/Enum;
.source "CodePointMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/CodePointMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RangeOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/CodePointMap$RangeOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/CodePointMap$RangeOption;

.field public static final enum blacklist FIXED_ALL_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

.field public static final enum blacklist FIXED_LEAD_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

.field public static final enum blacklist NORMAL:Landroid/icu/util/CodePointMap$RangeOption;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/CodePointMap$RangeOption;
    .registers 3

    .line 26
    sget-object v0, Landroid/icu/util/CodePointMap$RangeOption;->NORMAL:Landroid/icu/util/CodePointMap$RangeOption;

    sget-object v1, Landroid/icu/util/CodePointMap$RangeOption;->FIXED_LEAD_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

    sget-object v2, Landroid/icu/util/CodePointMap$RangeOption;->FIXED_ALL_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

    filled-new-array {v0, v1, v2}, [Landroid/icu/util/CodePointMap$RangeOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Landroid/icu/util/CodePointMap$RangeOption;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CodePointMap$RangeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/CodePointMap$RangeOption;->NORMAL:Landroid/icu/util/CodePointMap$RangeOption;

    .line 46
    new-instance v0, Landroid/icu/util/CodePointMap$RangeOption;

    const-string v1, "FIXED_LEAD_SURROGATES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CodePointMap$RangeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/CodePointMap$RangeOption;->FIXED_LEAD_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

    .line 61
    new-instance v0, Landroid/icu/util/CodePointMap$RangeOption;

    const-string v1, "FIXED_ALL_SURROGATES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CodePointMap$RangeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/CodePointMap$RangeOption;->FIXED_ALL_SURROGATES:Landroid/icu/util/CodePointMap$RangeOption;

    .line 26
    invoke-static {}, Landroid/icu/util/CodePointMap$RangeOption;->$values()[Landroid/icu/util/CodePointMap$RangeOption;

    move-result-object v0

    sput-object v0, Landroid/icu/util/CodePointMap$RangeOption;->$VALUES:[Landroid/icu/util/CodePointMap$RangeOption;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/util/CodePointMap$RangeOption;
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

    .line 26
    const-class v0, Landroid/icu/util/CodePointMap$RangeOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/CodePointMap$RangeOption;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/util/CodePointMap$RangeOption;
    .registers 1

    .line 26
    sget-object v0, Landroid/icu/util/CodePointMap$RangeOption;->$VALUES:[Landroid/icu/util/CodePointMap$RangeOption;

    invoke-virtual {v0}, [Landroid/icu/util/CodePointMap$RangeOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/CodePointMap$RangeOption;

    return-object v0
.end method
