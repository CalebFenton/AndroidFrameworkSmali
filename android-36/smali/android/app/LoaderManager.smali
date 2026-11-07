.class public abstract Landroid/app/LoaderManager;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoaderManager$LoaderCallbacks;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist enableDebugLogging(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 204
    sput-boolean p0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    .line 205
    return-void
.end method


# virtual methods
.method public abstract whitelist destroyLoader(I)V
.end method

.method public abstract whitelist dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public greylist-max-o getFragmentHostCallback()Landroid/app/FragmentHostCallback;
    .registers 2

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract whitelist getLoader(I)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract whitelist initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract whitelist restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method
