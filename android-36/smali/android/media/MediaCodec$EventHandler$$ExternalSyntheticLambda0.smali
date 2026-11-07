.class public final synthetic Landroid/media/MediaCodec$EventHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Landroid/media/MediaCodec$EventHandler;->lambda$handleCallback$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
