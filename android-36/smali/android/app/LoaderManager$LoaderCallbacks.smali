.class public interface abstract Landroid/app/LoaderManager$LoaderCallbacks;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract whitelist onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract whitelist onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "TD;>;TD;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onLoaderReset(Landroid/content/Loader;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "TD;>;)V"
        }
    .end annotation
.end method
