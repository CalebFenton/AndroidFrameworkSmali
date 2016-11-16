.class public final enum Ljava/util/stream/StreamShape;
.super Ljava/lang/Enum;
.source "StreamShape.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/util/stream/StreamShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/util/stream/StreamShape;

.field public static final enum DOUBLE_VALUE:Ljava/util/stream/StreamShape;

.field public static final enum INT_VALUE:Ljava/util/stream/StreamShape;

.field public static final enum LONG_VALUE:Ljava/util/stream/StreamShape;

.field public static final enum REFERENCE:Ljava/util/stream/StreamShape;


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
    new-instance v0, Ljava/util/stream/StreamShape;

    #@6
    const-string/jumbo v1, "REFERENCE"

    #@9
    invoke-direct {v0, v1, v2}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    #@c
    .line 55
    sput-object v0, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@e
    .line 56
    new-instance v0, Ljava/util/stream/StreamShape;

    #@10
    const-string/jumbo v1, "INT_VALUE"

    #@13
    invoke-direct {v0, v1, v3}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    #@16
    .line 60
    sput-object v0, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@18
    .line 61
    new-instance v0, Ljava/util/stream/StreamShape;

    #@1a
    const-string/jumbo v1, "LONG_VALUE"

    #@1d
    invoke-direct {v0, v1, v4}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    #@20
    .line 65
    sput-object v0, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@22
    .line 66
    new-instance v0, Ljava/util/stream/StreamShape;

    #@24
    const-string/jumbo v1, "DOUBLE_VALUE"

    #@27
    invoke-direct {v0, v1, v5}, Ljava/util/stream/StreamShape;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 70
    sput-object v0, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@2c
    .line 50
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Ljava/util/stream/StreamShape;

    #@2f
    sget-object v1, Ljava/util/stream/StreamShape;->REFERENCE:Ljava/util/stream/StreamShape;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Ljava/util/stream/StreamShape;->INT_VALUE:Ljava/util/stream/StreamShape;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Ljava/util/stream/StreamShape;->LONG_VALUE:Ljava/util/stream/StreamShape;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Ljava/util/stream/StreamShape;->DOUBLE_VALUE:Ljava/util/stream/StreamShape;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Ljava/util/stream/StreamShape;->$VALUES:[Ljava/util/stream/StreamShape;

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

.method public static valueOf(Ljava/lang/String;)Ljava/util/stream/StreamShape;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    const-class v0, Ljava/util/stream/StreamShape;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/stream/StreamShape;

    #@8
    return-object v0
.end method

.method public static values()[Ljava/util/stream/StreamShape;
    .locals 1

    #@0
    .prologue
    .line 50
    sget-object v0, Ljava/util/stream/StreamShape;->$VALUES:[Ljava/util/stream/StreamShape;

    #@2
    return-object v0
.end method
