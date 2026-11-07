.class Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$1;
.super Ljava/lang/Object;
.source "LibraryLoader.java"

# interfaces
.implements Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 422
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$1;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist areNativeMethodsReady()Z
    .registers 2

    .line 425
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader$1;->this$0:Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->-$$Nest$misMainDexLoaded(Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;)Z

    move-result v0

    return v0
.end method
