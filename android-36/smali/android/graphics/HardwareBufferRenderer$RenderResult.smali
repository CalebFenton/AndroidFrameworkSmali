.class public final Landroid/graphics/HardwareBufferRenderer$RenderResult;
.super Ljava/lang/Object;
.source "HardwareBufferRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/HardwareBufferRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RenderResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/HardwareBufferRenderer$RenderResult$RenderResultStatus;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_UNKNOWN:I = 0x1

.field public static final whitelist SUCCESS:I


# instance fields
.field private final blacklist mFence:Landroid/hardware/SyncFence;

.field private final blacklist mResultStatus:I


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/SyncFence;I)V
    .registers 3
    .param p1, "fence"    # Landroid/hardware/SyncFence;
    .param p2, "resultStatus"    # I

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Landroid/graphics/HardwareBufferRenderer$RenderResult;->mFence:Landroid/hardware/SyncFence;

    .line 231
    iput p2, p0, Landroid/graphics/HardwareBufferRenderer$RenderResult;->mResultStatus:I

    .line 232
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/SyncFence;ILandroid/graphics/HardwareBufferRenderer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/HardwareBufferRenderer$RenderResult;-><init>(Landroid/hardware/SyncFence;I)V

    return-void
.end method


# virtual methods
.method public whitelist getFence()Landroid/hardware/SyncFence;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderResult;->mFence:Landroid/hardware/SyncFence;

    return-object v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/graphics/HardwareBufferRenderer$RenderResult;->mResultStatus:I

    return v0
.end method
