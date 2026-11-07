.class Landroid/hardware/location/ActivityRecognitionHardware$Event;
.super Ljava/lang/Object;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation


# instance fields
.field public greylist-max-o activity:I

.field public greylist-max-o timestamp:J

.field public greylist-max-o type:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
