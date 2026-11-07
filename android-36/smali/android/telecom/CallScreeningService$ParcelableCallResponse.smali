.class public Landroid/telecom/CallScreeningService$ParcelableCallResponse;
.super Ljava/lang/Object;
.source "CallScreeningService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableCallResponse"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallScreeningService$ParcelableCallResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallComposerAttachmentsToShow:I

.field private final blacklist mShouldDisallowCall:Z

.field private final blacklist mShouldRejectCall:Z

.field private final blacklist mShouldScreenCallViaAudioProcessing:Z

.field private final blacklist mShouldSilenceCall:Z

.field private final blacklist mShouldSkipCallLog:Z

.field private final blacklist mShouldSkipNotification:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 251
    new-instance v0, Landroid/telecom/CallScreeningService$ParcelableCallResponse$1;

    invoke-direct {v0}, Landroid/telecom/CallScreeningService$ParcelableCallResponse$1;-><init>()V

    sput-object v0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    .line 209
    return-void
.end method

.method private constructor blacklist <init>(ZZZZZZI)V
    .registers 8
    .param p1, "shouldDisallowCall"    # Z
    .param p2, "shouldRejectCall"    # Z
    .param p3, "shouldSilenceCall"    # Z
    .param p4, "shouldSkipCallLog"    # Z
    .param p5, "shouldSkipNotification"    # Z
    .param p6, "shouldScreenCallViaAudioProcessing"    # Z
    .param p7, "callComposerAttachmentsToShow"    # I

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    .line 193
    iput-boolean p2, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    .line 194
    iput-boolean p3, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    .line 195
    iput-boolean p4, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    .line 196
    iput-boolean p5, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    .line 197
    iput-boolean p6, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    .line 198
    iput p7, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    .line 199
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZZZZILandroid/telecom/CallScreeningService-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/telecom/CallScreeningService$ParcelableCallResponse;-><init>(ZZZZZZI)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCallComposerAttachmentsToShow()I
    .registers 2

    .line 248
    iget v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    return v0
.end method

.method public blacklist shouldDisallowCall()Z
    .registers 2

    .line 224
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    return v0
.end method

.method public blacklist shouldRejectCall()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    return v0
.end method

.method public blacklist shouldScreenCallViaAudioProcessing()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    return v0
.end method

.method public blacklist shouldSilenceCall()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    return v0
.end method

.method public blacklist shouldSkipCallLog()Z
    .registers 2

    .line 236
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    return v0
.end method

.method public blacklist shouldSkipNotification()Z
    .registers 2

    .line 240
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    return v0
.end method

.method public blacklist toCallResponse()Landroid/telecom/CallScreeningService$CallResponse;
    .registers 3

    .line 212
    new-instance v0, Landroid/telecom/CallScreeningService$CallResponse$Builder;

    invoke-direct {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;-><init>()V

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    .line 213
    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    .line 214
    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    .line 215
    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSilenceCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    .line 216
    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    .line 217
    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    .line 218
    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setShouldScreenCallViaAudioProcessing(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    .line 219
    invoke-virtual {v0, v1}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->setCallComposerAttachmentsToShow(I)Landroid/telecom/CallScreeningService$CallResponse$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/telecom/CallScreeningService$CallResponse$Builder;->build()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 271
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldDisallowCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 272
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldRejectCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSilenceCall:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 274
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipCallLog:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 275
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldSkipNotification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 276
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mShouldScreenCallViaAudioProcessing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 277
    iget v0, p0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->mCallComposerAttachmentsToShow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    return-void
.end method
