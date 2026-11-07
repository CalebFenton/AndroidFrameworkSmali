.class public final synthetic Landroid/widget/RemoteViews$ApplicationInfoCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$ApplicationInfoCache$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$ApplicationInfoCache$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/ApplicationInfo;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$ApplicationInfoCache;->lambda$getOrPut$0(Landroid/content/pm/ApplicationInfo;Landroid/util/Pair;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method
