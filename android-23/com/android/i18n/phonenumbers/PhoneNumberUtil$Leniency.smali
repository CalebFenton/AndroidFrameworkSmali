.class public abstract enum Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Leniency"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum EXACT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum STRICT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;


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
    .line 442
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;

    #@6
    const-string/jumbo v1, "POSSIBLE"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$1;-><init>(Ljava/lang/String;I)V

    #@c
    .line 446
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@e
    .line 452
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;

    #@10
    const-string/jumbo v1, "VALID"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$2;-><init>(Ljava/lang/String;I)V

    #@16
    .line 458
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@18
    .line 468
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;

    #@1a
    const-string/jumbo v1, "STRICT_GROUPING"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$3;-><init>(Ljava/lang/String;I)V

    #@20
    .line 480
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@22
    .line 501
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;

    #@24
    const-string/jumbo v1, "EXACT_GROUPING"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency$4;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 512
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@2c
    .line 441
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@2f
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 441
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .locals 1

    #@0
    .prologue
    .line 441
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->$VALUES:[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    #@2
    return-object v0
.end method


# virtual methods
.method abstract verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
.end method
