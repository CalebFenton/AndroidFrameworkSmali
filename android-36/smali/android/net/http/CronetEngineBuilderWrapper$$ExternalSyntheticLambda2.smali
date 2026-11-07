.class public final synthetic Landroid/net/http/CronetEngineBuilderWrapper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/http/CronetEngineBuilderWrapper$ExperimentalOptionsPatch;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/http/QuicOptions;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/http/QuicOptions;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/http/CronetEngineBuilderWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/net/http/QuicOptions;

    return-void
.end method


# virtual methods
.method public final blacklist applyTo(Lorg/json/JSONObject;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/net/http/CronetEngineBuilderWrapper$$ExternalSyntheticLambda2;->f$0:Landroid/net/http/QuicOptions;

    invoke-static {v0, p1}, Landroid/net/http/CronetEngineBuilderWrapper;->lambda$setQuicOptions$0(Landroid/net/http/QuicOptions;Lorg/json/JSONObject;)V

    return-void
.end method
