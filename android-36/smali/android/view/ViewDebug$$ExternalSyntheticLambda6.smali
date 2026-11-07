.class public final synthetic Landroid/view/ViewDebug$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/view/ViewDebug;->lambda$convertToPropertyInfos$8(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
