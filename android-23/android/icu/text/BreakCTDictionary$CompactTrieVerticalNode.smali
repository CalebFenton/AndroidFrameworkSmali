.class Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;
.super Ljava/lang/Object;
.source "BreakCTDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakCTDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompactTrieVerticalNode"
.end annotation


# instance fields
.field chars:[C

.field equal:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 79
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;->equal:I

    #@6
    .line 80
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Landroid/icu/text/BreakCTDictionary$CompactTrieVerticalNode;->chars:[C

    #@9
    .line 78
    return-void
.end method
