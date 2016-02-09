.class public Ljava/sql/SQLFeatureNotSupportedException;
.super Ljava/sql/SQLNonTransientException;
.source "SQLFeatureNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = -0xe3ee632a5412913L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/sql/SQLNonTransientException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@4
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    .line 75
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
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    #@3
    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 89
    invoke-direct {p0, p1}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 88
    return-void
.end method
