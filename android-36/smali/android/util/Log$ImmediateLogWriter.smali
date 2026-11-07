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
.field private greylist-max-o bufID:I

.field private greylist-max-o priority:I

.field private greylist-max-o tag:Ljava/lang/String;

.field private greylist-max-o written:I


# direct methods
.method public constructor greylist-max-o <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "bufID"    # I
    .param p2, "priority"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .line 534
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 528
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    .line 535
    iput p1, p0, Landroid/util/Log$ImmediateLogWriter;->bufID:I

    .line 536
    iput p2, p0, Landroid/util/Log$ImmediateLogWriter;->priority:I

    .line 537
    iput-object p3, p0, Landroid/util/Log$ImmediateLogWriter;->tag:Ljava/lang/String;

    .line 538
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1

    .line 560
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1

    .line 555
    return-void
.end method

.method public greylist-max-o getWritten()I
    .registers 2

    .line 541
    iget v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    return v0
.end method

.method public whitelist test-api write([CII)V
    .registers 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 549
    iget v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    iget v1, p0, Landroid/util/Log$ImmediateLogWriter;->bufID:I

    iget v2, p0, Landroid/util/Log$ImmediateLogWriter;->priority:I

    iget-object v3, p0, Landroid/util/Log$ImmediateLogWriter;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1, v2, v3, v4}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/Log$ImmediateLogWriter;->written:I

    .line 550
    return-void
.end method
