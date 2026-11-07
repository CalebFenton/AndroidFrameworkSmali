.class public final Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;
.super Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LibraryLoader"
.end annotation


# instance fields
.field private final blacklist mWrappedLoader:Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)V
    .registers 2
    .param p1, "libraryLoader"    # Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;

    .line 278
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;-><init>()V

    .line 279
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;->mWrappedLoader:Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;

    .line 280
    return-void
.end method


# virtual methods
.method public blacklist loadLibrary(Ljava/lang/String;)V
    .registers 3
    .param p1, "libName"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;->mWrappedLoader:Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    .line 285
    return-void
.end method
