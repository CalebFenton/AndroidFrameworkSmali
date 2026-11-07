.class public final Landroid/telecom/CallAttributes$Builder;
.super Ljava/lang/Object;
.source "CallAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAddress:Landroid/net/Uri;

.field private blacklist mCallCapabilities:I

.field private blacklist mCallType:I

.field private final blacklist mDirection:I

.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method public constructor whitelist <init>(Landroid/telecom/PhoneAccountHandle;ILjava/lang/CharSequence;Landroid/net/Uri;)V
    .registers 9
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callDirection"    # I
    .param p3, "displayName"    # Ljava/lang/CharSequence;
    .param p4, "address"    # Landroid/net/Uri;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/CallAttributes$Builder;->mCallType:I

    .line 164
    const/4 v1, 0x2

    iput v1, p0, Landroid/telecom/CallAttributes$Builder;->mCallCapabilities:I

    .line 177
    invoke-direct {p0, v0, v1, p2}, Landroid/telecom/CallAttributes$Builder;->isInRange(III)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 182
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iput-object p1, p0, Landroid/telecom/CallAttributes$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 186
    iput p2, p0, Landroid/telecom/CallAttributes$Builder;->mDirection:I

    .line 187
    iput-object p3, p0, Landroid/telecom/CallAttributes$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 188
    iput-object p4, p0, Landroid/telecom/CallAttributes$Builder;->mAddress:Landroid/net/Uri;

    .line 189
    return-void

    .line 178
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 180
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 178
    const-string v1, "CallDirection=[%d] is invalid. CallDirections value should be within [%d, %d]"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist isInRange(III)Z
    .registers 5
    .param p1, "floor"    # I
    .param p2, "ceiling"    # I
    .param p3, "value"    # I

    .line 233
    if-lt p3, p1, :cond_6

    if-gt p3, p2, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public whitelist build()Landroid/telecom/CallAttributes;
    .registers 9

    .line 227
    new-instance v0, Landroid/telecom/CallAttributes;

    iget-object v1, p0, Landroid/telecom/CallAttributes$Builder;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Landroid/telecom/CallAttributes$Builder;->mDisplayName:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/telecom/CallAttributes$Builder;->mAddress:Landroid/net/Uri;

    iget v4, p0, Landroid/telecom/CallAttributes$Builder;->mDirection:I

    iget v5, p0, Landroid/telecom/CallAttributes$Builder;->mCallType:I

    iget v6, p0, Landroid/telecom/CallAttributes$Builder;->mCallCapabilities:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/telecom/CallAttributes;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;IIILandroid/telecom/CallAttributes-IA;)V

    return-object v0
.end method

.method public whitelist setCallCapabilities(I)Landroid/telecom/CallAttributes$Builder;
    .registers 2
    .param p1, "callCapabilities"    # I

    .line 215
    iput p1, p0, Landroid/telecom/CallAttributes$Builder;->mCallCapabilities:I

    .line 216
    return-object p0
.end method

.method public whitelist setCallType(I)Landroid/telecom/CallAttributes$Builder;
    .registers 6
    .param p1, "callType"    # I

    .line 198
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Landroid/telecom/CallAttributes$Builder;->isInRange(III)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 203
    iput p1, p0, Landroid/telecom/CallAttributes$Builder;->mCallType:I

    .line 204
    return-object p0

    .line 199
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 199
    const-string v1, "CallType=[%d] is invalid. CallTypes value should be within [%d, %d]"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
