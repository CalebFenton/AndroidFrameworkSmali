.class public final synthetic Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Z

.field public final synthetic blacklist f$1:Z


# direct methods
.method public synthetic constructor blacklist <init>(ZZ)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;->f$0:Z

    iput-boolean p2, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;->f$0:Z

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Landroid/net/wifi/SecurityParams;

    invoke-static {v0, v1, p1}, Landroid/net/wifi/WifiConfiguration;->lambda$enableFils$1(ZZLandroid/net/wifi/SecurityParams;)V

    return-void
.end method
