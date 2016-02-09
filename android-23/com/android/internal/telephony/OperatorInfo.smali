.class public Lcom/android/internal/telephony/OperatorInfo;
.super Ljava/lang/Object;
.source "OperatorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OperatorInfo$State;,
        Lcom/android/internal/telephony/OperatorInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOperatorAlphaLong:Ljava/lang/String;

.field private mOperatorAlphaShort:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/OperatorInfo$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 144
    new-instance v0, Lcom/android/internal/telephony/OperatorInfo$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/telephony/OperatorInfo$1;-><init>()V

    #@5
    .line 143
    sput-object v0, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    #@5
    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V
    .locals 1
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/telephony/OperatorInfo$State;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    #@5
    iput-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    #@7
    .line 65
    iput-object p1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    #@9
    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    #@b
    .line 67
    iput-object p3, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    #@d
    .line 69
    iput-object p4, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    #@f
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "operatorAlphaLong"    # Ljava/lang/String;
    .param p2, "operatorAlphaShort"    # Ljava/lang/String;
    .param p3, "operatorNumeric"    # Ljava/lang/String;
    .param p4, "stateString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 78
    invoke-static {p4}, Lcom/android/internal/telephony/OperatorInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;

    #@3
    move-result-object v0

    #@4
    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;)V

    #@7
    .line 76
    return-void
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "unknown"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 92
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    #@b
    return-object v0

    #@c
    .line 93
    :cond_0
    const-string/jumbo v0, "available"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 94
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    #@17
    return-object v0

    #@18
    .line 95
    :cond_1
    const-string/jumbo v0, "current"

    #@1b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 96
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    #@23
    return-object v0

    #@24
    .line 97
    :cond_2
    const-string/jumbo v0, "forbidden"

    #@27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 98
    sget-object v0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    #@2f
    return-object v0

    #@30
    .line 100
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    #@32
    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "RIL impl error: Invalid network state \'"

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    const-string/jumbo v2, "\'"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    .line 100
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/OperatorInfo$State;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "OperatorInfo "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 109
    const-string/jumbo v1, "/"

    #@15
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    #@1b
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 110
    const-string/jumbo v1, "/"

    #@22
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    #@28
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 111
    const-string/jumbo v1, "/"

    #@2f
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    #@35
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaLong:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorAlphaShort:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mOperatorNumeric:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/OperatorInfo;->mState:Lcom/android/internal/telephony/OperatorInfo$State;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    #@14
    .line 132
    return-void
.end method
