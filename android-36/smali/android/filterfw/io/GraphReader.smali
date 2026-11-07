.class public abstract Landroid/filterfw/io/GraphReader;
.super Ljava/lang/Object;
.source "GraphReader.java"


# instance fields
.field protected blacklist mReferences:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    return-void
.end method


# virtual methods
.method public blacklist addReference(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public varargs blacklist addReferencesByKeysAndValues([Ljava/lang/Object;)V
    .registers 3
    .param p1, "references"    # [Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public blacklist addReferencesByMap(Landroid/filterfw/core/KeyValueMap;)V
    .registers 3
    .param p1, "refs"    # Landroid/filterfw/core/KeyValueMap;

    .line 62
    iget-object v0, p0, Landroid/filterfw/io/GraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public blacklist readGraphResource(Landroid/content/Context;I)Landroid/filterfw/core/FilterGraph;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 43
    .local v0, "inputStream":Ljava/io/InputStream;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 44
    .local v1, "reader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 45
    .local v2, "writer":Ljava/io/StringWriter;
    const/16 v3, 0x400

    new-array v4, v3, [C

    .line 48
    .local v4, "buffer":[C
    :goto_16
    const/4 v5, 0x0

    :try_start_17
    invoke-virtual {v1, v4, v5, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    move v7, v6

    .local v7, "bytesRead":I
    if-lez v6, :cond_22

    .line 49
    invoke-virtual {v2, v4, v5, v7}, Ljava/io/StringWriter;->write([CII)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_2c

    goto :goto_16

    .line 53
    .end local v7    # "bytesRead":I
    :cond_22
    nop

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    return-object v3

    .line 51
    :catch_2c
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not read specified resource file!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public abstract blacklist readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation
.end method

.method public abstract blacklist readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation
.end method
