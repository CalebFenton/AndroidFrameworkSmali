.class public interface abstract Lcom/android/internal/pm/split/SplitAssetLoader;
.super Ljava/lang/Object;
.source "SplitAssetLoader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract blacklist getBaseApkAssets()Landroid/content/res/ApkAssets;
.end method

.method public abstract blacklist getBaseAssetManager()Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract blacklist getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
