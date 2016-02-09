.class public Landroid/nfc/TagLostException;
.super Ljava/io/IOException;
.source "TagLostException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    #@3
    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 27
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3
    .line 26
    return-void
.end method
