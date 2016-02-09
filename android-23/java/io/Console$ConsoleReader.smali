.class Ljava/io/Console$ConsoleReader;
.super Ljava/io/BufferedReader;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsoleReader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    new-instance v0, Ljava/io/InputStreamReader;

    #@2
    const-string/jumbo v1, "file.encoding"

    #@5
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@c
    const/16 v1, 0x100

    #@e
    invoke-direct {p0, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    #@11
    .line 153
    invoke-static {}, Ljava/io/Console;->-get0()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljava/io/Console$ConsoleReader;->lock:Ljava/lang/Object;

    #@17
    .line 151
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 157
    return-void
.end method
