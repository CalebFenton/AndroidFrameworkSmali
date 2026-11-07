.class public final synthetic Landroid/app/blob/BlobStoreManagerFrameworkInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist createService(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->lambda$initialize$0(Landroid/content/Context;Landroid/os/IBinder;)Landroid/app/blob/BlobStoreManager;

    move-result-object p1

    return-object p1
.end method
