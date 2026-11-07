.class public Ljava/lang/reflect/MalformedParameterizedTypeException;
.super Ljava/lang/RuntimeException;
.source "MalformedParameterizedTypeException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x4f0e3d20872a9da4L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
