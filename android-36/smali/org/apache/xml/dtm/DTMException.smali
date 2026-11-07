.class public Lorg/apache/xml/dtm/DTMException;
.super Ljava/lang/RuntimeException;
.source "DTMException.java"


# static fields
.field static final whitelist serialVersionUID:J = -0xac366a4e17910ceL


# instance fields
.field greylist containedException:Ljava/lang/Throwable;

.field greylist locator:Ljavax/xml/transform/SourceLocator;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 140
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p1, :cond_8

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 169
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 168
    :cond_c
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V
    .registers 3

    .line 188
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 191
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Ljava/lang/Throwable;)V
    .registers 4

    .line 205
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 207
    iput-object p3, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    .line 208
    iput-object p2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    const/4 p1, 0x0

    .line 153
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method


# virtual methods
.method public whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public greylist getException()Ljava/lang/Throwable;
    .registers 1

    .line 75
    iget-object p0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    return-object p0
.end method

.method public greylist getLocationAsString()Ljava/lang/String;
    .registers 5

    .line 256
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v0, :cond_3e

    .line 257
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    iget-object v1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v2

    .line 260
    iget-object p0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    if-eqz v1, :cond_25

    .line 263
    const-string v3, "; SystemID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_25
    if-eqz v2, :cond_2f

    .line 268
    const-string v1, "; Line#: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2f
    if-eqz p0, :cond_39

    .line 273
    const-string v1, "; Column#: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 277
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getLocator()Ljavax/xml/transform/SourceLocator;
    .registers 1

    .line 51
    iget-object p0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-object p0
.end method

.method public greylist getMessageAndLocation()Ljava/lang/String;
    .registers 5

    .line 217
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 218
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    :cond_e
    iget-object v1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    if-eqz v1, :cond_40

    .line 225
    invoke-interface {v1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {v2}, Ljavax/xml/transform/SourceLocator;->getLineNumber()I

    move-result v2

    .line 227
    iget-object p0, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    invoke-interface {p0}, Ljavax/xml/transform/SourceLocator;->getColumnNumber()I

    move-result p0

    if-eqz v1, :cond_2c

    .line 230
    const-string v3, "; SystemID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2c
    if-eqz v2, :cond_36

    .line 235
    const-string v1, "; Line#: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_36
    if-eqz p0, :cond_40

    .line 240
    const-string v1, "; Column#: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 245
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized whitelist test-api initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4

    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    if-nez p1, :cond_9

    goto :goto_17

    .line 117
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ER_CANNOT_OVERWRITE_CAUSE"

    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_15
    move-exception p1

    goto :goto_29

    :cond_17
    :goto_17
    if-eq p1, p0, :cond_1d

    .line 125
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->containedException:Ljava/lang/Throwable;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_15

    .line 127
    monitor-exit p0

    return-object p0

    .line 121
    :cond_1d
    :try_start_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_SELF_CAUSATION_NOT_PERMITTED"

    .line 122
    invoke-static {v0, v1}, Lorg/apache/xml/res/XMLMessages;->createXMLMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_15

    throw p1
.end method

.method public whitelist test-api printStackTrace()V
    .registers 4

    .line 289
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintStream;)V
    .registers 3

    .line 299
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/apache/xml/dtm/DTMException;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintWriter;)V
    .registers 9

    const/4 v0, 0x1

    if-nez p1, :cond_a

    .line 311
    new-instance p1, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p1, v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 315
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 318
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_13
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_16

    :catchall_16
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 326
    :try_start_18
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "getCause"

    new-array v5, v0, [Ljava/lang/Class;

    aput-object v2, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_23} :catch_24

    goto :goto_71

    .line 336
    :catch_24
    invoke-virtual {p0}, Lorg/apache/xml/dtm/DTMException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    move v3, v1

    :goto_29
    const/16 v4, 0xa

    if-ge v3, v4, :cond_71

    if-eqz p0, :cond_71

    .line 339
    const-string v4, "---------"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :try_start_34
    instance-of v4, p0, Lorg/apache/xml/dtm/DTMException;

    if-eqz v4, :cond_44

    .line 343
    move-object v4, p0

    check-cast v4, Lorg/apache/xml/dtm/DTMException;

    .line 345
    invoke-virtual {v4}, Lorg/apache/xml/dtm/DTMException;->getLocationAsString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 348
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    :cond_44
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_48

    goto :goto_4d

    .line 354
    :catchall_48
    const-string v4, "Could not print stack trace..."

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    :goto_4d
    :try_start_4d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getException"

    new-array v6, v0, [Ljava/lang/Class;

    aput-object v2, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_6a

    .line 365
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;
    :try_end_67
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4d .. :try_end_67} :catch_6d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4d .. :try_end_67} :catch_6d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4d .. :try_end_67} :catch_6d

    if-ne p0, v4, :cond_6b

    goto :goto_71

    :cond_6a
    move-object v4, v2

    :cond_6b
    move-object p0, v4

    goto :goto_6e

    :catch_6d
    move-object p0, v2

    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_71
    :goto_71
    return-void
.end method

.method public greylist setLocator(Ljavax/xml/transform/SourceLocator;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lorg/apache/xml/dtm/DTMException;->locator:Ljavax/xml/transform/SourceLocator;

    return-void
.end method
