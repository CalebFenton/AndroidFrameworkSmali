.class public final enum Lcom/android/internal/telephony/cat/TextColor;
.super Ljava/lang/Enum;
.source "TextColor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/TextColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist BLACK:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist BRIGHT_BLUE:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist BRIGHT_CYAN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist BRIGHT_GREEN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist BRIGHT_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist BRIGHT_RED:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist BRIGHT_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist DARK_BLUE:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist DARK_CYAN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist DARK_GRAY:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist DARK_GREEN:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist DARK_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist DARK_RED:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist DARK_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist GRAY:Lcom/android/internal/telephony/cat/TextColor;

.field public static final enum blacklist WHITE:Lcom/android/internal/telephony/cat/TextColor;


# instance fields
.field private blacklist mValue:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/TextColor;
    .registers 17

    .line 25
    sget-object v1, Lcom/android/internal/telephony/cat/TextColor;->BLACK:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v2, Lcom/android/internal/telephony/cat/TextColor;->DARK_GRAY:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v3, Lcom/android/internal/telephony/cat/TextColor;->DARK_RED:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v4, Lcom/android/internal/telephony/cat/TextColor;->DARK_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v5, Lcom/android/internal/telephony/cat/TextColor;->DARK_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v6, Lcom/android/internal/telephony/cat/TextColor;->DARK_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v7, Lcom/android/internal/telephony/cat/TextColor;->DARK_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v8, Lcom/android/internal/telephony/cat/TextColor;->DARK_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v9, Lcom/android/internal/telephony/cat/TextColor;->GRAY:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v10, Lcom/android/internal/telephony/cat/TextColor;->WHITE:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v11, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_RED:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v12, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v13, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v14, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v15, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    sget-object v16, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    filled-new-array/range {v1 .. v16}, [Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "BLACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BLACK:Lcom/android/internal/telephony/cat/TextColor;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "DARK_GRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_GRAY:Lcom/android/internal/telephony/cat/TextColor;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "DARK_RED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_RED:Lcom/android/internal/telephony/cat/TextColor;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "DARK_YELLOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "DARK_GREEN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "DARK_CYAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "DARK_BLUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "DARK_MAGENTA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->DARK_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "GRAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->GRAY:Lcom/android/internal/telephony/cat/TextColor;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "WHITE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->WHITE:Lcom/android/internal/telephony/cat/TextColor;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "BRIGHT_RED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_RED:Lcom/android/internal/telephony/cat/TextColor;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "BRIGHT_YELLOW"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_YELLOW:Lcom/android/internal/telephony/cat/TextColor;

    .line 38
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "BRIGHT_GREEN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_GREEN:Lcom/android/internal/telephony/cat/TextColor;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "BRIGHT_CYAN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_CYAN:Lcom/android/internal/telephony/cat/TextColor;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "BRIGHT_BLUE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_BLUE:Lcom/android/internal/telephony/cat/TextColor;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/cat/TextColor;

    const-string v1, "BRIGHT_MAGENTA"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->BRIGHT_MAGENTA:Lcom/android/internal/telephony/cat/TextColor;

    .line 25
    invoke-static {}, Lcom/android/internal/telephony/cat/TextColor;->$values()[Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/TextColor;->$VALUES:[Lcom/android/internal/telephony/cat/TextColor;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/android/internal/telephony/cat/TextColor;->mValue:I

    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/telephony/cat/TextColor;
    .registers 6

    .line 56
    invoke-static {}, Lcom/android/internal/telephony/cat/TextColor;->values()[Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 57
    iget v4, v3, Lcom/android/internal/telephony/cat/TextColor;->mValue:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/TextColor;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    const-class v0, Lcom/android/internal/telephony/cat/TextColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/TextColor;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/TextColor;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/TextColor;->$VALUES:[Lcom/android/internal/telephony/cat/TextColor;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/TextColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/TextColor;

    return-object v0
.end method
