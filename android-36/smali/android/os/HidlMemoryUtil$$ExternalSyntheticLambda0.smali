.class public final synthetic Landroid/os/HidlMemoryUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:J

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(JI)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/os/HidlMemoryUtil$$ExternalSyntheticLambda0;->f$0:J

    iput p3, p0, Landroid/os/HidlMemoryUtil$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-wide v0, p0, Landroid/os/HidlMemoryUtil$$ExternalSyntheticLambda0;->f$0:J

    iget v2, p0, Landroid/os/HidlMemoryUtil$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1, v2}, Landroid/os/HidlMemoryUtil;->lambda$getBuffer$0(JI)V

    return-void
.end method
