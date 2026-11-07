.class interface abstract Landroid/net/connectivity/org/chromium/base/FieldTrialList$Natives;
.super Ljava/lang/Object;
.source "FieldTrialList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/FieldTrialList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist createFieldTrial(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract blacklist findFullName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getVariationParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist logActiveTrials()V
.end method

.method public abstract blacklist trialExists(Ljava/lang/String;)Z
.end method
