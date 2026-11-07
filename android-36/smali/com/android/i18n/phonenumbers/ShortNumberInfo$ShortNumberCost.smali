.class public final enum Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
.super Ljava/lang/Enum;
.source "ShortNumberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/ShortNumberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShortNumberCost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

.field public static final enum blacklist PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

.field public static final enum blacklist STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

.field public static final enum blacklist TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

.field public static final enum blacklist UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 4

    .line 66
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    sget-object v3, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    const-string v1, "TOLL_FREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 68
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    const-string v1, "STANDARD_RATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 69
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    const-string v1, "PREMIUM_RATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 70
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    const-string v1, "UNKNOWN_COST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 66
    invoke-static {}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->$values()[Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->$VALUES:[Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
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

    .line 66
    const-class v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 1

    .line 66
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->$VALUES:[Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    invoke-virtual {v0}, [Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v0
.end method
