.class public Ljava/sql/DataTruncation;
.super Ljava/sql/SQLWarning;
.source "DataTruncation.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x59b5cdae7f4e5851L


# instance fields
.field private greylist-max-o dataSize:I

.field private greylist-max-o index:I

.field private greylist-max-o parameter:Z

.field private greylist-max-o read:Z

.field private greylist-max-o transferSize:I


# direct methods
.method public constructor whitelist test-api <init>(IZZII)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "parameter"    # Z
    .param p3, "read"    # Z
    .param p4, "dataSize"    # I
    .param p5, "transferSize"    # I

    .line 63
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    const-string v0, "01004"

    goto :goto_8

    :cond_6
    const-string v0, "22001"

    :goto_8
    const-string v1, "Data truncation"

    invoke-direct {p0, v1, v0}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    .line 65
    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    .line 66
    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    .line 67
    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    .line 68
    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    .line 70
    return-void
.end method

.method public constructor whitelist test-api <init>(IZZIILjava/lang/Throwable;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "parameter"    # Z
    .param p3, "read"    # Z
    .param p4, "dataSize"    # I
    .param p5, "transferSize"    # I
    .param p6, "cause"    # Ljava/lang/Throwable;

    .line 96
    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    const-string v0, "01004"

    goto :goto_8

    :cond_6
    const-string v0, "22001"

    :goto_8
    const-string v1, "Data truncation"

    invoke-direct {p0, v1, v0, p6}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    iput p1, p0, Ljava/sql/DataTruncation;->index:I

    .line 98
    iput-boolean p2, p0, Ljava/sql/DataTruncation;->parameter:Z

    .line 99
    iput-boolean p3, p0, Ljava/sql/DataTruncation;->read:Z

    .line 100
    iput p4, p0, Ljava/sql/DataTruncation;->dataSize:I

    .line 101
    iput p5, p0, Ljava/sql/DataTruncation;->transferSize:I

    .line 102
    return-void
.end method


# virtual methods
.method public whitelist test-api getDataSize()I
    .registers 2

    .line 145
    iget v0, p0, Ljava/sql/DataTruncation;->dataSize:I

    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 113
    iget v0, p0, Ljava/sql/DataTruncation;->index:I

    return v0
.end method

.method public whitelist test-api getParameter()Z
    .registers 2

    .line 124
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->parameter:Z

    return v0
.end method

.method public whitelist test-api getRead()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Ljava/sql/DataTruncation;->read:Z

    return v0
.end method

.method public whitelist test-api getTransferSize()I
    .registers 2

    .line 155
    iget v0, p0, Ljava/sql/DataTruncation;->transferSize:I

    return v0
.end method
