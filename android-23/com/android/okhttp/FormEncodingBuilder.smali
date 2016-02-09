.class public final Lcom/android/okhttp/FormEncodingBuilder;
.super Ljava/lang/Object;
.source "FormEncodingBuilder.java"


# static fields
.field private static final CONTENT_TYPE:Lcom/android/okhttp/MediaType;


# instance fields
.field private final content:Lcom/android/okhttp/okio/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    #@3
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@6
    move-result-object v0

    #@7
    .line 27
    sput-object v0, Lcom/android/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/android/okhttp/MediaType;

    #@9
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@5
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@a
    .line 26
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/FormEncodingBuilder;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@5
    move-result-wide v2

    #@6
    const-wide/16 v4, 0x0

    #@8
    cmp-long v1, v2, v4

    #@a
    if-lez v1, :cond_0

    #@c
    .line 35
    iget-object v1, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@e
    const/16 v2, 0x26

    #@10
    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@13
    .line 38
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@15
    const-string/jumbo v2, "UTF-8"

    #@18
    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;

    #@1f
    .line 39
    iget-object v1, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@21
    const/16 v2, 0x3d

    #@23
    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@26
    .line 40
    iget-object v1, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@28
    const-string/jumbo v2, "UTF-8"

    #@2b
    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v1, v2}, Lcom/android/okhttp/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/Buffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 44
    return-object p0

    #@33
    .line 41
    :catch_0
    move-exception v0

    #@34
    .line 42
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    #@36
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@39
    throw v1
.end method

.method public build()Lcom/android/okhttp/RequestBody;
    .locals 4

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@2
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x0

    #@8
    cmp-long v0, v0, v2

    #@a
    if-nez v0, :cond_0

    #@c
    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v1, "Form encoded body must have at least one part."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 51
    :cond_0
    sget-object v0, Lcom/android/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/android/okhttp/MediaType;

    #@17
    iget-object v1, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@19
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->snapshot()Lcom/android/okhttp/okio/ByteString;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method
