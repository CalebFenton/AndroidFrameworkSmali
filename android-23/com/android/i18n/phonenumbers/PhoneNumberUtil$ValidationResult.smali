.class public final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

.field public static final enum TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 431
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@6
    const-string/jumbo v1, "IS_POSSIBLE"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@e
    .line 432
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@10
    const-string/jumbo v1, "INVALID_COUNTRY_CODE"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@18
    .line 433
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@1a
    const-string/jumbo v1, "TOO_SHORT"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@22
    .line 434
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@24
    const-string/jumbo v1, "TOO_LONG"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@2c
    .line 430
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@2f
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .locals 1

    #@0
    .prologue
    .line 430
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    #@2
    return-object v0
.end method
