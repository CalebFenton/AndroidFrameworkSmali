.class Lcom/android/okhttp/internal/spdy/NameValueBlockReader$2;
.super Ljava/util/zip/Inflater;
.source "NameValueBlockReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/spdy/NameValueBlockReader;-><init>(Lcom/android/okhttp/okio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;


# direct methods
.method constructor <init>(Lcom/android/okhttp/internal/spdy/NameValueBlockReader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@0
    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$2;->this$0:Lcom/android/okhttp/internal/spdy/NameValueBlockReader;

    #@2
    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public inflate([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    #@3
    move-result v0

    #@4
    .line 69
    .local v0, "result":I
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$2;->needsDictionary()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 70
    sget-object v1, Lcom/android/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B

    #@e
    invoke-virtual {p0, v1}, Lcom/android/okhttp/internal/spdy/NameValueBlockReader$2;->setDictionary([B)V

    #@11
    .line 71
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    #@14
    move-result v0

    #@15
    .line 73
    :cond_0
    return v0
.end method
