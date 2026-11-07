.class public final Landroid/telephony/SignalStrengthUpdateRequest$Builder;
.super Ljava/lang/Object;
.source "SignalStrengthUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalStrengthUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsReportingRequestedWhileIdle:Z

.field private blacklist mIsSystemThresholdReportingRequestedWhileIdle:Z

.field private blacklist mSignalThresholdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mSignalThresholdInfos:Ljava/util/List;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsReportingRequestedWhileIdle:Z

    .line 90
    iput-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/SignalStrengthUpdateRequest;
    .registers 6

    .line 163
    new-instance v0, Landroid/telephony/SignalStrengthUpdateRequest;

    iget-object v1, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mSignalThresholdInfos:Ljava/util/List;

    iget-boolean v2, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsReportingRequestedWhileIdle:Z

    iget-boolean v3, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/SignalStrengthUpdateRequest;-><init>(Ljava/util/List;ZZLandroid/telephony/SignalStrengthUpdateRequest-IA;)V

    return-object v0
.end method

.method public whitelist setReportingRequestedWhileIdle(Z)Landroid/telephony/SignalStrengthUpdateRequest$Builder;
    .registers 2
    .param p1, "isReportingRequestedWhileIdle"    # Z

    .line 127
    iput-boolean p1, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsReportingRequestedWhileIdle:Z

    .line 128
    return-object p0
.end method

.method public whitelist setSignalThresholdInfos(Ljava/util/Collection;)Landroid/telephony/SignalStrengthUpdateRequest$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;)",
            "Landroid/telephony/SignalStrengthUpdateRequest$Builder;"
        }
    .end annotation

    .line 101
    .local p1, "signalThresholdInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/telephony/SignalThresholdInfo;>;"
    const-string v0, "SignalThresholdInfo collection must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalThresholdInfo;

    .line 104
    .local v1, "info":Landroid/telephony/SignalThresholdInfo;
    const-string v2, "SignalThresholdInfo in the collection must not be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .end local v1    # "info":Landroid/telephony/SignalThresholdInfo;
    goto :goto_9

    .line 108
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mSignalThresholdInfos:Ljava/util/List;

    .line 111
    iget-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mSignalThresholdInfos:Ljava/util/List;

    new-instance v1, Landroid/telephony/SignalStrengthUpdateRequest$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/SignalStrengthUpdateRequest$Builder$$ExternalSyntheticLambda0;-><init>()V

    .line 112
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Landroid/telephony/SignalStrengthUpdateRequest$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telephony/SignalStrengthUpdateRequest$Builder$$ExternalSyntheticLambda1;-><init>()V

    .line 113
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 114
    return-object p0
.end method

.method public whitelist setSystemThresholdReportingRequestedWhileIdle(Z)Landroid/telephony/SignalStrengthUpdateRequest$Builder;
    .registers 2
    .param p1, "isSystemThresholdReportingRequestedWhileIdle"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    iput-boolean p1, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    .line 151
    return-object p0
.end method
