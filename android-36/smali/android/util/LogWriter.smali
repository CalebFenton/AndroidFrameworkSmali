.class public Landroid/util/LogWriter;
.super Ljava/io/Writer;
.source "LogWriter.java"


# instance fields
.field private final greylist-max-o mBuffer:I

.field private greylist-max-o mBuilder:Ljava/lang/StringBuilder;

.field private final greylist-max-o mPriority:I

.field private final greylist-max-o mTag:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-r <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 46
    iput p1, p0, Landroid/util/LogWriter;->mPriority:I

    .line 47
    iput-object p2, p0, Landroid/util/LogWriter;->mTag:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LogWriter;->mBuffer:I

    .line 49
    return-void
.end method

.method public constructor greylist-max-o <init>(ILjava/lang/String;I)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "buffer"    # I

    .line 55
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    .line 56
    iput p1, p0, Landroid/util/LogWriter;->mPriority:I

    .line 57
    iput-object p2, p0, Landroid/util/LogWriter;->mTag:Ljava/lang/String;

    .line 58
    iput p3, p0, Landroid/util/LogWriter;->mBuffer:I

    .line 59
    return-void
.end method

.method private greylist-max-o flushBuilder()V
    .registers 5

    .line 82
    iget-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 83
    iget v0, p0, Landroid/util/LogWriter;->mBuffer:I

    iget v1, p0, Landroid/util/LogWriter;->mPriority:I

    iget-object v2, p0, Landroid/util/LogWriter;->mTag:Ljava/lang/String;

    iget-object v3, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 86
    :cond_23
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 62
    invoke-direct {p0}, Landroid/util/LogWriter;->flushBuilder()V

    .line 63
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 66
    invoke-direct {p0}, Landroid/util/LogWriter;->flushBuilder()V

    .line 67
    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 7
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_17

    .line 71
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 72
    .local v1, "c":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    .line 73
    invoke-direct {p0}, Landroid/util/LogWriter;->flushBuilder()V

    goto :goto_14

    .line 76
    :cond_f
    iget-object v2, p0, Landroid/util/LogWriter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .end local v1    # "c":C
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "i":I
    :cond_17
    return-void
.end method
