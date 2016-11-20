.class public final enum Lcom/android/okhttp/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/Protocol;

.field public static final enum HTTP_1_0:Lcom/android/okhttp/Protocol;

.field public static final enum HTTP_1_1:Lcom/android/okhttp/Protocol;

.field public static final enum HTTP_2:Lcom/android/okhttp/Protocol;

.field public static final enum SPDY_3:Lcom/android/okhttp/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 32
    new-instance v0, Lcom/android/okhttp/Protocol;

    #@6
    const-string/jumbo v1, "HTTP_1_0"

    #@9
    .line 36
    const-string/jumbo v2, "http/1.0"

    #@c
    .line 32
    invoke-direct {v0, v1, v3, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@f
    .line 36
    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@11
    .line 38
    new-instance v0, Lcom/android/okhttp/Protocol;

    #@13
    const-string/jumbo v1, "HTTP_1_1"

    #@16
    .line 45
    const-string/jumbo v2, "http/1.1"

    #@19
    .line 38
    invoke-direct {v0, v1, v4, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@1c
    .line 45
    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@1e
    .line 47
    new-instance v0, Lcom/android/okhttp/Protocol;

    #@20
    const-string/jumbo v1, "SPDY_3"

    #@23
    .line 57
    const-string/jumbo v2, "spdy/3.1"

    #@26
    .line 47
    invoke-direct {v0, v1, v5, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@29
    .line 57
    sput-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@2b
    .line 59
    new-instance v0, Lcom/android/okhttp/Protocol;

    #@2d
    const-string/jumbo v1, "HTTP_2"

    #@30
    .line 69
    const-string/jumbo v2, "h2"

    #@33
    .line 59
    invoke-direct {v0, v1, v6, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@36
    .line 69
    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@38
    .line 31
    const/4 v0, 0x4

    #@39
    new-array v0, v0, [Lcom/android/okhttp/Protocol;

    #@3b
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@3d
    aput-object v1, v0, v3

    #@3f
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@41
    aput-object v1, v0, v4

    #@43
    sget-object v1, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@45
    aput-object v1, v0, v5

    #@47
    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@49
    aput-object v1, v0, v6

    #@4b
    sput-object v0, Lcom/android/okhttp/Protocol;->$VALUES:[Lcom/android/okhttp/Protocol;

    #@4d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "protocol"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 74
    iput-object p3, p0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    #@5
    .line 73
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;
    .locals 3
    .param p0, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@2
    iget-object v0, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    #@c
    return-object v0

    #@d
    .line 84
    :cond_0
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@f
    iget-object v0, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    #@19
    return-object v0

    #@1a
    .line 85
    :cond_1
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@1c
    iget-object v0, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    #@1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    #@26
    return-object v0

    #@27
    .line 86
    :cond_2
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@29
    iget-object v0, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    #@2b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_3

    #@31
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    #@33
    return-object v0

    #@34
    .line 87
    :cond_3
    new-instance v0, Ljava/io/IOException;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v2, "Unexpected protocol: "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/Protocol;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 31
    const-class v0, Lcom/android/okhttp/Protocol;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/okhttp/Protocol;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/Protocol;
    .locals 1

    #@0
    .prologue
    .line 31
    sget-object v0, Lcom/android/okhttp/Protocol;->$VALUES:[Lcom/android/okhttp/Protocol;

    #@2
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    #@2
    return-object v0
.end method
