.class public final Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
.super Ljava/lang/Object;
.source "TelephonyTimeSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timedetector/TelephonyTimeSuggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDebugInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSlotIndex:I

.field private blacklist mUnixEpochTime:Landroid/app/time/UnixEpochTime;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDebugInfo(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotIndex(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnixEpochTime(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;)Landroid/app/time/UnixEpochTime;
    .registers 1

    iget-object p0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "slotIndex"    # I

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput p1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mSlotIndex:I

    .line 260
    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    .registers 3
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_b

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    .line 283
    :cond_b
    iget-object v0, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-object p0
.end method

.method public blacklist build()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 3

    .line 290
    new-instance v0, Landroid/app/timedetector/TelephonyTimeSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/timedetector/TelephonyTimeSuggestion;-><init>(Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;Landroid/app/timedetector/TelephonyTimeSuggestion-IA;)V

    return-object v0
.end method

.method public blacklist setUnixEpochTime(Landroid/app/time/UnixEpochTime;)Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;
    .registers 2
    .param p1, "unixEpochTime"    # Landroid/app/time/UnixEpochTime;

    .line 269
    iput-object p1, p0, Landroid/app/timedetector/TelephonyTimeSuggestion$Builder;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 270
    return-object p0
.end method
