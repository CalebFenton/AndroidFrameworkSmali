.class public final Landroid/app/AppOpsManager$NotedOp;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotedOp"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$NotedOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mOp:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mShouldCollectAsyncNotedOp:Z

.field private final blacklist mShouldCollectMessage:Z

.field private final blacklist mUid:I

.field private final blacklist mVirtualDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7758
    new-instance v0, Landroid/app/AppOpsManager$NotedOp$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$NotedOp$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$NotedOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V
    .registers 9
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "virtualDeviceId"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "shouldCollectMessage"    # Z

    .line 7652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7653
    iput p1, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    .line 7654
    iput p2, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    .line 7655
    iput-object p3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    .line 7656
    iput-object p4, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    .line 7657
    iput p5, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    .line 7658
    iput-object p6, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    .line 7659
    iput-boolean p7, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7660
    iput-boolean p8, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    .line 7661
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 7663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    .line 7665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    .line 7666
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    .line 7667
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    .line 7668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    .line 7669
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    .line 7670
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7671
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    .line 7672
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 7708
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 7725
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 7726
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6c

    .line 7727
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$NotedOp;

    .line 7728
    .local v2, "that":Landroid/app/AppOpsManager$NotedOp;
    iget v3, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    iget v4, v2, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    if-ne v3, v4, :cond_6a

    iget v3, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    iget v4, v2, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    if-ne v3, v4, :cond_6a

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    .line 7730
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    .line 7731
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iget v3, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    iget v4, v2, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    if-ne v3, v4, :cond_6a

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    .line 7733
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-boolean v3, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7734
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-boolean v3, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    .line 7735
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v2, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    goto :goto_6b

    :cond_6a
    move v0, v1

    .line 7728
    :goto_6b
    return v0

    .line 7726
    .end local v2    # "that":Landroid/app/AppOpsManager$NotedOp;
    :cond_6c
    :goto_6c
    return v1
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 7687
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMessage()Ljava/lang/String;
    .registers 2

    .line 7695
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOp()I
    .registers 2

    .line 7675
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    return v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 7683
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShouldCollectAsyncNotedOp()Z
    .registers 2

    .line 7699
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    return v0
.end method

.method public blacklist getShouldCollectMessage()Z
    .registers 2

    .line 7703
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    return v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 7679
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    return v0
.end method

.method public blacklist getVirtualDeviceId()I
    .registers 2

    .line 7691
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 7740
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    .line 7741
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 7740
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 7746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotedOp{mOp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAttributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVirtualDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldCollectAsyncNotedOp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShouldCollectMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 7713
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7714
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7715
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7716
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7717
    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7718
    iget-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7719
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7720
    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7721
    return-void
.end method
