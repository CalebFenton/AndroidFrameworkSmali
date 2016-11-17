.class public Lcom/android/org/bouncycastle/util/io/StreamOverflowException;
.super Ljava/io/IOException;
.source "StreamOverflowException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 11
    return-void
.end method
