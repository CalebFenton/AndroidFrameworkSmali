.class public final synthetic Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/search/SearchUiService;

.field public final synthetic blacklist f$1:Ljava/util/ArrayList;

.field public final synthetic blacklist f$2:Landroid/service/search/SearchUiService$CallbackWrapper;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;->f$0:Landroid/service/search/SearchUiService;

    iput-object p2, p0, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;->f$2:Landroid/service/search/SearchUiService$CallbackWrapper;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;->f$0:Landroid/service/search/SearchUiService;

    iget-object v1, p0, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/service/search/SearchUiService$$ExternalSyntheticLambda1;->f$2:Landroid/service/search/SearchUiService$CallbackWrapper;

    invoke-static {v0, v1, v2}, Landroid/service/search/SearchUiService;->$r8$lambda$uZ1fncm-TW0PiUAG9YxHx76WtkU(Landroid/service/search/SearchUiService;Ljava/util/ArrayList;Landroid/service/search/SearchUiService$CallbackWrapper;)V

    return-void
.end method
