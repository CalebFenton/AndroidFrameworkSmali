.class final enum Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
.super Ljava/lang/Enum;
.source "OpenSSLEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EngineState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum HANDSHAKE_WANTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

.field public static final enum READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 51
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@7
    const-string/jumbo v1, "NEW"

    #@a
    invoke-direct {v0, v1, v3}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@d
    .line 55
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@f
    .line 56
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@11
    const-string/jumbo v1, "MODE_SET"

    #@14
    invoke-direct {v0, v1, v4}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@17
    .line 59
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@19
    .line 60
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@1b
    const-string/jumbo v1, "HANDSHAKE_WANTED"

    #@1e
    invoke-direct {v0, v1, v5}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@21
    .line 63
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_WANTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@23
    .line 64
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@25
    const-string/jumbo v1, "HANDSHAKE_STARTED"

    #@28
    invoke-direct {v0, v1, v6}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@2b
    .line 67
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@2d
    .line 68
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@2f
    const-string/jumbo v1, "HANDSHAKE_COMPLETED"

    #@32
    invoke-direct {v0, v1, v7}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@35
    .line 71
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@37
    .line 72
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@39
    const-string/jumbo v1, "READY_HANDSHAKE_CUT_THROUGH"

    #@3c
    const/4 v2, 0x5

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@40
    .line 77
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@42
    .line 78
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@44
    const-string/jumbo v1, "READY"

    #@47
    const/4 v2, 0x6

    #@48
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@4b
    .line 81
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@4d
    .line 82
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@4f
    const-string/jumbo v1, "CLOSED_INBOUND"

    #@52
    const/4 v2, 0x7

    #@53
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@56
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@58
    .line 83
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@5a
    const-string/jumbo v1, "CLOSED_OUTBOUND"

    #@5d
    const/16 v2, 0x8

    #@5f
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@62
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@64
    .line 84
    new-instance v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@66
    const-string/jumbo v1, "CLOSED"

    #@69
    const/16 v2, 0x9

    #@6b
    invoke-direct {v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;-><init>(Ljava/lang/String;I)V

    #@6e
    .line 87
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@70
    .line 50
    const/16 v0, 0xa

    #@72
    new-array v0, v0, [Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@74
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->NEW:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@76
    aput-object v1, v0, v3

    #@78
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->MODE_SET:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@7a
    aput-object v1, v0, v4

    #@7c
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_WANTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@7e
    aput-object v1, v0, v5

    #@80
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_STARTED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@82
    aput-object v1, v0, v6

    #@84
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->HANDSHAKE_COMPLETED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@86
    aput-object v1, v0, v7

    #@88
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY_HANDSHAKE_CUT_THROUGH:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@8a
    const/4 v2, 0x5

    #@8b
    aput-object v1, v0, v2

    #@8d
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->READY:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@8f
    const/4 v2, 0x6

    #@90
    aput-object v1, v0, v2

    #@92
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_INBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@94
    const/4 v2, 0x7

    #@95
    aput-object v1, v0, v2

    #@97
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED_OUTBOUND:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@99
    const/16 v2, 0x8

    #@9b
    aput-object v1, v0, v2

    #@9d
    sget-object v1, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->CLOSED:Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@9f
    const/16 v2, 0x9

    #@a1
    aput-object v1, v0, v2

    #@a3
    sput-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@a5
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 50
    const-class v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;
    .locals 1

    #@0
    .prologue
    .line 50
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;->$VALUES:[Lcom/android/org/conscrypt/OpenSSLEngineImpl$EngineState;

    #@2
    return-object v0
.end method
