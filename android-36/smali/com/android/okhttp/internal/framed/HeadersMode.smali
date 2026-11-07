.class public final enum Lcom/android/okhttp/internal/framed/HeadersMode;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/okhttp/internal/framed/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum blacklist HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum blacklist SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum blacklist SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

.field public static final enum blacklist SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/okhttp/internal/framed/HeadersMode;
    .registers 4

    .line 22
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    sget-object v1, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    sget-object v2, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    sget-object v3, Lcom/android/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/okhttp/internal/framed/HeadersMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_SYN_STREAM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 24
    new-instance v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_REPLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 25
    new-instance v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string v1, "SPDY_HEADERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 26
    new-instance v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    const-string v1, "HTTP_20_HEADERS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/framed/HeadersMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    .line 22
    invoke-static {}, Lcom/android/okhttp/internal/framed/HeadersMode;->$values()[Lcom/android/okhttp/internal/framed/HeadersMode;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->$VALUES:[Lcom/android/okhttp/internal/framed/HeadersMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/okhttp/internal/framed/HeadersMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 22
    const-class v0, Lcom/android/okhttp/internal/framed/HeadersMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/okhttp/internal/framed/HeadersMode;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/okhttp/internal/framed/HeadersMode;
    .registers 1

    .line 22
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->$VALUES:[Lcom/android/okhttp/internal/framed/HeadersMode;

    invoke-virtual {v0}, [Lcom/android/okhttp/internal/framed/HeadersMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/internal/framed/HeadersMode;

    return-object v0
.end method


# virtual methods
.method public blacklist failIfHeadersAbsent()Z
    .registers 2

    .line 43
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist failIfHeadersPresent()Z
    .registers 2

    .line 51
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist failIfStreamAbsent()Z
    .registers 2

    .line 30
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-eq p0, v0, :cond_b

    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist failIfStreamPresent()Z
    .registers 2

    .line 35
    sget-object v0, Lcom/android/okhttp/internal/framed/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/framed/HeadersMode;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
