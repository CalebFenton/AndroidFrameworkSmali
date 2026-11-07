.class public final Lcom/android/okhttp/internal/framed/Header;
.super Ljava/lang/Object;
.source "Header.java"


# static fields
.field public static final blacklist RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

.field public static final blacklist VERSION:Lcom/android/okhttp/okio/ByteString;


# instance fields
.field final blacklist hpackSize:I

.field public final blacklist name:Lcom/android/okhttp/okio/ByteString;

.field public final blacklist value:Lcom/android/okhttp/okio/ByteString;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-string v0, ":status"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->RESPONSE_STATUS:Lcom/android/okhttp/okio/ByteString;

    .line 11
    const-string v0, ":method"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_METHOD:Lcom/android/okhttp/okio/ByteString;

    .line 12
    const-string v0, ":path"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_PATH:Lcom/android/okhttp/okio/ByteString;

    .line 13
    const-string v0, ":scheme"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_SCHEME:Lcom/android/okhttp/okio/ByteString;

    .line 14
    const-string v0, ":authority"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_AUTHORITY:Lcom/android/okhttp/okio/ByteString;

    .line 15
    const-string v0, ":host"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->TARGET_HOST:Lcom/android/okhttp/okio/ByteString;

    .line 16
    const-string v0, ":version"

    invoke-static {v0}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/Header;->VERSION:Lcom/android/okhttp/okio/ByteString;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    .line 35
    iput-object p2, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    .line 36
    invoke-virtual {p1}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/android/okhttp/okio/ByteString;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/okhttp/internal/framed/Header;->hpackSize:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/okhttp/okio/ByteString;Ljava/lang/String;)V
    .registers 3

    .line 30
    invoke-static {p2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 26
    invoke-static {p1}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object p1

    invoke-static {p2}, Lcom/android/okhttp/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/framed/Header;-><init>(Lcom/android/okhttp/okio/ByteString;Lcom/android/okhttp/okio/ByteString;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 40
    instance-of v0, p1, Lcom/android/okhttp/internal/framed/Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 41
    check-cast p1, Lcom/android/okhttp/internal/framed/Header;

    .line 42
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    iget-object v2, p1, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v0, v2}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    iget-object p1, p1, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/okhttp/okio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 51
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/Header;->name:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {v0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Header;->value:Lcom/android/okhttp/okio/ByteString;

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
