.class public final Landroid/safetycenter/SafetySourceIssue$Action$Builder;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceIssue$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mLabel:Ljava/lang/CharSequence;

.field private final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mSuccessMessage:Ljava/lang/CharSequence;

.field private blacklist mWillResolve:Z


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetySourceIssue$Action;)V
    .registers 4
    .param p1, "action"    # Landroid/safetycenter/SafetySourceIssue$Action;

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mWillResolve:Z

    .line 946
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 950
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue$Action;->-$$Nest$fgetmId(Landroid/safetycenter/SafetySourceIssue$Action;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mId:Ljava/lang/String;

    .line 952
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue$Action;->-$$Nest$fgetmLabel(Landroid/safetycenter/SafetySourceIssue$Action;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 953
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue$Action;->-$$Nest$fgetmPendingIntent(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 954
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue$Action;->-$$Nest$fgetmWillResolve(Landroid/safetycenter/SafetySourceIssue$Action;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mWillResolve:Z

    .line 955
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue$Action;->-$$Nest$fgetmSuccessMessage(Landroid/safetycenter/SafetySourceIssue$Action;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mSuccessMessage:Ljava/lang/CharSequence;

    .line 956
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue$Action;->-$$Nest$fgetmConfirmationDialogDetails(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    .line 957
    return-void

    .line 947
    :cond_34
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

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mWillResolve:Z

    .line 938
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mId:Ljava/lang/String;

    .line 939
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mLabel:Ljava/lang/CharSequence;

    .line 940
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 941
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/safetycenter/SafetySourceIssue$Action;
    .registers 12

    .line 1006
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1007
    iget-boolean v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mWillResolve:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 1008
    .local v0, "willResolveWithActivity":Z
    :goto_17
    if-nez v0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    const-string v2, "Launching activity from Action that should resolve the SafetySourceIssue is not allowed. Consider using setting a Confirmation if needed, and either set the willResolve to false or make PendingIntent to start a service/send a broadcast."

    invoke-static {v1, v2}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1016
    .end local v0    # "willResolveWithActivity":Z
    :cond_20
    new-instance v3, Landroid/safetycenter/SafetySourceIssue$Action;

    iget-object v4, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mId:Ljava/lang/String;

    iget-object v5, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mLabel:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    iget-boolean v7, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mWillResolve:Z

    iget-object v8, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mSuccessMessage:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Landroid/safetycenter/SafetySourceIssue$Action;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/PendingIntent;ZLjava/lang/CharSequence;Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;Landroid/safetycenter/SafetySourceIssue-IA;)V

    return-object v3
.end method

.method public whitelist setConfirmationDialogDetails(Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;)Landroid/safetycenter/SafetySourceIssue$Action$Builder;
    .registers 4
    .param p1, "confirmationDialogDetails"    # Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    .line 995
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 999
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mConfirmationDialogDetails:Landroid/safetycenter/SafetySourceIssue$Action$ConfirmationDialogDetails;

    .line 1000
    return-object p0

    .line 996
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSuccessMessage(Ljava/lang/CharSequence;)Landroid/safetycenter/SafetySourceIssue$Action$Builder;
    .registers 2
    .param p1, "successMessage"    # Ljava/lang/CharSequence;

    .line 983
    iput-object p1, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mSuccessMessage:Ljava/lang/CharSequence;

    .line 984
    return-object p0
.end method

.method public whitelist setWillResolve(Z)Landroid/safetycenter/SafetySourceIssue$Action$Builder;
    .registers 2
    .param p1, "willResolve"    # Z

    .line 973
    iput-boolean p1, p0, Landroid/safetycenter/SafetySourceIssue$Action$Builder;->mWillResolve:Z

    .line 974
    return-object p0
.end method
