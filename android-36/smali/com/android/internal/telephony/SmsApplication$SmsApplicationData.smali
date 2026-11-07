.class public Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsApplicationData"
.end annotation


# instance fields
.field private greylist-max-r mApplicationName:Ljava/lang/String;

.field private blacklist mMmsReceiverClass:Ljava/lang/String;

.field public blacklist mPackageName:Ljava/lang/String;

.field private blacklist mProviderChangedReceiverClass:Ljava/lang/String;

.field private blacklist mRespondViaMessageClass:Ljava/lang/String;

.field private blacklist mSendToClass:Ljava/lang/String;

.field private blacklist mSimFullReceiverClass:Ljava/lang/String;

.field private blacklist mSmsAppChangedReceiverClass:Ljava/lang/String;

.field private blacklist mSmsReceiverClass:Ljava/lang/String;

.field private blacklist mUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRespondViaMessageClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSendToClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSimFullReceiverClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUid(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProviderChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRespondViaMessageClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSendToClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSimFullReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSimFullReceiverClass:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmsAppChangedReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmsReceiverClass(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    .line 155
    iput p2, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    .line 156
    return-void
.end method


# virtual methods
.method public blacklist getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    if-nez v0, :cond_29

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 163
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_9
    iget-object v2, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    .line 164
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 163
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_16} :catch_27

    .line 167
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 168
    if-eqz v2, :cond_29

    .line 169
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 170
    .local v3, "label":Ljava/lang/CharSequence;
    if-nez v3, :cond_20

    goto :goto_24

    :cond_20
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_24
    iput-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    goto :goto_29

    .line 165
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    :catch_27
    move-exception v2

    .line 166
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v1

    .line 173
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isComplete()Z
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSmsReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMmsReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mMmsReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRespondViaMessageClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mRespondViaMessageClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSendToClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSendToClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSmsAppChangedClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSmsAppChangedReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mProviderChangedReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mProviderChangedReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSimFullReceiverClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mSimFullReceiverClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
