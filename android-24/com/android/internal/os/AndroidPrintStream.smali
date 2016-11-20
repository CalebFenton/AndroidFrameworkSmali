.class Lcom/android/internal/os/AndroidPrintStream;
.super Lcom/android/internal/os/LoggingPrintStream;
.source "AndroidPrintStream.java"


# instance fields
.field private final priority:I

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/os/LoggingPrintStream;-><init>()V

    #@3
    .line 38
    if-nez p2, :cond_0

    #@5
    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "tag"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 42
    :cond_0
    iput p1, p0, Lcom/android/internal/os/AndroidPrintStream;->priority:I

    #@10
    .line 43
    iput-object p2, p0, Lcom/android/internal/os/AndroidPrintStream;->tag:Ljava/lang/String;

    #@12
    .line 37
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/os/AndroidPrintStream;->priority:I

    #@2
    iget-object v1, p0, Lcom/android/internal/os/AndroidPrintStream;->tag:Ljava/lang/String;

    #@4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    #@7
    .line 46
    return-void
.end method
