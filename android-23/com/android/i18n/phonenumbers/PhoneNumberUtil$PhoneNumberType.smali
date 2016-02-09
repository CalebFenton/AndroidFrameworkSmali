.class public final enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum PAGER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum PERSONAL_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum PREMIUM_RATE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum SHARED_COST:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum TOLL_FREE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum UAN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum VOICEMAIL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

.field public static final enum VOIP:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 387
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@7
    const-string/jumbo v1, "FIXED_LINE"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@f
    .line 388
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@11
    const-string/jumbo v1, "MOBILE"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@19
    .line 389
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@1b
    const-string/jumbo v1, "FIXED_LINE_OR_MOBILE"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@21
    .line 391
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@23
    .line 392
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@25
    const-string/jumbo v1, "TOLL_FREE"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 393
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@2d
    .line 394
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@2f
    const-string/jumbo v1, "PREMIUM_RATE"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@37
    .line 395
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@39
    const-string/jumbo v1, "SHARED_COST"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@40
    .line 398
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@42
    .line 399
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@44
    const-string/jumbo v1, "VOIP"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 400
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@4d
    .line 401
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@4f
    const-string/jumbo v1, "PERSONAL_NUMBER"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@56
    .line 404
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@58
    .line 405
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@5a
    const-string/jumbo v1, "PAGER"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@64
    .line 406
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@66
    const-string/jumbo v1, "UAN"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 408
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@70
    .line 409
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@72
    const-string/jumbo v1, "VOICEMAIL"

    #@75
    const/16 v2, 0xa

    #@77
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@7a
    .line 410
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@7c
    .line 411
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@7e
    const-string/jumbo v1, "UNKNOWN"

    #@81
    const/16 v2, 0xb

    #@83
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;-><init>(Ljava/lang/String;I)V

    #@86
    .line 413
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@88
    .line 386
    const/16 v0, 0xc

    #@8a
    new-array v0, v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@8c
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@8e
    aput-object v1, v0, v3

    #@90
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@92
    aput-object v1, v0, v4

    #@94
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@96
    aput-object v1, v0, v5

    #@98
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@9a
    aput-object v1, v0, v6

    #@9c
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@9e
    aput-object v1, v0, v7

    #@a0
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@a2
    const/4 v2, 0x5

    #@a3
    aput-object v1, v0, v2

    #@a5
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@a7
    const/4 v2, 0x6

    #@a8
    aput-object v1, v0, v2

    #@aa
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@ac
    const/4 v2, 0x7

    #@ad
    aput-object v1, v0, v2

    #@af
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@b1
    const/16 v2, 0x8

    #@b3
    aput-object v1, v0, v2

    #@b5
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@b7
    const/16 v2, 0x9

    #@b9
    aput-object v1, v0, v2

    #@bb
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@bd
    const/16 v2, 0xa

    #@bf
    aput-object v1, v0, v2

    #@c1
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@c3
    const/16 v2, 0xb

    #@c5
    aput-object v1, v0, v2

    #@c7
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@c9
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 386
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 386
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .locals 1

    #@0
    .prologue
    .line 386
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    #@2
    return-object v0
.end method
