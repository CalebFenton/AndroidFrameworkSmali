.class public final enum Landroid/icu/text/DisplayContext;
.super Ljava/lang/Enum;
.source "DisplayContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DisplayContext$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DisplayContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api DIALECT_NAMES:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api LENGTH_FULL:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api LENGTH_SHORT:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api STANDARD_NAMES:Landroid/icu/text/DisplayContext;

.field public static final enum whitelist test-api SUBSTITUTE:Landroid/icu/text/DisplayContext;


# instance fields
.field private final greylist-max-o type:Landroid/icu/text/DisplayContext$Type;

.field private final greylist-max-o value:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/DisplayContext;
    .registers 11

    .line 16
    sget-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    sget-object v3, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    sget-object v4, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    sget-object v6, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    sget-object v7, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    sget-object v8, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    sget-object v9, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    sget-object v10, Landroid/icu/text/DisplayContext;->NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

    filled-new-array/range {v0 .. v10}, [Landroid/icu/text/DisplayContext;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 26
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    const-string v2, "STANDARD_NAMES"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->STANDARD_NAMES:Landroid/icu/text/DisplayContext;

    .line 32
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    const-string v2, "DIALECT_NAMES"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->DIALECT_NAMES:Landroid/icu/text/DisplayContext;

    .line 41
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const-string v2, "CAPITALIZATION_NONE"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1, v3}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    .line 47
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const-string v2, "CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 53
    new-instance v0, Landroid/icu/text/DisplayContext;

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const-string v2, "CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1, v5}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    .line 59
    new-instance v0, Landroid/icu/text/DisplayContext;

    const/4 v1, 0x5

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const-string v5, "CAPITALIZATION_FOR_UI_LIST_OR_MENU"

    invoke-direct {v0, v5, v1, v2, v6}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    .line 66
    new-instance v0, Landroid/icu/text/DisplayContext;

    const/4 v1, 0x6

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    const-string v5, "CAPITALIZATION_FOR_STANDALONE"

    invoke-direct {v0, v5, v1, v2, v7}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    .line 76
    new-instance v0, Landroid/icu/text/DisplayContext;

    const/4 v1, 0x7

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    const-string v5, "LENGTH_FULL"

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->LENGTH_FULL:Landroid/icu/text/DisplayContext;

    .line 82
    new-instance v0, Landroid/icu/text/DisplayContext;

    const/16 v1, 0x8

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    const-string v5, "LENGTH_SHORT"

    invoke-direct {v0, v5, v1, v2, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->LENGTH_SHORT:Landroid/icu/text/DisplayContext;

    .line 92
    new-instance v0, Landroid/icu/text/DisplayContext;

    const/16 v1, 0x9

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;

    const-string v5, "SUBSTITUTE"

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->SUBSTITUTE:Landroid/icu/text/DisplayContext;

    .line 97
    new-instance v0, Landroid/icu/text/DisplayContext;

    const/16 v1, 0xa

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;

    const-string v3, "NO_SUBSTITUTE"

    invoke-direct {v0, v3, v1, v2, v4}, Landroid/icu/text/DisplayContext;-><init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V

    sput-object v0, Landroid/icu/text/DisplayContext;->NO_SUBSTITUTE:Landroid/icu/text/DisplayContext;

    .line 16
    invoke-static {}, Landroid/icu/text/DisplayContext;->$values()[Landroid/icu/text/DisplayContext;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DisplayContext;->$VALUES:[Landroid/icu/text/DisplayContext;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILandroid/icu/text/DisplayContext$Type;I)V
    .registers 5
    .param p3, "type"    # Landroid/icu/text/DisplayContext$Type;
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/DisplayContext$Type;",
            "I)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput-object p3, p0, Landroid/icu/text/DisplayContext;->type:Landroid/icu/text/DisplayContext$Type;

    .line 126
    iput p4, p0, Landroid/icu/text/DisplayContext;->value:I

    .line 127
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/DisplayContext;
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

    .line 16
    const-class v0, Landroid/icu/text/DisplayContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DisplayContext;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/DisplayContext;
    .registers 1

    .line 16
    sget-object v0, Landroid/icu/text/DisplayContext;->$VALUES:[Landroid/icu/text/DisplayContext;

    invoke-virtual {v0}, [Landroid/icu/text/DisplayContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DisplayContext;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api type()Landroid/icu/text/DisplayContext$Type;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/icu/text/DisplayContext;->type:Landroid/icu/text/DisplayContext$Type;

    return-object v0
.end method

.method public whitelist test-api value()I
    .registers 2

    .line 140
    iget v0, p0, Landroid/icu/text/DisplayContext;->value:I

    return v0
.end method
