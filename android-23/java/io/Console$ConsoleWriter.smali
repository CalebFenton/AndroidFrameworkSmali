.class Ljava/io/Console$ConsoleWriter;
.super Ljava/io/PrintWriter;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsoleWriter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 164
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    #@4
    .line 165
    invoke-static {}, Ljava/io/Console;->-get0()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/io/Console$ConsoleWriter;->lock:Ljava/lang/Object;

    #@a
    .line 163
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 171
    invoke-virtual {p0}, Ljava/io/Console$ConsoleWriter;->flush()V

    #@3
    .line 169
    return-void
.end method
