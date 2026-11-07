.class public Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderWithLibraryLoaderImpl;
.super Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;
.source "NativeCronetEngineBuilderWithLibraryLoaderImpl.java"


# instance fields
.field private blacklist mLibraryLoader:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderImpl;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method blacklist libraryLoader()Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;
    .registers 2

    .line 37
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderWithLibraryLoaderImpl;->mLibraryLoader:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;

    return-object v0
.end method

.method public bridge synthetic blacklist setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 16
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderWithLibraryLoaderImpl;->setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 3
    .param p1, "loader"    # Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;

    .line 31
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;

    invoke-direct {v0, p1}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;-><init>(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/NativeCronetEngineBuilderWithLibraryLoaderImpl;->mLibraryLoader:Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;

    .line 32
    return-object p0
.end method
