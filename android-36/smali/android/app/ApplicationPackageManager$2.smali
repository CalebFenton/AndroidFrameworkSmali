.class Landroid/app/ApplicationPackageManager$2;
.super Landroid/content/pm/IOnChecksumsReadyListener$Stub;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ApplicationPackageManager;->requestChecksums(Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$onChecksumsReadyListener:Landroid/content/pm/PackageManager$OnChecksumsReadyListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/ApplicationPackageManager;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/app/ApplicationPackageManager;
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

    .line 1097
    iput-object p2, p0, Landroid/app/ApplicationPackageManager$2;->val$onChecksumsReadyListener:Landroid/content/pm/PackageManager$OnChecksumsReadyListener;

    invoke-direct {p0}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onChecksumsReady(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ApkChecksum;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    .local p1, "checksums":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApkChecksum;>;"
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$2;->val$onChecksumsReadyListener:Landroid/content/pm/PackageManager$OnChecksumsReadyListener;

    invoke-interface {v0, p1}, Landroid/content/pm/PackageManager$OnChecksumsReadyListener;->onChecksumsReady(Ljava/util/List;)V

    .line 1102
    return-void
.end method
