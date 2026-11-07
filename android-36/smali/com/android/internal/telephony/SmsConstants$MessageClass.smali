.class public final enum Lcom/android/internal/telephony/SmsConstants$MessageClass;
.super Ljava/lang/Enum;
.source "SmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/SmsConstants$MessageClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/SmsConstants$MessageClass;

.field public static final enum greylist CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

.field public static final enum greylist CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

.field public static final enum greylist CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

.field public static final enum greylist CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

.field public static final enum greylist UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .registers 5

    .line 62
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v3, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 63
    new-instance v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SmsConstants$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;

    const-string v1, "CLASS_0"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SmsConstants$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;

    const-string v1, "CLASS_1"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SmsConstants$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;

    const-string v1, "CLASS_2"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SmsConstants$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;

    const-string v1, "CLASS_3"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SmsConstants$MessageClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->$values()[Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->$VALUES:[Lcom/android/internal/telephony/SmsConstants$MessageClass;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/SmsConstants$MessageClass;
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

    .line 62
    const-class v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public static greylist-max-o values()[Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .registers 1

    .line 62
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->$VALUES:[Lcom/android/internal/telephony/SmsConstants$MessageClass;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/SmsConstants$MessageClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method
