.class public Ljavax/xml/transform/TransformerException;
.super Ljava/lang/Exception;
.source "TransformerException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0xd8abbd092ffb30cL


# instance fields
.field greylist-max-o containedException:Ljava/lang/Throwable;

.field greylist-max-o locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 129
    iput-object v0, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 130
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 157
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    .line 159
    :cond_9
    move-object v0, p1

    goto :goto_f

    .line 158
    :cond_b
    :goto_b
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_f
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 161
    iput-object p2, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 163
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;

    .line 177
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 180
    iput-object p2, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 181
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 194
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 196
    iput-object p3, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 197
    iput-object p2, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 198
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 74
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_6

    .line 75
    const/4 v0, 0x0

    goto :goto_8

    .line 76
    :cond_6
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    .line 74
    :goto_8
    return-object v0
.end method

.method public whitelist test-api getException()Ljava/lang/Throwable;
    .registers 2

    .line 64
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist test-api getLocationAsString()Ljava/lang/String;
    .registers 6

    .line 248
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v0, :cond_3e

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "sbuffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "systemID":Ljava/lang/String;
    iget-object v2, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v2

    .line 252
    .local v2, "line":I
    iget-object v3, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v3

    .line 254
    .local v3, "column":I
    if-eqz v1, :cond_25

    .line 255
    const-string v4, "; SystemID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_25
    if-eqz v2, :cond_2f

    .line 260
    const-string v4, "; Line#: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    :cond_2f
    if-eqz v3, :cond_39

    .line 265
    const-string v4, "; Column#: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 271
    .end local v0    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v1    # "systemID":Ljava/lang/String;
    .end local v2    # "line":I
    .end local v3    # "column":I
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getLocator()Ljavax/xml/transform/SourceLocator;
    .registers 2

    .line 41
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    return-object v0
.end method

.method public whitelist test-api getMessageAndLocation()Ljava/lang/String;
    .registers 7

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "sbuffer":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_e

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_e
    iget-object v2, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v2, :cond_42

    .line 217
    iget-object v2, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "systemID":Ljava/lang/String;
    iget-object v3, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v3}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v3

    .line 219
    .local v3, "line":I
    iget-object v4, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result v4

    .line 221
    .local v4, "column":I
    if-eqz v2, :cond_2e

    .line 222
    const-string v5, "; SystemID: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_2e
    if-eqz v3, :cond_38

    .line 227
    const-string v5, "; Line#: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    :cond_38
    if-eqz v4, :cond_42

    .line 232
    const-string v5, "; Column#: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .end local v2    # "systemID":Ljava/lang/String;
    .end local v3    # "line":I
    .end local v4    # "column":I
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public declared-synchronized whitelist test-api initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;

    if-nez v0, :cond_13

    .line 109
    if-eq p1, p0, :cond_b

    .line 114
    iput-object p1, p0, Ljavax/xml/transform/TransformerException;->containedException:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1b

    .line 116
    monitor-exit p0

    return-object p0

    .line 110
    .end local p0    # "this":Ljavax/xml/transform/TransformerException;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self-causation not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t overwrite cause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    .end local p1    # "cause":Ljava/lang/Throwable;
    :catchall_1b
    move-exception p1

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public whitelist test-api printStackTrace()V
    .registers 4

    .line 281
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 282
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintStream;

    .line 291
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 292
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "s"    # Ljava/io/PrintWriter;

    .line 302
    if-nez p1, :cond_b

    .line 303
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    move-object p1, v0

    .line 307
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getLocationAsString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "locInfo":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    :cond_14
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    .end local v0    # "locInfo":Ljava/lang/String;
    goto :goto_19

    .line 314
    :catchall_18
    move-exception v0

    :goto_19
    nop

    .line 315
    return-void
.end method

.method public whitelist test-api setLocator(Ljavax/xml/transform/SourceLocator;)V
    .registers 2
    .param p1, "location"    # Ljavax/xml/transform/SourceLocator;

    .line 51
    iput-object p1, p0, Ljavax/xml/transform/TransformerException;->locator:Ljavax/xml/transform/SourceLocator;

    .line 52
    return-void
.end method
