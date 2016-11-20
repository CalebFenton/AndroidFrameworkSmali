.class public final enum Lorg/apache/http/conn/routing/RouteInfo$LayerType;
.super Ljava/lang/Enum;
.source "RouteInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/conn/routing/RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/http/conn/routing/RouteInfo$LayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/http/conn/routing/RouteInfo$LayerType;

.field public static final enum LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

.field public static final enum PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 80
    new-instance v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@4
    const-string/jumbo v1, "PLAIN"

    #@7
    invoke-direct {v0, v1, v2}, Lorg/apache/http/conn/routing/RouteInfo$LayerType;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@c
    new-instance v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@e
    const-string/jumbo v1, "LAYERED"

    #@11
    invoke-direct {v0, v1, v3}, Lorg/apache/http/conn/routing/RouteInfo$LayerType;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@16
    const/4 v0, 0x2

    #@17
    new-array v0, v0, [Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@19
    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@1b
    aput-object v1, v0, v2

    #@1d
    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@1f
    aput-object v1, v0, v3

    #@21
    sput-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->$VALUES:[Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@23
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/http/conn/routing/RouteInfo$LayerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    const-class v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@8
    return-object v0
.end method

.method public static values()[Lorg/apache/http/conn/routing/RouteInfo$LayerType;
    .locals 1

    #@0
    .prologue
    .line 80
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->$VALUES:[Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    #@2
    return-object v0
.end method
