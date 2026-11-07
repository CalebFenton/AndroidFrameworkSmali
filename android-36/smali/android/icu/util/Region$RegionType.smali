.class public final enum Landroid/icu/util/Region$RegionType;
.super Ljava/lang/Enum;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/Region$RegionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/Region$RegionType;

.field public static final enum greylist-max-o CONTINENT:Landroid/icu/util/Region$RegionType;

.field public static final enum greylist-max-o DEPRECATED:Landroid/icu/util/Region$RegionType;

.field public static final enum greylist-max-o GROUPING:Landroid/icu/util/Region$RegionType;

.field public static final enum greylist-max-o SUBCONTINENT:Landroid/icu/util/Region$RegionType;

.field public static final enum greylist-max-o TERRITORY:Landroid/icu/util/Region$RegionType;

.field public static final enum greylist-max-o UNKNOWN:Landroid/icu/util/Region$RegionType;

.field public static final enum greylist-max-o WORLD:Landroid/icu/util/Region$RegionType;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/Region$RegionType;
    .registers 7

    .line 72
    sget-object v0, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    sget-object v1, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    sget-object v2, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    sget-object v3, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    sget-object v4, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    sget-object v5, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    sget-object v6, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    filled-new-array/range {v0 .. v6}, [Landroid/icu/util/Region$RegionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 76
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    .line 81
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const-string v1, "TERRITORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    .line 86
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const-string v1, "WORLD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    .line 90
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const-string v1, "CONTINENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    .line 94
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const-string v1, "SUBCONTINENT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    .line 99
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const-string v1, "GROUPING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    .line 104
    new-instance v0, Landroid/icu/util/Region$RegionType;

    const-string v1, "DEPRECATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    .line 72
    invoke-static {}, Landroid/icu/util/Region$RegionType;->$values()[Landroid/icu/util/Region$RegionType;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Region$RegionType;->$VALUES:[Landroid/icu/util/Region$RegionType;

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

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/util/Region$RegionType;
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

    .line 72
    const-class v0, Landroid/icu/util/Region$RegionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region$RegionType;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/util/Region$RegionType;
    .registers 1

    .line 72
    sget-object v0, Landroid/icu/util/Region$RegionType;->$VALUES:[Landroid/icu/util/Region$RegionType;

    invoke-virtual {v0}, [Landroid/icu/util/Region$RegionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/Region$RegionType;

    return-object v0
.end method
