.class Landroid/util/Log$ImmediateLogWriter;
.super Ljava/io/Writer;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateLogWriter"
.end annotation


# instance fields
.field private bufID:I

.field private priority:I

.field private tag:Ljava/lang/String;

.field private written:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "bufID"    # I
    .param p2, "priority"    # I
    .param p3, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 452
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@3
    .line 446
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    #@6
    .line 453
    iput p1, p0, Landroid/util/Log$ImmediateLogWriter;->bufID:I

    #@8
    .line 454
    iput p2, p0, Landroid/util/Log$ImmediateLogWriter;->priority:I

    #@a
    .line 455
    iput-object p3, p0, Landroid/util/Log$ImmediateLogWriter;->tag:Ljava/lang/String;

    #@c
    .line 452
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    #@0
    .prologue
    .line 476
    return-void
.end method

.method public flush()V
    .locals 0

    #@0
    .prologue
    .line 471
    return-void
.end method

.method public getWritten()I
    .locals 1

    #@0
    .prologue
    .line 459
    iget v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    #@2
    return v0
.end method

.method public write([CII)V
    .locals 5
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 467
    iget v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    #@2
    iget v1, p0, Landroid/util/Log$ImmediateLogWriter;->bufID:I

    #@4
    iget v2, p0, Landroid/util/Log$ImmediateLogWriter;->priority:I

    #@6
    iget-object v3, p0, Landroid/util/Log$ImmediateLogWriter;->tag:Ljava/lang/String;

    #@8
    new-instance v4, Ljava/lang/String;

    #@a
    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    #@d
    invoke-static {v1, v2, v3, v4}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    add-int/2addr v0, v1

    #@12
    iput v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    #@14
    .line 463
    return-void
.end method
