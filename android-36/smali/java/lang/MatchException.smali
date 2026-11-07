.class public final Ljava/lang/MatchException;
.super Ljava/lang/RuntimeException;
.source "MatchException.java"


# static fields
.field private static final whitelist serialVersionUID:J


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method
