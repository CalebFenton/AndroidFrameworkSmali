.class public final Landroid/telephony/VoLteServiceState;
.super Ljava/lang/Object;
.source "VoLteServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VoLteServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field public static final greylist-max-o HANDOVER_CANCELED:I = 0x3

.field public static final greylist-max-o HANDOVER_COMPLETED:I = 0x1

.field public static final greylist-max-o HANDOVER_FAILED:I = 0x2

.field public static final greylist-max-o HANDOVER_STARTED:I = 0x0

.field public static final greylist-max-o INVALID:I = 0x7fffffff

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "VoLteServiceState"

.field public static final greylist-max-o NOT_SUPPORTED:I = 0x0

.field public static final greylist-max-o SUPPORTED:I = 0x1


# instance fields
.field private greylist-max-o mSrvccState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    new-instance v0, Landroid/telephony/VoLteServiceState$1;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    .line 77
    return-void
.end method

.method public constructor greylist-max-p <init>(I)V
    .registers 2
    .param p1, "srvccState"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    .line 88
    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 89
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 127
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/telephony/VoLteServiceState;)V
    .registers 2
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p0, p1}, Landroid/telephony/VoLteServiceState;->copyFrom(Landroid/telephony/VoLteServiceState;)V

    .line 100
    return-void
.end method

.method private greylist-max-o initialize()V
    .registers 2

    .line 108
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 109
    return-void
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 232
    const-string v0, "VoLteServiceState"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public static greylist-max-o newFromBundle(Landroid/os/Bundle;)Landroid/telephony/VoLteServiceState;
    .registers 2
    .param p0, "m"    # Landroid/os/Bundle;

    .line 65
    new-instance v0, Landroid/telephony/VoLteServiceState;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState;-><init>()V

    .line 66
    .local v0, "ret":Landroid/telephony/VoLteServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/VoLteServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method

.method private greylist-max-o setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "m"    # Landroid/os/Bundle;

    .line 211
    const-string/jumbo v0, "mSrvccState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 212
    return-void
.end method


# virtual methods
.method protected greylist-max-o copyFrom(Landroid/telephony/VoLteServiceState;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    .line 115
    iget v0, p1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 116
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 183
    const/4 v0, 0x0

    :try_start_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/VoLteServiceState;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_10

    .line 186
    .local v1, "s":Landroid/telephony/VoLteServiceState;
    nop

    .line 188
    if-nez p1, :cond_8

    .line 189
    return v0

    .line 192
    :cond_8
    iget v2, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iget v3, v1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    if-ne v2, v3, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    .line 184
    .end local v1    # "s":Landroid/telephony/VoLteServiceState;
    :catch_10
    move-exception v1

    .line 185
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public greylist-max-o fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "m"    # Landroid/os/Bundle;

    .line 221
    const-string/jumbo v0, "mSrvccState"

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 222
    return-void
.end method

.method public greylist-max-o getSrvccState()I
    .registers 2

    .line 225
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 171
    const/16 v0, 0x1f

    .line 172
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    mul-int/2addr v1, v0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoLteServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o validateInput()V
    .registers 1

    .line 168
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void
.end method
