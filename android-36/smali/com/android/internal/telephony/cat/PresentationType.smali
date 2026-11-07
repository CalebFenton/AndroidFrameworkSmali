.class public final enum Lcom/android/internal/telephony/cat/PresentationType;
.super Ljava/lang/Enum;
.source "PresentationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/PresentationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/cat/PresentationType;

.field public static final enum blacklist DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

.field public static final enum blacklist NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

.field public static final enum blacklist NOT_SPECIFIED:Lcom/android/internal/telephony/cat/PresentationType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/cat/PresentationType;
    .registers 3

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/PresentationType;->NOT_SPECIFIED:Lcom/android/internal/telephony/cat/PresentationType;

    sget-object v1, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    sget-object v2, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/telephony/cat/PresentationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lcom/android/internal/telephony/cat/PresentationType;

    const-string v1, "NOT_SPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/PresentationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/PresentationType;->NOT_SPECIFIED:Lcom/android/internal/telephony/cat/PresentationType;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/cat/PresentationType;

    const-string v1, "DATA_VALUES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/PresentationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/cat/PresentationType;

    const-string v1, "NAVIGATION_OPTIONS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/PresentationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    .line 25
    invoke-static {}, Lcom/android/internal/telephony/cat/PresentationType;->$values()[Lcom/android/internal/telephony/cat/PresentationType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cat/PresentationType;->$VALUES:[Lcom/android/internal/telephony/cat/PresentationType;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/PresentationType;
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
    const-class v0, Lcom/android/internal/telephony/cat/PresentationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/PresentationType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/cat/PresentationType;
    .registers 1

    .line 25
    sget-object v0, Lcom/android/internal/telephony/cat/PresentationType;->$VALUES:[Lcom/android/internal/telephony/cat/PresentationType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/PresentationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/PresentationType;

    return-object v0
.end method
