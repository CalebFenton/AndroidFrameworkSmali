.class public abstract Landroid/hardware/face/FaceManager$RemovalCallback;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemovalCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "errMsgId"    # I
    .param p3, "errString"    # Ljava/lang/CharSequence;

    .line 1205
    return-void
.end method

.method public blacklist onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .registers 3
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 1213
    return-void
.end method
