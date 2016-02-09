.class abstract Landroid/icu/util/StringTrieBuilder$BranchNode;
.super Landroid/icu/util/StringTrieBuilder$Node;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BranchNode"
.end annotation


# instance fields
.field protected firstEdgeNumber:I

.field protected hash:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 593
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 595
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    #@2
    return v0
.end method
