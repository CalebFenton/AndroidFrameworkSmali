.class public final Ljava/io/Console;
.super Ljava/lang/Object;
.source "Console.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/Console$ConsoleReader;,
        Ljava/io/Console$ConsoleWriter;
    }
.end annotation


# static fields
.field private static final CONSOLE_LOCK:Ljava/lang/Object;

.field private static final console:Ljava/io/Console;


# instance fields
.field private final reader:Ljava/io/Console$ConsoleReader;

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    #@7
    .line 29
    invoke-static {}, Ljava/io/Console;->makeConsole()Ljava/io/Console;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Ljava/io/Console;->console:Ljava/io/Console;

    #@d
    .line 26
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    new-instance v0, Ljava/io/Console$ConsoleReader;

    #@5
    invoke-direct {v0, p1}, Ljava/io/Console$ConsoleReader;-><init>(Ljava/io/InputStream;)V

    #@8
    iput-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    #@a
    .line 56
    new-instance v0, Ljava/io/Console$ConsoleWriter;

    #@c
    invoke-direct {v0, p2}, Ljava/io/Console$ConsoleWriter;-><init>(Ljava/io/OutputStream;)V

    #@f
    iput-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    #@11
    .line 54
    return-void
.end method

.method public static getConsole()Ljava/io/Console;
    .locals 1

    #@0
    .prologue
    .line 39
    sget-object v0, Ljava/io/Console;->console:Ljava/io/Console;

    #@2
    return-object v0
.end method

.method private static makeConsole()Ljava/io/Console;
    .locals 4

    #@0
    .prologue
    .line 44
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    sget-object v2, Ljava/io/FileDescriptor;->in:Ljava/io/FileDescriptor;

    #@4
    invoke-interface {v1, v2}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@c
    sget-object v2, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    #@e
    invoke-interface {v1, v2}, Llibcore/io/Os;->isatty(Ljava/io/FileDescriptor;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 48
    :try_start_0
    new-instance v1, Ljava/io/Console;

    #@16
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    #@18
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a
    invoke-direct {v1, v2, v3}, Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    return-object v1

    #@1e
    .line 45
    :cond_0
    const/4 v1, 0x0

    #@1f
    return-object v1

    #@20
    .line 49
    :catch_0
    move-exception v0

    #@21
    .line 50
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    #@23
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@26
    throw v1
.end method


# virtual methods
.method public flush()V
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@5
    .line 59
    return-void
.end method

.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 75
    new-instance v0, Ljava/util/Formatter;

    #@2
    iget-object v1, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    #@4
    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    #@7
    .line 76
    .local v0, "f":Ljava/util/Formatter;
    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@a
    .line 77
    invoke-virtual {v0}, Ljava/util/Formatter;->flush()V

    #@d
    .line 78
    return-object p0
.end method

.method public varargs printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 102
    :try_start_0
    iget-object v1, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    #@2
    invoke-virtual {v1}, Ljava/io/Console$ConsoleReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 103
    :catch_0
    move-exception v0

    #@8
    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    #@a
    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v1
.end method

.method public varargs readLine(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 123
    sget-object v1, Ljava/io/Console;->CONSOLE_LOCK:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 124
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/Console;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    #@6
    .line 125
    invoke-virtual {p0}, Ljava/io/Console;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v0

    #@a
    monitor-exit v1

    #@b
    return-object v0

    #@c
    .line 123
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public readPassword()[C
    .locals 1

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public varargs readPassword(Ljava/lang/String;[Ljava/lang/Object;)[C
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public reader()Ljava/io/Reader;
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Ljava/io/Console;->reader:Ljava/io/Console$ConsoleReader;

    #@2
    return-object v0
.end method

.method public writer()Ljava/io/PrintWriter;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Ljava/io/Console;->writer:Ljava/io/PrintWriter;

    #@2
    return-object v0
.end method
