.class public Lcom/google/android/util/AbstractMessageParser$TrieNode;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrieNode"
.end annotation


# instance fields
.field private final children:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$TrieNode;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1344
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1340
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 1339
    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    #@a
    .line 1346
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->text:Ljava/lang/String;

    #@c
    .line 1345
    return-void
.end method

.method public static addToTrie(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "root"    # Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1370
    const/4 v0, 0x0

    #@1
    .line 1371
    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1372
    add-int/lit8 v1, v0, 0x1

    #@9
    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v2

    #@d
    invoke-virtual {p0, v2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getOrCreateChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@10
    move-result-object p0

    #@11
    move v0, v1

    #@12
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    #@13
    .line 1374
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->setValue(Ljava/lang/String;)V

    #@16
    .line 1369
    return-void
.end method


# virtual methods
.method public final exists()Z
    .locals 1

    #@0
    .prologue
    .line 1349
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->value:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 2
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 1355
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@c
    return-object v0
.end method

.method public getOrCreateChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 4
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 1359
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3
    move-result-object v0

    #@4
    .line 1360
    .local v0, "key":Ljava/lang/Character;
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    #@6
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@c
    .line 1361
    .local v1, "node":Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v1, :cond_0

    #@e
    .line 1362
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    #@10
    .end local v1    # "node":Lcom/google/android/util/AbstractMessageParser$TrieNode;
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->text:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>(Ljava/lang/String;)V

    #@2a
    .line 1363
    .restart local v1    # "node":Lcom/google/android/util/AbstractMessageParser$TrieNode;
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 1365
    :cond_0
    return-object v1
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1350
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->text:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1351
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1352
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->value:Ljava/lang/String;

    #@2
    return-void
.end method
