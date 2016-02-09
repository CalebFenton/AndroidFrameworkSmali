.class public Ljavax/xml/datatype/DatatypeConfigurationException;
.super Ljava/lang/Exception;
.source "DatatypeConfigurationException.java"


# static fields
.field private static final serialVersionUID:J = -0x179562e26ca3fb46L


# instance fields
.field private causeOnJDK13OrBelow:Ljava/lang/Throwable;

.field private transient isJDK14OrAbove:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    #@6
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    #@6
    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    #@6
    .line 76
    invoke-direct {p0, p2}, Ljavax/xml/datatype/DatatypeConfigurationException;->initCauseByReflection(Ljava/lang/Throwable;)V

    #@9
    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 87
    if-nez p1, :cond_0

    #@3
    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@6
    .line 45
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    #@9
    .line 88
    invoke-direct {p0, p1}, Ljavax/xml/datatype/DatatypeConfigurationException;->initCauseByReflection(Ljava/lang/Throwable;)V

    #@c
    .line 86
    return-void

    #@d
    .line 87
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method

.method private initCauseByReflection(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    #@2
    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/datatype/DatatypeConfigurationException;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v2

    #@6
    const-string/jumbo v3, "initCause"

    #@9
    const/4 v4, 0x1

    #@a
    new-array v4, v4, [Ljava/lang/Class;

    #@c
    const-class v5, Ljava/lang/Throwable;

    #@e
    const/4 v6, 0x0

    #@f
    aput-object v5, v4, v6

    #@11
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14
    move-result-object v1

    #@15
    .line 145
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    #@16
    new-array v2, v2, [Ljava/lang/Object;

    #@18
    const/4 v3, 0x0

    #@19
    aput-object p1, v2, v3

    #@1b
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 146
    const/4 v2, 0x1

    #@1f
    iput-boolean v2, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    .line 141
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    #@22
    .line 149
    :catch_0
    move-exception v0

    #@23
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private printStackTrace0(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@5
    .line 137
    const-string/jumbo v0, "------------------------------------------"

    #@8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@b
    .line 138
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    #@e
    .line 135
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 156
    :try_start_0
    invoke-virtual {p0}, Ljavax/xml/datatype/DatatypeConfigurationException;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v4

    #@7
    const-string/jumbo v5, "getCause"

    #@a
    const/4 v6, 0x0

    #@b
    new-array v6, v6, [Ljava/lang/Class;

    #@d
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@10
    move-result-object v2

    #@11
    .line 157
    .local v2, "m1":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    #@12
    new-array v4, v4, [Ljava/lang/Object;

    #@14
    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/lang/Throwable;

    #@1a
    .line 158
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v4, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 159
    iput-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    #@20
    .line 165
    :cond_0
    :goto_0
    const/4 v4, 0x1

    #@21
    iput-boolean v4, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    #@23
    .line 153
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "m1":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    #@24
    .line 161
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "m1":Ljava/lang/reflect/Method;
    :cond_1
    if-nez v0, :cond_0

    #@26
    .line 162
    invoke-virtual {p0}, Ljavax/xml/datatype/DatatypeConfigurationException;->getClass()Ljava/lang/Class;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v5, "initCause"

    #@2d
    const/4 v6, 0x1

    #@2e
    new-array v6, v6, [Ljava/lang/Class;

    #@30
    const-class v7, Ljava/lang/Throwable;

    #@32
    const/4 v8, 0x0

    #@33
    aput-object v7, v6, v8

    #@35
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@38
    move-result-object v3

    #@39
    .line 163
    .local v3, "m2":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    #@3a
    new-array v4, v4, [Ljava/lang/Object;

    #@3c
    iget-object v5, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    #@3e
    const/4 v6, 0x0

    #@3f
    aput-object v5, v4, v6

    #@41
    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    goto :goto_0

    #@45
    .line 168
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v2    # "m1":Ljava/lang/reflect/Method;
    .end local v3    # "m2":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    #@46
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public printStackTrace()V
    .locals 3

    #@0
    .prologue
    .line 97
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 98
    new-instance v0, Ljava/io/PrintWriter;

    #@a
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@10
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    #@13
    .line 96
    :goto_0
    return-void

    #@14
    .line 101
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    #@17
    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 112
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 113
    new-instance v0, Ljava/io/PrintWriter;

    #@a
    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    #@d
    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    #@10
    .line 111
    :goto_0
    return-void

    #@11
    .line 116
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    #@14
    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "s"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 127
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 128
    invoke-direct {p0, p1}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    #@b
    .line 126
    :goto_0
    return-void

    #@c
    .line 131
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    #@f
    goto :goto_0
.end method
