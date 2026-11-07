.class Landroid/icu/impl/Trie2$UTrie2Header;
.super Ljava/lang/Object;
.source "Trie2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UTrie2Header"
.end annotation


# instance fields
.field greylist-max-o dataNullOffset:I

.field greylist-max-o index2NullOffset:I

.field greylist-max-o indexLength:I

.field greylist-max-o options:I

.field greylist-max-o shiftedDataLength:I

.field greylist-max-o shiftedHighStart:I

.field greylist-max-o signature:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
