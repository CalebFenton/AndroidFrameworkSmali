.class final Landroid/os/FileUtils$1;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/FileUtils;->deleteOlderFiles(Ljava/io/File;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p1, "lhs"    # Ljava/io/File;
    .param p2, "rhs"    # Ljava/io/File;

    #@0
    .prologue
    .line 352
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    #@7
    move-result-wide v2

    #@8
    sub-long/2addr v0, v2

    #@9
    long-to-int v0, v0

    #@a
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 351
    check-cast p1, Ljava/io/File;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Ljava/io/File;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/FileUtils$1;->compare(Ljava/io/File;Ljava/io/File;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
