.class final Lcom/android/okhttp/internal/http/HttpEngine$1;
.super Lcom/android/okhttp/ResponseBody;
.source "HttpEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/http/HttpEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    #@0
    .prologue
    .line 107
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 1

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .locals 1

    #@0
    .prologue
    .line 110
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@5
    return-object v0
.end method
