.class public Ljava/io/EOFException;
.super Ljava/io/IOException;
.source "EOFException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x5949a7f76b53ec41L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 51
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method
