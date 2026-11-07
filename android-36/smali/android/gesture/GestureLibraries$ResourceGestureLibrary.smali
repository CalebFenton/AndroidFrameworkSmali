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
.field private final greylist-max-o mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mResourceId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I

    .line 148
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mContext:Ljava/lang/ref/WeakReference;

    .line 150
    iput p2, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    .line 151
    return-void
.end method


# virtual methods
.method public whitelist isReadOnly()Z
    .registers 2

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist load()Z
    .registers 8

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "result":Z
    iget-object v1, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 165
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_40

    .line 166
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 168
    .local v2, "in":Ljava/io/InputStream;
    :try_start_15
    iget-object v3, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1d

    .line 169
    const/4 v0, 0x1

    .line 173
    goto :goto_40

    .line 170
    :catch_1d
    move-exception v3

    .line 171
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not load the gesture library from raw resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 172
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    const-string v5, "Gestures"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_40
    :goto_40
    return v0
.end method

.method public whitelist save()Z
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method
