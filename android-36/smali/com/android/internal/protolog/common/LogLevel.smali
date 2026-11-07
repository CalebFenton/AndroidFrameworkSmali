.class public final enum Lcom/android/internal/protolog/common/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/protolog/common/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist DEBUG:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist ERROR:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist INFO:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist WARN:Lcom/android/internal/protolog/common/LogLevel;

.field public static final enum blacklist WTF:Lcom/android/internal/protolog/common/LogLevel;


# instance fields
.field public final blacklist id:I

.field public final blacklist shortCode:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/protolog/common/LogLevel;
    .registers 6

    .line 21
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v2, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v3, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v4, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    sget-object v5, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 23
    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const-string v3, "d"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    .line 24
    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "VERBOSE"

    const-string/jumbo v2, "v"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    .line 25
    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "INFO"

    const-string v2, "i"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    .line 26
    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "WARN"

    const-string/jumbo v2, "w"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    .line 27
    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string v1, "ERROR"

    const-string v2, "e"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    .line 28
    new-instance v0, Lcom/android/internal/protolog/common/LogLevel;

    const-string/jumbo v1, "wtf"

    const/4 v2, 0x6

    const-string v3, "WTF"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/common/LogLevel;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->WTF:Lcom/android/internal/protolog/common/LogLevel;

    .line 21
    invoke-static {}, Lcom/android/internal/protolog/common/LogLevel;->$values()[Lcom/android/internal/protolog/common/LogLevel;

    move-result-object v0

    sput-object v0, Lcom/android/internal/protolog/common/LogLevel;->$VALUES:[Lcom/android/internal/protolog/common/LogLevel;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 5
    .param p3, "shortCode"    # Ljava/lang/String;
    .param p4, "id"    # I
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
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/android/internal/protolog/common/LogLevel;->shortCode:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/android/internal/protolog/common/LogLevel;->id:I

    .line 36
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/protolog/common/LogLevel;
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

    .line 21
    const-class v0, Lcom/android/internal/protolog/common/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/protolog/common/LogLevel;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/protolog/common/LogLevel;
    .registers 1

    .line 21
    sget-object v0, Lcom/android/internal/protolog/common/LogLevel;->$VALUES:[Lcom/android/internal/protolog/common/LogLevel;

    invoke-virtual {v0}, [Lcom/android/internal/protolog/common/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/protolog/common/LogLevel;

    return-object v0
.end method
