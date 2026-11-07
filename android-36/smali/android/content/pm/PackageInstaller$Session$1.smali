.class Landroid/content/pm/PackageInstaller$Session$1;
.super Landroid/content/pm/IOnChecksumsReadyListener$Stub;
.source "PackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/PackageInstaller$Session;->requestChecksums(Ljava/lang/String;ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$onChecksumsReadyListener:Landroid/content/pm/PackageManager$OnChecksumsReadyListener;


# direct methods
.method constructor blacklist <init>(Landroid/content/pm/PackageInstaller$Session;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/content/pm/PackageInstaller$Session;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1943
    iput-object p2, p0, Landroid/content/pm/PackageInstaller$Session$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/content/pm/PackageInstaller$Session$1;->val$onChecksumsReadyListener:Landroid/content/pm/PackageManager$OnChecksumsReadyListener;

    invoke-direct {p0}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onChecksumsReady$0(Landroid/content/pm/PackageManager$OnChecksumsReadyListener;Ljava/util/List;)V
    .registers 2
    .param p0, "onChecksumsReadyListener"    # Landroid/content/pm/PackageManager$OnChecksumsReadyListener;
    .param p1, "checksums"    # Ljava/util/List;

    .line 1948
    invoke-interface {p0, p1}, Landroid/content/pm/PackageManager$OnChecksumsReadyListener;->onChecksumsReady(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist onChecksumsReady(Ljava/util/List;)V
    .registers 5
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

    .line 1947
    .local p1, "checksums":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApkChecksum;>;"
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session$1;->val$onChecksumsReadyListener:Landroid/content/pm/PackageManager$OnChecksumsReadyListener;

    new-instance v2, Landroid/content/pm/PackageInstaller$Session$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/content/pm/PackageInstaller$Session$1$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageManager$OnChecksumsReadyListener;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1949
    return-void
.end method
