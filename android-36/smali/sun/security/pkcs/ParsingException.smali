.class public Lsun/security/pkcs/ParsingException;
.super Ljava/io/IOException;
.source "ParsingException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x57a8f6dfeae5affbL


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 43
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method
