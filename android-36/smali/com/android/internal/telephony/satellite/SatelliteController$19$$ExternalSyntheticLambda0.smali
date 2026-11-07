.class public final synthetic Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteController$19$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteController$19;->$r8$lambda$uYKXq3PLwzG6Pe61eMWvTbJn3DE(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
