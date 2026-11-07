.class public Ljava/io/UTFDataFormatException;
.super Ljava/io/IOException;
.source "UTFDataFormatException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x5d6c7f018d30324L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 55
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    return-void
.end method
