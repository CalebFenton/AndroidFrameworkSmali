.class public Ljava/util/zip/DataFormatException;
.super Ljava/lang/Exception;
.source "DataFormatException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1ecdb85601655eecL


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 43
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method
