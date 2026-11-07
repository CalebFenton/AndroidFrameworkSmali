.class public final enum Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum blacklist E164:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum blacklist INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum blacklist NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum blacklist RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .registers 4

    .line 471
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 472
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "E164"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 473
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "INTERNATIONAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 474
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "NATIONAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 475
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "RFC3966"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 471
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->$values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

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

    .line 471
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 471
    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .registers 1

    .line 471
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    return-object v0
.end method
