.class public final synthetic Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;

.field public final synthetic blacklist f$1:Landroid/service/voice/HotwordRejectedResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;->f$0:Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;

    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;->f$1:Landroid/service/voice/HotwordRejectedResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;->f$0:Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;

    iget-object v1, p0, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback$$ExternalSyntheticLambda0;->f$1:Landroid/service/voice/HotwordRejectedResult;

    invoke-static {v0, v1}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;->$r8$lambda$hpgjg7zyFlXLkmeuFVA4aGeD0n0(Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V

    return-void
.end method
