.class public final enum Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
.super Ljava/lang/Enum;
.source "SSLEngineResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/net/ssl/SSLEngineResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandshakeStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field public static final enum NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;


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
    .line 30
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@7
    const-string/jumbo v1, "NOT_HANDSHAKING"

    #@a
    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    #@d
    .line 33
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@f
    .line 34
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@11
    const-string/jumbo v1, "FINISHED"

    #@14
    invoke-direct {v0, v1, v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    #@17
    .line 37
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@19
    .line 38
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@1b
    const-string/jumbo v1, "NEED_TASK"

    #@1e
    invoke-direct {v0, v1, v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    #@21
    .line 42
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@23
    .line 43
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@25
    const-string/jumbo v1, "NEED_WRAP"

    #@28
    invoke-direct {v0, v1, v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 47
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2d
    .line 48
    new-instance v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2f
    const-string/jumbo v1, "NEED_UNWRAP"

    #@32
    invoke-direct {v0, v1, v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;-><init>(Ljava/lang/String;I)V

    #@35
    .line 52
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@37
    .line 29
    const/4 v0, 0x5

    #@38
    new-array v0, v0, [Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@3a
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@3c
    aput-object v1, v0, v2

    #@3e
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@40
    aput-object v1, v0, v3

    #@42
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@44
    aput-object v1, v0, v4

    #@46
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@48
    aput-object v1, v0, v5

    #@4a
    sget-object v1, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@4c
    aput-object v1, v0, v6

    #@4e
    sput-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@50
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    const-class v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@8
    return-object v0
.end method

.method public static values()[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1

    #@0
    .prologue
    .line 29
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->$VALUES:[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    #@2
    return-object v0
.end method
