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
    .line 26
    const-string/jumbo v0, "application/x-www-form-urlencoded"

    #@3
    invoke-static {v0}, Lcom/android/okhttp/MediaType;->parse(Ljava/lang/String;)Lcom/android/okhttp/MediaType;

    #@6
    move-result-object v0

    #@7
    .line 25
    sput-object v0, Lcom/android/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/android/okhttp/MediaType;

    #@9
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Lcom/android/okhttp/okio/Buffer;

    #@5
    invoke-direct {v0}, Lcom/android/okhttp/okio/Buffer;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@a
    .line 24
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/FormEncodingBuilder;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 32
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@7
    move-result-wide v0

    #@8
    const-wide/16 v4, 0x0

    #@a
    cmp-long v0, v0, v4

    #@c
    if-lez v0, :cond_0

    #@e
    .line 33
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@10
    const/16 v1, 0x26

    #@12
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@15
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1a
    move-result v3

    #@1b
    .line 36
    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    #@1e
    move-object v1, p1

    #@1f
    move v5, v2

    #@20
    move v6, v2

    #@21
    move v8, v7

    #@22
    .line 35
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    #@25
    .line 37
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@27
    const/16 v1, 0x3d

    #@29
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@2c
    .line 38
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@2e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@31
    move-result v3

    #@32
    .line 39
    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    #@35
    move-object v1, p2

    #@36
    move v5, v2

    #@37
    move v6, v2

    #@38
    move v8, v7

    #@39
    .line 38
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    #@3c
    .line 40
    return-object p0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/android/okhttp/FormEncodingBuilder;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 45
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@4
    invoke-virtual {v0}, Lcom/android/okhttp/okio/Buffer;->size()J

    #@7
    move-result-wide v0

    #@8
    const-wide/16 v6, 0x0

    #@a
    cmp-long v0, v0, v6

    #@c
    if-lez v0, :cond_0

    #@e
    .line 46
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@10
    const/16 v1, 0x26

    #@12
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@15
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1a
    move-result v3

    #@1b
    .line 49
    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    #@1e
    move-object v1, p1

    #@1f
    move v6, v2

    #@20
    move v7, v5

    #@21
    move v8, v5

    #@22
    .line 48
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    #@25
    .line 50
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@27
    const/16 v1, 0x3d

    #@29
    invoke-virtual {v0, v1}, Lcom/android/okhttp/okio/Buffer;->writeByte(I)Lcom/android/okhttp/okio/Buffer;

    #@2c
    .line 51
    iget-object v0, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@2e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@31
    move-result v3

    #@32
    .line 52
    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    #@35
    move-object v1, p2

    #@36
    move v6, v2

    #@37
    move v7, v5

    #@38
    move v8, v5

    #@39
    .line 51
    invoke-static/range {v0 .. v8}, Lcom/android/okhttp/HttpUrl;->canonicalize(Lcom/android/okhttp/okio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZ)V

    #@3c
    .line 53
    return-object p0
.end method

.method public build()Lcom/android/okhttp/RequestBody;
    .locals 2

    #@0
    .prologue
    .line 57
    sget-object v0, Lcom/android/okhttp/FormEncodingBuilder;->CONTENT_TYPE:Lcom/android/okhttp/MediaType;

    #@2
    iget-object v1, p0, Lcom/android/okhttp/FormEncodingBuilder;->content:Lcom/android/okhttp/okio/Buffer;

    #@4
    invoke-virtual {v1}, Lcom/android/okhttp/okio/Buffer;->snapshot()Lcom/android/okhttp/okio/ByteString;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Lcom/android/okhttp/RequestBody;->create(Lcom/android/okhttp/MediaType;Lcom/android/okhttp/okio/ByteString;)Lcom/android/okhttp/RequestBody;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
