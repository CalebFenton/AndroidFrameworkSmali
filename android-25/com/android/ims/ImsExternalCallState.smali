.class public Lcom/android/ims/ImsExternalCallState;
.super Ljava/lang/Object;
.source "ImsExternalCallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsExternalCallState$1;
    }
.end annotation


# static fields
.field public static final CALL_STATE_CONFIRMED:I = 0x1

.field public static final CALL_STATE_TERMINATED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ImsExternalCallState"


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mCallId:I

.field private mCallState:I

.field private mCallType:I

.field private mIsHeld:Z

.field private mIsPullable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 95
    new-instance v0, Lcom/android/ims/ImsExternalCallState$1;

    #@2
    invoke-direct {v0}, Lcom/android/ims/ImsExternalCallState$1;-><init>()V

    #@5
    .line 94
    sput-object v0, Lcom/android/ims/ImsExternalCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;ZIIZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "isPullable"    # Z
    .param p4, "callState"    # I
    .param p5, "callType"    # I
    .param p6, "isCallheld"    # Z

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput p1, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    #@5
    .line 59
    iput-object p2, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    #@7
    .line 60
    iput-boolean p3, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    #@9
    .line 61
    iput p4, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    #@b
    .line 62
    iput p5, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    #@d
    .line 63
    iput-boolean p6, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    #@f
    .line 64
    const-string/jumbo v0, "ImsExternalCallState"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "ImsExternalCallState = "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    #@b
    .line 69
    const-class v1, Lcom/android/ims/ImsExternalCallState;

    #@d
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v0

    #@11
    .line 70
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/net/Uri;

    #@17
    iput-object v1, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    #@19
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    move v1, v2

    #@20
    :goto_0
    iput-boolean v1, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    #@22
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@25
    move-result v1

    #@26
    iput v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    #@28
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    #@2e
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_1

    #@34
    :goto_1
    iput-boolean v2, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    #@36
    .line 75
    const-string/jumbo v1, "ImsExternalCallState"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "ImsExternalCallState const = "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 67
    return-void

    #@51
    :cond_0
    move v1, v3

    #@52
    .line 71
    goto :goto_0

    #@53
    :cond_1
    move v2, v3

    #@54
    .line 74
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getCallId()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    #@2
    return v0
.end method

.method public getCallState()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    #@2
    return v0
.end method

.method public getCallType()I
    .locals 1

    #@0
    .prologue
    .line 124
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    #@2
    return v0
.end method

.method public isCallHeld()Z
    .locals 1

    #@0
    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    #@2
    return v0
.end method

.method public isCallPullable()Z
    .locals 1

    #@0
    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ImsExternalCallState { mCallId = "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 134
    const-string/jumbo v1, ", mAddress = "

    #@15
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 134
    iget-object v1, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    #@1b
    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 135
    const-string/jumbo v1, ", mIsPullable = "

    #@26
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 135
    iget-boolean v1, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    #@2c
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 136
    const-string/jumbo v1, ", mCallState = "

    #@33
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 136
    iget v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    #@39
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 137
    const-string/jumbo v1, ", mCallType = "

    #@40
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 137
    iget v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    #@46
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 138
    const-string/jumbo v1, ", mIsHeld = "

    #@4d
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 138
    iget-boolean v1, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    #@53
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 138
    const-string/jumbo v1, "}"

    #@5a
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 85
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 86
    iget-object v0, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    #@9
    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@c
    .line 87
    iget-boolean v0, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 88
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 89
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 90
    iget-boolean v0, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    #@20
    if-eqz v0, :cond_1

    #@22
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 91
    const-string/jumbo v0, "ImsExternalCallState"

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "ImsExternalCallState writeToParcel = "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 84
    return-void

    #@44
    :cond_0
    move v0, v2

    #@45
    .line 87
    goto :goto_0

    #@46
    :cond_1
    move v1, v2

    #@47
    .line 90
    goto :goto_1
.end method
