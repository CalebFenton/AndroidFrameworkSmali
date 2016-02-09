.class public Lorg/xmlpull/v1/XmlPullParserException;
.super Ljava/lang/Exception;
.source "XmlPullParserException.java"


# instance fields
.field protected column:I

.field protected detail:Ljava/lang/Throwable;

.field protected row:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@4
    .line 13
    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    #@6
    .line 14
    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    #@8
    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "chain"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    if-nez p1, :cond_1

    #@8
    const-string/jumbo v0, ""

    #@b
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    .line 38
    if-nez p2, :cond_2

    #@11
    const-string/jumbo v0, ""

    #@14
    .line 37
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 39
    if-nez p3, :cond_3

    #@1a
    const-string/jumbo v0, ""

    #@1d
    .line 37
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@28
    .line 13
    iput v3, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    #@2a
    .line 14
    iput v3, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    #@2c
    .line 41
    if-eqz p2, :cond_0

    #@2e
    .line 42
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@31
    move-result v0

    #@32
    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    #@34
    .line 43
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    #@37
    move-result v0

    #@38
    iput v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    #@3a
    .line 45
    :cond_0
    iput-object p3, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    #@3c
    .line 36
    return-void

    #@3d
    .line 37
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    const-string/jumbo v2, " "

    #@49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    goto :goto_0

    #@52
    .line 38
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v2, "(position:"

    #@5a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    const-string/jumbo v2, ") "

    #@69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    goto :goto_1

    #@72
    .line 39
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v2, "caused by: "

    #@7a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v0

    #@86
    goto :goto_2
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    #@2
    return v0
.end method

.method public getDetail()Ljava/lang/Throwable;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    #@2
    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 50
    iget v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    #@2
    return v0
.end method

.method public printStackTrace()V
    .locals 4

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 66
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@7
    .line 64
    :goto_0
    return-void

    #@8
    .line 68
    :cond_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    monitor-enter v1

    #@b
    .line 69
    :try_start_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, "; nested exception is:"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 70
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    #@2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit v1

    #@2e
    goto :goto_0

    #@2f
    .line 68
    :catchall_0
    move-exception v0

    #@30
    monitor-exit v1

    #@31
    throw v0
.end method
