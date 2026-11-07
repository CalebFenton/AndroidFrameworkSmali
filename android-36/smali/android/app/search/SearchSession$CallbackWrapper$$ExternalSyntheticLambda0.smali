.class public final synthetic Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/search/SearchSession$CallbackWrapper;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/search/SearchSession$CallbackWrapper;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSession$CallbackWrapper;

    iput-object p2, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/search/SearchSession$CallbackWrapper;

    iget-object v1, p0, Landroid/app/search/SearchSession$CallbackWrapper$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/app/search/SearchSession$CallbackWrapper;->$r8$lambda$WeWgWZfIwgFnHHy90wVZVI9Dvhc(Landroid/app/search/SearchSession$CallbackWrapper;Ljava/util/List;)V

    return-void
.end method
