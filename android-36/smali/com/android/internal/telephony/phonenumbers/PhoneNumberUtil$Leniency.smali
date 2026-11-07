.class public abstract enum Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Leniency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum blacklist EXACT_GROUPING:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum blacklist POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum blacklist STRICT_GROUPING:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum blacklist VALID:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;
    .registers 4

    .line 554
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 559
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$1;

    const-string v1, "POSSIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    .line 575
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$2;

    const-string v1, "VALID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    .line 601
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$3;

    const-string v1, "STRICT_GROUPING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    .line 638
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4;

    const-string v1, "EXACT_GROUPING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    .line 554
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->$values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

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

    .line 554
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$1;)V
    .registers 4

    .line 554
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 554
    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;
    .registers 1

    .line 554
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    return-object v0
.end method


# virtual methods
.method abstract blacklist verify(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatcher;)Z
.end method
