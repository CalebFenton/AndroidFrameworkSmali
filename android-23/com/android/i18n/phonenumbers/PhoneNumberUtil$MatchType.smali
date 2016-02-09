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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

.field public static final enum SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;


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
    .line 420
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@7
    const-string/jumbo v1, "NOT_A_NUMBER"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@f
    .line 421
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@11
    const-string/jumbo v1, "NO_MATCH"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@19
    .line 422
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@1b
    const-string/jumbo v1, "SHORT_NSN_MATCH"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@23
    .line 423
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@25
    const-string/jumbo v1, "NSN_MATCH"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@2d
    .line 424
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@2f
    const-string/jumbo v1, "EXACT_MATCH"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@37
    .line 419
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@3a
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 419
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 419
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .locals 1

    #@0
    .prologue
    .line 419
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    #@2
    return-object v0
.end method
