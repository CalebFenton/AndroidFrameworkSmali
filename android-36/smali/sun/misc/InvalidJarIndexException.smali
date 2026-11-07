.class public Lsun/misc/InvalidJarIndexException;
.super Ljava/lang/RuntimeException;
.source "InvalidJarIndexException.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x557bff348f781914L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method
