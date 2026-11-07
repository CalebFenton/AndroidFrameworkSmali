.class Lcom/android/internal/app/ResolverActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic blacklist val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$1;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist onSomePackagesChanged()V
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$1;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 353
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->updateProfileViewButton()V

    .line 354
    return-void
.end method
