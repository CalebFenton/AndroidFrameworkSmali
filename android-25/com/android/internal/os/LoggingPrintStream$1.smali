.class final Lcom/android/internal/os/LoggingPrintStream$1;
.super Ljava/io/OutputStream;
.source "LoggingPrintStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/LoggingPrintStream;-><init>()V
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
    .line 62
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    new-instance v0, Ljava/lang/AssertionError;

    #@2
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@5
    throw v0
.end method
