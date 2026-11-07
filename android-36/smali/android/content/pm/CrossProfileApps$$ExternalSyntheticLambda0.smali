.class public final synthetic Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/content/pm/CrossProfileApps;->lambda$resetInteractAcrossProfilesAppOps$1(Ljava/util/Set;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
