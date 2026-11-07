.class public abstract Landroid/hardware/face/FaceManager$EnrollmentCallback;
.super Ljava/lang/Object;
.source "FaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EnrollmentCallback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onEnrollmentError(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 1133
    return-void
.end method

.method public blacklist onEnrollmentFrame(ILjava/lang/CharSequence;Landroid/hardware/face/FaceEnrollCell;IFFF)V
    .registers 8
    .param p1, "helpCode"    # I
    .param p2, "helpMessage"    # Ljava/lang/CharSequence;
    .param p3, "cell"    # Landroid/hardware/face/FaceEnrollCell;
    .param p4, "stage"    # I
    .param p5, "pan"    # F
    .param p6, "tilt"    # F
    .param p7, "distance"    # F

    .line 1172
    invoke-virtual {p0, p1, p2}, Landroid/hardware/face/FaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    .line 1173
    return-void
.end method

.method public blacklist onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 1145
    return-void
.end method

.method public blacklist onEnrollmentProgress(I)V
    .registers 2
    .param p1, "remaining"    # I

    .line 1183
    return-void
.end method
