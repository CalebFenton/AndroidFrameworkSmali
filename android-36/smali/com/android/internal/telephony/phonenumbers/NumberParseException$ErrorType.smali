.class public final enum Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;
.super Ljava/lang/Enum;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/NumberParseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist TOO_LONG:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist TOO_SHORT_AFTER_IDD:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

.field public static final enum blacklist TOO_SHORT_NSN:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;
    .registers 5

    .line 28
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    sget-object v3, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "INVALID_COUNTRY_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "NOT_A_NUMBER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "TOO_SHORT_AFTER_IDD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "TOO_SHORT_NSN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "TOO_LONG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    .line 28
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->$values()[Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    const-class v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;
    .registers 1

    .line 28
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method
