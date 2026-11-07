.class public Lorg/xmlpull/v1/XmlPullParserException;
.super Ljava/lang/Exception;
.source "XmlPullParserException.java"


# instance fields
.field protected whitelist test-api column:I

.field protected whitelist test-api detail:Ljava/lang/Throwable;

.field protected whitelist test-api row:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 14
    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    .line 21
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "chain"    # Ljava/lang/Throwable;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_b

    move-object v2, v1

    goto :goto_1e

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    if-nez p2, :cond_26

    move-object v2, v1

    goto :goto_43

    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    if-nez p3, :cond_4a

    goto :goto_5d

    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caused by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 14
    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    .line 41
    if-eqz p2, :cond_7b

    .line 42
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 43
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    .line 45
    :cond_7b
    iput-object p3, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    .line 46
    return-void
.end method


# virtual methods
.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 51
    iget v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    return v0
.end method

.method public whitelist test-api getDetail()Ljava/lang/Throwable;
    .registers 2

    .line 48
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    return-object v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 50
    iget v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    return v0
.end method

.method public whitelist test-api printStackTrace()V
    .registers 5

    .line 65
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    if-nez v0, :cond_8

    .line 66
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 68
    :cond_8
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    monitor-enter v0

    .line 69
    :try_start_b
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; nested exception is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    monitor-exit v0

    .line 73
    :goto_2d
    return-void

    .line 71
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw v1
.end method
