.class public final Landroid/safetycenter/SafetySourceIssue$Action;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;,
        Landroid/safetycenter/SafetySourceIssue$Action$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mLabel:Ljava/lang/CharSequence;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private final blacklist mSuccessMessage:Ljava/lang/CharSequence;

.field private final blacklist mWillResolve:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfirmationDialogDetails(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/safetycenter/SafetySourceIssue$Action;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLabel(Landroid/safetycenter/SafetySourceIssue$Action;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuccessMessage(Landroid/safetycenter/SafetySourceIssue$Action;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWillResolve(Landroid/safetycenter/SafetySourceIssue$Action;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mWillResolve:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smenforceUniqueActionIds(Ljava/util/List;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/safetycenter/SafetySourceIssue$Action;->enforceUniqueActionIds(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 631
    new-instance v0, Landroid/safetycenter/SafetySourceIssue$Action$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetySourceIssue$Action$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetySourceIssue$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;)V
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "willResolve"    # Z
    .param p5, "successMessage"    # Ljava/lang/CharSequence;
    .param p6, "confirmationDialogDetails"    # Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mId:Ljava/lang/String;

    .line 685
    iput-object p2, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mLabel:Ljava/lang/CharSequence;

    .line 686
    iput-object p3, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    .line 687
    iput-boolean p4, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mWillResolve:Z

    .line 688
    iput-object p5, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    .line 689
    iput-object p6, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    .line 690
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;Landroid/safetycenter/SafetySourceIssue-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/safetycenter/SafetySourceIssue$Action;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;)V

    return-void
.end method

.method private static blacklist enforceUniqueActionIds(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 660
    .local p0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue$Action;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 661
    .local v0, "actionIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 662
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/safetycenter/SafetySourceIssue$Action;

    .line 664
    .local v2, "action":Landroid/safetycenter/SafetySourceIssue$Action;
    invoke-virtual {v2}, Landroid/safetycenter/SafetySourceIssue$Action;->getId()Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "actionId":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v4, p1}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 666
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 661
    .end local v2    # "action":Landroid/safetycenter/SafetySourceIssue$Action;
    .end local v3    # "actionId":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 668
    .end local v1    # "i":I
    :cond_25
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 772
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 773
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetySourceIssue$Action;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 774
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetySourceIssue$Action;

    .line 775
    .local v1, "that":Landroid/safetycenter/SafetySourceIssue$Action;
    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Action;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mLabel:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Action;->mLabel:Ljava/lang/CharSequence;

    .line 776
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    .line 777
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-boolean v3, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mWillResolve:Z

    iget-boolean v4, v1, Landroid/safetycenter/SafetySourceIssue$Action;->mWillResolve:Z

    if-ne v3, v4, :cond_46

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    .line 779
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    .line 780
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_47

    :cond_46
    move v0, v2

    .line 775
    :goto_47
    return v0
.end method

.method public whitelist getConfirmationDialogDetails()Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;
    .registers 3

    .line 746
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 750
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    return-object v0

    .line 747
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 697
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 707
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 718
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSuccessMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 736
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 785
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    iget-boolean v3, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mWillResolve:Z

    .line 789
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 785
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWillResolve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mWillResolve:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSuccessMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfirmationDialogDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

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

    .line 727
    iget-boolean v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mWillResolve:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 760
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 762
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 763
    iget-boolean v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mWillResolve:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 764
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mSuccessMessage:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 765
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 766
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 768
    :cond_24
    return-void
.end method
