.class public final synthetic Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker$$ExternalSyntheticLambda4;
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
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishServiceDescTracker;->$r8$lambda$qeCtrN8qB1ATUXsk_9S3bGhP5kg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
