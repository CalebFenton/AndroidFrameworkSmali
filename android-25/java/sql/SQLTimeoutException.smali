.class public Ljava/sql/SQLTimeoutException;
.super Ljava/sql/SQLTransientException;
.source "SQLTimeoutException.java"


# static fields
.field private static final serialVersionUID:J = -0x3e45a281704380c6L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/sql/SQLTransientException;-><init>()V

    #@3
    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;)V

    #@3
    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    #@0
    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    #@3
    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 118
    invoke-direct {p0, p1}, Ljava/sql/SQLTransientException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 117
    return-void
.end method
