.class public interface abstract Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;
.super Ljava/lang/Object;
.source "InsetsAnimationControlRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsAnimationControlRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceParamsApplier"
.end annotation


# static fields
.field public static final blacklist DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    return-void
.end method

.method public static synthetic blacklist lambda$static$0([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 5
    .param p0, "params"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 120
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 121
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_16

    .line 122
    aget-object v2, p0, v1

    const/16 v3, 0x9

    new-array v3, v3, [F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 121
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 124
    .end local v1    # "i":I
    :cond_16
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 125
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 126
    return-void
.end method


# virtual methods
.method public varargs abstract blacklist applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
.end method
