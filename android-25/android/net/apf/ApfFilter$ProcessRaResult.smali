.class final enum Landroid/net/apf/ApfFilter$ProcessRaResult;
.super Ljava/lang/Enum;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProcessRaResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/apf/ApfFilter$ProcessRaResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;


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
    .line 83
    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@7
    const-string/jumbo v1, "MATCH"

    #@a
    invoke-direct {v0, v1, v3}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@f
    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@11
    const-string/jumbo v1, "DROPPED"

    #@14
    invoke-direct {v0, v1, v4}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    #@17
    .line 84
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@19
    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@1b
    const-string/jumbo v1, "PARSE_ERROR"

    #@1e
    invoke-direct {v0, v1, v5}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    #@21
    .line 85
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@23
    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@25
    const-string/jumbo v1, "ZERO_LIFETIME"

    #@28
    invoke-direct {v0, v1, v6}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 86
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@2d
    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@2f
    const-string/jumbo v1, "UPDATE_NEW_RA"

    #@32
    invoke-direct {v0, v1, v7}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    #@35
    .line 87
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@37
    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@39
    const-string/jumbo v1, "UPDATE_EXPIRY"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    #@40
    .line 88
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@42
    .line 82
    const/4 v0, 0x6

    #@43
    new-array v0, v0, [Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@45
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@47
    aput-object v1, v0, v3

    #@49
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@4b
    aput-object v1, v0, v4

    #@4d
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@4f
    aput-object v1, v0, v5

    #@51
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@53
    aput-object v1, v0, v6

    #@55
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@57
    aput-object v1, v0, v7

    #@59
    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->$VALUES:[Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@60
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 82
    const-class v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 1

    #@0
    .prologue
    .line 82
    sget-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->$VALUES:[Landroid/net/apf/ApfFilter$ProcessRaResult;

    #@2
    return-object v0
.end method
