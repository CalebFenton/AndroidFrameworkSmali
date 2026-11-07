.class public Ljava/util/TooManyListenersException;
.super Ljava/lang/Exception;
.source "TooManyListenersException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x466cbeb059da0357L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 61
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method
