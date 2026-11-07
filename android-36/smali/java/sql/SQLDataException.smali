.class public Ljava/sql/SQLDataException;
.super Ljava/sql/SQLNonTransientException;
.source "SQLDataException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x5f9b15201d737b28L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/sql/SQLNonTransientException;-><init>()V

    .line 54
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .line 106
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 153
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 123
    invoke-direct {p0, p1}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method
