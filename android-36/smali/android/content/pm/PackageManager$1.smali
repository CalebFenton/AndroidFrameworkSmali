.class Landroid/content/pm/PackageManager$1;
.super Lcom/android/internal/pm/parsing/PackageParser2$Callback;
.source "PackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/pm/PackageManager;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 9035
    iput-object p1, p0, Landroid/content/pm/PackageManager$1;->this$0:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/internal/pm/parsing/PackageParser2$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getHiddenApiWhitelistedApps()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9044
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getInstallConstraintsAllowlist()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9050
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "feature"    # Ljava/lang/String;

    .line 9038
    iget-object v0, p0, Landroid/content/pm/PackageManager$1;->this$0:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 9056
    const/4 v0, 0x0

    return v0
.end method
