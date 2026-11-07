.class public Ljava/lang/NullPointerException;
.super Ljava/lang/RuntimeException;
.source "NullPointerException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x47a5a18eff31e1b8L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 60
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method
