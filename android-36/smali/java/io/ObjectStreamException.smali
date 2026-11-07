.class public abstract Ljava/io/ObjectStreamException;
.super Ljava/io/IOException;
.source "ObjectStreamException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x64c3e46b8d39fbdfL


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 52
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
