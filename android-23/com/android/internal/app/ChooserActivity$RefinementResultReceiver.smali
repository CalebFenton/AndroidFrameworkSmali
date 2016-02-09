.class Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;
.super Landroid/os/ResultReceiver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RefinementResultReceiver"
.end annotation


# instance fields
.field private mChooserActivity:Lcom/android/internal/app/ChooserActivity;

.field private mSelectedTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/os/Handler;)V
    .locals 0
    .param p1, "host"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1097
    invoke-direct {p0, p3}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@3
    .line 1098
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    #@5
    .line 1099
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@7
    .line 1096
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1135
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    #@3
    .line 1136
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@5
    .line 1134
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1104
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1105
    const-string/jumbo v1, "ChooserActivity"

    #@7
    const-string/jumbo v2, "Destroyed RefinementResultReceiver received a result"

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 1106
    return-void

    #@e
    .line 1108
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 1109
    const-string/jumbo v1, "ChooserActivity"

    #@13
    const-string/jumbo v2, "RefinementResultReceiver received null resultData"

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    .line 1110
    return-void

    #@1a
    .line 1113
    :cond_1
    packed-switch p1, :pswitch_data_0

    #@1d
    .line 1128
    const-string/jumbo v1, "ChooserActivity"

    #@20
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Unknown result code "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 1129
    const-string/jumbo v3, " sent to RefinementResultReceiver"

    #@33
    .line 1128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 1103
    :goto_0
    return-void

    #@3f
    .line 1115
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    #@41
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    #@44
    goto :goto_0

    #@45
    .line 1118
    :pswitch_1
    const-string/jumbo v1, "android.intent.extra.INTENT"

    #@48
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@4b
    move-result-object v0

    #@4c
    .line 1119
    .local v0, "intentParcelable":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/content/Intent;

    #@4e
    if-eqz v1, :cond_2

    #@50
    .line 1120
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    #@52
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->mSelectedTarget:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    #@54
    .line 1121
    check-cast v0, Landroid/content/Intent;

    #@56
    .line 1120
    .end local v0    # "intentParcelable":Landroid/os/Parcelable;
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/app/ChooserActivity;->onRefinementResult(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)V

    #@59
    goto :goto_0

    #@5a
    .line 1123
    .restart local v0    # "intentParcelable":Landroid/os/Parcelable;
    :cond_2
    const-string/jumbo v1, "ChooserActivity"

    #@5d
    const-string/jumbo v2, "RefinementResultReceiver received RESULT_OK but no Intent in resultData with key Intent.EXTRA_INTENT"

    #@60
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    goto :goto_0

    #@64
    .line 1113
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
