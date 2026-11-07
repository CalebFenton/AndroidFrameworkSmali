.class public Landroid/adservices/adselection/ReportEventRequest;
.super Ljava/lang/Object;
.source "ReportEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adselection/ReportEventRequest$Builder;,
        Landroid/adservices/adselection/ReportEventRequest$ReportingDestination;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_DATA_SIZE_MAX_EXCEEDED:Ljava/lang/String; = "Event data should not exceed 65536 bytes"

.field public static final whitelist FLAG_REPORTING_DESTINATION_BUYER:I = 0x2

.field public static final whitelist FLAG_REPORTING_DESTINATION_COMPONENT_SELLER:I = 0x4

.field public static final whitelist FLAG_REPORTING_DESTINATION_SELLER:I = 0x1

.field private static final blacklist INVALID_REPORTING_DESTINATIONS_MESSAGE:Ljava/lang/String; = "Invalid reporting destinations bitfield!"

.field public static final blacklist REPORT_EVENT_MAX_INTERACTION_DATA_SIZE_B:J = 0x10000L

.field private static final blacklist UNSET_REPORTING_DESTINATIONS:I = 0x0

.field private static final blacklist UNSET_REPORTING_DESTINATIONS_MESSAGE:Ljava/lang/String; = "Reporting destinations bitfield not set."


# instance fields
.field private final blacklist mAdSelectionId:J

.field private final blacklist mEventData:Ljava/lang/String;

.field private final blacklist mEventKey:Ljava/lang/String;

.field private final blacklist mInputEvent:Landroid/view/InputEvent;

.field private final blacklist mReportingDestinations:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smisValidDestination(I)Z
    .registers 1

    invoke-static {p0}, Landroid/adservices/adselection/ReportEventRequest;->isValidDestination(I)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/adservices/adselection/ReportEventRequest$Builder;)V
    .registers 9
    .param p1, "builder"    # Landroid/adservices/adselection/ReportEventRequest$Builder;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest$Builder;->-$$Nest$fgetmAdSelectionId(Landroid/adservices/adselection/ReportEventRequest$Builder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    const-string v3, "Non-zero ad selection ID must be set"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 75
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest$Builder;->-$$Nest$fgetmReportingDestinations(Landroid/adservices/adselection/ReportEventRequest$Builder;)I

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    const-string v3, "Reporting destinations bitfield not set."

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 78
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest$Builder;->-$$Nest$fgetmReportingDestinations(Landroid/adservices/adselection/ReportEventRequest$Builder;)I

    move-result v0

    .line 79
    invoke-static {v0}, Landroid/adservices/adselection/ReportEventRequest;->isValidDestination(I)Z

    move-result v0

    .line 78
    const-string v3, "Invalid reporting destinations bitfield!"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 81
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest$Builder;->-$$Nest$fgetmEventData(Landroid/adservices/adselection/ReportEventRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    int-to-long v3, v0

    const-wide/32 v5, 0x10000

    cmp-long v0, v3, v5

    if-gtz v0, :cond_49

    goto :goto_4a

    :cond_49
    move v1, v2

    .line 81
    :goto_4a
    const-string v0, "Event data should not exceed 65536 bytes"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 86
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest$Builder;->-$$Nest$fgetmAdSelectionId(Landroid/adservices/adselection/ReportEventRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mAdSelectionId:J

    .line 87
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest$Builder;->-$$Nest$fgetmEventKey(Landroid/adservices/adselection/ReportEventRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mEventKey:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest$Builder;->-$$Nest$fgetmInputEvent(Landroid/adservices/adselection/ReportEventRequest$Builder;)Landroid/view/InputEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mInputEvent:Landroid/view/InputEvent;

    .line 89
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest$Builder;->-$$Nest$fgetmEventData(Landroid/adservices/adselection/ReportEventRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mEventData:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Landroid/adservices/adselection/ReportEventRequest$Builder;->-$$Nest$fgetmReportingDestinations(Landroid/adservices/adselection/ReportEventRequest$Builder;)I

    move-result v0

    iput v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mReportingDestinations:I

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/adselection/ReportEventRequest$Builder;Landroid/adservices/adselection/ReportEventRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/adselection/ReportEventRequest;-><init>(Landroid/adservices/adselection/ReportEventRequest$Builder;)V

    return-void
.end method

.method private static blacklist isValidDestination(I)Z
    .registers 2
    .param p0, "reportingDestinations"    # I

    .line 176
    if-lez p0, :cond_7

    const/4 v0, 0x7

    if-gt p0, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method public whitelist getAdSelectionId()J
    .registers 3

    .line 97
    iget-wide v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mAdSelectionId:J

    return-wide v0
.end method

.method public whitelist getData()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mEventData:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInputEvent()Landroid/view/InputEvent;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mInputEvent:Landroid/view/InputEvent;

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mEventKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getReportingDestinations()I
    .registers 2

    .line 160
    iget v0, p0, Landroid/adservices/adselection/ReportEventRequest;->mReportingDestinations:I

    return v0
.end method
