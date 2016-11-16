.class Ljava/util/jar/JarFile$1;
.super Ljava/lang/Object;
.source "JarFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;
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
.field final synthetic this$0:Ljava/util/jar/JarFile;

.field final synthetic val$enum_:Ljava/util/Enumeration;


# direct methods
.method constructor <init>(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/jar/JarFile;
    .param p2, "val$enum_"    # Ljava/util/Enumeration;

    #@0
    .prologue
    .line 246
    iput-object p1, p0, Ljava/util/jar/JarFile$1;->this$0:Ljava/util/jar/JarFile;

    #@2
    iput-object p2, p0, Ljava/util/jar/JarFile$1;->val$enum_:Ljava/util/Enumeration;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Ljava/util/jar/JarFile$1;->val$enum_:Ljava/util/Enumeration;

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
    .line 250
    invoke-virtual {p0}, Ljava/util/jar/JarFile$1;->nextElement()Ljava/util/jar/JarFile$JarFileEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/util/jar/JarFile$JarFileEntry;
    .locals 3

    #@0
    .prologue
    .line 251
    iget-object v1, p0, Ljava/util/jar/JarFile$1;->val$enum_:Ljava/util/Enumeration;

    #@2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@8
    .line 252
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    new-instance v1, Ljava/util/jar/JarFile$JarFileEntry;

    #@a
    iget-object v2, p0, Ljava/util/jar/JarFile$1;->this$0:Ljava/util/jar/JarFile;

    #@c
    invoke-direct {v1, v2, v0}, Ljava/util/jar/JarFile$JarFileEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V

    #@f
    return-object v1
.end method
