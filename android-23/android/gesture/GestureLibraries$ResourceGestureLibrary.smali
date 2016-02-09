.class Landroid/gesture/GestureLibraries$ResourceGestureLibrary;
.super Landroid/gesture/GestureLibrary;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureLibraries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceGestureLibrary"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    #@3
    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mContext:Ljava/lang/ref/WeakReference;

    #@a
    .line 115
    iput p2, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    #@c
    .line 113
    return-void
.end method


# virtual methods
.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public load()Z
    .locals 8

    #@0
    .prologue
    .line 128
    const/4 v3, 0x0

    #@1
    .line 129
    .local v3, "result":Z
    iget-object v4, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mContext:Ljava/lang/ref/WeakReference;

    #@3
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/content/Context;

    #@9
    .line 130
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    #@b
    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v4

    #@f
    iget v5, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    #@11
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@14
    move-result-object v2

    #@15
    .line 133
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    #@17
    const/4 v5, 0x1

    #@18
    invoke-virtual {v4, v2, v5}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 134
    const/4 v3, 0x1

    #@1c
    .line 141
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v3

    #@1d
    .line 135
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    #@1e
    .line 136
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "Gestures"

    #@21
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "Could not load the gesture library from raw resource "

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    .line 137
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v6

    #@31
    iget v7, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    #@33
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@36
    move-result-object v6

    #@37
    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    goto :goto_0
.end method

.method public save()Z
    .locals 1

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    return v0
.end method
