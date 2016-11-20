.class public final Landroid/gesture/GestureLibraries;
.super Ljava/lang/Object;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gesture/GestureLibraries$FileGestureLibrary;,
        Landroid/gesture/GestureLibraries$ResourceGestureLibrary;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    #@0
    .prologue
    .line 41
    new-instance v0, Landroid/gesture/GestureLibraries$FileGestureLibrary;

    #@2
    invoke-direct {v0, p0}, Landroid/gesture/GestureLibraries$FileGestureLibrary;-><init>(Ljava/io/File;)V

    #@5
    return-object v0
.end method

.method public static fromFile(Ljava/lang/String;)Landroid/gesture/GestureLibrary;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-static {v0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static fromPrivateFile(Landroid/content/Context;Ljava/lang/String;)Landroid/gesture/GestureLibrary;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    #@0
    .prologue
    .line 49
    new-instance v0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method
