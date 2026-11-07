.class public final synthetic Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/voice/VisualQueryDetector$BinderCallback;

.field public final synthetic blacklist f$1:Landroid/service/voice/VisualQueryDetectedResult;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectedResult;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda4;->f$0:Landroid/service/voice/VisualQueryDetector$BinderCallback;

    iput-object p2, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda4;->f$1:Landroid/service/voice/VisualQueryDetectedResult;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda4;->f$0:Landroid/service/voice/VisualQueryDetector$BinderCallback;

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector$BinderCallback$$ExternalSyntheticLambda4;->f$1:Landroid/service/voice/VisualQueryDetectedResult;

    invoke-static {v0, v1}, Landroid/service/voice/VisualQueryDetector$BinderCallback;->$r8$lambda$-tKnTMnRitnHJVJ1QejdBxaDso4(Landroid/service/voice/VisualQueryDetector$BinderCallback;Landroid/service/voice/VisualQueryDetectedResult;)V

    return-void
.end method
