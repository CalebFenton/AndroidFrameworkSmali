.class public final enum Lcom/android/internal/telephony/DctConstants$Activity;
.super Ljava/lang/Enum;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DctConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Activity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/DctConstants$Activity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum greylist DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum greylist DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum greylist DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum greylist DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

.field public static final enum blacklist NONE:Lcom/android/internal/telephony/DctConstants$Activity;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/DctConstants$Activity;
    .registers 5

    .line 59
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v1, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v2, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v3, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    sget-object v4, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    const-string v1, "DATAIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DATAIN:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    const-string v1, "DATAOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DATAOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    const-string v1, "DATAINANDOUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/DctConstants$Activity;

    const-string v1, "DORMANT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DctConstants$Activity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/DctConstants$Activity;->$values()[Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->$VALUES:[Lcom/android/internal/telephony/DctConstants$Activity;

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

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$Activity;
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

    .line 59
    const-class v0, Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DctConstants$Activity;

    return-object v0
.end method

.method public static greylist values()[Lcom/android/internal/telephony/DctConstants$Activity;
    .registers 1

    .line 59
    sget-object v0, Lcom/android/internal/telephony/DctConstants$Activity;->$VALUES:[Lcom/android/internal/telephony/DctConstants$Activity;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DctConstants$Activity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DctConstants$Activity;

    return-object v0
.end method
