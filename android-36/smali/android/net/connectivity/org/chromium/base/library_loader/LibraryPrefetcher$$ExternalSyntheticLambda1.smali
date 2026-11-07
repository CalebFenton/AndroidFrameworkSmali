.class public final synthetic Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Z


# direct methods
.method public synthetic constructor blacklist <init>(Z)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$$ExternalSyntheticLambda1;->f$0:Z

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher;->lambda$asyncPrefetchLibrariesToMemory$1(Z)V

    return-void
.end method
