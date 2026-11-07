.class public final synthetic Landroid/security/intrusiondetection/IntrusionDetectionManager$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

    iput p2, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3$$ExternalSyntheticLambda0;->f$0:Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;

    iget v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionManager$3$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/security/intrusiondetection/IntrusionDetectionManager$3;->lambda$onFailure$0(Landroid/security/intrusiondetection/IntrusionDetectionManager$CommandCallback;I)V

    return-void
.end method
