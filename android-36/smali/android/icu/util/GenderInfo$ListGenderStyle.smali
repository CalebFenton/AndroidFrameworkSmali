.class public final enum Landroid/icu/util/GenderInfo$ListGenderStyle;
.super Ljava/lang/Enum;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListGenderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/GenderInfo$ListGenderStyle;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

.field public static final enum greylist-max-o MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum greylist-max-o NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static greylist-max-o fromNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/GenderInfo$ListGenderStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/GenderInfo$ListGenderStyle;
    .registers 3

    .line 94
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    filled-new-array {v0, v1, v2}, [Landroid/icu/util/GenderInfo$ListGenderStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 103
    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    const-string v1, "NEUTRAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 113
    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    const-string v1, "MIXED_NEUTRAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 123
    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    const-string v1, "MALE_TAINTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 94
    invoke-static {}, Landroid/icu/util/GenderInfo$ListGenderStyle;->$values()[Landroid/icu/util/GenderInfo$ListGenderStyle;

    move-result-object v0

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    .line 130
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    const-string v1, "neutral"

    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    const-string v1, "maleTaints"

    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    const-string v1, "mixedNeutral"

    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
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

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o fromName(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 141
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    .line 142
    .local v0, "result":Landroid/icu/util/GenderInfo$ListGenderStyle;
    if-eqz v0, :cond_b

    .line 145
    return-object v0

    .line 143
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown gender style name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;
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

    .line 94
    const-class v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/util/GenderInfo$ListGenderStyle;
    .registers 1

    .line 94
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v0}, [Landroid/icu/util/GenderInfo$ListGenderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/GenderInfo$ListGenderStyle;

    return-object v0
.end method
