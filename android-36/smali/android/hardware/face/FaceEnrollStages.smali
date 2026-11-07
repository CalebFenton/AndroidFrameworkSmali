.class public final Landroid/hardware/face/FaceEnrollStages;
.super Ljava/lang/Object;
.source "FaceEnrollStages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceEnrollStages$FaceEnrollStage;
    }
.end annotation


# static fields
.field public static final blacklist ENROLLING_MOVEMENT_1:I = 0x4

.field public static final blacklist ENROLLING_MOVEMENT_2:I = 0x5

.field public static final blacklist ENROLLMENT_FINISHED:I = 0x6

.field public static final blacklist FIRST_FRAME_RECEIVED:I = 0x1

.field public static final blacklist HOLD_STILL_IN_CENTER:I = 0x3

.field public static final blacklist UNKNOWN:I = 0x0

.field public static final blacklist WAITING_FOR_CENTERING:I = 0x2


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
