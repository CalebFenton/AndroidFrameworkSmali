.class public final enum Landroid/icu/lang/UScript$ScriptUsage;
.super Ljava/lang/Enum;
.source "UScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScriptUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/lang/UScript$ScriptUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;


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
    .line 1438
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    #@7
    const-string/jumbo v1, "NOT_ENCODED"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    #@d
    .line 1442
    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

    #@f
    .line 1443
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    #@11
    const-string/jumbo v1, "UNKNOWN"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    #@17
    .line 1447
    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;

    #@19
    .line 1448
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    #@1b
    const-string/jumbo v1, "EXCLUDED"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    #@21
    .line 1452
    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

    #@23
    .line 1453
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    #@25
    const-string/jumbo v1, "LIMITED_USE"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 1457
    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

    #@2d
    .line 1458
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    #@2f
    const-string/jumbo v1, "ASPIRATIONAL"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    #@35
    .line 1462
    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

    #@37
    .line 1463
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    #@39
    const-string/jumbo v1, "RECOMMENDED"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    #@40
    .line 1467
    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

    #@42
    .line 1437
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/icu/lang/UScript$ScriptUsage;

    #@45
    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->$VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/lang/UScript$ScriptUsage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1437
    const-class v0, Landroid/icu/lang/UScript$ScriptUsage;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/lang/UScript$ScriptUsage;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/lang/UScript$ScriptUsage;
    .locals 1

    #@0
    .prologue
    .line 1437
    sget-object v0, Landroid/icu/lang/UScript$ScriptUsage;->$VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

    #@2
    return-object v0
.end method
