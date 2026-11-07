.class public final synthetic Ljava/util/stream/Collectors$$ExternalSyntheticLambda78;
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
    check-cast p1, Ljava/util/HashMap;

    invoke-static {p1}, Ljava/util/stream/Collectors;->lambda$toUnmodifiableMap$67(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
