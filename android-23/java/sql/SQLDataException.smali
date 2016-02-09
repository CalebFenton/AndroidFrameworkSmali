.class public Ljava/sql/SQLDataException;
.super Ljava/sql/SQLNonTransientException;
.source "SQLDataException.java"


# static fields
.field private static final serialVersionUID:J = -0x5f9b15201d737b28L


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
    .line 75
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    .line 74
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
    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    #@3
    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1}, Ljava/sql/SQLNonTransientException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 87
    return-void
.end method
