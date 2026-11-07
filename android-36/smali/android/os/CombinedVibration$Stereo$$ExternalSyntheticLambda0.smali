.class public final synthetic Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/CombinedVibration$Stereo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/CombinedVibration$Stereo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda0;->f$0:Landroid/os/CombinedVibration$Stereo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/os/CombinedVibration$Stereo$$ExternalSyntheticLambda0;->f$0:Landroid/os/CombinedVibration$Stereo;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Landroid/os/CombinedVibration$Stereo;->$r8$lambda$cdvXeSO9pMJjJ-u7cs1pGfka_30(Landroid/os/CombinedVibration$Stereo;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
