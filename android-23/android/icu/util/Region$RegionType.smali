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
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/Region$RegionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/Region$RegionType;

.field public static final enum CONTINENT:Landroid/icu/util/Region$RegionType;

.field public static final enum DEPRECATED:Landroid/icu/util/Region$RegionType;

.field public static final enum GROUPING:Landroid/icu/util/Region$RegionType;

.field public static final enum SUBCONTINENT:Landroid/icu/util/Region$RegionType;

.field public static final enum TERRITORY:Landroid/icu/util/Region$RegionType;

.field public static final enum UNKNOWN:Landroid/icu/util/Region$RegionType;

.field public static final enum WORLD:Landroid/icu/util/Region$RegionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 68
    new-instance v0, Landroid/icu/util/Region$RegionType;

    #@7
    const-string/jumbo v1, "UNKNOWN"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    #@d
    .line 72
    sput-object v0, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    #@f
    .line 74
    new-instance v0, Landroid/icu/util/Region$RegionType;

    #@11
    const-string/jumbo v1, "TERRITORY"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    #@17
    .line 78
    sput-object v0, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    #@19
    .line 80
    new-instance v0, Landroid/icu/util/Region$RegionType;

    #@1b
    const-string/jumbo v1, "WORLD"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    #@21
    .line 84
    sput-object v0, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    #@23
    .line 85
    new-instance v0, Landroid/icu/util/Region$RegionType;

    #@25
    const-string/jumbo v1, "CONTINENT"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 89
    sput-object v0, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    #@2d
    .line 90
    new-instance v0, Landroid/icu/util/Region$RegionType;

    #@2f
    const-string/jumbo v1, "SUBCONTINENT"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    #@35
    .line 94
    sput-object v0, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    #@37
    .line 95
    new-instance v0, Landroid/icu/util/Region$RegionType;

    #@39
    const-string/jumbo v1, "GROUPING"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    #@40
    .line 100
    sput-object v0, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    #@42
    .line 101
    new-instance v0, Landroid/icu/util/Region$RegionType;

    #@44
    const-string/jumbo v1, "DEPRECATED"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Landroid/icu/util/Region$RegionType;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 106
    sput-object v0, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    #@4d
    .line 67
    const/4 v0, 0x7

    #@4e
    new-array v0, v0, [Landroid/icu/util/Region$RegionType;

    #@50
    sget-object v1, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    #@52
    aput-object v1, v0, v3

    #@54
    sget-object v1, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    #@56
    aput-object v1, v0, v4

    #@58
    sget-object v1, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    #@5a
    aput-object v1, v0, v5

    #@5c
    sget-object v1, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    #@5e
    aput-object v1, v0, v6

    #@60
    sget-object v1, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    #@62
    aput-object v1, v0, v7

    #@64
    sget-object v1, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    #@66
    const/4 v2, 0x5

    #@67
    aput-object v1, v0, v2

    #@69
    sget-object v1, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    #@6b
    const/4 v2, 0x6

    #@6c
    aput-object v1, v0, v2

    #@6e
    sput-object v0, Landroid/icu/util/Region$RegionType;->$VALUES:[Landroid/icu/util/Region$RegionType;

    #@70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/Region$RegionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    const-class v0, Landroid/icu/util/Region$RegionType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/Region$RegionType;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/Region$RegionType;
    .locals 1

    #@0
    .prologue
    .line 67
    sget-object v0, Landroid/icu/util/Region$RegionType;->$VALUES:[Landroid/icu/util/Region$RegionType;

    #@2
    return-object v0
.end method
