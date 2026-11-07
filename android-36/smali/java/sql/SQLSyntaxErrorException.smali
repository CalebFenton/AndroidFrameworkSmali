.class public Ljava/sql/SQLSyntaxErrorException;
.super Ljava/sql/SQLNonTransientException;
.source "SQLSyntaxErrorException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x19969bfd7ccad6f5L


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/sql/SQLNonTransientException;-><init>()V

    .line 52
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0, p1}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .line 103
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
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

    .line 152
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 136
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 120
    invoke-direct {p0, p1}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    return-void
.end method
