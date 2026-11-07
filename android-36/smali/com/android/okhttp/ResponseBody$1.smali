.class Lcom/android/okhttp/ResponseBody$1;
.super Lcom/android/okhttp/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/ResponseBody;->create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$content:Lcom/android/okhttp/okio/BufferedSource;

.field final synthetic blacklist val$contentLength:J

.field final synthetic blacklist val$contentType:Lcom/android/okhttp/MediaType;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)V
    .registers 5

    .line 126
    iput-object p1, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    iput-wide p2, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentLength:J

    iput-object p4, p0, Lcom/android/okhttp/ResponseBody$1;->val$content:Lcom/android/okhttp/okio/BufferedSource;

    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist contentLength()J
    .registers 3

    .line 132
    iget-wide v0, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentLength:J

    return-wide v0
.end method

.method public blacklist contentType()Lcom/android/okhttp/MediaType;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    return-object p0
.end method

.method public blacklist source()Lcom/android/okhttp/okio/BufferedSource;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/okhttp/ResponseBody$1;->val$content:Lcom/android/okhttp/okio/BufferedSource;

    return-object p0
.end method
