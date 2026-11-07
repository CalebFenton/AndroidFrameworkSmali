.class public final enum Landroid/icu/impl/number/Modifier$Signum;
.super Ljava/lang/Enum;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Signum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/Modifier$Signum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/number/Modifier$Signum;

.field static final blacklist COUNT:I

.field public static final enum blacklist NEG:Landroid/icu/impl/number/Modifier$Signum;

.field public static final enum blacklist NEG_ZERO:Landroid/icu/impl/number/Modifier$Signum;

.field public static final enum blacklist POS:Landroid/icu/impl/number/Modifier$Signum;

.field public static final enum blacklist POS_ZERO:Landroid/icu/impl/number/Modifier$Signum;

.field public static final blacklist VALUES:[Landroid/icu/impl/number/Modifier$Signum;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/number/Modifier$Signum;
    .registers 4

    .line 22
    sget-object v0, Landroid/icu/impl/number/Modifier$Signum;->NEG:Landroid/icu/impl/number/Modifier$Signum;

    sget-object v1, Landroid/icu/impl/number/Modifier$Signum;->NEG_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    sget-object v2, Landroid/icu/impl/number/Modifier$Signum;->POS_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    sget-object v3, Landroid/icu/impl/number/Modifier$Signum;->POS:Landroid/icu/impl/number/Modifier$Signum;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Landroid/icu/impl/number/Modifier$Signum;

    const-string v1, "NEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/Modifier$Signum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Modifier$Signum;->NEG:Landroid/icu/impl/number/Modifier$Signum;

    .line 24
    new-instance v0, Landroid/icu/impl/number/Modifier$Signum;

    const-string v1, "NEG_ZERO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/Modifier$Signum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Modifier$Signum;->NEG_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    .line 25
    new-instance v0, Landroid/icu/impl/number/Modifier$Signum;

    const-string v1, "POS_ZERO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/Modifier$Signum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Modifier$Signum;->POS_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    .line 26
    new-instance v0, Landroid/icu/impl/number/Modifier$Signum;

    const-string v1, "POS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/Modifier$Signum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/Modifier$Signum;->POS:Landroid/icu/impl/number/Modifier$Signum;

    .line 22
    invoke-static {}, Landroid/icu/impl/number/Modifier$Signum;->$values()[Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Modifier$Signum;->$VALUES:[Landroid/icu/impl/number/Modifier$Signum;

    .line 28
    invoke-static {}, Landroid/icu/impl/number/Modifier$Signum;->values()[Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v0

    array-length v0, v0

    sput v0, Landroid/icu/impl/number/Modifier$Signum;->COUNT:I

    .line 29
    invoke-static {}, Landroid/icu/impl/number/Modifier$Signum;->values()[Landroid/icu/impl/number/Modifier$Signum;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/Modifier$Signum;->VALUES:[Landroid/icu/impl/number/Modifier$Signum;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/number/Modifier$Signum;
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

    .line 22
    const-class v0, Landroid/icu/impl/number/Modifier$Signum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/Modifier$Signum;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/number/Modifier$Signum;
    .registers 1

    .line 22
    sget-object v0, Landroid/icu/impl/number/Modifier$Signum;->$VALUES:[Landroid/icu/impl/number/Modifier$Signum;

    invoke-virtual {v0}, [Landroid/icu/impl/number/Modifier$Signum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/Modifier$Signum;

    return-object v0
.end method
