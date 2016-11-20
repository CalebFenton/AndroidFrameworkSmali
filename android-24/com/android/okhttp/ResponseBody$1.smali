.class final Lcom/android/okhttp/ResponseBody$1;
.super Lcom/android/okhttp/ResponseBody;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/ResponseBody;->create(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)Lcom/android/okhttp/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/android/okhttp/okio/BufferedSource;

.field final synthetic val$contentLength:J

.field final synthetic val$contentType:Lcom/android/okhttp/MediaType;


# direct methods
.method constructor <init>(Lcom/android/okhttp/MediaType;JLcom/android/okhttp/okio/BufferedSource;)V
    .locals 0
    .param p1, "val$contentType"    # Lcom/android/okhttp/MediaType;
    .param p2, "val$contentLength"    # J
    .param p4, "val$content"    # Lcom/android/okhttp/okio/BufferedSource;

    #@0
    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    #@2
    iput-wide p2, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentLength:J

    #@4
    iput-object p4, p0, Lcom/android/okhttp/ResponseBody$1;->val$content:Lcom/android/okhttp/okio/BufferedSource;

    #@6
    invoke-direct {p0}, Lcom/android/okhttp/ResponseBody;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    #@0
    .prologue
    .line 128
    iget-wide v0, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentLength:J

    #@2
    return-wide v0
.end method

.method public contentType()Lcom/android/okhttp/MediaType;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/okhttp/ResponseBody$1;->val$contentType:Lcom/android/okhttp/MediaType;

    #@2
    return-object v0
.end method

.method public source()Lcom/android/okhttp/okio/BufferedSource;
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/okhttp/ResponseBody$1;->val$content:Lcom/android/okhttp/okio/BufferedSource;

    #@2
    return-object v0
.end method
