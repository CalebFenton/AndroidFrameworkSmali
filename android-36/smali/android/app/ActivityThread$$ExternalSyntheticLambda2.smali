.class public final synthetic Landroid/app/ActivityThread$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Landroid/app/ActivityThread$ProviderKey;

    invoke-static {p1}, Landroid/app/ActivityThread;->lambda$getGetProviderKey$5(Landroid/app/ActivityThread$ProviderKey;)Landroid/app/ActivityThread$ProviderKey;

    move-result-object p1

    return-object p1
.end method
