.class public final Landroid/media/MediaRecorder$VideoSource;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoSource"
.end annotation


# static fields
.field public static final whitelist CAMERA:I = 0x1

.field public static final whitelist DEFAULT:I = 0x0

.field public static final whitelist SURFACE:I = 0x2


# direct methods
.method private constructor blacklist <init>(Landroid/media/MediaRecorder;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/MediaRecorder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
