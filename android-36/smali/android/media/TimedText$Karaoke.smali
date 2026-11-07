.class public final Landroid/media/TimedText$Karaoke;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Karaoke"
.end annotation


# instance fields
.field public final greylist-max-o endChar:I

.field public final greylist-max-o endTimeMs:I

.field public final greylist-max-o startChar:I

.field public final greylist-max-o startTimeMs:I


# direct methods
.method public constructor greylist-max-o <init>(IIII)V
    .registers 5
    .param p1, "startTimeMs"    # I
    .param p2, "endTimeMs"    # I
    .param p3, "startChar"    # I
    .param p4, "endChar"    # I

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p1, p0, Landroid/media/TimedText$Karaoke;->startTimeMs:I

    .line 308
    iput p2, p0, Landroid/media/TimedText$Karaoke;->endTimeMs:I

    .line 309
    iput p3, p0, Landroid/media/TimedText$Karaoke;->startChar:I

    .line 310
    iput p4, p0, Landroid/media/TimedText$Karaoke;->endChar:I

    .line 311
    return-void
.end method
