.class public final synthetic Ljava/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/StreamSpliterators$WrappingSpliterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/StreamSpliterators$WrappingSpliterator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsBoolean()Z
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$$ExternalSyntheticLambda1;->f$0:Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    invoke-static {v0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->$r8$lambda$td8b7re0lYsnNK0AHcPrVn8iDks(Ljava/util/stream/StreamSpliterators$WrappingSpliterator;)Z

    move-result v0

    return v0
.end method
