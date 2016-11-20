.class public final enum Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;
.super Ljava/lang/Enum;
.source "GEOLocationElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/GEOLocationElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Datum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field public static final enum NAD83Land:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field public static final enum NAD83Water:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

.field public static final enum WGS84:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;


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
    .line 41
    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@6
    const-string/jumbo v1, "Unknown"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@e
    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@10
    const-string/jumbo v1, "WGS84"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->WGS84:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@18
    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@1a
    const-string/jumbo v1, "NAD83Land"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->NAD83Land:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@22
    new-instance v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@24
    const-string/jumbo v1, "NAD83Water"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->NAD83Water:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@2c
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@2f
    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->Unknown:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->WGS84:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->NAD83Land:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->NAD83Water:Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->$VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    const-class v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;
    .locals 1

    #@0
    .prologue
    .line 41
    sget-object v0, Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;->$VALUES:[Lcom/android/server/wifi/anqp/GEOLocationElement$Datum;

    #@2
    return-object v0
.end method
