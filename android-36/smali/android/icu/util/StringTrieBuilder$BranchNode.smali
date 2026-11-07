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
.field protected greylist-max-o firstEdgeNumber:I

.field protected greylist-max-o hash:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 594
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$Node;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api hashCode()I
    .registers 2

    .line 596
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    return v0
.end method
