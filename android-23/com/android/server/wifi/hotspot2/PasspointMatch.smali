.class public final enum Lcom/android/server/wifi/hotspot2/PasspointMatch;
.super Ljava/lang/Enum;
.source "PasspointMatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 4
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@7
    const-string/jumbo v1, "HomeProvider"

    #@a
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    #@d
    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@f
    .line 5
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@11
    const-string/jumbo v1, "RoamingProvider"

    #@14
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    #@17
    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@19
    .line 6
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@1b
    const-string/jumbo v1, "Incomplete"

    #@1e
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    #@21
    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@23
    .line 7
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@25
    const-string/jumbo v1, "None"

    #@28
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    #@2b
    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@2d
    .line 8
    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@2f
    const-string/jumbo v1, "Declined"

    #@32
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    #@35
    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@37
    .line 3
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@3a
    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->$VALUES:[Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3
    const-class v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 1

    #@0
    .prologue
    .line 3
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->$VALUES:[Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@2
    return-object v0
.end method
