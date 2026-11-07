.class Landroid/service/autofill/InlineSuggestionRenderService$1;
.super Landroid/util/LruCache;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/InlineSuggestionRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/service/autofill/InlineSuggestionRenderService;I)V
    .registers 3
    .param p1, "this$0"    # Landroid/service/autofill/InlineSuggestionRenderService;
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 79
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist entryRemoved(ZLandroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "evicted"    # Z
    .param p2, "key"    # Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;
    .param p3, "oldValue"    # Ljava/lang/Boolean;
    .param p4, "newValue"    # Ljava/lang/Boolean;

    .line 84
    if-eqz p1, :cond_c

    .line 85
    const-string v0, "InlineSuggestionRenderService"

    const-string v1, "Hit max=30 entries in the cache. Releasing oldest one to make space."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p2}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    .line 90
    :cond_c
    return-void
.end method

.method public bridge synthetic whitelist entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 79
    check-cast p2, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    check-cast p3, Ljava/lang/Boolean;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/service/autofill/InlineSuggestionRenderService$1;->entryRemoved(ZLandroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
