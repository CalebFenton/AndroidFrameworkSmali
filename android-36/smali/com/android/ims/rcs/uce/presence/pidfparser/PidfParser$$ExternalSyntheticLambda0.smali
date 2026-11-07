.class public final synthetic Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser$TimestampProxy;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist getTimestamp()Ljava/time/Instant;
    .registers 2

    .line 0
    invoke-static {}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->lambda$static$0()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method
