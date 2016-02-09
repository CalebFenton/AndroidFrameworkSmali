.class public Lcom/android/ims/ImsCallProfile;
.super Ljava/lang/Object;
.source "ImsCallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCallProfile$1;
    }
.end annotation


# static fields
.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_HD:I = 0x3

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_TYPE_VIDEO_N_VOICE:I = 0x3

.field public static final CALL_TYPE_VOICE:I = 0x2

.field public static final CALL_TYPE_VOICE_N_VIDEO:I = 0x1

.field public static final CALL_TYPE_VS:I = 0x8

.field public static final CALL_TYPE_VS_RX:I = 0xa

.field public static final CALL_TYPE_VS_TX:I = 0x9

.field public static final CALL_TYPE_VT:I = 0x4

.field public static final CALL_TYPE_VT_NODIR:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x6

.field public static final CALL_TYPE_VT_TX:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsCallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALSTRING_NORMAL:I = 0x0

.field public static final DIALSTRING_SS_CONF:I = 0x1

.field public static final DIALSTRING_USSD:I = 0x2

.field public static final EXTRA_CALL_MODE_CHANGEABLE:Ljava/lang/String; = "call_mode_changeable"

.field public static final EXTRA_CNA:Ljava/lang/String; = "cna"

.field public static final EXTRA_CNAP:Ljava/lang/String; = "cnap"

.field public static final EXTRA_CONFERENCE:Ljava/lang/String; = "conference"

.field public static final EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final EXTRA_E_CALL:Ljava/lang/String; = "e_call"

.field public static final EXTRA_OEM_EXTRAS:Ljava/lang/String; = "OemCallExtras"

.field public static final EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final EXTRA_USSD:Ljava/lang/String; = "ussd"

.field public static final EXTRA_VMS:Ljava/lang/String; = "vms"

.field public static final OIR_DEFAULT:I = 0x0

.field public static final OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final OIR_PRESENTATION_PAYPHONE:I = 0x4

.field public static final OIR_PRESENTATION_RESTRICTED:I = 0x1

.field public static final OIR_PRESENTATION_UNKNOWN:I = 0x3

.field public static final SERVICE_TYPE_EMERGENCY:I = 0x2

.field public static final SERVICE_TYPE_NONE:I = 0x0

.field public static final SERVICE_TYPE_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsCallProfile"


# instance fields
.field public mCallExtras:Landroid/os/Bundle;

.field public mCallType:I

.field public mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

.field public mRestrictCause:I

.field public mServiceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 298
    new-instance v0, Lcom/android/ims/ImsCallProfile$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/ImsCallProfile$1;-><init>()V

    #@5
    sput-object v0, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 185
    const/4 v0, 0x0

    #@5
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    #@7
    .line 194
    iput v1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    #@9
    .line 195
    iput v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@b
    .line 196
    new-instance v0, Landroid/os/Bundle;

    #@d
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@10
    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@12
    .line 197
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    #@14
    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    #@17
    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@19
    .line 193
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 185
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    #@6
    .line 201
    iput p1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    #@8
    .line 202
    iput p2, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@a
    .line 203
    new-instance v0, Landroid/os/Bundle;

    #@c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@11
    .line 204
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    #@13
    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@18
    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 185
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    #@6
    .line 190
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCallProfile;->readFromParcel(Landroid/os/Parcel;)V

    #@9
    .line 189
    return-void
.end method

.method public static OIRToPresentation(I)I
    .locals 1
    .param p0, "oir"    # I

    #@0
    .prologue
    const/4 v0, 0x3

    #@1
    .line 393
    packed-switch p0, :pswitch_data_0

    #@4
    .line 403
    return v0

    #@5
    .line 395
    :pswitch_0
    const/4 v0, 0x2

    #@6
    return v0

    #@7
    .line 397
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 399
    :pswitch_2
    const/4 v0, 0x4

    #@a
    return v0

    #@b
    .line 401
    :pswitch_3
    return v0

    #@c
    .line 393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getCallTypeFromVideoState(I)I
    .locals 6
    .param p0, "videoState"    # I

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    const/4 v4, 0x2

    #@2
    .line 352
    const/4 v3, 0x1

    #@3
    invoke-static {p0, v3}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    #@6
    move-result v2

    #@7
    .line 353
    .local v2, "videoTx":Z
    invoke-static {p0, v4}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    #@a
    move-result v1

    #@b
    .line 354
    .local v1, "videoRx":Z
    invoke-static {p0, v5}, Lcom/android/ims/ImsCallProfile;->isVideoStateSet(II)Z

    #@e
    move-result v0

    #@f
    .line 355
    .local v0, "isPaused":Z
    if-eqz v0, :cond_0

    #@11
    .line 356
    const/4 v3, 0x7

    #@12
    return v3

    #@13
    .line 357
    :cond_0
    if-eqz v2, :cond_1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 359
    :cond_1
    if-nez v2, :cond_3

    #@19
    if-eqz v1, :cond_3

    #@1b
    .line 360
    const/4 v3, 0x6

    #@1c
    return v3

    #@1d
    .line 358
    :cond_2
    const/4 v3, 0x5

    #@1e
    return v3

    #@1f
    .line 361
    :cond_3
    if-eqz v2, :cond_4

    #@21
    if-eqz v1, :cond_4

    #@23
    .line 362
    return v5

    #@24
    .line 364
    :cond_4
    return v4
.end method

.method public static getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I
    .locals 2
    .param p0, "callProfile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 318
    const/4 v0, 0x0

    #@1
    .line 319
    .local v0, "videostate":I
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@3
    packed-switch v1, :pswitch_data_0

    #@6
    .line 333
    :pswitch_0
    const/4 v0, 0x0

    #@7
    .line 336
    :goto_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCallProfile;->isVideoPaused()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 339
    :cond_0
    and-int/lit8 v0, v0, -0x5

    #@15
    .line 341
    :goto_1
    return v0

    #@16
    .line 321
    :pswitch_1
    const/4 v0, 0x1

    #@17
    .line 322
    goto :goto_0

    #@18
    .line 324
    :pswitch_2
    const/4 v0, 0x2

    #@19
    .line 325
    goto :goto_0

    #@1a
    .line 327
    :pswitch_3
    const/4 v0, 0x3

    #@1b
    .line 328
    goto :goto_0

    #@1c
    .line 330
    :pswitch_4
    const/4 v0, 0x0

    #@1d
    .line 331
    goto :goto_0

    #@1e
    .line 337
    :cond_1
    or-int/lit8 v0, v0, 0x4

    #@20
    .line 336
    goto :goto_1

    #@21
    .line 319
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isVideoStateSet(II)Z
    .locals 1
    .param p0, "videoState"    # I
    .param p1, "videoStateToCheck"    # I

    #@0
    .prologue
    .line 423
    and-int v0, p0, p1

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public static presentationToOIR(I)I
    .locals 1
    .param p0, "presentation"    # I

    #@0
    .prologue
    .line 373
    packed-switch p0, :pswitch_data_0

    #@3
    .line 383
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 375
    :pswitch_0
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 377
    :pswitch_1
    const/4 v0, 0x2

    #@8
    return v0

    #@9
    .line 379
    :pswitch_2
    const/4 v0, 0x4

    #@a
    return v0

    #@b
    .line 381
    :pswitch_3
    const/4 v0, 0x3

    #@c
    return v0

    #@d
    .line 373
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v0

    #@5
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    #@7
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@a
    move-result v0

    #@b
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@d
    .line 294
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/os/Bundle;

    #@13
    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@15
    .line 295
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/ims/ImsStreamMediaProfile;

    #@1b
    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@1d
    .line 291
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 280
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 208
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 213
    return-object p2

    #@5
    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 220
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getCallExtraBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 225
    return p2

    #@5
    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public getCallExtraInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 232
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getCallExtraInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 237
    return p2

    #@5
    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public isVideoPaused()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 412
    iget-object v1, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@3
    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 245
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 243
    :cond_0
    return-void
.end method

.method public setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 251
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@9
    .line 249
    :cond_0
    return-void
.end method

.method public setCallExtraInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 257
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@9
    .line 255
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{ serviceType="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 273
    const-string/jumbo v1, ", callType="

    #@15
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 273
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@1b
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 274
    const-string/jumbo v1, ", restrictCause="

    #@22
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 274
    iget v1, p0, Lcom/android/ims/ImsCallProfile;->mRestrictCause:I

    #@28
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 275
    const-string/jumbo v1, ", mediaProfile="

    #@2f
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 275
    iget-object v1, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@35
    invoke-virtual {v1}, Lcom/android/ims/ImsStreamMediaProfile;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 275
    const-string/jumbo v1, " }"

    #@40
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    return-object v0
.end method

.method public updateCallExtras(Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@2
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    #@5
    .line 267
    iget-object v0, p1, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/os/Bundle;

    #@d
    iput-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@f
    .line 265
    return-void
.end method

.method public updateCallType(Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsCallProfile;

    #@0
    .prologue
    .line 262
    iget v0, p1, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@2
    iput v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@4
    .line 261
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 285
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mServiceType:I

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 286
    iget v0, p0, Lcom/android/ims/ImsCallProfile;->mCallType:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 287
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@10
    .line 288
    iget-object v0, p0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    #@12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@15
    .line 284
    return-void
.end method
