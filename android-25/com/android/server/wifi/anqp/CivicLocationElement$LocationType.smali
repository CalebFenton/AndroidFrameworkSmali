.class public final enum Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;
.super Ljava/lang/Enum;
.source "CivicLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/CivicLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

.field public static final enum Client:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

.field public static final enum DHCPServer:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

.field public static final enum NwkElement:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;


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
    .line 15
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@5
    const-string/jumbo v1, "DHCPServer"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->DHCPServer:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@d
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@f
    const-string/jumbo v1, "NwkElement"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->NwkElement:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@17
    new-instance v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@19
    const-string/jumbo v1, "Client"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->Client:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@21
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@24
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->DHCPServer:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->NwkElement:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->Client:Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->$VALUES:[Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 15
    const-class v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;
    .locals 1

    #@0
    .prologue
    .line 15
    sget-object v0, Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;->$VALUES:[Lcom/android/server/wifi/anqp/CivicLocationElement$LocationType;

    #@2
    return-object v0
.end method
