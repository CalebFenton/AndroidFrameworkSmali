.class public final enum Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
.super Ljava/lang/Enum;
.source "DomainMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/pps/DomainMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Match"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

.field public static final enum None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

.field public static final enum Primary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

.field public static final enum Secondary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;


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
    .line 17
    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@5
    const-string/jumbo v1, "None"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@d
    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@f
    const-string/jumbo v1, "Primary"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Primary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@17
    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@19
    const-string/jumbo v1, "Secondary"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Secondary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@21
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@24
    sget-object v1, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->None:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Primary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->Secondary:Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->$VALUES:[Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 17
    const-class v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;
    .locals 1

    #@0
    .prologue
    .line 17
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;->$VALUES:[Lcom/android/server/wifi/hotspot2/pps/DomainMatcher$Match;

    #@2
    return-object v0
.end method
