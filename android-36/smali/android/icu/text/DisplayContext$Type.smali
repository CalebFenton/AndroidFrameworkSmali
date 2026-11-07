.class public final enum Landroid/icu/text/DisplayContext$Type;
.super Ljava/lang/Enum;
.source "DisplayContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DisplayContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayContext$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DisplayContext$Type;

.field public static final enum whitelist test-api CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

.field public static final enum whitelist test-api DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

.field public static final enum whitelist test-api DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

.field public static final enum whitelist test-api SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DisplayContext$Type;
    .registers 4

    .line 102
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    sget-object v3, Landroid/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 106
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    const-string v1, "DIALECT_HANDLING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    .line 111
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    const-string v1, "CAPITALIZATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    .line 115
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    const-string v1, "DISPLAY_LENGTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    .line 119
    new-instance v0, Landroid/icu/text/DisplayContext$Type;

    const-string v1, "SUBSTITUTE_HANDLING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/DisplayContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;

    .line 102
    invoke-static {}, Landroid/icu/text/DisplayContext$Type;->$values()[Landroid/icu/text/DisplayContext$Type;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayContext$Type;->$VALUES:[Landroid/icu/text/DisplayContext$Type;

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

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayContext$Type;
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

    .line 102
    const-class v0, Landroid/icu/text/DisplayContext$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayContext$Type;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DisplayContext$Type;
    .registers 1

    .line 102
    sget-object v0, Landroid/icu/text/DisplayContext$Type;->$VALUES:[Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayContext$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayContext$Type;

    return-object v0
.end method
