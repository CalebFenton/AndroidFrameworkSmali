.class public final enum Ljdk/internal/math/FormattedFloatingDecimal$Form;
.super Ljava/lang/Enum;
.source "FormattedFloatingDecimal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/internal/math/FormattedFloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Form"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljdk/internal/math/FormattedFloatingDecimal$Form;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljdk/internal/math/FormattedFloatingDecimal$Form;

.field public static final enum blacklist COMPATIBLE:Ljdk/internal/math/FormattedFloatingDecimal$Form;

.field public static final enum blacklist DECIMAL_FLOAT:Ljdk/internal/math/FormattedFloatingDecimal$Form;

.field public static final enum blacklist GENERAL:Ljdk/internal/math/FormattedFloatingDecimal$Form;

.field public static final enum blacklist SCIENTIFIC:Ljdk/internal/math/FormattedFloatingDecimal$Form;


# direct methods
.method private static synthetic blacklist $values()[Ljdk/internal/math/FormattedFloatingDecimal$Form;
    .registers 4

    .line 32
    sget-object v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;->SCIENTIFIC:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    sget-object v1, Ljdk/internal/math/FormattedFloatingDecimal$Form;->COMPATIBLE:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    sget-object v2, Ljdk/internal/math/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    sget-object v3, Ljdk/internal/math/FormattedFloatingDecimal$Form;->GENERAL:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    filled-new-array {v0, v1, v2, v3}, [Ljdk/internal/math/FormattedFloatingDecimal$Form;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;

    const-string v1, "SCIENTIFIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljdk/internal/math/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;->SCIENTIFIC:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    new-instance v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;

    const-string v1, "COMPATIBLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljdk/internal/math/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;->COMPATIBLE:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    new-instance v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;

    const-string v1, "DECIMAL_FLOAT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljdk/internal/math/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;->DECIMAL_FLOAT:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    new-instance v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;

    const-string v1, "GENERAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljdk/internal/math/FormattedFloatingDecimal$Form;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;->GENERAL:Ljdk/internal/math/FormattedFloatingDecimal$Form;

    invoke-static {}, Ljdk/internal/math/FormattedFloatingDecimal$Form;->$values()[Ljdk/internal/math/FormattedFloatingDecimal$Form;

    move-result-object v0

    sput-object v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;->$VALUES:[Ljdk/internal/math/FormattedFloatingDecimal$Form;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljdk/internal/math/FormattedFloatingDecimal$Form;
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

    .line 32
    const-class v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;

    return-object v0
.end method

.method public static blacklist values()[Ljdk/internal/math/FormattedFloatingDecimal$Form;
    .registers 1

    .line 32
    sget-object v0, Ljdk/internal/math/FormattedFloatingDecimal$Form;->$VALUES:[Ljdk/internal/math/FormattedFloatingDecimal$Form;

    invoke-virtual {v0}, [Ljdk/internal/math/FormattedFloatingDecimal$Form;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljdk/internal/math/FormattedFloatingDecimal$Form;

    return-object v0
.end method
