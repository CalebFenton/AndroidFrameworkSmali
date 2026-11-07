.class Landroid/app/SystemServiceRegistry$107;
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
        "Landroid/app/contentsuggestions/ContentSuggestionsManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1382
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/app/contentsuggestions/ContentSuggestionsManager;
    .registers 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 1386
    const-string v0, "content_suggestions"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1388
    .local v0, "b":Landroid/os/IBinder;
    nop

    .line 1389
    invoke-static {v0}, Landroid/app/contentsuggestions/IContentSuggestionsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contentsuggestions/IContentSuggestionsManager;

    move-result-object v1

    .line 1390
    .local v1, "service":Landroid/app/contentsuggestions/IContentSuggestionsManager;
    new-instance v2, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-direct {v2, v3, v1}, Landroid/app/contentsuggestions/ContentSuggestionsManager;-><init>(ILandroid/app/contentsuggestions/IContentSuggestionsManager;)V

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

    .line 1382
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$107;->createService(Landroid/app/ContextImpl;)Landroid/app/contentsuggestions/ContentSuggestionsManager;

    move-result-object p1

    return-object p1
.end method
