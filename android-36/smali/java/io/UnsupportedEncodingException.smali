.class public Ljava/io/UnsupportedEncodingException;
.super Ljava/io/IOException;
.source "UnsupportedEncodingException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x3b5147a5b199d75eL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 44
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
