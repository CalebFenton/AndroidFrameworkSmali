.class Landroid/inputmethodservice/navigationbar/DeadZone$2;
.super Ljava/lang/Object;
.source "DeadZone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/DeadZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/inputmethodservice/navigationbar/DeadZone;


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/navigationbar/DeadZone;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/navigationbar/DeadZone;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone$2;->this$0:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 81
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone$2;->this$0:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-static {}, Landroid/inputmethodservice/navigationbar/DeadZone;->-$$Nest$sfgetFLASH_PROPERTY()Landroid/util/FloatProperty;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1a

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 82
    return-void

    :array_1a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
