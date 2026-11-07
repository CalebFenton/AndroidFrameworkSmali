.class public interface abstract Ljavax/sql/PooledConnection;
.super Ljava/lang/Object;
.source "PooledConnection.java"


# virtual methods
.method public abstract whitelist test-api addConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
.end method

.method public abstract whitelist test-api addStatementEventListener(Ljavax/sql/StatementEventListener;)V
.end method

.method public abstract whitelist test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getConnection()Ljava/sql/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api removeConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V
.end method

.method public abstract whitelist test-api removeStatementEventListener(Ljavax/sql/StatementEventListener;)V
.end method
