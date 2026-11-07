.class public final enum Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum blacklist INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum blacklist INVALID_LENGTH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum blacklist IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum blacklist IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum blacklist TOO_LONG:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum blacklist TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 6

    .line 525
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    sget-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    filled-new-array/range {v0 .. v5}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 527
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    const-string v1, "IS_POSSIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 533
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    const-string v1, "IS_POSSIBLE_LOCAL_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 535
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    const-string v1, "INVALID_COUNTRY_CODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 537
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    const-string v1, "TOO_SHORT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 545
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    const-string v1, "INVALID_LENGTH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 547
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    const-string v1, "TOO_LONG"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 525
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->$values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

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

    .line 525
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 525
    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 1

    .line 525
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v0
.end method
