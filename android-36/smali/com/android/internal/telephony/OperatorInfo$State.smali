.class public final enum Lcom/android/internal/telephony/OperatorInfo$State;
.super Ljava/lang/Enum;
.source "OperatorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OperatorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/OperatorInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum greylist-max-o AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum greylist CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum greylist FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

.field public static final enum greylist-max-o UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 4

    .line 29
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    sget-object v1, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    sget-object v2, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    sget-object v3, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 30
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "CURRENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$State;

    const-string v1, "FORBIDDEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/OperatorInfo$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    .line 29
    invoke-static {}, Lcom/android/internal/telephony/OperatorInfo$State;->$values()[Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
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

    .line 29
    const-class v0, Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method

.method public static greylist-max-o values()[Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 1

    .line 29
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->$VALUES:[Lcom/android/internal/telephony/OperatorInfo$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/OperatorInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/OperatorInfo$State;

    return-object v0
.end method
