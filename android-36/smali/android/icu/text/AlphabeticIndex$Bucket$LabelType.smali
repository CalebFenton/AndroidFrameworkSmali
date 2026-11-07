.class public final enum Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
.super Ljava/lang/Enum;
.source "AlphabeticIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/AlphabeticIndex$Bucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum whitelist test-api INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum whitelist test-api NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum whitelist test-api OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

.field public static final enum whitelist test-api UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .registers 4

    .line 872
    sget-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    sget-object v1, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    sget-object v2, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    sget-object v3, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 876
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->NORMAL:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 880
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v1, "UNDERFLOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->UNDERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 884
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v1, "INFLOW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->INFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 888
    new-instance v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    const-string v1, "OVERFLOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->OVERFLOW:Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    .line 872
    invoke-static {}, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->$values()[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    move-result-object v0

    sput-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->$VALUES:[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

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

    .line 872
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 872
    const-class v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object v0
.end method

.method public static whitelist test-api values()[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;
    .registers 1

    .line 872
    sget-object v0, Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->$VALUES:[Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    invoke-virtual {v0}, [Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/AlphabeticIndex$Bucket$LabelType;

    return-object v0
.end method
