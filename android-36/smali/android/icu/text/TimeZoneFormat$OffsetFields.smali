.class final enum Landroid/icu/text/TimeZoneFormat$OffsetFields;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OffsetFields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/TimeZoneFormat$OffsetFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum greylist-max-o H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum greylist-max-o HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

.field public static final enum greylist-max-o HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .registers 3

    .line 1637
    sget-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v1, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    sget-object v2, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    filled-new-array {v0, v1, v2}, [Landroid/icu/text/TimeZoneFormat$OffsetFields;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1638
    new-instance v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    const-string v1, "H"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->H:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    const-string v1, "HM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HM:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    new-instance v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    const-string v1, "HMS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/TimeZoneFormat$OffsetFields;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->HMS:Landroid/icu/text/TimeZoneFormat$OffsetFields;

    .line 1637
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$OffsetFields;->$values()[Landroid/icu/text/TimeZoneFormat$OffsetFields;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->$VALUES:[Landroid/icu/text/TimeZoneFormat$OffsetFields;

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

    .line 1637
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/text/TimeZoneFormat$OffsetFields;
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

    .line 1637
    const-class v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/text/TimeZoneFormat$OffsetFields;
    .registers 1

    .line 1637
    sget-object v0, Landroid/icu/text/TimeZoneFormat$OffsetFields;->$VALUES:[Landroid/icu/text/TimeZoneFormat$OffsetFields;

    invoke-virtual {v0}, [Landroid/icu/text/TimeZoneFormat$OffsetFields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/TimeZoneFormat$OffsetFields;

    return-object v0
.end method
