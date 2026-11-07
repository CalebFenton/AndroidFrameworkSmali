.class public final enum Landroid/icu/util/BasicTimeZone$LocalOption;
.super Ljava/lang/Enum;
.source "BasicTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BasicTimeZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/BasicTimeZone$LocalOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/BasicTimeZone$LocalOption;

.field public static final enum blacklist DAYLIGHT_FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

.field public static final enum blacklist DAYLIGHT_LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

.field public static final enum blacklist FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

.field public static final enum blacklist LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

.field public static final enum blacklist STANDARD_FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

.field public static final enum blacklist STANDARD_LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;


# instance fields
.field private blacklist flagVal:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/BasicTimeZone$LocalOption;
    .registers 6

    .line 532
    sget-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    sget-object v1, Landroid/icu/util/BasicTimeZone$LocalOption;->LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    sget-object v2, Landroid/icu/util/BasicTimeZone$LocalOption;->STANDARD_FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    sget-object v3, Landroid/icu/util/BasicTimeZone$LocalOption;->STANDARD_LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    sget-object v4, Landroid/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    sget-object v5, Landroid/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    filled-new-array/range {v0 .. v5}, [Landroid/icu/util/BasicTimeZone$LocalOption;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetflagVal(Landroid/icu/util/BasicTimeZone$LocalOption;)I
    .registers 1

    iget p0, p0, Landroid/icu/util/BasicTimeZone$LocalOption;->flagVal:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 537
    new-instance v0, Landroid/icu/util/BasicTimeZone$LocalOption;

    const-string v1, "FORMER"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    .line 542
    new-instance v0, Landroid/icu/util/BasicTimeZone$LocalOption;

    const/4 v1, 0x1

    const/16 v2, 0xc

    const-string v4, "LATTER"

    invoke-direct {v0, v4, v1, v2}, Landroid/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    .line 550
    new-instance v0, Landroid/icu/util/BasicTimeZone$LocalOption;

    const-string v1, "STANDARD_FORMER"

    const/4 v2, 0x2

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v4}, Landroid/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->STANDARD_FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    .line 558
    new-instance v0, Landroid/icu/util/BasicTimeZone$LocalOption;

    const/4 v1, 0x3

    const/16 v2, 0xd

    const-string v5, "STANDARD_LATTER"

    invoke-direct {v0, v5, v1, v2}, Landroid/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->STANDARD_LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    .line 566
    new-instance v0, Landroid/icu/util/BasicTimeZone$LocalOption;

    const-string v1, "DAYLIGHT_FORMER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Landroid/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    .line 574
    new-instance v0, Landroid/icu/util/BasicTimeZone$LocalOption;

    const-string v1, "DAYLIGHT_LATTER"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, Landroid/icu/util/BasicTimeZone$LocalOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->DAYLIGHT_LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    .line 532
    invoke-static {}, Landroid/icu/util/BasicTimeZone$LocalOption;->$values()[Landroid/icu/util/BasicTimeZone$LocalOption;

    move-result-object v0

    sput-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->$VALUES:[Landroid/icu/util/BasicTimeZone$LocalOption;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "flagVal"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 578
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 579
    iput p3, p0, Landroid/icu/util/BasicTimeZone$LocalOption;->flagVal:I

    .line 580
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/icu/util/BasicTimeZone$LocalOption;
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

    .line 532
    const-class v0, Landroid/icu/util/BasicTimeZone$LocalOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/BasicTimeZone$LocalOption;

    return-object v0
.end method

.method public static blacklist values()[Landroid/icu/util/BasicTimeZone$LocalOption;
    .registers 1

    .line 532
    sget-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->$VALUES:[Landroid/icu/util/BasicTimeZone$LocalOption;

    invoke-virtual {v0}, [Landroid/icu/util/BasicTimeZone$LocalOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/BasicTimeZone$LocalOption;

    return-object v0
.end method
