.class public final synthetic Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/voice/AbstractDetector$BinderCallback;

.field public final synthetic blacklist f$1:Landroid/service/voice/HotwordDetectionServiceFailure;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda4;->f$0:Landroid/service/voice/AbstractDetector$BinderCallback;

    iput-object p2, p0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda4;->f$1:Landroid/service/voice/HotwordDetectionServiceFailure;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda4;->f$0:Landroid/service/voice/AbstractDetector$BinderCallback;

    iget-object v1, p0, Landroid/service/voice/AbstractDetector$BinderCallback$$ExternalSyntheticLambda4;->f$1:Landroid/service/voice/HotwordDetectionServiceFailure;

    invoke-static {v0, v1}, Landroid/service/voice/AbstractDetector$BinderCallback;->$r8$lambda$Eh1J-MLwTahxkA5r92hjPn7gGZQ(Landroid/service/voice/AbstractDetector$BinderCallback;Landroid/service/voice/HotwordDetectionServiceFailure;)V

    return-void
.end method
