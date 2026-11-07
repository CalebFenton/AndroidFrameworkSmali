.class public final Landroid/adservices/adselection/ReportInteractionInput$Builder;
.super Ljava/lang/Object;
.source "ReportInteractionInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/ReportInteractionInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdId:Ljava/lang/String;

.field private blacklist mAdSelectionId:J

.field private blacklist mCallerPackageName:Ljava/lang/String;

.field private blacklist mCallerSdkName:Ljava/lang/String;

.field private blacklist mInputEvent:Landroid/view/InputEvent;

.field private blacklist mInteractionData:Ljava/lang/String;

.field private blacklist mInteractionKey:Ljava/lang/String;

.field private blacklist mReportingDestinations:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mAdSelectionId:J

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mReportingDestinations:I

    .line 212
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adselection/ReportInteractionInput;
    .registers 14

    .line 284
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mInteractionKey:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mInteractionData:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mCallerPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-wide v0, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mAdSelectionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    const-string v3, "Non-zero ad selection ID must be set"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 290
    iget v0, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mReportingDestinations:I

    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    const-string v0, "Reporting Destinations bitfield not set."

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 294
    new-instance v2, Landroid/adservices/adselection/ReportInteractionInput;

    iget-wide v3, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mAdSelectionId:J

    iget-object v5, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mInteractionKey:Ljava/lang/String;

    iget-object v6, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mInteractionData:Ljava/lang/String;

    iget-object v7, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mCallerPackageName:Ljava/lang/String;

    iget v8, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mReportingDestinations:I

    iget-object v9, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mInputEvent:Landroid/view/InputEvent;

    iget-object v10, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mAdId:Ljava/lang/String;

    iget-object v11, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mCallerSdkName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Landroid/adservices/adselection/ReportInteractionInput;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;Ljava/lang/String;Ljava/lang/String;Landroid/adservices/adselection/ReportInteractionInput-IA;)V

    return-object v2
.end method

.method public blacklist setAdId(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .registers 2
    .param p1, "adId"    # Ljava/lang/String;

    .line 270
    iput-object p1, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mAdId:Ljava/lang/String;

    .line 271
    return-object p0
.end method

.method public blacklist setAdSelectionId(J)Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .registers 3
    .param p1, "adSelectionId"    # J

    .line 217
    iput-wide p1, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mAdSelectionId:J

    .line 218
    return-object p0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .registers 2
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 243
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iput-object p1, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 246
    return-object p0
.end method

.method public blacklist setCallerSdkName(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .registers 2
    .param p1, "callerSdkName"    # Ljava/lang/String;

    .line 277
    iput-object p1, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mCallerSdkName:Ljava/lang/String;

    .line 278
    return-object p0
.end method

.method public blacklist setInputEvent(Landroid/view/InputEvent;)Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .registers 2
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 263
    iput-object p1, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mInputEvent:Landroid/view/InputEvent;

    .line 264
    return-object p0
.end method

.method public blacklist setInteractionData(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .registers 2
    .param p1, "interactionData"    # Ljava/lang/String;

    .line 233
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iput-object p1, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mInteractionData:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public blacklist setInteractionKey(Ljava/lang/String;)Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .registers 2
    .param p1, "interactionKey"    # Ljava/lang/String;

    .line 224
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iput-object p1, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mInteractionKey:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method public blacklist setReportingDestinations(I)Landroid/adservices/adselection/ReportInteractionInput$Builder;
    .registers 4
    .param p1, "reportingDestinations"    # I

    .line 252
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Reporting Destinations bitfield not set."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 256
    iput p1, p0, Landroid/adservices/adselection/ReportInteractionInput$Builder;->mReportingDestinations:I

    .line 257
    return-object p0
.end method
