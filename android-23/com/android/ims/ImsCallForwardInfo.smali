.class public Lcom/android/ims/ImsCallForwardInfo;
.super Ljava/lang/Object;
.source "ImsCallForwardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCallForwardInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsCallForwardInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCondition:I

.field public mNumber:Ljava/lang/String;

.field public mStatus:I

.field public mTimeSeconds:I

.field public mToA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 77
    new-instance v0, Lcom/android/ims/ImsCallForwardInfo$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/ImsCallForwardInfo$1;-><init>()V

    #@5
    .line 76
    sput-object v0, Lcom/android/ims/ImsCallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCallForwardInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 42
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    #@6
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    iput v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    #@c
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    #@12
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    #@18
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    #@1e
    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, ", Condition: "

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget v1, p0, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 63
    const-string/jumbo v1, ", Status: "

    #@1d
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 63
    iget v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    #@23
    if-nez v0, :cond_0

    #@25
    const-string/jumbo v0, "disabled"

    #@28
    .line 62
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 64
    const-string/jumbo v1, ", ToA: "

    #@2f
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 64
    iget v1, p0, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    #@35
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 64
    const-string/jumbo v1, ", Number="

    #@3c
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 64
    iget-object v1, p0, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    #@42
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 65
    const-string/jumbo v1, ", Time (seconds): "

    #@49
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 65
    iget v1, p0, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    #@4f
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    return-object v0

    #@58
    .line 63
    :cond_0
    const-string/jumbo v0, "enabled"

    #@5b
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 53
    iget v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mCondition:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 54
    iget v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mStatus:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 55
    iget v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mToA:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 56
    iget-object v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mNumber:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 57
    iget v0, p0, Lcom/android/ims/ImsCallForwardInfo;->mTimeSeconds:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 52
    return-void
.end method
