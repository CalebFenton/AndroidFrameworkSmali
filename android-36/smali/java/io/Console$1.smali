.class Ljava/io/Console$1;
.super Ljava/io/PrintWriter;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/Console;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/io/Console;Ljava/io/Writer;Z)V
    .registers 4
    .param p1, "this$0"    # Ljava/io/Console;
    .param p2, "out"    # Ljava/io/Writer;
    .param p3, "autoFlush"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 642
    invoke-direct {p0, p2, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 642
    return-void
.end method
