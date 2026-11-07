.class public final enum Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist PAGER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist PERSONAL_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist PREMIUM_RATE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist SHARED_COST:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist TOLL_FREE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist UAN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist VOICEMAIL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum blacklist VOIP:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 12

    .line 481
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v6, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v7, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v8, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v9, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v10, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    sget-object v11, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    filled-new-array/range {v0 .. v11}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 482
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "FIXED_LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 483
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "MOBILE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 486
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "FIXED_LINE_OR_MOBILE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 488
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "TOLL_FREE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 489
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "PREMIUM_RATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 493
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "SHARED_COST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 495
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "VOIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 499
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "PERSONAL_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 500
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "PAGER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 503
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "UAN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 505
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "VOICEMAIL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 508
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 481
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->$values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

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

    .line 481
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 481
    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 1

    .line 481
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->$VALUES:[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0
.end method
