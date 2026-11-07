.class public interface abstract Lcom/android/okhttp/internal/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final blacklist SYSTEM:Lcom/android/okhttp/internal/io/FileSystem;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Lcom/android/okhttp/internal/io/FileSystem$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/io/FileSystem$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/io/FileSystem;->SYSTEM:Lcom/android/okhttp/internal/io/FileSystem;

    return-void
.end method


# virtual methods
.method public abstract blacklist appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract blacklist delete(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteContents(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist exists(Ljava/io/File;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist rename(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract blacklist size(Ljava/io/File;)J
.end method

.method public abstract blacklist source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
