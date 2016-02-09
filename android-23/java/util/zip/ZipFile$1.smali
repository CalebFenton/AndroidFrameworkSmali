.class Ljava/util/zip/ZipFile$1;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
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
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/zip/ZipFile;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/zip/ZipFile;

    #@0
    .prologue
    .line 245
    .local p2, "val$iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    iput-object p1, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@2
    iput-object p2, p0, Ljava/util/zip/ZipFile$1;->val$iterator:Ljava/util/Iterator;

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
    .line 247
    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@2
    invoke-static {v0}, Ljava/util/zip/ZipFile;->-wrap0(Ljava/util/zip/ZipFile;)V

    #@5
    .line 248
    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->val$iterator:Ljava/util/Iterator;

    #@7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 251
    invoke-virtual {p0}, Ljava/util/zip/ZipFile$1;->nextElement()Ljava/util/zip/ZipEntry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextElement()Ljava/util/zip/ZipEntry;
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #@2
    invoke-static {v0}, Ljava/util/zip/ZipFile;->-wrap0(Ljava/util/zip/ZipFile;)V

    #@5
    .line 253
    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->val$iterator:Ljava/util/Iterator;

    #@7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@d
    return-object v0
.end method
