.class Landroid/media/tv/tuner/Tuner$Frontend;
.super Ljava/lang/Object;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Frontend"
.end annotation


# instance fields
.field private blacklist mId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/media/tv/tuner/Tuner$Frontend;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/tuner/Tuner$Frontend;->mId:I

    return p0
.end method

.method private constructor blacklist <init>(Landroid/media/tv/tuner/Tuner;I)V
    .registers 3
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1143
    iput p2, p0, Landroid/media/tv/tuner/Tuner$Frontend;->mId:I

    .line 1144
    return-void
.end method
