.class public final Landroid/telephony/PinResult;
.super Ljava/lang/Object;
.source "PinResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PinResult$PinResultType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/PinResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PIN_RESULT_TYPE_ABORTED:I = 0x3

.field public static final whitelist PIN_RESULT_TYPE_FAILURE:I = 0x2

.field public static final whitelist PIN_RESULT_TYPE_INCORRECT:I = 0x1

.field public static final whitelist PIN_RESULT_TYPE_SUCCESS:I

.field private static final blacklist sFailedResult:Landroid/telephony/PinResult;


# instance fields
.field private final blacklist mAttemptsRemaining:I

.field private final blacklist mResult:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Landroid/telephony/PinResult;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/telephony/PinResult;-><init>(II)V

    sput-object v0, Landroid/telephony/PinResult;->sFailedResult:Landroid/telephony/PinResult;

    .line 170
    new-instance v0, Landroid/telephony/PinResult$1;

    invoke-direct {v0}, Landroid/telephony/PinResult$1;-><init>()V

    sput-object v0, Landroid/telephony/PinResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Landroid/telephony/PinResult;->mResult:I

    .line 128
    iput p2, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    .line 129
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PinResult;->mResult:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    .line 139
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PinResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PinResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist getDefaultFailedResult()Landroid/telephony/PinResult;
    .registers 1

    .line 111
    sget-object v0, Landroid/telephony/PinResult;->sFailedResult:Landroid/telephony/PinResult;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 186
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 187
    return v0

    .line 189
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 190
    return v1

    .line 192
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 193
    return v1

    .line 195
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/telephony/PinResult;

    .line 196
    .local v2, "other":Landroid/telephony/PinResult;
    iget v3, p0, Landroid/telephony/PinResult;->mResult:I

    iget v4, v2, Landroid/telephony/PinResult;->mResult:I

    if-ne v3, v4, :cond_23

    iget v3, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    iget v4, v2, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0
.end method

.method public whitelist getAttemptsRemaining()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    return v0
.end method

.method public whitelist getResult()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/telephony/PinResult;->mResult:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 181
    iget v0, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/PinResult;->mResult:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attempts remaining: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 163
    iget v0, p0, Landroid/telephony/PinResult;->mResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Landroid/telephony/PinResult;->mAttemptsRemaining:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return-void
.end method
