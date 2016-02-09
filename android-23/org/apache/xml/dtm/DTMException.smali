.class public Lorg/apache/xml/dtm/DTMException;
.super Ljava/lang/RuntimeException;
.source "DTMException.java"


# static fields
.field static final serialVersionUID:J = -0xac366a4e17910ceL


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
    .line 137
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4
    .line 139
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    #@6
    .line 140
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@8
    .line 135
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
    .line 168
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 169
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    .line 168
    .end local p1    # "message":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    .line 172
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    #@12
    .line 173
    iput-object v1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@14
    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 188
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 190
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    #@6
    .line 191
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@8
    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "locator"    # Ljavax/xml/transform/SourceLocator;
    .param p3, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 205
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 207
    iput-object p3, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    #@5
    .line 208
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@7
    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    .line 152
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    #@9
    .line 153
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@c
    .line 148
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    .line 86
    const/4 v0, 0x0

    #@5
    .line 85
    :goto_0
    return-object v0

    #@6
    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    #@8
    goto :goto_0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public getLocationAsString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 256
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@3
    if-eqz v4, :cond_3

    #@5
    .line 257
    new-instance v2, Ljava/lang/StringBuffer;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@a
    .line 258
    .local v2, "sbuffer":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@c
    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 259
    .local v3, "systemID":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@12
    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@15
    move-result v1

    #@16
    .line 260
    .local v1, "line":I
    iget-object v4, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@18
    invoke-interface {v4}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@1b
    move-result v0

    #@1c
    .line 262
    .local v0, "column":I
    if-eqz v3, :cond_0

    #@1e
    .line 263
    const-string/jumbo v4, "; SystemID: "

    #@21
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 264
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@27
    .line 267
    :cond_0
    if-eqz v1, :cond_1

    #@29
    .line 268
    const-string/jumbo v4, "; Line#: "

    #@2c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 269
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@32
    .line 272
    :cond_1
    if-eqz v0, :cond_2

    #@34
    .line 273
    const-string/jumbo v4, "; Column#: "

    #@37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3a
    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@3d
    .line 277
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    return-object v4

    #@42
    .line 279
    .end local v0    # "column":I
    .end local v1    # "line":I
    .end local v2    # "sbuffer":Ljava/lang/StringBuffer;
    .end local v3    # "systemID":Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method public getLocator()Ljavax/xml/transform/SourceLocator;
    .locals 1

    #@0
    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@2
    return-object v0
.end method

.method public getMessageAndLocation()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 217
    new-instance v3, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 218
    .local v3, "sbuffer":Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 220
    .local v2, "message":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@b
    .line 221
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e
    .line 224
    :cond_0
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@10
    if-eqz v5, :cond_3

    #@12
    .line 225
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@14
    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 226
    .local v4, "systemID":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@1a
    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    #@1d
    move-result v1

    #@1e
    .line 227
    .local v1, "line":I
    iget-object v5, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@20
    invoke-interface {v5}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    #@23
    move-result v0

    #@24
    .line 229
    .local v0, "column":I
    if-eqz v4, :cond_1

    #@26
    .line 230
    const-string/jumbo v5, "; SystemID: "

    #@29
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2c
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 234
    :cond_1
    if-eqz v1, :cond_2

    #@31
    .line 235
    const-string/jumbo v5, "; Line#: "

    #@34
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@37
    .line 236
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@3a
    .line 239
    :cond_2
    if-eqz v0, :cond_3

    #@3c
    .line 240
    const-string/jumbo v5, "; Column#: "

    #@3f
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@42
    .line 241
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@45
    .line 245
    .end local v0    # "column":I
    .end local v1    # "line":I
    .end local v4    # "systemID":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    return-object v5
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    #@3
    if-nez v0, :cond_0

    #@5
    if-eqz p1, :cond_0

    #@7
    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "ER_CANNOT_OVERWRITE_CAUSE"

    #@c
    const/4 v2, 0x0

    #@d
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0

    #@18
    .line 120
    :cond_0
    if-ne p1, p0, :cond_1

    #@1a
    .line 121
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 122
    const-string/jumbo v1, "ER_SELF_CAUSATION_NOT_PERMITTED"

    #@1f
    const/4 v2, 0x0

    #@20
    invoke-static {v1, v2}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 125
    :cond_1
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 127
    return-object p0
.end method

.method public printStackTrace()V
    .locals 3

    #@0
    .prologue
    .line 289
    new-instance v0, Ljava/io/PrintWriter;

    #@2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@8
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    #@b
    .line 288
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 299
    new-instance v0, Ljava/io/PrintWriter;

    #@2
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    #@8
    .line 298
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 16
    .param p1, "s"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 310
    if-nez p1, :cond_0

    #@2
    .line 311
    new-instance p1, Ljava/io/PrintWriter;

    #@4
    .end local p1    # "s":Ljava/io/PrintWriter;
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6
    const/4 v12, 0x1

    #@7
    move-object/from16 v0, p1

    #@9
    invoke-direct {v0, v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@c
    .line 315
    .restart local p1    # "s":Ljava/io/PrintWriter;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    #@f
    move-result-object v7

    #@10
    .line 317
    .local v7, "locInfo":Ljava/lang/String;
    if-eqz v7, :cond_1

    #@12
    .line 318
    move-object/from16 v0, p1

    #@14
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 321
    :cond_1
    invoke-super/range {p0 .. p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    #@1a
    .line 324
    .end local v7    # "locInfo":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    #@1b
    .line 326
    .local v5, "isJdk14OrHigher":Z
    :try_start_1
    const-class v12, Ljava/lang/Throwable;

    #@1d
    const-string/jumbo v13, "getCause"

    #@20
    const/4 v11, 0x1

    #@21
    new-array v14, v11, [Ljava/lang/Class;

    #@23
    const/4 v11, 0x0

    #@24
    check-cast v11, Ljava/lang/Class;

    #@26
    const/4 v15, 0x0

    #@27
    aput-object v11, v14, v15

    #@29
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    #@2c
    .line 327
    const/4 v5, 0x1

    #@2d
    .line 335
    :goto_1
    if-nez v5, :cond_3

    #@2f
    .line 336
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xml/dtm/DTMException;->getException()Ljava/lang/Throwable;

    #@32
    move-result-object v2

    #@33
    .line 338
    .local v2, "exception":Ljava/lang/Throwable;
    const/4 v3, 0x0

    #@34
    .end local v2    # "exception":Ljava/lang/Throwable;
    .local v3, "i":I
    :goto_2
    const/16 v11, 0xa

    #@36
    if-ge v3, v11, :cond_3

    #@38
    if-eqz v2, :cond_3

    #@3a
    .line 339
    const-string/jumbo v11, "---------"

    #@3d
    move-object/from16 v0, p1

    #@3f
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@42
    .line 342
    :try_start_2
    instance-of v11, v2, Lorg/apache/xml/dtm/DTMException;

    #@44
    if-eqz v11, :cond_2

    #@46
    .line 344
    move-object v0, v2

    #@47
    check-cast v0, Lorg/apache/xml/dtm/DTMException;

    #@49
    move-object v11, v0

    #@4a
    invoke-virtual {v11}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    .line 347
    .restart local v7    # "locInfo":Ljava/lang/String;
    if-eqz v7, :cond_2

    #@50
    .line 348
    move-object/from16 v0, p1

    #@52
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@55
    .line 352
    .end local v7    # "locInfo":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    #@57
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@5a
    .line 359
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5d
    move-result-object v12

    #@5e
    const-string/jumbo v13, "getException"

    #@61
    const/4 v11, 0x1

    #@62
    new-array v14, v11, [Ljava/lang/Class;

    #@64
    .line 360
    const/4 v11, 0x0

    #@65
    check-cast v11, Ljava/lang/Class;

    #@67
    const/4 v15, 0x0

    #@68
    aput-object v11, v14, v15

    #@6a
    .line 359
    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@6d
    move-result-object v8

    #@6e
    .line 362
    .local v8, "meth":Ljava/lang/reflect/Method;
    if-eqz v8, :cond_4

    #@70
    .line 363
    move-object v10, v2

    #@71
    .line 365
    .local v10, "prev":Ljava/lang/Throwable;
    const/4 v11, 0x1

    #@72
    new-array v12, v11, [Ljava/lang/Object;

    #@74
    const/4 v11, 0x0

    #@75
    check-cast v11, Ljava/lang/Class;

    #@77
    const/4 v13, 0x0

    #@78
    aput-object v11, v12, v13

    #@7a
    invoke-virtual {v8, v2, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    move-result-object v2

    #@7e
    check-cast v2, Ljava/lang/Throwable;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    #@80
    .line 367
    .restart local v2    # "exception":Ljava/lang/Throwable;
    if-ne v10, v2, :cond_5

    #@82
    .line 308
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v8    # "meth":Ljava/lang/reflect/Method;
    .end local v10    # "prev":Ljava/lang/Throwable;
    :cond_3
    return-void

    #@83
    .line 353
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    #@84
    .line 354
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "Could not print stack trace..."

    #@87
    move-object/from16 v0, p1

    #@89
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8c
    goto :goto_3

    #@8d
    .line 371
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v8    # "meth":Ljava/lang/reflect/Method;
    :cond_4
    const/4 v2, 0x0

    #@8e
    .line 338
    .end local v8    # "meth":Ljava/lang/reflect/Method;
    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    #@90
    goto :goto_2

    #@91
    .line 377
    :catch_1
    move-exception v9

    #@92
    .line 378
    .local v9, "nsme":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    #@93
    .local v2, "exception":Ljava/lang/Throwable;
    goto :goto_4

    #@94
    .line 375
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v9    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    #@95
    .line 376
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    const/4 v2, 0x0

    #@96
    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_4

    #@97
    .line 373
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    #@98
    .line 374
    .local v6, "ite":Ljava/lang/reflect/InvocationTargetException;
    const/4 v2, 0x0

    #@99
    .restart local v2    # "exception":Ljava/lang/Throwable;
    goto :goto_4

    #@9a
    .line 328
    .end local v2    # "exception":Ljava/lang/Throwable;
    .end local v3    # "i":I
    .end local v6    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v9

    #@9b
    .restart local v9    # "nsme":Ljava/lang/NoSuchMethodException;
    goto :goto_1

    #@9c
    .line 322
    .end local v5    # "isJdk14OrHigher":Z
    .end local v9    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v1

    #@9d
    .restart local v1    # "e":Ljava/lang/Throwable;
    goto/16 :goto_0
.end method

.method public setLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 0
    .param p1, "location"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    #@2
    .line 60
    return-void
.end method
