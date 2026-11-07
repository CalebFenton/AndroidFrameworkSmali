.class public final enum Lcom/android/okhttp/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/okhttp/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/okhttp/Protocol;

.field public static final enum greylist-max-o HTTP_1_0:Lcom/android/okhttp/Protocol;

.field public static final enum greylist-max-o HTTP_1_1:Lcom/android/okhttp/Protocol;

.field public static final enum greylist-max-o HTTP_2:Lcom/android/okhttp/Protocol;

.field public static final enum greylist-max-o SPDY_3:Lcom/android/okhttp/Protocol;


# instance fields
.field private final greylist-max-o protocol:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/okhttp/Protocol;
    .registers 4

    .line 33
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    sget-object v1, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    sget-object v2, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    sget-object v3, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/okhttp/Protocol;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 38
    new-instance v0, Lcom/android/okhttp/Protocol;

    const/4 v1, 0x0

    const-string v2, "http/1.0"

    const-string v3, "HTTP_1_0"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    .line 47
    new-instance v0, Lcom/android/okhttp/Protocol;

    const/4 v1, 0x1

    const-string v2, "http/1.1"

    const-string v3, "HTTP_1_1"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    .line 59
    new-instance v0, Lcom/android/okhttp/Protocol;

    const/4 v1, 0x2

    const-string v2, "spdy/3.1"

    const-string v3, "SPDY_3"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    .line 71
    new-instance v0, Lcom/android/okhttp/Protocol;

    const/4 v1, 0x3

    const-string v2, "h2"

    const-string v3, "HTTP_2"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    .line 33
    invoke-static {}, Lcom/android/okhttp/Protocol;->$values()[Lcom/android/okhttp/Protocol;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/Protocol;->$VALUES:[Lcom/android/okhttp/Protocol;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static greylist-max-o get(Ljava/lang/String;)Lcom/android/okhttp/Protocol;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_0:Lcom/android/okhttp/Protocol;

    iget-object v1, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 86
    :cond_b
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_1_1:Lcom/android/okhttp/Protocol;

    iget-object v1, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-object v0

    .line 87
    :cond_16
    sget-object v0, Lcom/android/okhttp/Protocol;->HTTP_2:Lcom/android/okhttp/Protocol;

    iget-object v1, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-object v0

    .line 88
    :cond_21
    sget-object v0, Lcom/android/okhttp/Protocol;->SPDY_3:Lcom/android/okhttp/Protocol;

    iget-object v1, v0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-object v0

    .line 89
    :cond_2c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected protocol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Lcom/android/okhttp/Protocol;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 33
    const-class v0, Lcom/android/okhttp/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/okhttp/Protocol;

    return-object p0
.end method

.method public static greylist-max-o values()[Lcom/android/okhttp/Protocol;
    .registers 1

    .line 33
    sget-object v0, Lcom/android/okhttp/Protocol;->$VALUES:[Lcom/android/okhttp/Protocol;

    invoke-virtual {v0}, [Lcom/android/okhttp/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/Protocol;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/android/okhttp/Protocol;->protocol:Ljava/lang/String;

    return-object p0
.end method
