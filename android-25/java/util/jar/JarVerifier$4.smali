.class Ljava/util/jar/JarVerifier$4;
.super Ljava/lang/Object;
.source "JarVerifier.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
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

.field final synthetic val$entries:Ljava/util/Enumeration;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/jar/JarVerifier;
    .param p2, "val$entries"    # Ljava/util/Enumeration;
    .param p3, "val$map"    # Ljava/util/Map;

    #@0
    .prologue
    .line 824
    iput-object p1, p0, Ljava/util/jar/JarVerifier$4;->this$0:Ljava/util/jar/JarVerifier;

    #@2
    iput-object p2, p0, Ljava/util/jar/JarVerifier$4;->val$entries:Ljava/util/Enumeration;

    #@4
    iput-object p3, p0, Ljava/util/jar/JarVerifier$4;->val$map:Ljava/util/Map;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 833
    iget-object v2, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 834
    return v3

    #@6
    .line 836
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarVerifier$4;->val$entries:Ljava/util/Enumeration;

    #@8
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 838
    iget-object v2, p0, Ljava/util/jar/JarVerifier$4;->val$entries:Ljava/util/Enumeration;

    #@10
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@16
    .line 839
    .local v0, "e":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 840
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_0

    #@20
    invoke-static {v1}, Ljava/util/jar/JarVerifier;->isSigningRelated(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_0

    #@26
    .line 843
    iget-object v2, p0, Ljava/util/jar/JarVerifier$4;->val$map:Ljava/util/Map;

    #@28
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    if-nez v2, :cond_0

    #@2e
    .line 844
    iput-object v1, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    #@30
    .line 845
    return v3

    #@31
    .line 848
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@32
    return v2
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 851
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$4;->nextElement()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 852
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$4;->hasMoreElements()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 853
    iget-object v0, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    #@8
    .line 854
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    #@9
    iput-object v1, p0, Ljava/util/jar/JarVerifier$4;->name:Ljava/lang/String;

    #@b
    .line 855
    return-object v0

    #@c
    .line 857
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@e
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@11
    throw v1
.end method
