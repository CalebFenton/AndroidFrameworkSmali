.class public Ljavax/xml/transform/TransformerException;
.super Ljava/lang/Exception;
.source "TransformerException.java"


# static fields
.field private static final serialVersionUID:J = 0xd8abbd092ffb30cL


# instance fields
.field containedException:Ljava/lang/Throwable;

.field locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 126
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@4
    .line 128
    iput-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    #@6
    .line 129
    iput-object v0, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@8
    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 157
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 158
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    .line 157
    .end local p1    # "message":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@10
    .line 161
    iput-object p2, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    #@12
    .line 162
    iput-object v1, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@14
    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 177
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 179
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    #@6
    .line 180
    iput-object p2, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@8
    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 194
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 196
    iput-object p3, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    #@5
    .line 197
    iput-object p2, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@7
    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@7
    .line 141
    iput-object p1, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    #@9
    .line 142
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@c
    .line 137
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 75
    const/4 v0, 0x0

    #@5
    .line 74
    :goto_0
    return-object v0

    #@6
    .line 76
    :cond_0
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    #@8
    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public getLocationAsString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 248
    iget-object v4, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@3
    if-eqz v4, :cond_3

    #@5
    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    .line 250
    .local v2, "sbuffer":Ljava/lang/StringBuilder;
    iget-object v4, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@c
    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 251
    .local v3, "systemID":Ljava/lang/String;
    iget-object v4, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@12
    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@15
    move-result v1

    #@16
    .line 252
    .local v1, "line":I
    iget-object v4, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@18
    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@1b
    move-result v0

    #@1c
    .line 254
    .local v0, "column":I
    if-eqz v3, :cond_0

    #@1e
    .line 255
    const-string/jumbo v4, "; SystemID: "

    #@21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 259
    :cond_0
    if-eqz v1, :cond_1

    #@29
    .line 260
    const-string/jumbo v4, "; Line#: "

    #@2c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    .line 264
    :cond_1
    if-eqz v0, :cond_2

    #@34
    .line 265
    const-string/jumbo v4, "; Column#: "

    #@37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    .line 266
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    .line 269
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    return-object v4

    #@42
    .line 271
    .end local v0    # "column":I
    .end local v1    # "line":I
    .end local v2    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v3    # "systemID":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method public getLocator()Ljavax/xml/transform/SourceLocator;
    .locals 1

    #@0
    .prologue
    .line 41
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@2
    return-object v0
.end method

.method public getMessageAndLocation()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 210
    .local v3, "sbuffer":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 212
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@b
    .line 213
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 216
    :cond_0
    iget-object v5, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@10
    if-eqz v5, :cond_3

    #@12
    .line 217
    iget-object v5, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@14
    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 218
    .local v4, "systemID":Ljava/lang/String;
    iget-object v5, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@1a
    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@1d
    move-result v1

    #@1e
    .line 219
    .local v1, "line":I
    iget-object v5, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@20
    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@23
    move-result v0

    #@24
    .line 221
    .local v0, "column":I
    if-eqz v4, :cond_1

    #@26
    .line 222
    const-string/jumbo v5, "; SystemID: "

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 226
    :cond_1
    if-eqz v1, :cond_2

    #@31
    .line 227
    const-string/jumbo v5, "; Line#: "

    #@34
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 228
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    .line 231
    :cond_2
    if-eqz v0, :cond_3

    #@3c
    .line 232
    const-string/jumbo v5, "; Column#: "

    #@3f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    .line 233
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    .line 237
    .end local v0    # "column":I
    .end local v1    # "line":I
    .end local v4    # "systemID":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    return-object v5
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "Can\'t overwrite cause"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 109
    :cond_0
    if-ne p1, p0, :cond_1

    #@13
    .line 110
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    .line 111
    const-string/jumbo v1, "Self-causation not permitted"

    #@18
    .line 110
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 114
    :cond_1
    iput-object p1, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 116
    return-object p0
.end method

.method public printStackTrace()V
    .locals 3

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/io/PrintWriter;

    #@2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@8
    invoke-virtual {p0, v0}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    #@b
    .line 280
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 291
    new-instance v0, Ljava/io/PrintWriter;

    #@2
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    invoke-virtual {p0, v0}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    #@8
    .line 290
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "s"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 302
    if-nez p1, :cond_0

    #@2
    .line 303
    new-instance p1, Ljava/io/PrintWriter;

    #@4
    .end local p1    # "s":Ljava/io/PrintWriter;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6
    const/4 v3, 0x1

    #@7
    invoke-direct {p1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@a
    .line 307
    .restart local p1    # "s":Ljava/io/PrintWriter;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getLocationAsString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 309
    .local v1, "locInfo":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@10
    .line 310
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13
    .line 313
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 300
    .end local v1    # "locInfo":Ljava/lang/String;
    :goto_0
    return-void

    #@17
    .line 314
    :catch_0
    move-exception v0

    #@18
    .local v0, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public setLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0
    .param p1, "location"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 51
    iput-object p1, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    #@2
    .line 50
    return-void
.end method
