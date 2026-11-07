.class public final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum greylist EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum greylist NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum greylist NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum greylist NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum greylist SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 5

    .line 536
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 538
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "NOT_A_NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 540
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "NO_MATCH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 542
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "SHORT_NSN_MATCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 544
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "NSN_MATCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 546
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    const-string v1, "EXACT_MATCH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    .line 536
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->$values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

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

    .line 537
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
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

    .line 536
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0
.end method

.method public static greylist values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 1

    .line 536
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    invoke-virtual {v0}, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0
.end method
