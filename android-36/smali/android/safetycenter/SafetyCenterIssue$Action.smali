.class public final Landroid/safetycenter/SafetyCenterIssue$Action;
.super Ljava/lang/Object;
.source "SafetyCenterIssue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;,
        Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetyCenterIssue$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mInFlight:Z

.field private final blacklist mLabel:Ljava/lang/CharSequence;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSuccessMessage:Ljava/lang/CharSequence;

.field private final blacklist mWillResolve:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfirmationDialogDetails(Landroid/safetycenter/SafetyCenterIssue$Action;)Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/safetycenter/SafetyCenterIssue$Action;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInFlight(Landroid/safetycenter/SafetyCenterIssue$Action;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mInFlight:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLabel(Landroid/safetycenter/SafetyCenterIssue$Action;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetyCenterIssue$Action;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuccessMessage(Landroid/safetycenter/SafetyCenterIssue$Action;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWillResolve(Landroid/safetycenter/SafetyCenterIssue$Action;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mWillResolve:Z

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 496
    new-instance v0, Landroid/safetycenter/SafetyCenterIssue$Action$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetyCenterIssue$Action$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetyCenterIssue$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZZLjava/lang/CharSequence;Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "willResolve"    # Z
    .param p5, "inFlight"    # Z
    .param p6, "successMessage"    # Ljava/lang/CharSequence;
    .param p7, "confirmationDialogDetails"    # Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mId:Ljava/lang/String;

    .line 541
    iput-object p2, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mLabel:Ljava/lang/CharSequence;

    .line 542
    iput-object p3, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    .line 543
    iput-boolean p4, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mWillResolve:Z

    .line 544
    iput-boolean p5, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mInFlight:Z

    .line 545
    iput-object p6, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    .line 546
    iput-object p7, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    .line 547
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZZLjava/lang/CharSequence;Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;Landroid/safetycenter/SafetyCenterIssue-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/safetycenter/SafetyCenterIssue$Action;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZZLjava/lang/CharSequence;Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 610
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 611
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetyCenterIssue$Action;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 612
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetyCenterIssue$Action;

    .line 613
    .local v1, "action":Landroid/safetycenter/SafetyCenterIssue$Action;
    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue$Action;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mLabel:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue$Action;->mLabel:Ljava/lang/CharSequence;

    .line 614
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    .line 615
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-boolean v3, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mWillResolve:Z

    iget-boolean v4, v1, Landroid/safetycenter/SafetyCenterIssue$Action;->mWillResolve:Z

    if-ne v3, v4, :cond_4c

    iget-boolean v3, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mInFlight:Z

    iget-boolean v4, v1, Landroid/safetycenter/SafetyCenterIssue$Action;->mInFlight:Z

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    .line 618
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    iget-object v4, v1, Landroid/safetycenter/SafetyCenterIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    .line 619
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v2

    .line 613
    :goto_4d
    return v0
.end method

.method public whitelist getConfirmationDialogDetails()Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;
    .registers 3

    .line 601
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 605
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    return-object v0

    .line 602
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 552
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 558
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 564
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSuccessMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 591
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 625
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    iget-boolean v3, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mWillResolve:Z

    .line 629
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mInFlight:Z

    .line 630
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 625
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isInFlight()Z
    .registers 2

    .line 582
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mInFlight:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWillResolve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mWillResolve:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInFlight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mInFlight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuccessMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfirmationDialogDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist willResolve()Z
    .registers 2

    .line 573
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mWillResolve:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 662
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 664
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 665
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mWillResolve:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 666
    iget-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mInFlight:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 667
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 668
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 669
    iget-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 671
    :cond_29
    return-void
.end method
