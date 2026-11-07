.class public Ljava/sql/SQLException;
.super Ljava/lang/Exception;
.source "SQLException.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Ljava/sql/SQLException;",
            "Ljava/sql/SQLException;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x1da1e930db3e75dcL


# instance fields
.field private greylist-max-o SQLState:Ljava/lang/String;

.field private volatile greylist-max-o next:Ljava/sql/SQLException;

.field private greylist-max-o vendorCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 371
    nop

    .line 372
    const-class v0, Ljava/sql/SQLException;

    const-string v1, "next"

    invoke-static {v0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljava/sql/SQLException;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 371
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 143
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_1a

    .line 144
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 145
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 148
    :cond_1a
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 119
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 122
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_1a

    .line 123
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 124
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 127
    :cond_1a
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 97
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 99
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_35

    .line 100
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 101
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLException: SQLState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 105
    :cond_35
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 72
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 73
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_3e

    .line 74
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") vendor code("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 80
    :cond_3e
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 236
    invoke-direct {p0, p1, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 239
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 240
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_40

    .line 241
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") vendor code("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 247
    :cond_40
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 210
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    .line 214
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_37

    .line 215
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 216
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    .line 220
    :cond_37
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_14

    .line 190
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 191
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 194
    :cond_14
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 165
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 167
    instance-of v0, p0, Ljava/sql/SQLWarning;

    if-nez v0, :cond_14

    .line 168
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 169
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 172
    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist test-api getErrorCode()I
    .registers 2

    .line 265
    iget v0, p0, Ljava/sql/SQLException;->vendorCode:I

    return v0
.end method

.method public whitelist test-api getNextException()Ljava/sql/SQLException;
    .registers 2

    .line 277
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    return-object v0
.end method

.method public whitelist test-api getSQLState()Ljava/lang/String;
    .registers 2

    .line 255
    iget-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/sql/SQLException$1;

    invoke-direct {v0, p0}, Ljava/sql/SQLException$1;-><init>(Ljava/sql/SQLException;)V

    return-object v0
.end method

.method public whitelist test-api setNextException(Ljava/sql/SQLException;)V
    .registers 6
    .param p1, "ex"    # Ljava/sql/SQLException;

    .line 289
    move-object v0, p0

    .line 291
    .local v0, "current":Ljava/sql/SQLException;
    :goto_1
    iget-object v1, v0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 292
    .local v1, "next":Ljava/sql/SQLException;
    if-eqz v1, :cond_7

    .line 293
    move-object v0, v1

    .line 294
    goto :goto_1

    .line 297
    :cond_7
    sget-object v2, Ljava/sql/SQLException;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 298
    return-void

    .line 300
    :cond_11
    iget-object v0, v0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    .line 301
    .end local v1    # "next":Ljava/sql/SQLException;
    goto :goto_1
.end method
