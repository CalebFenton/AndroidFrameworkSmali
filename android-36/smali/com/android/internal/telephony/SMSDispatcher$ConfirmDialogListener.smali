.class final Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private blacklist mConfirmationType:I

.field private greylist-max-r mNegativeButton:Landroid/widget/Button;

.field private greylist-max-r mPositiveButton:Landroid/widget/Button;

.field private blacklist mRememberChoice:Z

.field private final greylist-max-r mRememberUndoInstruction:Landroid/widget/TextView;

.field private final blacklist mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SMSDispatcher;[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3102
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3103
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 3104
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    .line 3105
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mConfirmationType:I

    return-void
.end method


# virtual methods
.method public whitelist onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 3156
    const-string p1, "SMSDispatcher"

    const-string v0, "dialog dismissed: don\'t send SMS"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3158
    iget v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mConfirmationType:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 3159
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public whitelist onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 3164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remember this choice: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMSDispatcher"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberChoice:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_3d

    .line 3167
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    const v0, 0x10409e0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 3168
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    const v0, 0x10409e3

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 3169
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    if-eqz p2, :cond_5b

    const v0, 0x10409e6

    .line 3171
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3172
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    const/16 p2, 0x20

    invoke-virtual {p0, p1, p1, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    .line 3175
    :cond_3d
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    const v0, 0x10409df

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 3176
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    const v0, 0x10409e1

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    .line 3177
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    if-eqz p2, :cond_5b

    .line 3178
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3179
    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_5b
    return-void
.end method

.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 3122
    const-string p1, "SMSDispatcher"

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_31

    .line 3123
    const-string p2, "CONFIRM sending SMS"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_17

    goto :goto_19

    .line 3129
    :cond_17
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_19
    const p1, 0xc3d0

    .line 3125
    invoke-static {p1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3130
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 p2, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3131
    iget-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberChoice:Z

    if-eqz p1, :cond_65

    const/4 v1, 0x3

    goto :goto_65

    :cond_31
    const/4 v3, -0x2

    if-ne p2, v3, :cond_65

    .line 3135
    const-string p2, "DENY sending SMS"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_44

    goto :goto_46

    .line 3141
    :cond_44
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_46
    const p1, 0xc3cd

    .line 3137
    invoke-static {p1, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 3142
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 p2, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3143
    iget p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mConfirmationType:I

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 3144
    iget-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberChoice:Z

    if-eqz p2, :cond_60

    .line 3146
    iput v1, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x2

    .line 3148
    :cond_60
    iget-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3150
    :cond_65
    :goto_65
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object p1, p1, Lcom/android/internal/telephony/SMSDispatcher;->mSmsDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    iget-object p0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTrackers:[Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    aget-object p0, p0, v0

    .line 3151
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->getAppPackageName()Ljava/lang/String;

    move-result-object p0

    .line 3150
    invoke-virtual {p1, p0, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->setPremiumSmsPermission(Ljava/lang/String;I)V

    return-void
.end method

.method blacklist setNegativeButton(Landroid/widget/Button;)V
    .registers 2

    .line 3113
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    return-void
.end method

.method blacklist setPositiveButton(Landroid/widget/Button;)V
    .registers 2

    .line 3109
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    return-void
.end method
