.class public Ljavax/sql/StatementEvent;
.super Ljava/util/EventObject;
.source "StatementEvent.java"


# instance fields
.field private greylist-max-o exception:Ljava/sql/SQLException;

.field private greylist-max-o statement:Ljava/sql/PreparedStatement;


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;)V
    .registers 4
    .param p1, "con"    # Ljavax/sql/PooledConnection;
    .param p2, "statement"    # Ljava/sql/PreparedStatement;

    .line 64
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 66
    iput-object p2, p0, Ljavax/sql/StatementEvent;->statement:Ljava/sql/PreparedStatement;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/sql/StatementEvent;->exception:Ljava/sql/SQLException;

    .line 68
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;Ljava/sql/SQLException;)V
    .registers 4
    .param p1, "con"    # Ljavax/sql/PooledConnection;
    .param p2, "statement"    # Ljava/sql/PreparedStatement;
    .param p3, "exception"    # Ljava/sql/SQLException;

    .line 88
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 90
    iput-object p2, p0, Ljavax/sql/StatementEvent;->statement:Ljava/sql/PreparedStatement;

    .line 91
    iput-object p3, p0, Ljavax/sql/StatementEvent;->exception:Ljava/sql/SQLException;

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist test-api getSQLException()Ljava/sql/SQLException;
    .registers 2

    .line 115
    iget-object v0, p0, Ljavax/sql/StatementEvent;->exception:Ljava/sql/SQLException;

    return-object v0
.end method

.method public whitelist test-api getStatement()Ljava/sql/PreparedStatement;
    .registers 2

    .line 103
    iget-object v0, p0, Ljavax/sql/StatementEvent;->statement:Ljava/sql/PreparedStatement;

    return-object v0
.end method
