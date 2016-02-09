.class public Ljava/sql/SQLWarning;
.super Ljava/sql/SQLException;
.source "SQLWarning.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x365d2d0aa3e484d8L


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "theReason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    #@3
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "theReason"    # Ljava/lang/String;
    .param p2, "theSQLState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "theReason"    # Ljava/lang/String;
    .param p2, "theSQLState"    # Ljava/lang/String;
    .param p3, "theErrorCode"    # I

    #@0
    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    .line 76
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
    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    #@3
    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 88
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 87
    return-void
.end method


# virtual methods
.method public getNextWarning()Ljava/sql/SQLWarning;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 133
    invoke-super {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    #@4
    move-result-object v0

    #@5
    .line 134
    .local v0, "next":Ljava/sql/SQLException;
    if-nez v0, :cond_0

    #@7
    .line 135
    return-object v1

    #@8
    .line 137
    :cond_0
    instance-of v1, v0, Ljava/sql/SQLWarning;

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 138
    check-cast v0, Ljava/sql/SQLWarning;

    #@e
    .end local v0    # "next":Ljava/sql/SQLException;
    return-object v0

    #@f
    .line 140
    .restart local v0    # "next":Ljava/sql/SQLException;
    :cond_1
    new-instance v1, Ljava/lang/Error;

    #@11
    const-string/jumbo v2, "SQLWarning chain holds value that is not a SQLWarning"

    #@14
    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@17
    throw v1
.end method

.method public setNextWarning(Ljava/sql/SQLWarning;)V
    .locals 0
    .param p1, "w"    # Ljava/sql/SQLWarning;

    #@0
    .prologue
    .line 150
    invoke-super {p0, p1}, Ljava/sql/SQLException;->setNextException(Ljava/sql/SQLException;)V

    #@3
    .line 149
    return-void
.end method
