.class Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;
.super Ljava/lang/Object;
.source "BreakCTDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakCTDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompactTrieHorizontalNode"
.end annotation


# instance fields
.field ch:C

.field equal:I


# direct methods
.method constructor <init>(CI)V
    .locals 0
    .param p1, "newCh"    # C
    .param p2, "newEqual"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    iput-char p1, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;->ch:C

    #@5
    .line 69
    iput p2, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;->equal:I

    #@7
    .line 67
    return-void
.end method
