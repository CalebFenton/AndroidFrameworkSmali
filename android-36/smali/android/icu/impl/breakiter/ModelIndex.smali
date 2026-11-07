.class final enum Landroid/icu/impl/breakiter/ModelIndex;
.super Ljava/lang/Enum;
.source "MlBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/breakiter/ModelIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/breakiter/ModelIndex;

.field public static final enum blacklist kBWStart:Landroid/icu/impl/breakiter/ModelIndex;

.field public static final enum blacklist kTWStart:Landroid/icu/impl/breakiter/ModelIndex;

.field public static final enum blacklist kUWStart:Landroid/icu/impl/breakiter/ModelIndex;


# instance fields
.field private final blacklist value:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/breakiter/ModelIndex;
    .registers 3

    .line 23
    sget-object v0, Landroid/icu/impl/breakiter/ModelIndex;->kUWStart:Landroid/icu/impl/breakiter/ModelIndex;

    sget-object v1, Landroid/icu/impl/breakiter/ModelIndex;->kBWStart:Landroid/icu/impl/breakiter/ModelIndex;

    sget-object v2, Landroid/icu/impl/breakiter/ModelIndex;->kTWStart:Landroid/icu/impl/breakiter/ModelIndex;

    filled-new-array {v0, v1, v2}, [Landroid/icu/impl/breakiter/ModelIndex;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 24
    new-instance v0, Landroid/icu/impl/breakiter/ModelIndex;

    const-string v1, "kUWStart"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/impl/breakiter/ModelIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/breakiter/ModelIndex;->kUWStart:Landroid/icu/impl/breakiter/ModelIndex;

    new-instance v0, Landroid/icu/impl/breakiter/ModelIndex;

    const/4 v1, 0x1

    const/4 v2, 0x6

    const-string v3, "kBWStart"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/breakiter/ModelIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/breakiter/ModelIndex;->kBWStart:Landroid/icu/impl/breakiter/ModelIndex;

    new-instance v0, Landroid/icu/impl/breakiter/ModelIndex;

    const/4 v1, 0x2

    const/16 v2, 0x9

    const-string v3, "kTWStart"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/impl/breakiter/ModelIndex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/impl/breakiter/ModelIndex;->kTWStart:Landroid/icu/impl/breakiter/ModelIndex;

    .line 23
    invoke-static {}, Landroid/icu/impl/breakiter/ModelIndex;->$values()[Landroid/icu/impl/breakiter/ModelIndex;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/breakiter/ModelIndex;->$VALUES:[Landroid/icu/impl/breakiter/ModelIndex;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Landroid/icu/impl/breakiter/ModelIndex;->value:I

    .line 29
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/breakiter/ModelIndex;
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

    .line 23
    const-class v0, Landroid/icu/impl/breakiter/ModelIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/breakiter/ModelIndex;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/breakiter/ModelIndex;
    .registers 1

    .line 23
    sget-object v0, Landroid/icu/impl/breakiter/ModelIndex;->$VALUES:[Landroid/icu/impl/breakiter/ModelIndex;

    invoke-virtual {v0}, [Landroid/icu/impl/breakiter/ModelIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/breakiter/ModelIndex;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .registers 2

    .line 32
    iget v0, p0, Landroid/icu/impl/breakiter/ModelIndex;->value:I

    return v0
.end method
