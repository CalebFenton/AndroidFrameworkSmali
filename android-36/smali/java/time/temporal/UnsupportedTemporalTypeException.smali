.class public Ljava/time/temporal/UnsupportedTemporalTypeException;
.super Ljava/time/DateTimeException;
.source "UnsupportedTemporalTypeException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x5578cd7fadb7ecb6L


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method
