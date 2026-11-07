.class public final Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
.super Ljava/lang/Object;
.source "SafetyCenterIssue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyCenterIssue$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mInFlight:Z

.field private blacklist mLabel:Ljava/lang/CharSequence;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mSuccessMessage:Ljava/lang/CharSequence;

.field private blacklist mWillResolve:Z


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetyCenterIssue$Action;)V
    .registers 4
    .param p1, "action"    # Landroid/safetycenter/SafetyCenterIssue$Action;

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 818
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue$Action;->-$$Nest$fgetmId(Landroid/safetycenter/SafetyCenterIssue$Action;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mId:Ljava/lang/String;

    .line 820
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue$Action;->-$$Nest$fgetmLabel(Landroid/safetycenter/SafetyCenterIssue$Action;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 821
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue$Action;->-$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetyCenterIssue$Action;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 822
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue$Action;->-$$Nest$fgetmWillResolve(Landroid/safetycenter/SafetyCenterIssue$Action;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mWillResolve:Z

    .line 823
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue$Action;->-$$Nest$fgetmInFlight(Landroid/safetycenter/SafetyCenterIssue$Action;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mInFlight:Z

    .line 824
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue$Action;->-$$Nest$fgetmSuccessMessage(Landroid/safetycenter/SafetyCenterIssue$Action;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mSuccessMessage:Ljava/lang/CharSequence;

    .line 825
    invoke-static {p1}, Landroid/safetycenter/SafetyCenterIssue$Action;->-$$Nest$fgetmConfirmationDialogDetails(Landroid/safetycenter/SafetyCenterIssue$Action;)Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    .line 826
    return-void

    .line 815
    :cond_37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mId:Ljava/lang/String;

    .line 807
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 808
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 809
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/safetycenter/SafetyCenterIssue$Action;
    .registers 10

    .line 905
    new-instance v0, Landroid/safetycenter/SafetyCenterIssue$Action;

    iget-object v1, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-boolean v4, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mWillResolve:Z

    iget-boolean v5, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mInFlight:Z

    iget-object v6, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mSuccessMessage:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/safetycenter/SafetyCenterIssue$Action;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZZLjava/lang/CharSequence;Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;Landroid/safetycenter/SafetyCenterIssue-IA;)V

    return-object v0
.end method

.method public whitelist setConfirmationDialogDetails(Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
    .registers 4
    .param p1, "confirmationDialogDetails"    # Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    .line 894
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 898
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mConfirmationDialogDetails:Landroid/safetycenter/SafetyCenterIssue$Action$ConfirmationDialogDetails;

    .line 899
    return-object p0

    .line 895
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 831
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mId:Ljava/lang/String;

    .line 832
    return-object p0
.end method

.method public whitelist setIsInFlight(Z)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
    .registers 2
    .param p1, "inFlight"    # Z

    .line 872
    iput-boolean p1, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mInFlight:Z

    .line 873
    return-object p0
.end method

.method public whitelist setLabel(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
    .registers 3
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 838
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 839
    return-object p0
.end method

.method public whitelist setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
    .registers 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 845
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 846
    return-object p0
.end method

.method public whitelist setSuccessMessage(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
    .registers 2
    .param p1, "successMessage"    # Ljava/lang/CharSequence;

    .line 882
    iput-object p1, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mSuccessMessage:Ljava/lang/CharSequence;

    .line 883
    return-object p0
.end method

.method public whitelist setWillResolve(Z)Landroid/safetycenter/SafetyCenterIssue$Action$Builder;
    .registers 2
    .param p1, "willResolve"    # Z

    .line 858
    iput-boolean p1, p0, Landroid/safetycenter/SafetyCenterIssue$Action$Builder;->mWillResolve:Z

    .line 859
    return-object p0
.end method
