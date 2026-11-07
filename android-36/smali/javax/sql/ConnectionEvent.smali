.class public Ljavax/sql/ConnectionEvent;
.super Ljava/util/EventObject;
.source "ConnectionEvent.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x433690c9b56a83b2L


# instance fields
.field private greylist-max-o ex:Ljava/sql/SQLException;


# direct methods
.method public constructor whitelist test-api <init>(Ljavax/sql/PooledConnection;)V
    .registers 3
    .param p1, "con"    # Ljavax/sql/PooledConnection;

    .line 56
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/sql/ConnectionEvent;->ex:Ljava/sql/SQLException;

    .line 57
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljavax/sql/PooledConnection;Ljava/sql/SQLException;)V
    .registers 4
    .param p1, "con"    # Ljavax/sql/PooledConnection;
    .param p2, "ex"    # Ljava/sql/SQLException;

    .line 69
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/sql/ConnectionEvent;->ex:Ljava/sql/SQLException;

    .line 70
    iput-object p2, p0, Ljavax/sql/ConnectionEvent;->ex:Ljava/sql/SQLException;

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist test-api getSQLException()Ljava/sql/SQLException;
    .registers 2

    .line 79
    iget-object v0, p0, Ljavax/sql/ConnectionEvent;->ex:Ljava/sql/SQLException;

    return-object v0
.end method
