.class public final Landroid/telecom/CallAttributes;
.super Ljava/lang/Object;
.source "CallAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallAttributes$Builder;,
        Landroid/telecom/CallAttributes$CallCapability;,
        Landroid/telecom/CallAttributes$CallType;,
        Landroid/telecom/CallAttributes$Direction;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CALL:I = 0x1

.field public static final blacklist CALLER_PID_KEY:Ljava/lang/String; = "CallerPid"

.field public static final blacklist CALLER_UID_KEY:Ljava/lang/String; = "CallerUid"

.field public static final blacklist CALL_CAPABILITIES_KEY:Ljava/lang/String; = "TelecomCapabilities"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIRECTION_INCOMING:I = 0x1

.field public static final whitelist DIRECTION_OUTGOING:I = 0x2

.field public static final blacklist DISPLAY_NAME_KEY:Ljava/lang/String; = "DisplayName"

.field public static final whitelist SUPPORTS_SET_INACTIVE:I = 0x2

.field public static final whitelist SUPPORTS_STREAM:I = 0x4

.field public static final whitelist SUPPORTS_TRANSFER:I = 0x8

.field public static final whitelist SUPPORTS_VIDEO_CALLING:I = 0x10

.field public static final whitelist VIDEO_CALL:I = 0x2


# instance fields
.field private final blacklist mAddress:Landroid/net/Uri;

.field private final blacklist mCallCapabilities:I

.field private final blacklist mCallType:I

.field private final blacklist mDirection:I

.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 302
    new-instance v0, Landroid/telecom/CallAttributes$1;

    invoke-direct {v0}, Landroid/telecom/CallAttributes$1;-><init>()V

    sput-object v0, Landroid/telecom/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;III)V
    .registers 7
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "displayName"    # Ljava/lang/CharSequence;
    .param p3, "address"    # Landroid/net/Uri;
    .param p4, "direction"    # I
    .param p5, "callType"    # I
    .param p6, "callCapabilities"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 82
    iput-object p2, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    .line 83
    iput-object p3, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    .line 84
    iput p4, p0, Landroid/telecom/CallAttributes;->mDirection:I

    .line 85
    iput p5, p0, Landroid/telecom/CallAttributes;->mCallType:I

    .line 86
    iput p6, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;IIILandroid/telecom/CallAttributes-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/telecom/CallAttributes;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;III)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 351
    const/4 v0, 0x0

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_45

    .line 354
    :cond_e
    move-object v1, p1

    check-cast v1, Landroid/telecom/CallAttributes;

    .line 355
    .local v1, "that":Landroid/telecom/CallAttributes;
    iget v2, p0, Landroid/telecom/CallAttributes;->mDirection:I

    iget v3, v1, Landroid/telecom/CallAttributes;->mDirection:I

    if-ne v2, v3, :cond_43

    iget v2, p0, Landroid/telecom/CallAttributes;->mCallType:I

    iget v3, v1, Landroid/telecom/CallAttributes;->mCallType:I

    if-ne v2, v3, :cond_43

    iget v2, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    iget v3, v1, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, v1, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 358
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    iget-object v3, v1, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    .line 359
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v3, v1, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    .line 360
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v0, 0x1

    goto :goto_44

    :cond_43
    nop

    .line 355
    :goto_44
    return v0

    .line 352
    .end local v1    # "that":Landroid/telecom/CallAttributes;
    :cond_45
    :goto_45
    return v0
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getCallCapabilities()I
    .registers 2

    .line 280
    iget v0, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    return v0
.end method

.method public whitelist getCallType()I
    .registers 2

    .line 273
    iget v0, p0, Landroid/telecom/CallAttributes;->mCallType:I

    return v0
.end method

.method public whitelist getDirection()I
    .registers 2

    .line 266
    iget v0, p0, Landroid/telecom/CallAttributes;->mDirection:I

    return v0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 368
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/telecom/CallAttributes;->mDirection:I

    .line 369
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telecom/CallAttributes;->mCallType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 368
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ CallAttributes: [phoneAccountHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    const-string v2, "], [contactName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    .line 332
    invoke-static {v2}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    const-string v2, "], [address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    .line 334
    invoke-static {v2}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    const-string v2, "], [direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telecom/CallAttributes;->mDirection:I

    .line 336
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    const-string v2, "], [callType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telecom/CallAttributes;->mCallType:I

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    const-string v2, "], [mCallCapabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    const-string v2, "]  }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 290
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 291
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 293
    iget v0, p0, Landroid/telecom/CallAttributes;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget v0, p0, Landroid/telecom/CallAttributes;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    return-void
.end method
