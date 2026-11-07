.class public final enum Landroid/icu/text/PersonNameFormatter$Usage;
.super Ljava/lang/Enum;
.source "PersonNameFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PersonNameFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Usage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/PersonNameFormatter$Usage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/PersonNameFormatter$Usage;

.field public static final enum blacklist ADDRESSING:Landroid/icu/text/PersonNameFormatter$Usage;

.field public static final enum blacklist MONOGRAM:Landroid/icu/text/PersonNameFormatter$Usage;

.field public static final enum blacklist REFERRING:Landroid/icu/text/PersonNameFormatter$Usage;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/PersonNameFormatter$Usage;
    .registers 3

    .line 105
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Usage;->ADDRESSING:Landroid/icu/text/PersonNameFormatter$Usage;

    sget-object v1, Landroid/icu/text/PersonNameFormatter$Usage;->REFERRING:Landroid/icu/text/PersonNameFormatter$Usage;

    sget-object v2, Landroid/icu/text/PersonNameFormatter$Usage;->MONOGRAM:Landroid/icu/text/PersonNameFormatter$Usage;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/PersonNameFormatter$Usage;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 109
    new-instance v0, Landroid/icu/text/PersonNameFormatter$Usage;

    const-string v1, "ADDRESSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$Usage;->ADDRESSING:Landroid/icu/text/PersonNameFormatter$Usage;

    .line 114
    new-instance v0, Landroid/icu/text/PersonNameFormatter$Usage;

    const-string v1, "REFERRING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$Usage;->REFERRING:Landroid/icu/text/PersonNameFormatter$Usage;

    .line 122
    new-instance v0, Landroid/icu/text/PersonNameFormatter$Usage;

    const-string v1, "MONOGRAM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/PersonNameFormatter$Usage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/PersonNameFormatter$Usage;->MONOGRAM:Landroid/icu/text/PersonNameFormatter$Usage;

    .line 105
    invoke-static {}, Landroid/icu/text/PersonNameFormatter$Usage;->$values()[Landroid/icu/text/PersonNameFormatter$Usage;

    move-result-object v0

    sput-object v0, Landroid/icu/text/PersonNameFormatter$Usage;->$VALUES:[Landroid/icu/text/PersonNameFormatter$Usage;

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

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/text/PersonNameFormatter$Usage;
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

    .line 105
    const-class v0, Landroid/icu/text/PersonNameFormatter$Usage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/PersonNameFormatter$Usage;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/text/PersonNameFormatter$Usage;
    .registers 1

    .line 105
    sget-object v0, Landroid/icu/text/PersonNameFormatter$Usage;->$VALUES:[Landroid/icu/text/PersonNameFormatter$Usage;

    invoke-virtual {v0}, [Landroid/icu/text/PersonNameFormatter$Usage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/PersonNameFormatter$Usage;

    return-object v0
.end method
