.class public final enum Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;
.super Ljava/lang/Enum;
.source "ShortNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/ShortNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShortNumberCost"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

.field public static final enum PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

.field public static final enum STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

.field public static final enum TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

.field public static final enum UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;


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
    .line 36
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@6
    const-string/jumbo v1, "TOLL_FREE"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@e
    .line 37
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@10
    const-string/jumbo v1, "STANDARD_RATE"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@18
    .line 38
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@1a
    const-string/jumbo v1, "PREMIUM_RATE"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@22
    .line 39
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@24
    const-string/jumbo v1, "UNKNOWN_COST"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@2c
    .line 35
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@2f
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->$VALUES:[Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 35
    const-class v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;
    .locals 1

    #@0
    .prologue
    .line 35
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;->$VALUES:[Lcom/android/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost;

    #@2
    return-object v0
.end method
