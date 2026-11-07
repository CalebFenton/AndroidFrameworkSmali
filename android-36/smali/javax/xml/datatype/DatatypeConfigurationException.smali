.class public Ljavax/xml/datatype/DatatypeConfigurationException;
.super Ljava/lang/Exception;
.source "DatatypeConfigurationException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x179562e26ca3fb46L


# instance fields
.field private greylist-max-o causeOnJDK13OrBelow:Ljava/lang/Throwable;

.field private transient greylist-max-o isJDK14OrAbove:Z


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 53
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 64
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 76
    invoke-direct {p0, p2}, Ljavax/xml/datatype/DatatypeConfigurationException;->initCauseByReflection(Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 87
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    .line 88
    invoke-direct {p0, p1}, Ljavax/xml/datatype/DatatypeConfigurationException;->initCauseByReflection(Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method private greylist-max-o initCauseByReflection(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 142
    iput-object p1, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    .line 144
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initCause"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    .local v0, "m":Ljava/lang/reflect/Method;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iput-boolean v2, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    .end local v0    # "m":Ljava/lang/reflect/Method;
    goto :goto_1f

    .line 149
    :catch_1e
    move-exception v0

    :goto_1f
    nop

    .line 150
    return-void
.end method

.method private greylist-max-o printStackTrace0(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintWriter;

    .line 136
    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 137
    const-string v0, "------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 139
    return-void
.end method


# virtual methods
.method public whitelist test-api printStackTrace()V
    .registers 4

    .line 97
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    .line 98
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    goto :goto_17

    .line 101
    :cond_14
    invoke-super {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    :goto_17
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintStream;

    .line 112
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-eqz v0, :cond_11

    .line 113
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    goto :goto_14

    .line 116
    :cond_11
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 118
    :goto_14
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintWriter;

    .line 127
    iget-boolean v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->isJDK14OrAbove:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Ljavax/xml/datatype/DatatypeConfigurationException;->causeOnJDK13OrBelow:Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    .line 128
    invoke-direct {p0, p1}, Ljavax/xml/datatype/DatatypeConfigurationException;->printStackTrace0(Ljava/io/PrintWriter;)V

    goto :goto_f

    .line 131
    :cond_c
    invoke-super {p0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 133
    :goto_f
    return-void
.end method
