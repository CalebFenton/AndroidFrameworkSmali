.class Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcherImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/servicewatcher/ServiceWatcherImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;"
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 77
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;"
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onSomePackagesChanged()V
    .registers 3

    .line 82
    .local p0, "this":Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;, "Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;"
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;->this$0:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V

    .line 83
    return-void
.end method
