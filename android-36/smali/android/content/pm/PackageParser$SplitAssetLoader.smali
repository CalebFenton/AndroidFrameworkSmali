.class interface abstract Landroid/content/pm/PackageParser$SplitAssetLoader;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SplitAssetLoader"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract blacklist getBaseApkAssets()Landroid/content/res/ApkAssets;
.end method

.method public abstract blacklist getBaseAssetManager()Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation
.end method

.method public abstract blacklist getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation
.end method
