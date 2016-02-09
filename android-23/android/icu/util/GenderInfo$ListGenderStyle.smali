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
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/GenderInfo$ListGenderStyle;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

.field public static final enum MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static fromNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/GenderInfo$ListGenderStyle;",
            ">;"
        }
    .end annotation
.end field


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
    .line 89
    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@6
    const-string/jumbo v1, "NEUTRAL"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    #@c
    .line 97
    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@e
    .line 98
    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@10
    const-string/jumbo v1, "MIXED_NEUTRAL"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    #@16
    .line 107
    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@18
    .line 108
    new-instance v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@1a
    const-string/jumbo v1, "MALE_TAINTS"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/icu/util/GenderInfo$ListGenderStyle;-><init>(Ljava/lang/String;I)V

    #@20
    .line 117
    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@22
    .line 88
    new-array v0, v5, [Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@24
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@32
    .line 120
    new-instance v0, Ljava/util/HashMap;

    #@34
    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    #@37
    .line 119
    sput-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    #@39
    .line 123
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    #@3b
    const-string/jumbo v1, "neutral"

    #@3e
    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 124
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    #@45
    const-string/jumbo v1, "maleTaints"

    #@48
    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@4a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 125
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    #@4f
    const-string/jumbo v1, "mixedNeutral"

    #@52
    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 134
    sget-object v1, Landroid/icu/util/GenderInfo$ListGenderStyle;->fromNameMap:Ljava/util/Map;

    #@2
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@8
    .line 135
    .local v0, "result":Landroid/icu/util/GenderInfo$ListGenderStyle;
    if-nez v0, :cond_0

    #@a
    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Unknown gender style name: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 138
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/GenderInfo$ListGenderStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    const-class v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/GenderInfo$ListGenderStyle;
    .locals 1

    #@0
    .prologue
    .line 88
    sget-object v0, Landroid/icu/util/GenderInfo$ListGenderStyle;->$VALUES:[Landroid/icu/util/GenderInfo$ListGenderStyle;

    #@2
    return-object v0
.end method
