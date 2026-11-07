.class Landroid/app/SystemServiceRegistry$97;
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
        "Landroid/view/autofill/AutofillManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1257
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/view/autofill/AutofillManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1261
    const-string v0, "autofill"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1262
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/autofill/IAutoFillManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManager;

    move-result-object v1

    .line 1263
    .local v1, "service":Landroid/view/autofill/IAutoFillManager;
    new-instance v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/autofill/AutofillManager;-><init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V

    return-object v2
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

    .line 1257
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$97;->createService(Landroid/app/ContextImpl;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    return-object p1
.end method
