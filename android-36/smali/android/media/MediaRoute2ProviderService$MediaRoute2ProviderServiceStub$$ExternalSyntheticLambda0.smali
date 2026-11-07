.class public final synthetic Landroid/media/MediaRoute2ProviderService$MediaRoute2ProviderServiceStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .line 0
    check-cast p1, Landroid/media/MediaRoute2ProviderService;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    check-cast p5, Landroid/os/Bundle;

    move-object p0, p1

    move-wide p1, v0

    invoke-virtual/range {p0 .. p5}, Landroid/media/MediaRoute2ProviderService;->onCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
