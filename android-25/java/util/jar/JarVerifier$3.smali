.class Ljava/util/jar/JarVerifier$3;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarVerifier;->entries2(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)Ljava/util/Enumeration;
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
        "Ljava/util/jar/JarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/jar/JarEntry;

.field signers:Ljava/util/Enumeration;

.field final synthetic this$0:Ljava/util/jar/JarVerifier;

.field final synthetic val$enum_:Ljava/util/Enumeration;

.field final synthetic val$jar:Ljava/util/jar/JarFile;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V
    .locals 1
    .param p1, "this$0"    # Ljava/util/jar/JarVerifier;
    .param p2, "val$enum_"    # Ljava/util/Enumeration;
    .param p3, "val$jar"    # Ljava/util/jar/JarFile;
    .param p4, "val$map"    # Ljava/util/Map;

    #@0
    .prologue
    .line 748
    iput-object p1, p0, Ljava/util/jar/JarVerifier$3;->this$0:Ljava/util/jar/JarVerifier;

    #@2
    iput-object p2, p0, Ljava/util/jar/JarVerifier$3;->val$enum_:Ljava/util/Enumeration;

    #@4
    iput-object p3, p0, Ljava/util/jar/JarVerifier$3;->val$jar:Ljava/util/jar/JarFile;

    #@6
    iput-object p4, p0, Ljava/util/jar/JarVerifier$3;->val$map:Ljava/util/Map;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    .line 750
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    #@e
    .line 748
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 754
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 755
    return v4

    #@6
    .line 757
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$enum_:Ljava/util/Enumeration;

    #@8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 758
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$enum_:Ljava/util/Enumeration;

    #@10
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/zip/ZipEntry;

    #@16
    .line 759
    .local v1, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Ljava/util/jar/JarVerifier;->isSigningRelated(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 762
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$jar:Ljava/util/jar/JarFile;

    #@22
    invoke-virtual {v2, v1}, Ljava/util/jar/JarFile;->newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    #@28
    .line 763
    return v4

    #@29
    .line 765
    .end local v1    # "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    #@2b
    if-nez v2, :cond_2

    #@2d
    .line 766
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$map:Ljava/util/Map;

    #@2f
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@32
    move-result-object v2

    #@33
    invoke-static {v2}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    #@36
    move-result-object v2

    #@37
    iput-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    #@39
    .line 768
    :cond_2
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    #@3b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_3

    #@41
    .line 769
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->signers:Ljava/util/Enumeration;

    #@43
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Ljava/lang/String;

    #@49
    .line 770
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/jar/JarVerifier$3;->val$jar:Ljava/util/jar/JarFile;

    #@4b
    new-instance v3, Ljava/util/zip/ZipEntry;

    #@4d
    invoke-direct {v3, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@50
    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;

    #@53
    move-result-object v2

    #@54
    iput-object v2, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    #@56
    .line 771
    return v4

    #@57
    .line 775
    .end local v0    # "name":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    #@58
    return v2
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 778
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$3;->nextElement()Ljava/util/jar/JarEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/util/jar/JarEntry;
    .locals 3

    #@0
    .prologue
    .line 779
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$3;->hasMoreElements()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 780
    iget-object v0, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    #@8
    .line 781
    .local v0, "je":Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarVerifier$3;->val$map:Ljava/util/Map;

    #@a
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 782
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Ljava/util/jar/JarVerifier$3;->entry:Ljava/util/jar/JarEntry;

    #@14
    .line 783
    return-object v0

    #@15
    .line 785
    .end local v0    # "je":Ljava/util/jar/JarEntry;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@17
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@1a
    throw v1
.end method
