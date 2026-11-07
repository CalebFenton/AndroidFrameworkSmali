.class Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;
.super Landroid/os/FileObserver;
.source "FileSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/FileSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectoryObserver"
.end annotation


# static fields
.field private static final blacklist NOTIFY_EVENTS:I = 0xfcc


# instance fields
.field private final blacklist mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFile:Ljava/io/File;

.field private final blacklist mNotifyUri:Landroid/net/Uri;

.field private final blacklist mResolver:Landroid/content/ContentResolver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCursors(Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method constructor blacklist <init>(Ljava/io/File;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "notifyUri"    # Landroid/net/Uri;

    .line 750
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xfcc

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 751
    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    .line 752
    iput-object p2, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    .line 753
    iput-object p3, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    .line 754
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 755
    return-void
.end method


# virtual methods
.method public whitelist onEvent(ILjava/lang/String;)V
    .registers 7
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 759
    and-int/lit16 v0, p1, 0xfcc

    if-eqz v0, :cond_23

    .line 761
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;

    .line 762
    .local v1, "cursor":Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;
    invoke-virtual {v1}, Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;->notifyChanged()V

    .line 763
    .end local v1    # "cursor":Lcom/android/internal/content/FileSystemProvider$DirectoryCursor;
    goto :goto_a

    .line 764
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mNotifyUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 766
    :cond_23
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 770
    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "filePath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectoryObserver{file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/content/FileSystemProvider$DirectoryObserver;->mCursors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
