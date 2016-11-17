.class public final Landroid/telephony/VoLteServiceState;
.super Ljava/lang/Object;
.source "VoLteServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VoLteServiceState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/VoLteServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final HANDOVER_CANCELED:I = 0x3

.field public static final HANDOVER_COMPLETED:I = 0x1

.field public static final HANDOVER_FAILED:I = 0x2

.field public static final HANDOVER_STARTED:I = 0x0

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "VoLteServiceState"

.field public static final NOT_SUPPORTED:I = 0x0

.field public static final SUPPORTED:I = 0x1


# instance fields
.field private mSrvccState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 143
    new-instance v0, Landroid/telephony/VoLteServiceState$1;

    #@2
    invoke-direct {v0}, Landroid/telephony/VoLteServiceState$1;-><init>()V

    #@5
    sput-object v0, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    #@6
    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "srvccState"    # I

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    #@6
    .line 83
    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@8
    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@9
    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/telephony/VoLteServiceState;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    invoke-virtual {p0, p1}, Landroid/telephony/VoLteServiceState;->copyFrom(Landroid/telephony/VoLteServiceState;)V

    #@6
    .line 93
    return-void
.end method

.method private initialize()V
    .locals 1

    #@0
    .prologue
    .line 103
    const v0, 0x7fffffff

    #@3
    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@5
    .line 102
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 227
    const-string/jumbo v0, "VoLteServiceState"

    #@3
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 226
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/VoLteServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 61
    new-instance v0, Landroid/telephony/VoLteServiceState;

    #@2
    invoke-direct {v0}, Landroid/telephony/VoLteServiceState;-><init>()V

    #@5
    .line 62
    .local v0, "ret":Landroid/telephony/VoLteServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/VoLteServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    #@8
    .line 63
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 206
    const-string/jumbo v0, "mSrvccState"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@9
    .line 205
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    #@0
    .prologue
    .line 110
    iget v0, p1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@2
    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@4
    .line 109
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 135
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 178
    :try_start_0
    move-object v0, p1

    #@2
    check-cast v0, Landroid/telephony/VoLteServiceState;

    #@4
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 183
    .local v2, "s":Landroid/telephony/VoLteServiceState;
    if-nez p1, :cond_0

    #@7
    .line 184
    return v3

    #@8
    .line 179
    .end local v2    # "s":Landroid/telephony/VoLteServiceState;
    :catch_0
    move-exception v1

    #@9
    .line 180
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    #@a
    .line 187
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/VoLteServiceState;
    :cond_0
    iget v4, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@c
    iget v5, v2, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@e
    if-ne v4, v5, :cond_1

    #@10
    const/4 v3, 0x1

    #@11
    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 216
    const-string/jumbo v0, "mSrvccState"

    #@3
    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 215
    return-void
.end method

.method public getSrvccState()I
    .locals 1

    #@0
    .prologue
    .line 220
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 167
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "VoLteServiceState: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 196
    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@e
    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public validateInput()V
    .locals 0

    #@0
    .prologue
    .line 162
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 128
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 127
    return-void
.end method
