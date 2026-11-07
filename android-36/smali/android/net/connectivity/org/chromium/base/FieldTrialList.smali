.class public Landroid/net/connectivity/org/chromium/base/FieldTrialList;
.super Ljava/lang/Object;
.source "FieldTrialList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createFieldTrial(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .param p0, "trialName"    # Ljava/lang/String;
    .param p1, "groupName"    # Ljava/lang/String;

    .line 56
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FieldTrialListJni;->get()Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;->createFieldTrial(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist findFullName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "trialName"    # Ljava/lang/String;

    .line 21
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FieldTrialListJni;->get()Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getVariationParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "trialName"    # Ljava/lang/String;
    .param p1, "parameterKey"    # Ljava/lang/String;

    .line 38
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FieldTrialListJni;->get()Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;->getVariationParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist logActiveTrials()V
    .registers 1

    .line 46
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FieldTrialListJni;->get()Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;->logActiveTrials()V

    .line 47
    return-void
.end method

.method public static blacklist trialExists(Ljava/lang/String;)Z
    .registers 2
    .param p0, "trialName"    # Ljava/lang/String;

    .line 29
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/FieldTrialListJni;->get()Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;->trialExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
