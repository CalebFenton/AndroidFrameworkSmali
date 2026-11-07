.class public final enum Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
.super Ljava/lang/Enum;
.source "Phonenumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CountryCodeSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum blacklist FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum blacklist FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum blacklist FROM_NUMBER_WITH_IDD:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum blacklist FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

.field public static final enum blacklist UNSPECIFIED:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 5

    .line 31
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    sget-object v3, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->UNSPECIFIED:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v1, "FROM_NUMBER_WITH_PLUS_SIGN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v1, "FROM_NUMBER_WITH_IDD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v1, "FROM_NUMBER_WITHOUT_PLUS_SIGN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v1, "FROM_DEFAULT_COUNTRY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->UNSPECIFIED:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 31
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->$values()[Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    const-class v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 1

    .line 31
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v0
.end method
