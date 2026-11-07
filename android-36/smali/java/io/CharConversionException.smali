.class public Ljava/io/CharConversionException;
.super Ljava/io/IOException;
.source "CharConversionException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x78759ce22aa3ec97L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 43
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
