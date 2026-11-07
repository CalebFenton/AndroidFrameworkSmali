.class public final Landroid/adservices/adselection/ReportEventRequest$Builder;
.super Ljava/lang/Object;
.source "ReportEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/ReportEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdSelectionId:J

.field private blacklist mEventData:Ljava/lang/String;

.field private blacklist mEventKey:Ljava/lang/String;

.field private blacklist mInputEvent:Landroid/view/InputEvent;

.field private blacklist mReportingDestinations:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdSelectionId(Landroid/adservices/adselection/ReportEventRequest$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mAdSelectionId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventData(Landroid/adservices/adselection/ReportEventRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mEventData:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventKey(Landroid/adservices/adselection/ReportEventRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mEventKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputEvent(Landroid/adservices/adselection/ReportEventRequest$Builder;)Landroid/view/InputEvent;
    .registers 1

    iget-object p0, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mInputEvent:Landroid/view/InputEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReportingDestinations(Landroid/adservices/adselection/ReportEventRequest$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mReportingDestinations:I

    return p0
.end method

.method public constructor whitelist <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "adSelectionId"    # J
    .param p3, "eventKey"    # Ljava/lang/String;
    .param p4, "eventData"    # Ljava/lang/String;
    .param p5, "reportingDestinations"    # I

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    const-string v3, "Non-zero ad selection ID must be set"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 202
    if-eqz p5, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    const-string v3, "Reporting destinations bitfield not set."

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 205
    nop

    .line 206
    invoke-static {p5}, Landroid/adservices/adselection/ReportEventRequest;->-$$Nest$smisValidDestination(I)Z

    move-result v0

    .line 205
    const-string v3, "Invalid reporting destinations bitfield!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 208
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 209
    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v3, v0

    const-wide/32 v5, 0x10000

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v2

    .line 208
    :goto_3e
    const-string v0, "Event data should not exceed 65536 bytes"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 213
    iput-wide p1, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mAdSelectionId:J

    .line 214
    iput-object p3, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mEventKey:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mEventData:Ljava/lang/String;

    .line 216
    iput p5, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mReportingDestinations:I

    .line 217
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/ReportEventRequest;
    .registers 3

    .line 287
    new-instance v0, Landroid/adservices/adselection/ReportEventRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/adselection/ReportEventRequest;-><init>(Landroid/adservices/adselection/ReportEventRequest$Builder;Landroid/adservices/adselection/ReportEventRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAdSelectionId(J)Landroid/adservices/adselection/ReportEventRequest$Builder;
    .registers 5
    .param p1, "adSelectionId"    # J

    .line 226
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Non-zero ad selection ID must be set"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 228
    iput-wide p1, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mAdSelectionId:J

    .line 229
    return-object p0
.end method

.method public whitelist setData(Ljava/lang/String;)Landroid/adservices/adselection/ReportEventRequest$Builder;
    .registers 2
    .param p1, "eventData"    # Ljava/lang/String;

    .line 263
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iput-object p1, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mEventData:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public whitelist setInputEvent(Landroid/view/InputEvent;)Landroid/adservices/adselection/ReportEventRequest$Builder;
    .registers 2
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 252
    iput-object p1, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mInputEvent:Landroid/view/InputEvent;

    .line 253
    return-object p0
.end method

.method public whitelist setKey(Ljava/lang/String;)Landroid/adservices/adselection/ReportEventRequest$Builder;
    .registers 2
    .param p1, "eventKey"    # Ljava/lang/String;

    .line 239
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iput-object p1, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mEventKey:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public whitelist setReportingDestinations(I)Landroid/adservices/adselection/ReportEventRequest$Builder;
    .registers 4
    .param p1, "reportingDestinations"    # I

    .line 276
    nop

    .line 277
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest;->-$$Nest$smisValidDestination(I)Z

    move-result v0

    .line 276
    const-string v1, "Invalid reporting destinations bitfield!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 280
    iput p1, p0, Landroid/adservices/adselection/ReportEventRequest$Builder;->mReportingDestinations:I

    .line 281
    return-object p0
.end method
