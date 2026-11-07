.class public Ljava/sql/SQLTimeoutException;
.super Ljava/sql/SQLTransientException;
.source "SQLTimeoutException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x3e45a281704380c6L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/sql/SQLTransientException;-><init>()V

    .line 50
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0, p1}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 168
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 150
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 118
    invoke-direct {p0, p1}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method
