.class final Landroid/graphics/HardwareRenderer$DestroyContextRunnable;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DestroyContextRunnable"
.end annotation


# instance fields
.field private final blacklist mNativeInstance:J


# direct methods
.method constructor blacklist <init>(J)V
    .registers 3
    .param p1, "nativeInstance"    # J

    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1288
    iput-wide p1, p0, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;->mNativeInstance:J

    .line 1289
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 1293
    iget-wide v0, p0, Landroid/graphics/HardwareRenderer$DestroyContextRunnable;->mNativeInstance:J

    invoke-static {v0, v1}, Landroid/graphics/HardwareRenderer;->-$$Nest$smnDeleteProxy(J)V

    .line 1294
    return-void
.end method
