.class public final enum Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;
.super Ljava/lang/Enum;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AltitudeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

.field public static final enum Floors:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

.field public static final enum Meters:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;


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
    .line 39
    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@5
    const-string/jumbo v1, "Unknown"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@d
    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@f
    const-string/jumbo v1, "Meters"

    #@12
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Meters:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@17
    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@19
    const-string/jumbo v1, "Floors"

    #@1c
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Floors:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@21
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@24
    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Meters:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->Floors:Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->$VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    const-class v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;->$VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$AltitudeType;

    #@2
    return-object v0
.end method
