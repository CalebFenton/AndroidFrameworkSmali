.class public final enum Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
.super Ljava/lang/Enum;
.source "NetworkDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/NetworkDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HSRelease"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field public static final enum R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field public static final enum R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

.field public static final enum Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 66
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@5
    const-string/jumbo v1, "R1"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@d
    .line 67
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@f
    const-string/jumbo v1, "R2"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@17
    .line 68
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@19
    const-string/jumbo v1, "Unknown"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@21
    .line 65
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@24
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R1:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->R2:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->Unknown:Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->$VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 65
    const-class v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;
    .locals 1

    #@0
    .prologue
    .line 65
    sget-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;->$VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$HSRelease;

    #@2
    return-object v0
.end method
