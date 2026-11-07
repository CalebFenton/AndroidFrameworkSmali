.class Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;
.super Ljava/lang/Object;
.source "MultiSimSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MultiSimSettingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimCombinationWarningParams"
.end annotation


# instance fields
.field blacklist mSimNames:Ljava/lang/String;

.field blacklist mWarningType:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/MultiSimSettingController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 983
    iput p1, p0, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;->mWarningType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/MultiSimSettingController;Lcom/android/internal/telephony/MultiSimSettingController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MultiSimSettingController$SimCombinationWarningParams;-><init>(Lcom/android/internal/telephony/MultiSimSettingController;)V

    return-void
.end method
