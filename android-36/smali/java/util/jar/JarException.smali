.class public Ljava/util/jar/JarException;
.super Ljava/util/zip/ZipException;
.source "JarException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x635ca48583f88729L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/util/zip/ZipException;-><init>()V

    .line 43
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
