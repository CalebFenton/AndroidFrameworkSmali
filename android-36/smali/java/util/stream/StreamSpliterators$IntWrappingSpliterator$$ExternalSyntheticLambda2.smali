.class public final synthetic Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;->f$0:Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsBoolean()Z
    .registers 2

    .line 0
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;->f$0:Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    invoke-static {v0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->$r8$lambda$erYXpBf75GvJ2KESIfXF-158ZU4(Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;)Z

    move-result v0

    return v0
.end method
