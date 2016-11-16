.class final Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;
.super Ljava/lang/Object;
.source "BytesTrieBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BytesAsCharSequence"
.end annotation


# instance fields
.field private len:I

.field private s:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "sequence"    # [B
    .param p2, "length"    # I

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->s:[B

    #@5
    .line 34
    iput p2, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->len:I

    #@7
    .line 32
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->s:[B

    #@2
    aget-byte v0, v0, p1

    #@4
    and-int/lit16 v0, v0, 0xff

    #@6
    int-to-char v0, v0

    #@7
    return v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 37
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->len:I

    #@2
    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 38
    const/4 v0, 0x0

    #@1
    return-object v0
.end method
