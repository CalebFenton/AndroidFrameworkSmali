.class public Landroid/util/LogWriter;
.super Ljava/io/Writer;
.source "LogWriter.java"


# instance fields
.field private final mBuffer:I

.field private mBuilder:Ljava/lang/StringBuilder;

.field private final mPriority:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0x80

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@c
    .line 41
    iput p1, p0, Landroid/util/LogWriter;->mPriority:I

    #@e
    .line 42
    iput-object p2, p0, Landroid/util/LogWriter;->mTag:Ljava/lang/String;

    #@10
    .line 43
    const/4 v0, 0x0

    #@11
    iput v0, p0, Landroid/util/LogWriter;->mBuffer:I

    #@13
    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "buffer"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    const/16 v1, 0x80

    #@7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@c
    .line 51
    iput p1, p0, Landroid/util/LogWriter;->mPriority:I

    #@e
    .line 52
    iput-object p2, p0, Landroid/util/LogWriter;->mTag:Ljava/lang/String;

    #@10
    .line 53
    iput p3, p0, Landroid/util/LogWriter;->mBuffer:I

    #@12
    .line 50
    return-void
.end method

.method private flushBuilder()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 77
    iget-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    #@6
    move-result v0

    #@7
    if-lez v0, :cond_0

    #@9
    .line 78
    iget v0, p0, Landroid/util/LogWriter;->mBuffer:I

    #@b
    iget v1, p0, Landroid/util/LogWriter;->mPriority:I

    #@d
    iget-object v2, p0, Landroid/util/LogWriter;->mTag:Ljava/lang/String;

    #@f
    iget-object v3, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-static {v0, v1, v2, v3}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@18
    .line 79
    iget-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@1a
    iget-object v1, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@23
    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Landroid/util/LogWriter;->flushBuilder()V

    #@3
    .line 56
    return-void
.end method

.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Landroid/util/LogWriter;->flushBuilder()V

    #@3
    .line 60
    return-void
.end method

.method public write([CII)V
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    #@0
    .prologue
    .line 65
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    #@3
    .line 66
    add-int v2, p2, v1

    #@5
    aget-char v0, p1, v2

    #@7
    .line 67
    .local v0, "c":C
    const/16 v2, 0xa

    #@9
    if-ne v0, v2, :cond_0

    #@b
    .line 68
    invoke-direct {p0}, Landroid/util/LogWriter;->flushBuilder()V

    #@e
    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 71
    :cond_0
    iget-object v2, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    #@13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    goto :goto_1

    #@17
    .line 64
    .end local v0    # "c":C
    :cond_1
    return-void
.end method
