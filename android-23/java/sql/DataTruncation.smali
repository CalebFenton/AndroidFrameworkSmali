.class public Ljava/sql/DataTruncation;
.super Ljava/sql/SQLWarning;
.source "DataTruncation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final THE_ERROR_CODE:I = 0x0

.field private static final THE_REASON:Ljava/lang/String; = "Data truncation"

.field private static final THE_SQLSTATE_READ:Ljava/lang/String; = "01004"

.field private static final THE_SQLSTATE_WRITE:Ljava/lang/String; = "22001"

.field private static final serialVersionUID:J = 0x59b5cdae7f4e5851L


# instance fields
.field private dataSize:I

.field private index:I

.field private parameter:Z

.field private read:Z

.field private transferSize:I


# direct methods
.method public constructor <init>(IZZII)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "parameter"    # Z
    .param p3, "read"    # Z
    .param p4, "dataSize"    # I
    .param p5, "transferSize"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 72
    const-string/jumbo v0, "Data truncation"

    #@4
    const-string/jumbo v1, "01004"

    #@7
    invoke-direct {p0, v0, v1, v2}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@a
    .line 32
    iput v2, p0, Ljava/sql/DataTruncation;->index:I

    #@c
    .line 34
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->parameter:Z

    #@e
    .line 36
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->read:Z

    #@10
    .line 38
    iput v2, p0, Ljava/sql/DataTruncation;->dataSize:I

    #@12
    .line 40
    iput v2, p0, Ljava/sql/DataTruncation;->transferSize:I

    #@14
    .line 73
    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    #@16
    .line 74
    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    #@18
    .line 75
    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    #@1a
    .line 76
    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    #@1c
    .line 77
    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    #@1e
    .line 71
    return-void
.end method

.method public constructor <init>(IZZIILjava/lang/Throwable;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "parameter"    # Z
    .param p3, "read"    # Z
    .param p4, "dataSize"    # I
    .param p5, "transferSize"    # I
    .param p6, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 105
    const-string/jumbo v1, "Data truncation"

    #@4
    if-eqz p3, :cond_0

    #@6
    const-string/jumbo v0, "01004"

    #@9
    :goto_0
    invoke-direct {p0, v1, v0, v2, p6}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    #@c
    .line 32
    iput v2, p0, Ljava/sql/DataTruncation;->index:I

    #@e
    .line 34
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->parameter:Z

    #@10
    .line 36
    iput-boolean v2, p0, Ljava/sql/DataTruncation;->read:Z

    #@12
    .line 38
    iput v2, p0, Ljava/sql/DataTruncation;->dataSize:I

    #@14
    .line 40
    iput v2, p0, Ljava/sql/DataTruncation;->transferSize:I

    #@16
    .line 107
    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    #@18
    .line 108
    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    #@1a
    .line 109
    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    #@1c
    .line 110
    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    #@1e
    .line 111
    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    #@20
    .line 104
    return-void

    #@21
    .line 105
    :cond_0
    const-string/jumbo v0, "22001"

    #@24
    goto :goto_0
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    #@0
    .prologue
    .line 121
    iget v0, p0, Ljava/sql/DataTruncation;->dataSize:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 130
    iget v0, p0, Ljava/sql/DataTruncation;->index:I

    #@2
    return v0
.end method

.method public getParameter()Z
    .locals 1

    #@0
    .prologue
    .line 140
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->parameter:Z

    #@2
    return v0
.end method

.method public getRead()Z
    .locals 1

    #@0
    .prologue
    .line 151
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->read:Z

    #@2
    return v0
.end method

.method public getTransferSize()I
    .locals 1

    #@0
    .prologue
    .line 161
    iget v0, p0, Ljava/sql/DataTruncation;->transferSize:I

    #@2
    return v0
.end method
