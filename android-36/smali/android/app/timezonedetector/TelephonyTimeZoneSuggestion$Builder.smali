.class public final Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
.super Ljava/lang/Object;
.source "TelephonyTimeZoneSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
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

.field private blacklist mMatchType:I

.field private blacklist mQuality:I

.field private final blacklist mSlotIndex:I

.field private blacklist mZoneId:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDebugInfo(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatchType(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mMatchType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQuality(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mQuality:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSlotIndex(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mSlotIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmZoneId(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "slotIndex"    # I

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mSlotIndex:I

    .line 315
    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .registers 3
    .param p1, "debugInfo"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_b

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    .line 360
    :cond_b
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    return-object p0
.end method

.method public blacklist build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 3

    .line 394
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->validate()V

    .line 395
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion-IA;)V

    return-object v0
.end method

.method public blacklist setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .registers 2
    .param p1, "matchType"    # I

    .line 335
    iput p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mMatchType:I

    .line 336
    return-object p0
.end method

.method public blacklist setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .registers 2
    .param p1, "quality"    # I

    .line 346
    iput p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mQuality:I

    .line 347
    return-object p0
.end method

.method public blacklist setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;
    .registers 2
    .param p1, "zoneId"    # Ljava/lang/String;

    .line 324
    iput-object p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mZoneId:Ljava/lang/String;

    .line 325
    return-object p0
.end method

.method blacklist validate()V
    .registers 9

    .line 369
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mQuality:I

    .line 370
    .local v0, "quality":I
    iget v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mMatchType:I

    .line 371
    .local v1, "matchType":I
    iget-object v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->mZoneId:Ljava/lang/String;

    const-string v3, ", matchType="

    if-nez v2, :cond_30

    .line 372
    if-nez v0, :cond_f

    if-nez v1, :cond_f

    goto :goto_4d

    .line 373
    :cond_f
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid quality or match type for null zone ID. quality="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_30
    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_3d

    if-eq v0, v5, :cond_3d

    if-ne v0, v4, :cond_3b

    goto :goto_3d

    :cond_3b
    move v7, v2

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v7, v6

    .line 380
    .local v7, "qualityValid":Z
    :goto_3e
    if-eq v1, v5, :cond_48

    if-eq v1, v4, :cond_48

    const/4 v4, 0x4

    if-eq v1, v4, :cond_48

    const/4 v4, 0x5

    if-ne v1, v4, :cond_49

    :cond_48
    move v2, v6

    .line 384
    .local v2, "matchTypeValid":Z
    :cond_49
    if-eqz v7, :cond_4e

    if-eqz v2, :cond_4e

    .line 389
    .end local v2    # "matchTypeValid":Z
    .end local v7    # "qualityValid":Z
    :goto_4d
    return-void

    .line 385
    .restart local v2    # "matchTypeValid":Z
    .restart local v7    # "qualityValid":Z
    :cond_4e
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid quality or match type with zone ID. quality="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
