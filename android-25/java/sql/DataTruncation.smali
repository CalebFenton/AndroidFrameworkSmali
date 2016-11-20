.class public Ljava/sql/DataTruncation;
.super Ljava/sql/SQLWarning;
.source "DataTruncation.java"


# static fields
.field private static final serialVersionUID:J = 0x59b5cdae7f4e5851L


# instance fields
.field private dataSize:I

.field private index:I

.field private parameter:Z

.field private read:Z

.field private transferSize:I


# direct methods
.method public constructor <init>(IZZII)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parameter"    # Z
    .param p3, "read"    # Z
    .param p4, "dataSize"    # I
    .param p5, "transferSize"    # I

    #@0
    .prologue
    .line 63
    const-string/jumbo v1, "Data truncation"

    #@3
    if-eqz p3, :cond_0

    #@5
    const-string/jumbo v0, "01004"

    #@8
    :goto_0
    invoke-direct {p0, v1, v0}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 64
    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    #@d
    .line 65
    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    #@f
    .line 66
    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    #@11
    .line 67
    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    #@13
    .line 68
    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    #@15
    .line 62
    return-void

    #@16
    .line 63
    :cond_0
    const-string/jumbo v0, "22001"

    #@19
    goto :goto_0
.end method

.method public constructor <init>(IZZIILjava/lang/Throwable;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "parameter"    # Z
    .param p3, "read"    # Z
    .param p4, "dataSize"    # I
    .param p5, "transferSize"    # I
    .param p6, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 96
    const-string/jumbo v1, "Data truncation"

    #@3
    if-eqz p3, :cond_0

    #@5
    const-string/jumbo v0, "01004"

    #@8
    :goto_0
    invoke-direct {p0, v1, v0, p6}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b
    .line 97
    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    #@d
    .line 98
    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    #@f
    .line 99
    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    #@11
    .line 100
    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    #@13
    .line 101
    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    #@15
    .line 95
    return-void

    #@16
    .line 96
    :cond_0
    const-string/jumbo v0, "22001"

    #@19
    goto :goto_0
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    #@0
    .prologue
    .line 145
    iget v0, p0, Ljava/sql/DataTruncation;->dataSize:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 113
    iget v0, p0, Ljava/sql/DataTruncation;->index:I

    #@2
    return v0
.end method

.method public getParameter()Z
    .locals 1

    #@0
    .prologue
    .line 124
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->parameter:Z

    #@2
    return v0
.end method

.method public getRead()Z
    .locals 1

    #@0
    .prologue
    .line 134
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->read:Z

    #@2
    return v0
.end method

.method public getTransferSize()I
    .locals 1

    #@0
    .prologue
    .line 155
    iget v0, p0, Ljava/sql/DataTruncation;->transferSize:I

    #@2
    return v0
.end method
