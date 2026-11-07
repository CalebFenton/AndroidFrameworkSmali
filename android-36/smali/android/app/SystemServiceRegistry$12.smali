.class Landroid/app/SystemServiceRegistry$12;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/view/textclassifier/TextClassificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 419
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/view/textclassifier/TextClassificationManager;
    .registers 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 422
    new-instance v0, Landroid/view/textclassifier/TextClassificationManager;

    invoke-direct {v0, p1}, Landroid/view/textclassifier/TextClassificationManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$12;->createService(Landroid/app/ContextImpl;)Landroid/view/textclassifier/TextClassificationManager;

    move-result-object p1

    return-object p1
.end method
