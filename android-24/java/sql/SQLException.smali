.class public Ljava/sql/SQLException;
.super Ljava/lang/Exception;
.source "SQLException.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Ljava/sql/SQLException;",
            "Ljava/sql/SQLException;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1da1e930db3e75dcL


# instance fields
.field private SQLState:Ljava/lang/String;

.field private volatile next:Ljava/sql/SQLException;

.field private vendorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 372
    const-class v0, Ljava/sql/SQLException;

    #@2
    const-class v1, Ljava/sql/SQLException;

    #@4
    const-string/jumbo v2, "next"

    #@7
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@a
    move-result-object v0

    #@b
    .line 371
    sput-object v0, Ljava/sql/SQLException;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@d
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 140
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    #@4
    .line 141
    iput-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    #@6
    .line 142
    const/4 v0, 0x0

    #@7
    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    #@9
    .line 143
    instance-of v0, p0, Ljava/sql/SQLWarning;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 144
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 145
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@1a
    .line 139
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 119
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@4
    .line 120
    iput-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    #@6
    .line 121
    const/4 v0, 0x0

    #@7
    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    #@9
    .line 122
    instance-of v0, p0, Ljava/sql/SQLWarning;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 123
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 124
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@1a
    .line 118
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;

    #@0
    .prologue
    .line 96
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 97
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    #@5
    .line 98
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    #@8
    .line 99
    instance-of v0, p0, Ljava/sql/SQLWarning;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 100
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 101
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@19
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "SQLException: SQLState("

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, ")"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@37
    .line 95
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "SQLState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3
    .line 71
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    #@5
    .line 72
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    #@7
    .line 73
    instance-of v0, p0, Ljava/sql/SQLWarning;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 74
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v1, "SQLState("

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 76
    const-string/jumbo v1, ") vendor code("

    #@24
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 76
    const-string/jumbo v1, ")"

    #@2f
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@3a
    .line 77
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@41
    .line 69
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "vendorCode"    # I
    .param p4, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 236
    invoke-direct {p0, p1, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 238
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    #@5
    .line 239
    iput p3, p0, Ljava/sql/SQLException;->vendorCode:I

    #@7
    .line 240
    instance-of v0, p0, Ljava/sql/SQLWarning;

    #@9
    if-nez v0, :cond_0

    #@b
    .line 241
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v1, "SQLState("

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 243
    const-string/jumbo v1, ") vendor code("

    #@26
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 243
    const-string/jumbo v1, ")"

    #@31
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@3c
    .line 244
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@43
    .line 235
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "sqlState"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 210
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 212
    iput-object p2, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    #@5
    .line 213
    const/4 v0, 0x0

    #@6
    iput v0, p0, Ljava/sql/SQLException;->vendorCode:I

    #@8
    .line 214
    instance-of v0, p0, Ljava/sql/SQLWarning;

    #@a
    if-nez v0, :cond_0

    #@c
    .line 215
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 216
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@19
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v1, "SQLState("

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget-object v1, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string/jumbo v1, ")"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-static {v0}, Ljava/sql/DriverManager;->println(Ljava/lang/String;)V

    #@39
    .line 209
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3
    .line 189
    instance-of v0, p0, Ljava/sql/SQLWarning;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 190
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 191
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@14
    .line 186
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 165
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 167
    instance-of v0, p0, Ljava/sql/SQLWarning;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 168
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 169
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    #@14
    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    #@0
    .prologue
    .line 265
    iget v0, p0, Ljava/sql/SQLException;->vendorCode:I

    #@2
    return v0
.end method

.method public getNextException()Ljava/sql/SQLException;
    .locals 1

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    #@2
    return-object v0
.end method

.method public getSQLState()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Ljava/sql/SQLException;->SQLState:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 316
    new-instance v0, Ljava/sql/SQLException$1;

    #@2
    invoke-direct {v0, p0}, Ljava/sql/SQLException$1;-><init>(Ljava/sql/SQLException;)V

    #@5
    return-object v0
.end method

.method public setNextException(Ljava/sql/SQLException;)V
    .locals 4
    .param p1, "ex"    # Ljava/sql/SQLException;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 289
    move-object v0, p0

    #@2
    .line 291
    .local v0, "current":Ljava/sql/SQLException;
    :goto_0
    iget-object v1, v0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    #@4
    .line 292
    .local v1, "next":Ljava/sql/SQLException;
    if-eqz v1, :cond_0

    #@6
    .line 293
    move-object v0, v1

    #@7
    .line 294
    goto :goto_0

    #@8
    .line 297
    :cond_0
    sget-object v2, Ljava/sql/SQLException;->nextUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@a
    invoke-virtual {v2, v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 298
    return-void

    #@11
    .line 300
    :cond_1
    iget-object v0, v0, Ljava/sql/SQLException;->next:Ljava/sql/SQLException;

    #@13
    goto :goto_0
.end method
