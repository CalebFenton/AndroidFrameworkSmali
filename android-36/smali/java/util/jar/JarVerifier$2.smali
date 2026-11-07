.class Ljava/util/jar/JarVerifier$2;
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
        "Ljava/util/Enumeration<",
        "Ljava/util/jar/JarEntry;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist entry:Ljava/util/jar/JarEntry;

.field blacklist signers:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$enum_:Ljava/util/Enumeration;

.field final synthetic blacklist val$jar:Ljava/util/jar/JarFile;

.field final synthetic blacklist val$map:Ljava/util/Map;


# direct methods
.method constructor blacklist <init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/jar/JarVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 769
    iput-object p2, p0, Ljava/util/jar/JarVerifier$2;->val$enum_:Ljava/util/Enumeration;

    iput-object p3, p0, Ljava/util/jar/JarVerifier$2;->val$jar:Ljava/util/jar/JarFile;

    iput-object p4, p0, Ljava/util/jar/JarVerifier$2;->val$map:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    const/4 p2, 0x0

    iput-object p2, p0, Ljava/util/jar/JarVerifier$2;->signers:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasMoreElements()Z
    .registers 5

    .line 775
    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->entry:Ljava/util/jar/JarEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 776
    return v1

    .line 778
    :cond_6
    :goto_6
    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->val$enum_:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 779
    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->val$enum_:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 780
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/jar/JarVerifier;->isSigningRelated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 781
    goto :goto_6

    .line 783
    :cond_21
    iget-object v2, p0, Ljava/util/jar/JarVerifier$2;->val$jar:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarVerifier$2;->entry:Ljava/util/jar/JarEntry;

    .line 784
    return v1

    .line 786
    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_2a
    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->signers:Ljava/util/Enumeration;

    if-nez v0, :cond_3a

    .line 787
    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->val$map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/JarVerifier$2;->signers:Ljava/util/Enumeration;

    .line 789
    :cond_3a
    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->signers:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 790
    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->signers:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 791
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/jar/JarVerifier$2;->val$jar:Ljava/util/jar/JarFile;

    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/jar/JarFile;->newEntry(Ljava/util/zip/ZipEntry;)Ljava/util/jar/JarEntry;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarVerifier$2;->entry:Ljava/util/jar/JarEntry;

    .line 792
    return v1

    .line 796
    .end local v0    # "name":Ljava/lang/String;
    :cond_58
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api nextElement()Ljava/lang/Object;
    .registers 2

    .line 769
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$2;->nextElement()Ljava/util/jar/JarEntry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextElement()Ljava/util/jar/JarEntry;
    .registers 4

    .line 800
    invoke-virtual {p0}, Ljava/util/jar/JarVerifier$2;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 801
    iget-object v0, p0, Ljava/util/jar/JarVerifier$2;->entry:Ljava/util/jar/JarEntry;

    .line 802
    .local v0, "je":Ljava/util/jar/JarEntry;
    iget-object v1, p0, Ljava/util/jar/JarVerifier$2;->val$map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/jar/JarVerifier$2;->entry:Ljava/util/jar/JarEntry;

    .line 804
    return-object v0

    .line 806
    .end local v0    # "je":Ljava/util/jar/JarEntry;
    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
