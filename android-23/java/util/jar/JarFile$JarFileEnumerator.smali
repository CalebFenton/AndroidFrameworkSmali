.class final Ljava/util/jar/JarFile$JarFileEnumerator;
.super Ljava/lang/Object;
.source "JarFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JarFileEnumerator"
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
.field final jf:Ljava/util/jar/JarFile;

.field final ze:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Enumeration;Ljava/util/jar/JarFile;)V
    .locals 0
    .param p2, "jf"    # Ljava/util/jar/JarFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;",
            "Ljava/util/jar/JarFile;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 145
    .local p1, "zenum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 146
    iput-object p1, p0, Ljava/util/jar/JarFile$JarFileEnumerator;->ze:Ljava/util/Enumeration;

    #@5
    .line 147
    iput-object p2, p0, Ljava/util/jar/JarFile$JarFileEnumerator;->jf:Ljava/util/jar/JarFile;

    #@7
    .line 145
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEnumerator;->ze:Ljava/util/Enumeration;

    #@2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarFileEnumerator;->nextElement()Ljava/util/jar/JarEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/util/jar/JarEntry;
    .locals 3

    #@0
    .prologue
    .line 155
    new-instance v1, Ljava/util/jar/JarEntry;

    #@2
    iget-object v0, p0, Ljava/util/jar/JarFile$JarFileEnumerator;->ze:Ljava/util/Enumeration;

    #@4
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@a
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEnumerator;->jf:Ljava/util/jar/JarFile;

    #@c
    invoke-direct {v1, v0, v2}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;Ljava/util/jar/JarFile;)V

    #@f
    return-object v1
.end method
