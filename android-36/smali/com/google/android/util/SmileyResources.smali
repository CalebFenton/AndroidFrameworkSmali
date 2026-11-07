.class public Lcom/google/android/util/SmileyResources;
.super Ljava/lang/Object;
.source "SmileyResources.java"

# interfaces
.implements Lcom/google/android/util/AbstractMessageParser$Resources;


# instance fields
.field private blacklist mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;[I)V
    .registers 7
    .param p1, "smilies"    # [Ljava/lang/String;
    .param p2, "smileyResIds"    # [I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    invoke-direct {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    array-length v1, p1

    if-ge v0, v1, :cond_2e

    .line 37
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    aget-object v2, p1, v0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->addToTrie(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    aget-object v2, p1, v0

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 40
    .end local v0    # "i":I
    :cond_2e
    return-void
.end method


# virtual methods
.method public blacklist getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 2

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSchemes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSmileyRes(Ljava/lang/String;)I
    .registers 4
    .param p1, "smiley"    # Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 50
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_c

    .line 51
    const/4 v1, -0x1

    return v1

    .line 53
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public blacklist getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    return-object v0
.end method
