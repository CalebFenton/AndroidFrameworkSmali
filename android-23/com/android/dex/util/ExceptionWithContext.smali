.class public Lcom/android/dex/util/ExceptionWithContext;
.super Ljava/lang/RuntimeException;
.source "ExceptionWithContext.java"


# instance fields
.field private context:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 77
    if-eqz p1, :cond_0

    #@3
    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6
    .line 81
    instance-of v1, p2, Lcom/android/dex/util/ExceptionWithContext;

    #@8
    if-eqz v1, :cond_2

    #@a
    .line 82
    check-cast p2, Lcom/android/dex/util/ExceptionWithContext;

    #@c
    .end local p2    # "cause":Ljava/lang/Throwable;
    iget-object v1, p2, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    .line 83
    .local v0, "ctx":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    #@14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@17
    move-result v2

    #@18
    add-int/lit16 v2, v2, 0xc8

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@1d
    iput-object v1, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@1f
    .line 84
    iget-object v1, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@24
    .line 76
    .end local v0    # "ctx":Ljava/lang/String;
    :goto_1
    return-void

    #@25
    .line 78
    .restart local p1    # "message":Ljava/lang/String;
    .restart local p2    # "cause":Ljava/lang/Throwable;
    :cond_0
    if-eqz p2, :cond_1

    #@27
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    goto :goto_0

    #@2c
    :cond_1
    move-object p1, v1

    #@2d
    goto :goto_0

    #@2e
    .line 86
    .end local p1    # "message":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    #@30
    const/16 v2, 0xc8

    #@32
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    #@35
    iput-object v1, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@37
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lcom/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4
    .line 66
    return-void
.end method

.method public static withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dex/util/ExceptionWithContext;
    .locals 2
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 42
    instance-of v1, p0, Lcom/android/dex/util/ExceptionWithContext;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p0

    #@5
    .line 43
    check-cast v0, Lcom/android/dex/util/ExceptionWithContext;

    #@7
    .line 48
    .local v0, "ewc":Lcom/android/dex/util/ExceptionWithContext;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    #@a
    .line 49
    return-object v0

    #@b
    .line 45
    .end local v0    # "ewc":Lcom/android/dex/util/ExceptionWithContext;
    :cond_0
    new-instance v0, Lcom/android/dex/util/ExceptionWithContext;

    #@d
    invoke-direct {v0, p0}, Lcom/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/Throwable;)V

    #@10
    .restart local v0    # "ewc":Lcom/android/dex/util/ExceptionWithContext;
    goto :goto_0
.end method


# virtual methods
.method public addContext(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    if-nez p1, :cond_0

    #@2
    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "str == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 115
    const-string/jumbo v0, "\n"

    #@13
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_1

    #@19
    .line 116
    iget-object v0, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@1b
    const/16 v1, 0xa

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@20
    .line 109
    :cond_1
    return-void
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public printContext(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/dex/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7
    .line 136
    iget-object v0, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    #@c
    .line 134
    return-void
.end method

.method public printContext(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/dex/util/ExceptionWithContext;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    .line 146
    iget-object v0, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@9
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@c
    .line 144
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 93
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    #@3
    .line 94
    iget-object v0, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@5
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    #@8
    .line 92
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 100
    invoke-super {p0, p1}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    #@3
    .line 101
    iget-object v0, p0, Lcom/android/dex/util/ExceptionWithContext;->context:Ljava/lang/StringBuffer;

    #@5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@8
    .line 99
    return-void
.end method
