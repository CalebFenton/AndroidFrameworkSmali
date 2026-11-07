.class public final synthetic Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/voice/AbstractDetector$BinderCallback;

.field public final synthetic blacklist f$1:Landroid/service/voice/HotwordRejectedResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda1;->f$0:Landroid/service/voice/AbstractDetector$BinderCallback;

    iput-object p2, p0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda1;->f$1:Landroid/service/voice/HotwordRejectedResult;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda1;->f$0:Landroid/service/voice/AbstractDetector$BinderCallback;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda1;->f$1:Landroid/service/voice/HotwordRejectedResult;

    invoke-static {v0, v1}, Landroid/service/voice/AbstractDetector$BinderCallback;->$r8$lambda$4Bfkl16qtKcZu9smuOCiwDIV_tI(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordRejectedResult;)V

    return-void
.end method
