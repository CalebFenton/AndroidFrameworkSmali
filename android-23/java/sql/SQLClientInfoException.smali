.class public Ljava/sql/SQLClientInfoException;
.super Ljava/sql/SQLException;
.source "SQLClientInfoException.java"


# static fields
.field private static final serialVersionUID:J = -0x3bf2512f724c8008L


# instance fields
.field private final failedProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    #@3
    .line 37
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@6
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 130
    .local p4, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@3
    .line 131
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@a
    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p5, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 157
    .local p4, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    #@3
    .line 158
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@a
    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 176
    .local p3, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 177
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@a
    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 199
    .local p3, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1, p2, p4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 200
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@a
    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p2, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    #@3
    .line 87
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@a
    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 107
    .local p2, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p1, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 108
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@a
    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 50
    .local p1, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@a
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 69
    .local p1, "failedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/sql/ClientInfoStatus;>;"
    invoke-direct {p0, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 70
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@8
    iput-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@a
    .line 68
    return-void
.end method


# virtual methods
.method public getFailedProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/sql/ClientInfoStatus;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Ljava/sql/SQLClientInfoException;->failedProperties:Ljava/util/Map;

    #@2
    return-object v0
.end method
