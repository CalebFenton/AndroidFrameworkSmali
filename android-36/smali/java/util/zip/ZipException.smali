.class public Ljava/util/zip/ZipException;
.super Ljava/io/IOException;
.source "ZipException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x6f0668a23bc0d4cfL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 47
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
