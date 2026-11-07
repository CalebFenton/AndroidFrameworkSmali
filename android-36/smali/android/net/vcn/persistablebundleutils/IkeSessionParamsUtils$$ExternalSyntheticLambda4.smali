.class public final synthetic Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;->lambda$toPersistableBundle$0(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
