.class public final enum Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;
.super Ljava/lang/Enum;
.source "Java21LanguageFeatures.java"

# interfaces
.implements Llibcore/internal/Java21LanguageFeatures$ShapeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/internal/Java21LanguageFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoundedShapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;",
        ">;",
        "Llibcore/internal/Java21LanguageFeatures$ShapeType;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

.field public static final enum blacklist CIRCLE:Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;


# direct methods
.method private static synthetic blacklist $values()[Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;
    .registers 1

    .line 106
    sget-object v0, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;->CIRCLE:Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    filled-new-array {v0}, [Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    new-instance v0, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    const-string v1, "CIRCLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;->CIRCLE:Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    invoke-static {}, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;->$values()[Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    move-result-object v0

    sput-object v0, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;->$VALUES:[Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

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

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;
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

    .line 106
    const-class v0, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    return-object v0
.end method

.method public static blacklist values()[Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;
    .registers 1

    .line 106
    sget-object v0, Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;->$VALUES:[Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    invoke-virtual {v0}, [Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llibcore/internal/Java21LanguageFeatures$RoundedShapeType;

    return-object v0
.end method
