.class public final Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceIssue$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfirmationDialogDetails"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAcceptButtonText:Ljava/lang/CharSequence;

.field private final blacklist mDenyButtonText:Ljava/lang/CharSequence;

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 817
    new-instance v0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails$1;

    invoke-direct {v0}, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails$1;-><init>()V

    sput-object v0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "acceptButtonText"    # Ljava/lang/CharSequence;
    .param p4, "denyButtonText"    # Ljava/lang/CharSequence;

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mTitle:Ljava/lang/CharSequence;

    .line 850
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mText:Ljava/lang/CharSequence;

    .line 851
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mAcceptButtonText:Ljava/lang/CharSequence;

    .line 852
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mDenyButtonText:Ljava/lang/CharSequence;

    .line 853
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 894
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 895
    :cond_4
    instance-of v1, p1, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 896
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    .line 897
    .local v1, "that":Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;
    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mText:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mText:Ljava/lang/CharSequence;

    .line 898
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mAcceptButtonText:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mAcceptButtonText:Ljava/lang/CharSequence;

    .line 899
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mDenyButtonText:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mDenyButtonText:Ljava/lang/CharSequence;

    .line 900
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    .line 897
    :goto_37
    return v0
.end method

.method public whitelist getAcceptButtonText()Ljava/lang/CharSequence;
    .registers 2

    .line 870
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mAcceptButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getDenyButtonText()Ljava/lang/CharSequence;
    .registers 2

    .line 876
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mDenyButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 864
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 858
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 905
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mAcceptButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mDenyButtonText:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfirmationDialogDetails{mTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAcceptButtonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mAcceptButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDenyButtonText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mDenyButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 886
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 887
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 888
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mAcceptButtonText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 889
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;->mDenyButtonText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 890
    return-void
.end method
