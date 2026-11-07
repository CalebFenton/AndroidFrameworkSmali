.class public final synthetic Landroid/os/UserManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IpcDataCache$BypassCall;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist apply(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 2

    .line 0
    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Landroid/os/UserManager;->lambda$getUserRestrictionFromQuery$2(Landroid/util/Pair;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
