.class public final synthetic Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 0
    check-cast p1, Landroid/service/search/SearchUiService;

    check-cast p2, Landroid/app/search/SearchSessionId;

    invoke-static {p1, p2}, Landroid/service/search/SearchUiService$1;->$r8$lambda$VKEQnd2qSLkBnC-kj55OgoYB_8E(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;)V

    return-void
.end method
