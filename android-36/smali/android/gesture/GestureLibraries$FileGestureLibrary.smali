.class Landroid/gesture/GestureLibraries$FileGestureLibrary;
.super Landroid/gesture/GestureLibrary;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureLibraries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileGestureLibrary"
.end annotation


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final greylist-max-o mPath:Ljava/io/File;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "path"    # Ljava/io/File;

    .line 64
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mFd:Ljava/io/FileDescriptor;

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/FileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 69
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 71
    iput-object p1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mFd:Ljava/io/FileDescriptor;

    .line 72
    return-void
.end method


# virtual methods
.method public whitelist isReadOnly()Z
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    if-eqz v0, :cond_d

    .line 81
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 83
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist load()Z
    .registers 7

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "result":Z
    iget-object v1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    const/4 v2, 0x1

    const-string v3, "Gestures"

    if-eqz v1, :cond_3c

    .line 122
    iget-object v1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 123
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 125
    :try_start_16
    iget-object v4, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5, v2}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_20} :catch_22

    .line 126
    const/4 v0, 0x1

    .line 129
    goto :goto_3b

    .line 127
    :catch_22
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load the gesture library from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3b
    :goto_3b
    goto :goto_50

    .line 133
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1, v4, v2}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_48} :catch_4a

    .line 134
    const/4 v0, 0x1

    .line 137
    goto :goto_50

    .line 135
    :catch_4a
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Could not load the gesture library"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :goto_50
    return v0
.end method

.method public whitelist save()Z
    .registers 8

    .line 87
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    invoke-virtual {v0}, Landroid/gesture/GestureStore;->hasChanged()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 88
    :cond_a
    const/4 v0, 0x0

    .line 90
    .local v0, "result":Z
    iget-object v2, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    const-string v3, "Gestures"

    if-eqz v2, :cond_4e

    .line 91
    iget-object v2, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    .line 93
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 94
    .local v4, "parentFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_25

    .line 95
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_25

    .line 96
    const/4 v1, 0x0

    return v1

    .line 102
    :cond_25
    :try_start_25
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 103
    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5, v6, v1}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_34

    .line 104
    const/4 v0, 0x1

    .line 107
    goto :goto_4d

    .line 105
    :catch_34
    move-exception v1

    .line 106
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not save the gesture library in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "parentFile":Ljava/io/File;
    :goto_4d
    goto :goto_62

    .line 110
    :cond_4e
    :try_start_4e
    iget-object v2, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v2, v4, v1}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_5c

    .line 111
    const/4 v0, 0x1

    .line 114
    goto :goto_62

    .line 112
    :catch_5c
    move-exception v1

    .line 113
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v2, "Could not save the gesture library"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    :goto_62
    return v0
.end method
