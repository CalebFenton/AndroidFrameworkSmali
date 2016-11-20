.class Ljava/util/jar/JarVerifier$2;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarVerifier;->entryNames(Ljava/util/jar/JarFile;[Ljava/security/CodeSource;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$0:Ljava/util/jar/JarVerifier;

.field final synthetic val$enum2:Ljava/util/Enumeration;

.field final synthetic val$itor:Ljava/util/Iterator;

.field final synthetic val$signersReq:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/jar/JarVerifier;Ljava/util/Iterator;Ljava/util/List;Ljava/util/Enumeration;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/jar/JarVerifier;
    .param p2, "val$itor"    # Ljava/util/Iterator;
    .param p3, "val$signersReq"    # Ljava/util/List;
    .param p4, "val$enum2"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 706
    iput-object p1, p0, Ljava/util/jar/JarVerifier$2;->this$0:Ljava/util/jar/JarVerifier;

    #@2
    iput-object p2, p0, Ljava/util/jar/JarVerifier$2;->val$itor:Ljava/util/Iterator;

    #@4
    iput-object p3, p0, Ljava/util/jar/JarVerifier$2;->val$signersReq:Ljava/util/List;

    #@6
    iput-object p4, p0, Ljava/util/jar/JarVerifier$2;->val$enum2:Ljava/util/Enumeration;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 711
    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 712
    return v3

    #@6
    .line 715
    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->val$itor:Ljava/util/Iterator;

    #@8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 716
    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->val$itor:Ljava/util/Iterator;

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Map$Entry;

    #@16
    .line 717
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Ljava/util/jar/JarVerifier$2;->val$signersReq:Ljava/util/List;

    #@18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, [Ljava/security/CodeSigner;

    #@1e
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 718
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Ljava/lang/String;

    #@2a
    iput-object v1, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    #@2c
    .line 719
    return v3

    #@2d
    .line 722
    .end local v0    # "e":Ljava/util/Map$Entry;
    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->val$enum2:Ljava/util/Enumeration;

    #@2f
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_2

    #@35
    .line 723
    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->val$enum2:Ljava/util/Enumeration;

    #@37
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Ljava/lang/String;

    #@3d
    iput-object v1, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    #@3f
    .line 724
    return v3

    #@40
    .line 726
    :cond_2
    const/4 v1, 0x0

    #@41
    return v1
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 729
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$2;->nextElement()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 730
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$2;->hasMoreElements()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 731
    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    #@8
    .line 732
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    iput-object v1, p0, Ljava/util/jar/JarVerifier$2;->name:Ljava/lang/String;

    #@b
    .line 733
    return-object v0

    #@c
    .line 735
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@e
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@11
    throw v1
.end method
