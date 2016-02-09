.class final enum Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;
.super Ljava/lang/Enum;
.source "SimulatedCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/test/SimulatedCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SimFdnState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field public static final enum NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field public static final enum REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field public static final enum REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

.field public static final enum SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;


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
    .line 51
    new-instance v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@6
    const-string/jumbo v1, "NONE"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@e
    .line 52
    new-instance v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@10
    const-string/jumbo v1, "REQUIRE_PIN2"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@18
    .line 53
    new-instance v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@1a
    const-string/jumbo v1, "REQUIRE_PUK2"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@22
    .line 54
    new-instance v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@24
    const-string/jumbo v1, "SIM_PERM_LOCKED"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@2c
    .line 50
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@2f
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->NONE:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PIN2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->REQUIRE_PUK2:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->SIM_PERM_LOCKED:Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->$VALUES:[Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    const-class v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;
    .locals 1

    #@0
    .prologue
    .line 50
    sget-object v0, Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;->$VALUES:[Lcom/android/internal/telephony/test/SimulatedCommands$SimFdnState;

    #@2
    return-object v0
.end method
