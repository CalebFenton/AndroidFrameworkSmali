.class public Ljava/io/IOError;
.super Ljava/lang/Error;
.source "IOError.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0xee63f0410b0d9dL


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method
