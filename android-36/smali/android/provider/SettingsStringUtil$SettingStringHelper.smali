.class public Landroid/provider/SettingsStringUtil$SettingStringHelper;
.super Ljava/lang/Object;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingStringHelper"
.end annotation


# instance fields
.field private final greylist-max-o mContentResolver:Landroid/content/ContentResolver;

.field private final greylist-max-o mSettingName:Ljava/lang/String;

.field private final greylist-max-o mUserId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 4
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 163
    iput p3, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    .line 164
    iput-object p2, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    .line 165
    return-void
.end method


# virtual methods
.method public greylist-max-o modify(Ljava/util/function/Function;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 178
    .local p1, "change":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o read()Ljava/lang/String;
    .registers 4

    .line 168
    iget-object v0, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o write(Ljava/lang/String;)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Landroid/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
