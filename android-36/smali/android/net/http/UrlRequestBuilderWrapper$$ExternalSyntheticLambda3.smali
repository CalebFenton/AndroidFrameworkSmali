.class public final synthetic Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/http/UrlRequestBuilderWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/net/http/UrlRequestWrapper;

    invoke-static {v0, v1, p1}, Landroid/net/http/UrlRequestBuilderWrapper;->lambda$addHeader$5(Ljava/lang/String;Ljava/lang/String;Landroid/net/http/UrlRequestWrapper;)V

    return-void
.end method
