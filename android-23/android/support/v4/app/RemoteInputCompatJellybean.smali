.class Landroid/support/v4/app/RemoteInputCompatJellybean;
.super Ljava/lang/Object;
.source "RemoteInputCompatJellybean.java"


# static fields
.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"

.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"

.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_LABEL:Ljava/lang/String; = "label"

.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"

.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addResultsToIntent([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "remoteInputs"    # [Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "results"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 96
    new-instance v3, Landroid/os/Bundle;

    #@2
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 97
    .local v3, "resultsBundle":Landroid/os/Bundle;
    const/4 v4, 0x0

    #@6
    array-length v5, p0

    #@7
    :goto_0
    if-ge v4, v5, :cond_1

    #@9
    aget-object v1, p0, v4

    #@b
    .line 98
    .local v1, "remoteInput":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    invoke-virtual {v1}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    .line 99
    .local v2, "result":Ljava/lang/Object;
    instance-of v6, v2, Ljava/lang/CharSequence;

    #@15
    if-eqz v6, :cond_0

    #@17
    .line 100
    invoke-virtual {v1}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    check-cast v2, Ljava/lang/CharSequence;

    #@1d
    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@20
    .line 97
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@22
    goto :goto_0

    #@23
    .line 103
    .end local v1    # "remoteInput":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@25
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@28
    .line 104
    .local v0, "clipIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.remoteinput.resultsData"

    #@2b
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@2e
    .line 105
    const-string/jumbo v4, "android.remoteinput.results"

    #@31
    invoke-static {v4, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@38
    .line 95
    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 6
    .param p0, "data"    # Landroid/os/Bundle;
    .param p1, "factory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@0
    .prologue
    .line 39
    const-string/jumbo v0, "resultKey"

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .line 40
    const-string/jumbo v0, "label"

    #@a
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@d
    move-result-object v2

    #@e
    .line 41
    const-string/jumbo v0, "choices"

    #@11
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    #@14
    move-result-object v3

    #@15
    .line 42
    const-string/jumbo v0, "allowFreeFormInput"

    #@18
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1b
    move-result v4

    #@1c
    .line 43
    const-string/jumbo v0, "extras"

    #@1f
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@22
    move-result-object v5

    #@23
    move-object v0, p1

    #@24
    .line 39
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method static fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 3
    .param p0, "bundles"    # [Landroid/os/Bundle;
    .param p1, "factory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 58
    if-nez p0, :cond_0

    #@3
    .line 59
    return-object v2

    #@4
    .line 61
    :cond_0
    array-length v2, p0

    #@5
    invoke-interface {p1, v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->newArray(I)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@8
    move-result-object v1

    #@9
    .line 62
    .local v1, "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@b
    if-ge v0, v2, :cond_1

    #@d
    .line 63
    aget-object v2, p0, v0

    #@f
    invoke-static {v2, p1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v1, v0

    #@15
    .line 62
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 65
    :cond_1
    return-object v1
.end method

.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 80
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@4
    move-result-object v0

    #@5
    .line 81
    .local v0, "clipData":Landroid/content/ClipData;
    if-nez v0, :cond_0

    #@7
    .line 82
    return-object v4

    #@8
    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@b
    move-result-object v1

    #@c
    .line 85
    .local v1, "clipDescription":Landroid/content/ClipDescription;
    const-string/jumbo v2, "text/vnd.android.intent"

    #@f
    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 86
    return-object v4

    #@16
    .line 88
    :cond_1
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, "android.remoteinput.results"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 89
    const/4 v2, 0x0

    #@24
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@2f
    move-result-object v2

    #@30
    const-string/jumbo v3, "android.remoteinput.resultsData"

    #@33
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@36
    move-result-object v2

    #@37
    check-cast v2, Landroid/os/Bundle;

    #@39
    return-object v2

    #@3a
    .line 91
    :cond_2
    return-object v4
.end method

.method static toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;
    .locals 3
    .param p0, "remoteInput"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@0
    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 48
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "resultKey"

    #@8
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    .line 49
    const-string/jumbo v1, "label"

    #@12
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@19
    .line 50
    const-string/jumbo v1, "choices"

    #@1c
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@23
    .line 51
    const-string/jumbo v1, "allowFreeFormInput"

    #@26
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z

    #@29
    move-result v2

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2d
    .line 52
    const-string/jumbo v1, "extras"

    #@30
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@37
    .line 53
    return-object v0
.end method

.method static toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;
    .locals 3
    .param p0, "remoteInputs"    # [Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 69
    if-nez p0, :cond_0

    #@3
    .line 70
    return-object v2

    #@4
    .line 72
    :cond_0
    array-length v2, p0

    #@5
    new-array v0, v2, [Landroid/os/Bundle;

    #@7
    .line 73
    .local v0, "bundles":[Landroid/os/Bundle;
    const/4 v1, 0x0

    #@8
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@9
    if-ge v1, v2, :cond_1

    #@b
    .line 74
    aget-object v2, p0, v1

    #@d
    invoke-static {v2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v1

    #@13
    .line 73
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 76
    :cond_1
    return-object v0
.end method
