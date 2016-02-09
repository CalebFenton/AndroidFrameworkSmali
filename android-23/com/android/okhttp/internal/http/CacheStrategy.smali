.class public final Lcom/android/okhttp/internal/http/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/http/CacheStrategy$Factory;
    }
.end annotation


# instance fields
.field public final cacheResponse:Lcom/android/okhttp/Response;

.field public final networkRequest:Lcom/android/okhttp/Request;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V
    .locals 0
    .param p1, "networkRequest"    # Lcom/android/okhttp/Request;
    .param p2, "cacheResponse"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->networkRequest:Lcom/android/okhttp/Request;

    #@5
    .line 42
    iput-object p2, p0, Lcom/android/okhttp/internal/http/CacheStrategy;->cacheResponse:Lcom/android/okhttp/Response;

    #@7
    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;Lcom/android/okhttp/internal/http/CacheStrategy;)V
    .locals 0
    .param p1, "networkRequest"    # Lcom/android/okhttp/Request;
    .param p2, "cacheResponse"    # Lcom/android/okhttp/Response;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/http/CacheStrategy;-><init>(Lcom/android/okhttp/Request;Lcom/android/okhttp/Response;)V

    #@3
    return-void
.end method

.method public static isCacheable(Lcom/android/okhttp/Response;Lcom/android/okhttp/Request;)Z
    .locals 3
    .param p0, "response"    # Lcom/android/okhttp/Response;
    .param p1, "request"    # Lcom/android/okhttp/Request;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 52
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->code()I

    #@4
    move-result v1

    #@5
    sparse-switch v1, :sswitch_data_0

    #@8
    .line 82
    :cond_0
    return v0

    #@9
    .line 72
    :sswitch_0
    const-string/jumbo v1, "Expires"

    #@c
    invoke-virtual {p0, v1}, Lcom/android/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 73
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->maxAgeSeconds()I

    #@19
    move-result v1

    #@1a
    const/4 v2, -0x1

    #@1b
    if-eq v1, v2, :cond_3

    #@1d
    .line 86
    :cond_1
    :goto_0
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->noStore()Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_2

    #@27
    invoke-virtual {p1}, Lcom/android/okhttp/Request;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->noStore()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_4

    #@31
    :cond_2
    :goto_1
    return v0

    #@32
    .line 74
    :cond_3
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->isPublic()Z

    #@39
    move-result v1

    #@3a
    .line 72
    if-nez v1, :cond_1

    #@3c
    .line 75
    invoke-virtual {p0}, Lcom/android/okhttp/Response;->cacheControl()Lcom/android/okhttp/CacheControl;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Lcom/android/okhttp/CacheControl;->isPrivate()Z

    #@43
    move-result v1

    #@44
    .line 72
    if-eqz v1, :cond_0

    #@46
    goto :goto_0

    #@47
    .line 86
    :cond_4
    const/4 v0, 0x1

    #@48
    goto :goto_1

    #@49
    .line 52
    nop

    #@4a
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0x12c -> :sswitch_1
        0x12d -> :sswitch_1
        0x12e -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_1
        0x194 -> :sswitch_1
        0x195 -> :sswitch_1
        0x19a -> :sswitch_1
        0x19e -> :sswitch_1
        0x1f5 -> :sswitch_1
    .end sparse-switch
.end method
