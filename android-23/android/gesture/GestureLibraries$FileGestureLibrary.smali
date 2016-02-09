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
.field private final mPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    #@3
    .line 56
    iput-object p1, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    #@5
    .line 55
    return-void
.end method


# virtual methods
.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    #@2
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public load()Z
    .locals 7

    #@0
    .prologue
    .line 92
    const/4 v3, 0x0

    #@1
    .line 93
    .local v3, "result":Z
    iget-object v2, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    #@3
    .line 94
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 96
    :try_start_0
    iget-object v4, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@11
    new-instance v5, Ljava/io/FileInputStream;

    #@13
    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@16
    const/4 v6, 0x1

    #@17
    invoke-virtual {v4, v5, v6}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 97
    const/4 v3, 0x1

    #@1b
    .line 105
    :cond_0
    :goto_0
    return v3

    #@1c
    .line 100
    :catch_0
    move-exception v1

    #@1d
    .line 101
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "Gestures"

    #@20
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v6, "Could not load the gesture library from "

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    iget-object v6, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0

    #@3a
    .line 98
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@3b
    .line 99
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "Gestures"

    #@3e
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v6, "Could not load the gesture library from "

    #@46
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    iget-object v6, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    goto :goto_0
.end method

.method public save()Z
    .locals 8

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 65
    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@3
    invoke-virtual {v5}, Landroid/gesture/GestureStore;->hasChanged()Z

    #@6
    move-result v5

    #@7
    if-nez v5, :cond_0

    #@9
    return v6

    #@a
    .line 67
    :cond_0
    iget-object v2, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    #@c
    .line 69
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@f
    move-result-object v3

    #@10
    .line 70
    .local v3, "parentFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_1

    #@16
    .line 71
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_1

    #@1c
    .line 72
    const/4 v5, 0x0

    #@1d
    return v5

    #@1e
    .line 76
    :cond_1
    const/4 v4, 0x0

    #@1f
    .line 79
    .local v4, "result":Z
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    #@22
    .line 80
    iget-object v5, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@24
    new-instance v6, Ljava/io/FileOutputStream;

    #@26
    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@29
    const/4 v7, 0x1

    #@2a
    invoke-virtual {v5, v6, v7}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 81
    const/4 v4, 0x1

    #@2e
    .line 88
    :goto_0
    return v4

    #@2f
    .line 84
    :catch_0
    move-exception v1

    #@30
    .line 85
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Gestures"

    #@33
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v7, "Could not save the gesture library in "

    #@3b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v6

    #@3f
    iget-object v7, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    goto :goto_0

    #@4d
    .line 82
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    #@4e
    .line 83
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v5, "Gestures"

    #@51
    new-instance v6, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v7, "Could not save the gesture library in "

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    iget-object v7, p0, Landroid/gesture/GestureLibraries$FileGestureLibrary;->mPath:Ljava/io/File;

    #@5f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6a
    goto :goto_0
.end method
