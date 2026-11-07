.class public final Landroid/window/TransitionRequestInfo;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionRequestInfo$PipChange;,
        Landroid/window/TransitionRequestInfo$DisplayChange;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDebugId:I

.field private blacklist mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

.field private final blacklist mFlags:I

.field private blacklist mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

.field private blacklist mRemoteTransition:Landroid/window/RemoteTransition;

.field private blacklist mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 676
    new-instance v0, Landroid/window/TransitionRequestInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;I)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "triggerTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "pipTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p4, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p5, "displayChange"    # Landroid/window/TransitionRequestInfo$DisplayChange;
    .param p6, "flags"    # I

    .line 106
    nop

    .line 107
    if-eqz p3, :cond_9

    new-instance v0, Landroid/window/TransitionRequestInfo$PipChange;

    invoke-direct {v0, p3}, Landroid/window/TransitionRequestInfo$PipChange;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    move-object v4, v0

    .line 106
    const/4 v8, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .end local p1    # "type":I
    .end local p2    # "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local p4    # "remoteTransition":Landroid/window/RemoteTransition;
    .end local p5    # "displayChange":Landroid/window/TransitionRequestInfo$DisplayChange;
    .end local p6    # "flags":I
    .local v2, "type":I
    .local v3, "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v5, "remoteTransition":Landroid/window/RemoteTransition;
    .local v6, "displayChange":Landroid/window/TransitionRequestInfo$DisplayChange;
    .local v7, "flags":I
    invoke-direct/range {v1 .. v8}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "triggerTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "remoteTransition"    # Landroid/window/RemoteTransition;

    .line 73
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    .end local p1    # "type":I
    .end local p2    # "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local p3    # "remoteTransition":Landroid/window/RemoteTransition;
    .local v1, "type":I
    .local v2, "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v4, "remoteTransition":Landroid/window/RemoteTransition;
    invoke-direct/range {v0 .. v7}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;I)V
    .registers 13
    .param p1, "type"    # I
    .param p2, "triggerTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p4, "flags"    # I

    .line 83
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    .end local p1    # "type":I
    .end local p2    # "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local p3    # "remoteTransition":Landroid/window/RemoteTransition;
    .end local p4    # "flags":I
    .local v1, "type":I
    .local v2, "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v4, "remoteTransition":Landroid/window/RemoteTransition;
    .local v6, "flags":I
    invoke-direct/range {v0 .. v7}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;I)V
    .registers 14
    .param p1, "type"    # I
    .param p2, "triggerTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p4, "displayChange"    # Landroid/window/TransitionRequestInfo$DisplayChange;
    .param p5, "flags"    # I

    .line 94
    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .end local p1    # "type":I
    .end local p2    # "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local p3    # "remoteTransition":Landroid/window/RemoteTransition;
    .end local p4    # "displayChange":Landroid/window/TransitionRequestInfo$DisplayChange;
    .end local p5    # "flags":I
    .local v1, "type":I
    .local v2, "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .local v4, "remoteTransition":Landroid/window/RemoteTransition;
    .local v5, "displayChange":Landroid/window/TransitionRequestInfo$DisplayChange;
    .local v6, "flags":I
    invoke-direct/range {v0 .. v7}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V

    .line 96
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;II)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "triggerTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p3, "pipChange"    # Landroid/window/TransitionRequestInfo$PipChange;
    .param p4, "remoteTransition"    # Landroid/window/RemoteTransition;
    .param p5, "displayChange"    # Landroid/window/TransitionRequestInfo$DisplayChange;
    .param p6, "flags"    # I
    .param p7, "debugId"    # I

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput p1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    .line 492
    const-class v0, Landroid/view/WindowManager$TransitionType;

    const/4 v1, 0x0

    iget v2, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 494
    iput-object p2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 495
    iput-object p3, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    .line 496
    iput-object p4, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 497
    iput-object p5, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 498
    iput p6, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    .line 499
    iput p7, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    .line 502
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 654
    .local v0, "flg":B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 655
    .local v1, "type":I
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_1a

    :cond_12
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 656
    .local v2, "triggerTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_1a
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_20

    move-object v4, v3

    goto :goto_28

    :cond_20
    sget-object v4, Landroid/window/TransitionRequestInfo$PipChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/TransitionRequestInfo$PipChange;

    .line 657
    .local v4, "pipChange":Landroid/window/TransitionRequestInfo$PipChange;
    :goto_28
    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_2e

    move-object v5, v3

    goto :goto_36

    :cond_2e
    sget-object v5, Landroid/window/RemoteTransition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/RemoteTransition;

    .line 658
    .local v5, "remoteTransition":Landroid/window/RemoteTransition;
    :goto_36
    and-int/lit8 v6, v0, 0x10

    if-nez v6, :cond_3c

    move-object v6, v3

    goto :goto_44

    :cond_3c
    sget-object v6, Landroid/window/TransitionRequestInfo$DisplayChange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 659
    .local v6, "displayChange":Landroid/window/TransitionRequestInfo$DisplayChange;
    :goto_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 660
    .local v7, "flags":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 662
    .local v8, "debugId":I
    iput v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    .line 663
    const-class v9, Landroid/view/WindowManager$TransitionType;

    iget v10, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-static {v9, v3, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 665
    iput-object v2, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 666
    iput-object v4, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    .line 667
    iput-object v5, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 668
    iput-object v6, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 669
    iput v7, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    .line 670
    iput v8, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    .line 673
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 695
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDebugId()I
    .registers 2

    .line 561
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    return v0
.end method

.method public blacklist getDisplayChange()Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 2

    .line 545
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 553
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    return v0
.end method

.method public blacklist getPipChange()Landroid/window/TransitionRequestInfo$PipChange;
    .registers 2

    .line 527
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    return-object v0
.end method

.method public blacklist getRemoteTransition()Landroid/window/RemoteTransition;
    .registers 2

    .line 535
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public blacklist getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 518
    iget-object v0, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 509
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mType:I

    return v0
.end method

.method public blacklist setDisplayChange(Landroid/window/TransitionRequestInfo$DisplayChange;)Landroid/window/TransitionRequestInfo;
    .registers 2
    .param p1, "value"    # Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 600
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 601
    return-object p0
.end method

.method public blacklist setPipChange(Landroid/window/TransitionRequestInfo$PipChange;)Landroid/window/TransitionRequestInfo;
    .registers 2
    .param p1, "value"    # Landroid/window/TransitionRequestInfo$PipChange;

    .line 580
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    .line 581
    return-object p0
.end method

.method public blacklist setRemoteTransition(Landroid/window/RemoteTransition;)Landroid/window/TransitionRequestInfo;
    .registers 2
    .param p1, "value"    # Landroid/window/RemoteTransition;

    .line 589
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    .line 590
    return-object p0
.end method

.method public blacklist setTriggerTask(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/window/TransitionRequestInfo;
    .registers 2
    .param p1, "value"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 570
    iput-object p1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 571
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransitionRequestInfo { type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    invoke-virtual {p0}, Landroid/window/TransitionRequestInfo;->typeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerTask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pipChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remoteTransition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", debugId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    return-object v0
.end method

.method blacklist typeToString()Ljava/lang/String;
    .registers 2

    .line 113
    iget v0, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-static {v0}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, "flg":B
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 629
    :cond_8
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    .line 630
    :cond_f
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 631
    :cond_16
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v1, :cond_1d

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    .line 632
    :cond_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 633
    iget v1, p0, Landroid/window/TransitionRequestInfo;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mTriggerTask:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 635
    :cond_2e
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mPipChange:Landroid/window/TransitionRequestInfo$PipChange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 636
    :cond_37
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v1, :cond_40

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mRemoteTransition:Landroid/window/RemoteTransition;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 637
    :cond_40
    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/window/TransitionRequestInfo;->mDisplayChange:Landroid/window/TransitionRequestInfo$DisplayChange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 638
    :cond_49
    iget v1, p0, Landroid/window/TransitionRequestInfo;->mFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 639
    iget v1, p0, Landroid/window/TransitionRequestInfo;->mDebugId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    return-void
.end method
