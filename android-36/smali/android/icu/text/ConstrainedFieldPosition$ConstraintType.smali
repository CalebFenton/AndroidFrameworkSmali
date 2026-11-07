.class final enum Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;
.super Ljava/lang/Enum;
.source "ConstrainedFieldPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ConstrainedFieldPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConstraintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

.field public static final enum blacklist CLASS:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

.field public static final enum blacklist FIELD:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

.field public static final enum blacklist NONE:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

.field public static final enum blacklist VALUE:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;
    .registers 4

    .line 27
    sget-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->NONE:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    sget-object v1, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->CLASS:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    sget-object v2, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->FIELD:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    sget-object v3, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->VALUE:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->NONE:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 44
    new-instance v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    const-string v1, "CLASS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->CLASS:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 54
    new-instance v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    const-string v1, "FIELD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->FIELD:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 64
    new-instance v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    const-string v1, "VALUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->VALUE:Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    .line 27
    invoke-static {}, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->$values()[Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->$VALUES:[Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;
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

    .line 27
    const-class v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;
    .registers 1

    .line 27
    sget-object v0, Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->$VALUES:[Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    invoke-virtual {v0}, [Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/ConstrainedFieldPosition$ConstraintType;

    return-object v0
.end method
