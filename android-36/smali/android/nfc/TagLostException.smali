.class public Landroid/nfc/TagLostException;
.super Ljava/io/IOException;
.source "TagLostException.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 24
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
