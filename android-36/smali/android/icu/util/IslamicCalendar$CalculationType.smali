.class public final enum Landroid/icu/util/IslamicCalendar$CalculationType;
.super Ljava/lang/Enum;
.source "IslamicCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/IslamicCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CalculationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/IslamicCalendar$CalculationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum whitelist test-api ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum whitelist test-api ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum whitelist test-api ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

.field public static final enum whitelist test-api ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;


# instance fields
.field private greylist-max-o bcpType:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/IslamicCalendar$CalculationType;
    .registers 4

    .line 1038
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v2, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    sget-object v3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/util/IslamicCalendar$CalculationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1042
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v1, 0x0

    const-string v2, "islamic"

    const-string v3, "ISLAMIC"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 1047
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v1, 0x1

    const-string v2, "islamic-civil"

    const-string v3, "ISLAMIC_CIVIL"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 1051
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v1, 0x2

    const-string v2, "islamic-umalqura"

    const-string v3, "ISLAMIC_UMALQURA"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 1056
    new-instance v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    const/4 v1, 0x3

    const-string v2, "islamic-tbla"

    const-string v3, "ISLAMIC_TBLA"

    invoke-direct {v0, v3, v1, v2}, Landroid/icu/util/IslamicCalendar$CalculationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    .line 1038
    invoke-static {}, Landroid/icu/util/IslamicCalendar$CalculationType;->$values()[Landroid/icu/util/IslamicCalendar$CalculationType;

    move-result-object v0

    sput-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->$VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "bcpType"    # Ljava/lang/String;
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
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1060
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1061
    iput-object p3, p0, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType:Ljava/lang/String;

    .line 1062
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/util/IslamicCalendar$CalculationType;
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

    .line 1038
    const-class v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/util/IslamicCalendar$CalculationType;
    .registers 1

    .line 1038
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->$VALUES:[Landroid/icu/util/IslamicCalendar$CalculationType;

    invoke-virtual {v0}, [Landroid/icu/util/IslamicCalendar$CalculationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/IslamicCalendar$CalculationType;

    return-object v0
.end method


# virtual methods
.method greylist-max-o bcpType()Ljava/lang/String;
    .registers 2

    .line 1065
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType:Ljava/lang/String;

    return-object v0
.end method
