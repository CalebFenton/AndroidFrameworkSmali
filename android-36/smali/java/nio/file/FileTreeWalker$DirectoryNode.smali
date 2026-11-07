.class Ljava/nio/file/FileTreeWalker$DirectoryNode;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/file/FileTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryNode"
.end annotation


# instance fields
.field private final blacklist dir:Ljava/nio/file/Path;

.field private final blacklist iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist key:Ljava/lang/Object;

.field private blacklist skipped:Z

.field private final blacklist stream:Ljava/nio/file/DirectoryStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/nio/file/Path;Ljava/lang/Object;Ljava/nio/file/DirectoryStream;)V
    .registers 5
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Object;",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p3, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->dir:Ljava/nio/file/Path;

    .line 76
    iput-object p2, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->key:Ljava/lang/Object;

    .line 77
    iput-object p3, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream:Ljava/nio/file/DirectoryStream;

    .line 78
    invoke-interface {p3}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->iterator:Ljava/util/Iterator;

    .line 79
    return-void
.end method


# virtual methods
.method blacklist directory()Ljava/nio/file/Path;
    .registers 2

    .line 82
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->dir:Ljava/nio/file/Path;

    return-object v0
.end method

.method blacklist iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method blacklist key()Ljava/lang/Object;
    .registers 2

    .line 86
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method blacklist skip()V
    .registers 2

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skipped:Z

    .line 99
    return-void
.end method

.method blacklist skipped()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skipped:Z

    return v0
.end method

.method blacklist stream()Ljava/nio/file/DirectoryStream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream:Ljava/nio/file/DirectoryStream;

    return-object v0
.end method
