.class final enum Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;
.super Ljava/lang/Enum;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlaceholderPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

.field public static final enum blacklist BEGINNING:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

.field public static final enum blacklist END:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

.field public static final enum blacklist MIDDLE:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

.field public static final enum blacklist NONE:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;
    .registers 4

    .line 73
    sget-object v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->NONE:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    sget-object v1, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->BEGINNING:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    sget-object v2, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->MIDDLE:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    sget-object v3, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->END:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 73
    new-instance v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->NONE:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    new-instance v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v1, "BEGINNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->BEGINNING:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    new-instance v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v1, "MIDDLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->MIDDLE:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    new-instance v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    const-string v1, "END"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->END:Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    invoke-static {}, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->$values()[Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->$VALUES:[Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

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

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;
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

    .line 73
    const-class v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;
    .registers 1

    .line 73
    sget-object v0, Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->$VALUES:[Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    invoke-virtual {v0}, [Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/number/LongNameHandler$PlaceholderPosition;

    return-object v0
.end method
