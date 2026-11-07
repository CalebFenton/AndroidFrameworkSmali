.class public final enum Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum blacklist EXACT_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum blacklist NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum blacklist NO_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum blacklist NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum blacklist SHORT_NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 5

    .line 514
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 515
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "NOT_A_NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    .line 516
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "NO_MATCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    .line 517
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "SHORT_NSN_MATCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    .line 518
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "NSN_MATCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    .line 519
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "EXACT_MATCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    .line 514
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->$values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

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

    .line 514
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 514
    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 1

    .line 514
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0
.end method
