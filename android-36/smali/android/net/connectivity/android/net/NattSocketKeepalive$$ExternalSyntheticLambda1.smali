.class public final synthetic Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/android/net/NattSocketKeepalive;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Z

.field public final synthetic blacklist f$3:Landroid/net/Network;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/android/net/NattSocketKeepalive;IZLandroid/net/Network;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;->f$0:Landroid/net/connectivity/android/net/NattSocketKeepalive;

    iput p2, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;->f$3:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;->f$0:Landroid/net/connectivity/android/net/NattSocketKeepalive;

    iget v1, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Landroid/net/connectivity/android/net/NattSocketKeepalive$$ExternalSyntheticLambda1;->f$3:Landroid/net/Network;

    invoke-static {v0, v1, v2, v3}, Landroid/net/connectivity/android/net/NattSocketKeepalive;->$r8$lambda$23YkgGSK00abDs2Shu8GEAIosxM(Landroid/net/connectivity/android/net/NattSocketKeepalive;IZLandroid/net/Network;)V

    return-void
.end method
