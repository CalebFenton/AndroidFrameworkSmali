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
.field private greylist-max-o len:I

.field private greylist-max-o s:[B


# direct methods
.method public constructor greylist-max-o <init>([BI)V
    .registers 3
    .param p1, "sequence"    # [B
    .param p2, "length"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->s:[B

    .line 36
    iput p2, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->len:I

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "i"    # I

    .line 39
    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->s:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    return v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 41
    iget v0, p0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;->len:I

    return v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
