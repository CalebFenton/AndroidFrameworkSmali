.class Landroid/app/UriGrantsManager$1;
.super Landroid/util/Singleton;
.source "UriGrantsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UriGrantsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IUriGrantsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IUriGrantsManager;
    .registers 3

    .line 52
    const-string/jumbo v0, "uri_grants"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 53
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IUriGrantsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUriGrantsManager;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 49
    invoke-virtual {p0}, Landroid/app/UriGrantsManager$1;->create()Landroid/app/IUriGrantsManager;

    move-result-object v0

    return-object v0
.end method
