.class public Ljava/lang/reflect/MalformedParametersException;
.super Ljava/lang/RuntimeException;
.source "MalformedParametersException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1332c67L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method
