.class final Lcom/android/okhttp/okio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# static fields
.field static final SIZE:I = 0x800


# instance fields
.field final data:[B

.field limit:I

.field next:Lcom/android/okhttp/okio/Segment;

.field owner:Z

.field pos:I

.field prev:Lcom/android/okhttp/okio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    const/16 v0, 0x800

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    #@9
    .line 59
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    #@c
    .line 60
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    #@f
    .line 57
    return-void
.end method

.method constructor <init>(Lcom/android/okhttp/okio/Segment;)V
    .locals 3
    .param p1, "shareFrom"    # Lcom/android/okhttp/okio/Segment;

    #@0
    .prologue
    .line 64
    iget-object v0, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    #@2
    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@4
    iget v2, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@6
    invoke-direct {p0, v0, v1, v2}, Lcom/android/okhttp/okio/Segment;-><init>([BII)V

    #@9
    .line 65
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->shared:Z

    #@c
    .line 63
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "pos"    # I
    .param p3, "limit"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    iput-object p1, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    #@5
    .line 70
    iput p2, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@7
    .line 71
    iput p3, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@9
    .line 72
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->owner:Z

    #@c
    .line 73
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Lcom/android/okhttp/okio/Segment;->shared:Z

    #@f
    .line 68
    return-void
.end method


# virtual methods
.method public compact()V
    .locals 4

    #@0
    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@2
    if-ne v2, p0, :cond_0

    #@4
    new-instance v2, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v2

    #@a
    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@c
    iget-boolean v2, v2, Lcom/android/okhttp/okio/Segment;->owner:Z

    #@e
    if-nez v2, :cond_1

    #@10
    return-void

    #@11
    .line 125
    :cond_1
    iget v2, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@13
    iget v3, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@15
    sub-int v1, v2, v3

    #@17
    .line 126
    .local v1, "byteCount":I
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@19
    iget v2, v2, Lcom/android/okhttp/okio/Segment;->limit:I

    #@1b
    rsub-int v3, v2, 0x800

    #@1d
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@1f
    iget-boolean v2, v2, Lcom/android/okhttp/okio/Segment;->shared:Z

    #@21
    if-eqz v2, :cond_2

    #@23
    const/4 v2, 0x0

    #@24
    :goto_0
    add-int v0, v3, v2

    #@26
    .line 127
    .local v0, "availableByteCount":I
    if-le v1, v0, :cond_3

    #@28
    return-void

    #@29
    .line 126
    .end local v0    # "availableByteCount":I
    :cond_2
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@2b
    iget v2, v2, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2d
    goto :goto_0

    #@2e
    .line 128
    .restart local v0    # "availableByteCount":I
    :cond_3
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@30
    invoke-virtual {p0, v2, v1}, Lcom/android/okhttp/okio/Segment;->writeTo(Lcom/android/okhttp/okio/Segment;I)V

    #@33
    .line 129
    invoke-virtual {p0}, Lcom/android/okhttp/okio/Segment;->pop()Lcom/android/okhttp/okio/Segment;

    #@36
    .line 130
    invoke-static {p0}, Lcom/android/okhttp/okio/SegmentPool;->recycle(Lcom/android/okhttp/okio/Segment;)V

    #@39
    .line 122
    return-void
.end method

.method public pop()Lcom/android/okhttp/okio/Segment;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 81
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@3
    if-eq v1, p0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@7
    .line 82
    :goto_0
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@9
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@b
    iput-object v2, v1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@d
    .line 83
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@f
    iget-object v2, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@11
    iput-object v2, v1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@13
    .line 84
    iput-object v3, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@15
    .line 85
    iput-object v3, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@17
    .line 86
    return-object v0

    #@18
    .line 81
    :cond_0
    const/4 v0, 0x0

    #@19
    .local v0, "result":Lcom/android/okhttp/okio/Segment;
    goto :goto_0
.end method

.method public push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;
    .locals 1
    .param p1, "segment"    # Lcom/android/okhttp/okio/Segment;

    #@0
    .prologue
    .line 94
    iput-object p0, p1, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@2
    .line 95
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@4
    iput-object v0, p1, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@6
    .line 96
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@8
    iput-object p1, v0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@a
    .line 97
    iput-object p1, p0, Lcom/android/okhttp/okio/Segment;->next:Lcom/android/okhttp/okio/Segment;

    #@c
    .line 98
    return-object p1
.end method

.method public split(I)Lcom/android/okhttp/okio/Segment;
    .locals 3
    .param p1, "byteCount"    # I

    #@0
    .prologue
    .line 110
    if-lez p1, :cond_0

    #@2
    iget v1, p0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@4
    iget v2, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@6
    sub-int/2addr v1, v2

    #@7
    if-le p1, v1, :cond_1

    #@9
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v1

    #@f
    .line 111
    :cond_1
    new-instance v0, Lcom/android/okhttp/okio/Segment;

    #@11
    invoke-direct {v0, p0}, Lcom/android/okhttp/okio/Segment;-><init>(Lcom/android/okhttp/okio/Segment;)V

    #@14
    .line 112
    .local v0, "prefix":Lcom/android/okhttp/okio/Segment;
    iget v1, v0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@16
    add-int/2addr v1, p1

    #@17
    iput v1, v0, Lcom/android/okhttp/okio/Segment;->limit:I

    #@19
    .line 113
    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1b
    add-int/2addr v1, p1

    #@1c
    iput v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@1e
    .line 114
    iget-object v1, p0, Lcom/android/okhttp/okio/Segment;->prev:Lcom/android/okhttp/okio/Segment;

    #@20
    invoke-virtual {v1, v0}, Lcom/android/okhttp/okio/Segment;->push(Lcom/android/okhttp/okio/Segment;)Lcom/android/okhttp/okio/Segment;

    #@23
    .line 115
    return-object v0
.end method

.method public writeTo(Lcom/android/okhttp/okio/Segment;I)V
    .locals 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/Segment;
    .param p2, "byteCount"    # I

    #@0
    .prologue
    const/16 v2, 0x800

    #@2
    const/4 v5, 0x0

    #@3
    .line 135
    iget-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->owner:Z

    #@5
    if-nez v0, :cond_0

    #@7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0

    #@d
    .line 136
    :cond_0
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@f
    add-int/2addr v0, p2

    #@10
    if-le v0, v2, :cond_3

    #@12
    .line 138
    iget-boolean v0, p1, Lcom/android/okhttp/okio/Segment;->shared:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1b
    throw v0

    #@1c
    .line 139
    :cond_1
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@1e
    add-int/2addr v0, p2

    #@1f
    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@21
    sub-int/2addr v0, v1

    #@22
    if-le v0, v2, :cond_2

    #@24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@29
    throw v0

    #@2a
    .line 140
    :cond_2
    iget-object v0, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    #@2c
    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@2e
    iget-object v2, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    #@30
    iget v3, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@32
    iget v4, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@34
    sub-int/2addr v3, v4

    #@35
    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@38
    .line 141
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@3a
    iget v1, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@3c
    sub-int/2addr v0, v1

    #@3d
    iput v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@3f
    .line 142
    iput v5, p1, Lcom/android/okhttp/okio/Segment;->pos:I

    #@41
    .line 145
    :cond_3
    iget-object v0, p0, Lcom/android/okhttp/okio/Segment;->data:[B

    #@43
    iget v1, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@45
    iget-object v2, p1, Lcom/android/okhttp/okio/Segment;->data:[B

    #@47
    iget v3, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@49
    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4c
    .line 146
    iget v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@4e
    add-int/2addr v0, p2

    #@4f
    iput v0, p1, Lcom/android/okhttp/okio/Segment;->limit:I

    #@51
    .line 147
    iget v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@53
    add-int/2addr v0, p2

    #@54
    iput v0, p0, Lcom/android/okhttp/okio/Segment;->pos:I

    #@56
    .line 134
    return-void
.end method
