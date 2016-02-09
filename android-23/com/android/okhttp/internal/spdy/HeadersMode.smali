.class public final enum Lcom/android/okhttp/internal/spdy/HeadersMode;
.super Ljava/lang/Enum;
.source "HeadersMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/okhttp/internal/spdy/HeadersMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/okhttp/internal/spdy/HeadersMode;

.field public static final enum HTTP_20_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

.field public static final enum SPDY_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

.field public static final enum SPDY_REPLY:Lcom/android/okhttp/internal/spdy/HeadersMode;

.field public static final enum SPDY_SYN_STREAM:Lcom/android/okhttp/internal/spdy/HeadersMode;


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
    .line 19
    new-instance v0, Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@6
    const-string/jumbo v1, "SPDY_SYN_STREAM"

    #@9
    invoke-direct {v0, v1, v2}, Lcom/android/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@e
    .line 20
    new-instance v0, Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@10
    const-string/jumbo v1, "SPDY_REPLY"

    #@13
    invoke-direct {v0, v1, v3}, Lcom/android/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@18
    .line 21
    new-instance v0, Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@1a
    const-string/jumbo v1, "SPDY_HEADERS"

    #@1d
    invoke-direct {v0, v1, v4}, Lcom/android/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@22
    .line 22
    new-instance v0, Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@24
    const-string/jumbo v1, "HTTP_20_HEADERS"

    #@27
    invoke-direct {v0, v1, v5}, Lcom/android/okhttp/internal/spdy/HeadersMode;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Lcom/android/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@2c
    .line 18
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@2f
    sget-object v1, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/android/okhttp/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Lcom/android/okhttp/internal/spdy/HeadersMode;->$VALUES:[Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/okhttp/internal/spdy/HeadersMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 18
    const-class v0, Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/okhttp/internal/spdy/HeadersMode;
    .locals 1

    #@0
    .prologue
    .line 18
    sget-object v0, Lcom/android/okhttp/internal/spdy/HeadersMode;->$VALUES:[Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@2
    return-object v0
.end method


# virtual methods
.method public failIfHeadersAbsent()Z
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public failIfHeadersPresent()Z
    .locals 1

    #@0
    .prologue
    .line 47
    sget-object v0, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public failIfStreamAbsent()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 26
    sget-object v1, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public failIfStreamPresent()Z
    .locals 1

    #@0
    .prologue
    .line 31
    sget-object v0, Lcom/android/okhttp/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/android/okhttp/internal/spdy/HeadersMode;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
