.class public final enum Ljava/util/Locale$FilteringMode;
.super Ljava/lang/Enum;
.source "Locale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Locale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilteringMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/util/Locale$FilteringMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

.field public static final enum whitelist test-api REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;


# direct methods
.method private static synthetic blacklist $values()[Ljava/util/Locale$FilteringMode;
    .registers 5

    .line 3596
    sget-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    sget-object v1, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    sget-object v2, Ljava/util/Locale$FilteringMode;->IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    sget-object v3, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    sget-object v4, Ljava/util/Locale$FilteringMode;->REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/util/Locale$FilteringMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 3603
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "AUTOSELECT_FILTERING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->AUTOSELECT_FILTERING:Ljava/util/Locale$FilteringMode;

    .line 3608
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "EXTENDED_FILTERING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->EXTENDED_FILTERING:Ljava/util/Locale$FilteringMode;

    .line 3614
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "IGNORE_EXTENDED_RANGES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->IGNORE_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 3625
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "MAP_EXTENDED_RANGES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->MAP_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 3632
    new-instance v0, Ljava/util/Locale$FilteringMode;

    const-string v1, "REJECT_EXTENDED_RANGES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/util/Locale$FilteringMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/util/Locale$FilteringMode;->REJECT_EXTENDED_RANGES:Ljava/util/Locale$FilteringMode;

    .line 3596
    invoke-static {}, Ljava/util/Locale$FilteringMode;->$values()[Ljava/util/Locale$FilteringMode;

    move-result-object v0

    sput-object v0, Ljava/util/Locale$FilteringMode;->$VALUES:[Ljava/util/Locale$FilteringMode;

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

    .line 3596
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/util/Locale$FilteringMode;
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

    .line 3596
    const-class v0, Ljava/util/Locale$FilteringMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/util/Locale$FilteringMode;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/util/Locale$FilteringMode;
    .registers 1

    .line 3596
    sget-object v0, Ljava/util/Locale$FilteringMode;->$VALUES:[Ljava/util/Locale$FilteringMode;

    invoke-virtual {v0}, [Ljava/util/Locale$FilteringMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale$FilteringMode;

    return-object v0
.end method
