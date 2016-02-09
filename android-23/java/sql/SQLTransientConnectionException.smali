.class public Ljava/sql/SQLTransientConnectionException;
.super Ljava/sql/SQLTransientException;
.source "SQLTransientConnectionException.java"


# static fields
.field private static final serialVersionUID:J = -0x22f9641fa3ae87e0L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/sql/SQLTransientException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 41
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@4
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    #@3
    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 84
    return-void
.end method
