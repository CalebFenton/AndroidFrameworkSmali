.class final Lcom/android/okhttp/internal/framed/Huffman$Node;
.super Ljava/lang/Object;
.source "Huffman.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/framed/Huffman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field private final blacklist children:[Lcom/android/okhttp/internal/framed/Huffman$Node;

.field private final blacklist symbol:I

.field private final blacklist terminalBits:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 208
    new-array v0, v0, [Lcom/android/okhttp/internal/framed/Huffman$Node;

    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/android/okhttp/internal/framed/Huffman$Node;->symbol:I

    .line 210
    iput v0, p0, Lcom/android/okhttp/internal/framed/Huffman$Node;->terminalBits:I

    return-void
.end method

.method constructor blacklist <init>(II)V
    .registers 4

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;

    .line 221
    iput p1, p0, Lcom/android/okhttp/internal/framed/Huffman$Node;->symbol:I

    and-int/lit8 p1, p2, 0x7

    if-nez p1, :cond_e

    const/16 p1, 0x8

    .line 223
    :cond_e
    iput p1, p0, Lcom/android/okhttp/internal/framed/Huffman$Node;->terminalBits:I

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/framed/Huffman$Node;)[Lcom/android/okhttp/internal/framed/Huffman$Node;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/android/okhttp/internal/framed/Huffman$Node;->children:[Lcom/android/okhttp/internal/framed/Huffman$Node;

    return-object p0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/internal/framed/Huffman$Node;)I
    .registers 1

    .line 195
    iget p0, p0, Lcom/android/okhttp/internal/framed/Huffman$Node;->symbol:I

    return p0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/framed/Huffman$Node;)I
    .registers 1

    .line 195
    iget p0, p0, Lcom/android/okhttp/internal/framed/Huffman$Node;->terminalBits:I

    return p0
.end method
