.class public final enum Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
.super Ljava/lang/Enum;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/NumberParseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum TOO_SHORT_AFTER_IDD:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

.field public static final enum TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 26
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@7
    const-string/jumbo v1, "INVALID_COUNTRY_CODE"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@f
    .line 27
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@11
    const-string/jumbo v1, "NOT_A_NUMBER"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    #@17
    .line 30
    sput-object v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@19
    .line 31
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@1b
    const-string/jumbo v1, "TOO_SHORT_AFTER_IDD"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    #@21
    .line 34
    sput-object v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@23
    .line 35
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@25
    const-string/jumbo v1, "TOO_SHORT_NSN"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 37
    sput-object v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@2d
    .line 38
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@2f
    const-string/jumbo v1, "TOO_LONG"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    #@35
    .line 39
    sput-object v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@37
    .line 25
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@3a
    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    const-class v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;
    .locals 1

    #@0
    .prologue
    .line 25
    sget-object v0, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    #@2
    return-object v0
.end method
