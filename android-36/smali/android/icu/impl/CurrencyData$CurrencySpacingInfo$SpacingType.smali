.class public final enum Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
.super Ljava/lang/Enum;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpacingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

.field public static final enum blacklist AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

.field public static final enum blacklist BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

.field public static final enum blacklist COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    .registers 3

    .line 75
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    sget-object v2, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    filled-new-array {v0, v1, v2}, [Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 75
    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const-string v1, "BEFORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const-string v1, "AFTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    new-instance v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    const-string v1, "COUNT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->COUNT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-static {}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->$values()[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->$VALUES:[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

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

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
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

    .line 75
    const-class v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    .registers 1

    .line 75
    sget-object v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->$VALUES:[Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    invoke-virtual {v0}, [Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    return-object v0
.end method
