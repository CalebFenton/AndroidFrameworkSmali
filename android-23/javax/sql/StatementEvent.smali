.class public Ljavax/sql/StatementEvent;
.super Ljava/util/EventObject;
.source "StatementEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x7043f072dddb28bbL


# instance fields
.field private exception:Ljava/sql/SQLException;

.field private statement:Ljava/sql/PreparedStatement;


# direct methods
.method public constructor <init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;)V
    .locals 1
    .param p1, "con"    # Ljavax/sql/PooledConnection;
    .param p2, "statement"    # Ljava/sql/PreparedStatement;

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljavax/sql/StatementEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;Ljava/sql/SQLException;)V

    #@4
    .line 62
    return-void
.end method

.method public constructor <init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;Ljava/sql/SQLException;)V
    .locals 0
    .param p1, "con"    # Ljavax/sql/PooledConnection;
    .param p2, "statement"    # Ljava/sql/PreparedStatement;
    .param p3, "exception"    # Ljava/sql/SQLException;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    #@3
    .line 50
    iput-object p2, p0, Ljavax/sql/StatementEvent;->statement:Ljava/sql/PreparedStatement;

    #@5
    .line 51
    iput-object p3, p0, Ljavax/sql/StatementEvent;->exception:Ljava/sql/SQLException;

    #@7
    .line 48
    return-void
.end method


# virtual methods
.method public getSQLException()Ljava/sql/SQLException;
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Ljavax/sql/StatementEvent;->exception:Ljava/sql/SQLException;

    #@2
    return-object v0
.end method

.method public getStatement()Ljava/sql/PreparedStatement;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Ljavax/sql/StatementEvent;->statement:Ljava/sql/PreparedStatement;

    #@2
    return-object v0
.end method
