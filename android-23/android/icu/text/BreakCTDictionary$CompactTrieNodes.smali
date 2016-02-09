.class Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;
.super Ljava/lang/Object;
.source "BreakCTDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakCTDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompactTrieNodes"
.end annotation


# instance fields
.field flagscount:S

.field hnode:[Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;

.field vnode:Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 97
    const/4 v0, 0x0

    #@5
    iput-short v0, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->flagscount:S

    #@7
    .line 98
    iput-object v1, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->hnode:[Landroid/icu/text/BreakCTDictionary$CompactTrieHorizontalNode;

    #@9
    .line 99
    iput-object v1, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieNodes;->vnode:Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;

    #@b
    .line 96
    return-void
.end method
