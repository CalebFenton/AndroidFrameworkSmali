.class public final enum Ljavax/net/ssl/SSLEngineResult$Status;
.super Ljava/lang/Enum;
.source "SSLEngineResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/net/ssl/SSLEngineResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/net/ssl/SSLEngineResult$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

.field public static final enum OK:Ljavax/net/ssl/SSLEngineResult$Status;


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
    .line 60
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    #@6
    const-string/jumbo v1, "BUFFER_OVERFLOW"

    #@9
    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    #@c
    .line 64
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #@e
    .line 65
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    #@10
    const-string/jumbo v1, "BUFFER_UNDERFLOW"

    #@13
    invoke-direct {v0, v1, v3}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    #@16
    .line 69
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #@18
    .line 70
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    #@1a
    const-string/jumbo v1, "CLOSED"

    #@1d
    invoke-direct {v0, v1, v4}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    #@20
    .line 74
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    #@22
    .line 75
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$Status;

    #@24
    const-string/jumbo v1, "OK"

    #@27
    invoke-direct {v0, v1, v5}, Ljavax/net/ssl/SSLEngineResult$Status;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 78
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@2c
    .line 59
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Ljavax/net/ssl/SSLEngineResult$Status;

    #@2f
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$Status;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    const-class v0, Ljavax/net/ssl/SSLEngineResult$Status;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/net/ssl/SSLEngineResult$Status;

    #@8
    return-object v0
.end method

.method public static values()[Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    #@0
    .prologue
    .line 59
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$Status;

    #@2
    return-object v0
.end method
