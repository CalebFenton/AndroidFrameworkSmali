.class Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;
.super Ljava/lang/Object;
.source "BreakCTDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakCTDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompactTrieHeader"
.end annotation


# instance fields
.field magic:I

.field nodeCount:I

.field offset:[I

.field root:I

.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 35
    iput v0, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->size:I

    #@6
    .line 36
    iput v0, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->magic:I

    #@8
    .line 37
    iput v0, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->nodeCount:I

    #@a
    .line 38
    iput v0, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->root:I

    #@c
    .line 39
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieHeader;->offset:[I

    #@f
    .line 34
    return-void
.end method
