.class public final Landroid/telecom/Connection$CallFilteringCompletionInfo;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallFilteringCompletionInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/Connection$CallFilteringCompletionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallResponse:Landroid/telecom/CallScreeningService$CallResponse;

.field private final blacklist mCallScreeningComponent:Landroid/content/ComponentName;

.field private final blacklist mIsBlocked:Z

.field private final blacklist mIsInContacts:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3726
    new-instance v0, Landroid/telecom/Connection$CallFilteringCompletionInfo$1;

    invoke-direct {v0}, Landroid/telecom/Connection$CallFilteringCompletionInfo$1;-><init>()V

    sput-object v0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3717
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsBlocked:Z

    .line 3718
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    iput-boolean v1, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsInContacts:Z

    .line 3719
    const-class v0, Landroid/telecom/CallScreeningService;

    .line 3720
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telecom/CallScreeningService$ParcelableCallResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/CallScreeningService$ParcelableCallResponse;

    .line 3721
    .local v0, "response":Landroid/telecom/CallScreeningService$ParcelableCallResponse;
    if-nez v0, :cond_2c

    const/4 v1, 0x0

    goto :goto_30

    :cond_2c
    invoke-virtual {v0}, Landroid/telecom/CallScreeningService$ParcelableCallResponse;->toCallResponse()Landroid/telecom/CallScreeningService$CallResponse;

    move-result-object v1

    :goto_30
    iput-object v1, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallResponse:Landroid/telecom/CallScreeningService$CallResponse;

    .line 3722
    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/content/ComponentName;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallScreeningComponent:Landroid/content/ComponentName;

    .line 3723
    return-void
.end method

.method public constructor whitelist <init>(ZZLandroid/telecom/CallScreeningService$CallResponse;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "isBlocked"    # Z
    .param p2, "isInContacts"    # Z
    .param p3, "callResponse"    # Landroid/telecom/CallScreeningService$CallResponse;
    .param p4, "callScreeningComponent"    # Landroid/content/ComponentName;

    .line 3708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3709
    iput-boolean p1, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsBlocked:Z

    .line 3710
    iput-boolean p2, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsInContacts:Z

    .line 3711
    iput-object p3, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallResponse:Landroid/telecom/CallScreeningService$CallResponse;

    .line 3712
    iput-object p4, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallScreeningComponent:Landroid/content/ComponentName;

    .line 3713
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3773
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCallResponse()Landroid/telecom/CallScreeningService$CallResponse;
    .registers 2

    .line 3760
    iget-object v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallResponse:Landroid/telecom/CallScreeningService$CallResponse;

    return-object v0
.end method

.method public whitelist getCallScreeningComponent()Landroid/content/ComponentName;
    .registers 2

    .line 3768
    iget-object v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallScreeningComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist isBlocked()Z
    .registers 2

    .line 3744
    iget-boolean v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsBlocked:Z

    return v0
.end method

.method public whitelist isInContacts()Z
    .registers 2

    .line 3751
    iget-boolean v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsInContacts:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallFilteringCompletionInfo{mIsBlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsInContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsInContacts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallResponse:Landroid/telecom/CallScreeningService$CallResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallScreeningPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallScreeningComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3789
    iget-boolean v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsBlocked:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3790
    iget-boolean v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mIsInContacts:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 3791
    iget-object v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallResponse:Landroid/telecom/CallScreeningService$CallResponse;

    if-nez v0, :cond_12

    const/4 v0, 0x0

    goto :goto_18

    :cond_12
    iget-object v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallResponse:Landroid/telecom/CallScreeningService$CallResponse;

    invoke-virtual {v0}, Landroid/telecom/CallScreeningService$CallResponse;->toParcelable()Landroid/telecom/CallScreeningService$ParcelableCallResponse;

    move-result-object v0

    :goto_18
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3792
    iget-object v0, p0, Landroid/telecom/Connection$CallFilteringCompletionInfo;->mCallScreeningComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3793
    return-void
.end method
