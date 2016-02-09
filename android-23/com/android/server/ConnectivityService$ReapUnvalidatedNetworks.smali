.class final enum Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReapUnvalidatedNetworks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

.field public static final enum DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

.field public static final enum REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 224
    new-instance v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@4
    const-string/jumbo v1, "REAP"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;-><init>(Ljava/lang/String;I)V

    #@a
    .line 227
    sput-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@c
    .line 228
    new-instance v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@e
    const-string/jumbo v1, "DONT_REAP"

    #@11
    invoke-direct {v0, v1, v3}, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;-><init>(Ljava/lang/String;I)V

    #@14
    .line 230
    sput-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@16
    .line 223
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@19
    sget-object v1, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->$VALUES:[Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 223
    const-class v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    .locals 1

    #@0
    .prologue
    .line 223
    sget-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->$VALUES:[Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    #@2
    return-object v0
.end method
