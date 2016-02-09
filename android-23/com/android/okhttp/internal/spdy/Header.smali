.class public final Lcom/android/okhttp/internal/spdy/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

.field public static final TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

.field public static final VERSION:Lcom/android/okhttp/okio/ByteString;


# instance fields
.field final hpackSize:I

.field public final name:Lcom/android/okhttp/okio/ByteString;

.field public final value:Lcom/android/okhttp/okio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 8
    const-string/jumbo v0, ":status"

    #@3
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/android/okhttp/internal/spdy/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    #@9
    .line 9
    const-string/jumbo v0, ":method"

    #@c
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lcom/android/okhttp/internal/spdy/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    #@12
    .line 10
    const-string/jumbo v0, ":path"

    #@15
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Lcom/android/okhttp/internal/spdy/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    #@1b
    .line 11
    const-string/jumbo v0, ":scheme"

    #@1e
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Lcom/android/okhttp/internal/spdy/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    #@24
    .line 12
    const-string/jumbo v0, ":authority"

    #@27
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Lcom/android/okhttp/internal/spdy/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    #@2d
    .line 13
    const-string/jumbo v0, ":host"

    #@30
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Lcom/android/okhttp/internal/spdy/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    #@36
    .line 14
    const-string/jumbo v0, ":version"

    #@39
    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@3c
    move-result-object v0

    #@3d
    sput-object v0, Lcom/android/okhttp/internal/spdy/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    #@3f
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V
    .locals 2
    .param p1, "name"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "value"    # Lcom/android/okhttp/okio/ByteString;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@5
    .line 33
    iput-object p2, p0, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@7
    .line 34
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@a
    move-result v0

    #@b
    add-int/lit8 v0, v0, 0x20

    #@d
    invoke-virtual {p2}, Lcom/android/okhttp/okio/ByteString;->size()I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    iput v0, p0, Lcom/android/okhttp/internal/spdy/Header;->hpackSize:I

    #@14
    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Lcom/android/okhttp/okio/ByteString;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    invoke-static {p2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    invoke-static {p1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/okhttp/internal/spdy/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    #@b
    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    instance-of v2, p1, Lcom/android/okhttp/internal/spdy/Header;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 39
    check-cast v0, Lcom/android/okhttp/internal/spdy/Header;

    #@8
    .line 40
    .local v0, "that":Lcom/android/okhttp/internal/spdy/Header;
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@a
    iget-object v3, v0, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@c
    invoke-virtual {v2, v3}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 41
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@14
    iget-object v2, v0, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@16
    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    .line 40
    :cond_0
    return v1

    #@1b
    .line 43
    .end local v0    # "that":Lcom/android/okhttp/internal/spdy/Header;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@2
    invoke-virtual {v1}, Lcom/android/okhttp/okio/ByteString;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit16 v0, v1, 0x20f

    #@8
    .line 49
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@c
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->hashCode()I

    #@f
    move-result v2

    #@10
    add-int v0, v1, v2

    #@12
    .line 50
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "%s: %s"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Header;->name:Lcom/android/okhttp/okio/ByteString;

    #@8
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    const/4 v3, 0x0

    #@d
    aput-object v2, v1, v3

    #@f
    iget-object v2, p0, Lcom/android/okhttp/internal/spdy/Header;->value:Lcom/android/okhttp/okio/ByteString;

    #@11
    invoke-virtual {v2}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v1, v3

    #@18
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method
