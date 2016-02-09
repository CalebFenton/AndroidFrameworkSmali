.class Llibcore/io/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "StrictLineReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llibcore/io/StrictLineReader;->readLine()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llibcore/io/StrictLineReader;


# direct methods
.method constructor <init>(Llibcore/io/StrictLineReader;I)V
    .locals 0
    .param p1, "this$0"    # Llibcore/io/StrictLineReader;
    .param p2, "$anonymous0"    # I

    #@0
    .prologue
    .line 174
    iput-object p1, p0, Llibcore/io/StrictLineReader$1;->this$0:Llibcore/io/StrictLineReader;

    #@2
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@5
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 177
    iget v1, p0, Llibcore/io/StrictLineReader$1;->count:I

    #@3
    if-lez v1, :cond_0

    #@5
    iget-object v1, p0, Llibcore/io/StrictLineReader$1;->buf:[B

    #@7
    iget v2, p0, Llibcore/io/StrictLineReader$1;->count:I

    #@9
    add-int/lit8 v2, v2, -0x1

    #@b
    aget-byte v1, v1, v2

    #@d
    const/16 v2, 0xd

    #@f
    if-ne v1, v2, :cond_0

    #@11
    iget v1, p0, Llibcore/io/StrictLineReader$1;->count:I

    #@13
    add-int/lit8 v0, v1, -0x1

    #@15
    .line 178
    .local v0, "length":I
    :goto_0
    new-instance v1, Ljava/lang/String;

    #@17
    iget-object v2, p0, Llibcore/io/StrictLineReader$1;->buf:[B

    #@19
    iget-object v3, p0, Llibcore/io/StrictLineReader$1;->this$0:Llibcore/io/StrictLineReader;

    #@1b
    invoke-static {v3}, Llibcore/io/StrictLineReader;->-get0(Llibcore/io/StrictLineReader;)Ljava/nio/charset/Charset;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@22
    return-object v1

    #@23
    .line 177
    .end local v0    # "length":I
    :cond_0
    iget v0, p0, Llibcore/io/StrictLineReader$1;->count:I

    #@25
    .restart local v0    # "length":I
    goto :goto_0
.end method
