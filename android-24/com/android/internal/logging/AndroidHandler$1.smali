.class final Lcom/android/internal/logging/AndroidHandler$1;
.super Ljava/util/logging/Formatter;
.source "AndroidHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/logging/AndroidHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 5
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    #@0
    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    #@3
    move-result-object v2

    #@4
    .line 93
    .local v2, "thrown":Ljava/lang/Throwable;
    if-eqz v2, :cond_0

    #@6
    .line 94
    new-instance v1, Ljava/io/StringWriter;

    #@8
    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    #@b
    .line 95
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    #@d
    const/4 v3, 0x0

    #@e
    const/16 v4, 0x100

    #@10
    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    #@13
    .line 96
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    #@1a
    .line 97
    const-string/jumbo v3, "\n"

    #@1d
    invoke-virtual {v1, v3}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    #@20
    .line 98
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@23
    .line 99
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    #@26
    .line 100
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    return-object v3

    #@2b
    .line 102
    .end local v0    # "pw":Ljava/io/PrintWriter;
    .end local v1    # "sw":Ljava/io/StringWriter;
    :cond_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    return-object v3
.end method
