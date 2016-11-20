.class public Lcom/google/android/util/SmileyResources;
.super Ljava/lang/Object;
.source "SmileyResources.java"

# interfaces
.implements Lcom/google/android/util/AbstractMessageParser$Resources;


# instance fields
.field private mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 4
    .param p1, "smilies"    # [Ljava/lang/String;
    .param p2, "smileyResIds"    # [I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v1, Ljava/util/HashMap;

    #@5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v1, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    #@a
    .line 56
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@c
    invoke-direct {v1}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>()V

    #@f
    iput-object v1, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@11
    .line 36
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@13
    if-ge v0, v1, :cond_0

    #@15
    .line 37
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@17
    aget-object v2, p1, v0

    #@19
    const-string/jumbo v3, ""

    #@1c
    invoke-static {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->addToTrie(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    .line 38
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    #@21
    aget-object v2, p1, v0

    #@23
    aget v3, p2, v0

    #@25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 36
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSchemes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getSmileyRes(Ljava/lang/String;)I
    .locals 2
    .param p1, "smiley"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    .line 50
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    #@a
    .line 51
    const/4 v1, -0x1

    #@b
    return v1

    #@c
    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result v1

    #@10
    return v1
.end method

.method public getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@2
    return-object v0
.end method
