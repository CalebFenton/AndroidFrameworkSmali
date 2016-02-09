.class final Lcom/android/okhttp/internal/spdy/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/spdy/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field private final children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;

.field private final symbol:I

.field private final terminalBits:I


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/spdy/Huffman$Node;)[Lcom/android/okhttp/internal/spdy/Huffman$Node;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->symbol:I

    #@2
    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/spdy/Huffman$Node;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->terminalBits:I

    #@2
    return v0
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 207
    const/16 v0, 0x100

    #@6
    new-array v0, v0, [Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@8
    iput-object v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@a
    .line 208
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->symbol:I

    #@c
    .line 209
    iput v1, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->terminalBits:I

    #@e
    .line 206
    return-void
.end method

.method constructor <init>(II)V
    .locals 2
    .param p1, "symbol"    # I
    .param p2, "bits"    # I

    #@0
    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 219
    const/4 v1, 0x0

    #@4
    iput-object v1, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->children:[Lcom/android/okhttp/internal/spdy/Huffman$Node;

    #@6
    .line 220
    iput p1, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->symbol:I

    #@8
    .line 221
    and-int/lit8 v0, p2, 0x7

    #@a
    .line 222
    .local v0, "b":I
    if-nez v0, :cond_0

    #@c
    const/16 v0, 0x8

    #@e
    .end local v0    # "b":I
    :cond_0
    iput v0, p0, Lcom/android/okhttp/internal/spdy/Huffman$Node;->terminalBits:I

    #@10
    .line 218
    return-void
.end method
