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
.field public final endChar:I

.field public final endTimeMs:I

.field public final startChar:I

.field public final startTimeMs:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "startTimeMs"    # I
    .param p2, "endTimeMs"    # I
    .param p3, "startChar"    # I
    .param p4, "endChar"    # I

    #@0
    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 304
    iput p1, p0, Landroid/media/TimedText$Karaoke;->startTimeMs:I

    #@5
    .line 305
    iput p2, p0, Landroid/media/TimedText$Karaoke;->endTimeMs:I

    #@7
    .line 306
    iput p3, p0, Landroid/media/TimedText$Karaoke;->startChar:I

    #@9
    .line 307
    iput p4, p0, Landroid/media/TimedText$Karaoke;->endChar:I

    #@b
    .line 303
    return-void
.end method
