.class public final Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Action$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_AVAILABLE_OFFLINE:I = 0x1

.field private static final KEY_CANCEL_LABEL:Ljava/lang/String; = "cancelLabel"

.field private static final KEY_CONFIRM_LABEL:Ljava/lang/String; = "confirmLabel"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_IN_PROGRESS_LABEL:Ljava/lang/String; = "inProgressLabel"


# instance fields
.field private mCancelLabel:Ljava/lang/CharSequence;

.field private mConfirmLabel:Ljava/lang/CharSequence;

.field private mFlags:I

.field private mInProgressLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2010
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@6
    .line 2020
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 4
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2010
    iput v3, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@6
    .line 2029
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, "android.wearable.EXTENSIONS"

    #@d
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@10
    move-result-object v0

    #@11
    .line 2030
    .local v0, "wearableBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@13
    .line 2031
    const-string/jumbo v1, "flags"

    #@16
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@1c
    .line 2032
    const-string/jumbo v1, "inProgressLabel"

    #@1f
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    #@25
    .line 2033
    const-string/jumbo v1, "confirmLabel"

    #@28
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@2b
    move-result-object v1

    #@2c
    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    #@2e
    .line 2034
    const-string/jumbo v1, "cancelLabel"

    #@31
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@34
    move-result-object v1

    #@35
    iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    #@37
    .line 2028
    :cond_0
    return-void
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 2096
    if-eqz p2, :cond_0

    #@2
    .line 2097
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@7
    .line 2095
    :goto_0
    return-void

    #@8
    .line 2099
    :cond_0
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@e
    goto :goto_0
.end method


# virtual methods
.method public clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 2

    #@0
    .prologue
    .line 2066
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;-><init>()V

    #@5
    .line 2067
    .local v0, "that":Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@7
    iput v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@9
    .line 2068
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    #@b
    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    #@d
    .line 2069
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    #@f
    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    #@11
    .line 2070
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    #@13
    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    #@15
    .line 2071
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 2065
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->clone()Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Action$Builder;)Landroid/support/v4/app/NotificationCompat$Action$Builder;
    .locals 3
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Action$Builder;

    #@0
    .prologue
    .line 2045
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2047
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@7
    const/4 v2, 0x1

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 2048
    const-string/jumbo v1, "flags"

    #@d
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@12
    .line 2050
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 2051
    const-string/jumbo v1, "inProgressLabel"

    #@19
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1e
    .line 2053
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 2054
    const-string/jumbo v1, "confirmLabel"

    #@25
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    #@27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@2a
    .line 2056
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    #@2c
    if-eqz v1, :cond_3

    #@2e
    .line 2057
    const-string/jumbo v1, "cancelLabel"

    #@31
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@36
    .line 2060
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->getExtras()Landroid/os/Bundle;

    #@39
    move-result-object v1

    #@3a
    const-string/jumbo v2, "android.wearable.EXTENSIONS"

    #@3d
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@40
    .line 2061
    return-object p1
.end method

.method public getCancelLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2166
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getConfirmLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2144
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getInProgressLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 2122
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public isAvailableOffline()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2092
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public setAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 1
    .param p1, "availableOffline"    # Z

    #@0
    .prologue
    .line 2081
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->setFlag(IZ)V

    #@4
    .line 2082
    return-object p0
.end method

.method public setCancelLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2155
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mCancelLabel:Ljava/lang/CharSequence;

    #@2
    .line 2156
    return-object p0
.end method

.method public setConfirmLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2133
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mConfirmLabel:Ljava/lang/CharSequence;

    #@2
    .line 2134
    return-object p0
.end method

.method public setInProgressLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2111
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->mInProgressLabel:Ljava/lang/CharSequence;

    #@2
    .line 2112
    return-object p0
.end method
