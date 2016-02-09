.class public Landroid/support/v4/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallingActivity:Landroid/content/ComponentName;

.field private mCallingPackage:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 677
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    #@5
    .line 678
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@b
    .line 679
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@11
    .line 680
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@17
    .line 676
    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentReader;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 673
    new-instance v0, Landroid/support/v4/app/ShareCompat$IntentReader;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 902
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@3
    if-nez v2, :cond_0

    #@5
    return-object v4

    #@6
    .line 904
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    #@8
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    .line 906
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    #@e
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 907
    :catch_0
    move-exception v0

    #@14
    .line 908
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "IntentReader"

    #@17
    const-string/jumbo v3, "Could not retrieve icon for calling activity"

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 910
    return-object v4
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 924
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@3
    if-nez v2, :cond_0

    #@5
    return-object v4

    #@6
    .line 926
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    #@8
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    .line 928
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v2

    #@12
    return-object v2

    #@13
    .line 929
    :catch_0
    move-exception v0

    #@14
    .line 930
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "IntentReader"

    #@17
    const-string/jumbo v3, "Could not retrieve icon for calling application"

    #@1a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1d
    .line 932
    return-object v4
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 946
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@3
    if-nez v2, :cond_0

    #@5
    return-object v4

    #@6
    .line 948
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    #@8
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v1

    #@c
    .line 950
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@e
    const/4 v3, 0x0

    #@f
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    .line 951
    :catch_0
    move-exception v0

    #@19
    .line 952
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "IntentReader"

    #@1c
    const-string/jumbo v3, "Could not retrieve label for calling application"

    #@1f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    .line 954
    return-object v4
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 844
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.extra.BCC"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getEmailCc()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 834
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.extra.CC"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getEmailTo()[Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 824
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.extra.EMAIL"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 750
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string/jumbo v3, "android.intent.extra.HTML_TEXT"

    #@5
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 751
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    #@b
    .line 752
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    #@e
    move-result-object v1

    #@f
    .line 753
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spanned;

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 754
    check-cast v1, Landroid/text/Spanned;

    #@15
    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 759
    :cond_0
    :goto_0
    return-object v0

    #@1a
    .line 755
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    if-eqz v1, :cond_0

    #@1c
    .line 756
    invoke-static {}, Landroid/support/v4/app/ShareCompat;->-get0()Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    #@1f
    move-result-object v2

    #@20
    invoke-interface {v2, v1}, Landroid/support/v4/app/ShareCompat$ShareCompatImpl;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    goto :goto_0
.end method

.method public getStream()Landroid/net/Uri;
    .locals 2

    #@0
    .prologue
    .line 774
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.extra.STREAM"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/net/Uri;

    #@b
    return-object v0
.end method

.method public getStream(I)Landroid/net/Uri;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 788
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@c
    const-string/jumbo v1, "android.intent.extra.STREAM"

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@15
    .line 790
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 791
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/net/Uri;

    #@21
    return-object v0

    #@22
    .line 793
    :cond_1
    if-nez p1, :cond_2

    #@24
    .line 794
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@26
    const-string/jumbo v1, "android.intent.extra.STREAM"

    #@29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/net/Uri;

    #@2f
    return-object v0

    #@30
    .line 796
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "Stream items available: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getStreamCount()I

    #@41
    move-result v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 797
    const-string/jumbo v2, " index requested: "

    #@49
    .line 796
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@58
    throw v0
.end method

.method public getStreamCount()I
    .locals 2

    #@0
    .prologue
    .line 808
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 809
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@c
    const-string/jumbo v1, "android.intent.extra.STREAM"

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@15
    .line 811
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@17
    if-eqz v0, :cond_1

    #@19
    .line 812
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v0

    #@1f
    return v0

    #@20
    .line 814
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@22
    const-string/jumbo v1, "android.intent.extra.STREAM"

    #@25
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_2

    #@2b
    const/4 v0, 0x1

    #@2c
    :goto_0
    return v0

    #@2d
    :cond_2
    const/4 v0, 0x0

    #@2e
    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    #@0
    .prologue
    .line 736
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.extra.TEXT"

    #@5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 726
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isMultipleShare()Z
    .locals 2

    #@0
    .prologue
    .line 716
    const-string/jumbo v0, "android.intent.action.SEND_MULTIPLE"

    #@3
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@5
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public isShareIntent()Z
    .locals 2

    #@0
    .prologue
    .line 692
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@2
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 693
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SEND"

    #@9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_0

    #@f
    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    #@12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    :goto_0
    return v1

    #@17
    :cond_0
    const/4 v1, 0x1

    #@18
    goto :goto_0
.end method

.method public isSingleShare()Z
    .locals 2

    #@0
    .prologue
    .line 705
    const-string/jumbo v0, "android.intent.action.SEND"

    #@3
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    #@5
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    return v0
.end method
