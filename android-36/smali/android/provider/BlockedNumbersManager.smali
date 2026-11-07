.class public final Landroid/provider/BlockedNumbersManager;
.super Ljava/lang/Object;
.source "BlockedNumbersManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_BLOCK_SUPPRESSION_STATE_CHANGED:Ljava/lang/String; = "android.provider.action.BLOCK_SUPPRESSION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENHANCED_SETTING_KEY_BLOCK_PAYPHONE:Ljava/lang/String; = "block_payphone_calls_setting"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENHANCED_SETTING_KEY_BLOCK_PRIVATE:Ljava/lang/String; = "block_private_number_calls_setting"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENHANCED_SETTING_KEY_BLOCK_UNAVAILABLE:Ljava/lang/String; = "block_unavailable_calls_setting"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENHANCED_SETTING_KEY_BLOCK_UNKNOWN:Ljava/lang/String; = "block_unknown_calls_setting"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENHANCED_SETTING_KEY_BLOCK_UNREGISTERED:Ljava/lang/String; = "block_numbers_not_in_contacts_setting"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist ENHANCED_SETTING_KEY_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "show_emergency_call_notification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const-class v0, Landroid/provider/BlockedNumbersManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/BlockedNumbersManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private blacklist verifyBlockedNumbersPermission()V
    .registers 4

    .line 395
    iget-object v0, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_BLOCKED_NUMBERS"

    const-string v2, "Caller does not have the android.permission.READ_BLOCKED_NUMBERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_BLOCKED_NUMBERS"

    const-string v2, "Caller does not have the android.permission.WRITE_BLOCKED_NUMBERS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method


# virtual methods
.method public blacklist endBlockSuppression()V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 173
    invoke-direct {p0}, Landroid/provider/BlockedNumbersManager;->verifyBlockedNumbersPermission()V

    .line 174
    iget-object v0, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "caller":Ljava/lang/String;
    sget-object v1, Landroid/provider/BlockedNumbersManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "endBlockSuppression: caller=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v3, "end_block_suppression"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 177
    return-void
.end method

.method public blacklist getBlockSuppressionStatus()Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 238
    invoke-direct {p0}, Landroid/provider/BlockedNumbersManager;->verifyBlockedNumbersPermission()V

    .line 239
    iget-object v0, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "get_block_suppression_status"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 241
    .local v0, "res":Landroid/os/Bundle;
    new-instance v1, Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;

    .line 242
    const-string v2, "blocking_suppressed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 243
    const-string v3, "blocking_suppressed_until_timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;-><init>(ZJ)V

    .line 244
    .local v1, "blockSuppressionStatus":Landroid/provider/BlockedNumbersManager$BlockSuppressionStatus;
    sget-object v2, Landroid/provider/BlockedNumbersManager;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    .line 245
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    .line 244
    const-string v4, "getBlockSuppressionStatus: caller=%s, status=%s"

    invoke-static {v2, v4, v3}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    return-object v1
.end method

.method public blacklist getBlockedNumberSetting(Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 296
    invoke-direct {p0}, Landroid/provider/BlockedNumbersManager;->verifyBlockedNumbersPermission()V

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "extra_enhanced_setting_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_f
    iget-object v3, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v5, "get_enhanced_block_setting"

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 302
    .local v3, "res":Landroid/os/Bundle;
    if-eqz v3, :cond_29

    const-string v4, "enhanced_setting_enabled"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_26} :catch_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_26} :catch_2a

    if-eqz v1, :cond_29

    const/4 v2, 0x1

    :cond_29
    return v2

    .line 303
    .end local v3    # "res":Landroid/os/Bundle;
    :catch_2a
    move-exception v3

    .line 306
    .local v3, "ex":Ljava/lang/RuntimeException;
    const-string v4, "getEnhancedBlockSetting: provider not ready."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    return v2
.end method

.method public blacklist notifyEmergencyContact()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 149
    invoke-direct {p0}, Landroid/provider/BlockedNumbersManager;->verifyBlockedNumbersPermission()V

    .line 151
    const/4 v0, 0x0

    :try_start_4
    sget-object v1, Landroid/provider/BlockedNumbersManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "notifyEmergencyContact; caller=%s"

    iget-object v3, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "notify_emergency_contact"

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_24} :catch_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_24} :catch_25

    .line 158
    goto :goto_2f

    .line 154
    :catch_25
    move-exception v1

    .line 157
    .local v1, "ex":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "notifyEmergencyContact: provider not ready."

    invoke-static {v0, v3, v2}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :goto_2f
    return-void
.end method

.method public blacklist setBlockedNumberSetting(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 332
    invoke-direct {p0}, Landroid/provider/BlockedNumbersManager;->verifyBlockedNumbersPermission()V

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "extra_enhanced_setting_key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "extra_enhanced_setting_value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    iget-object v1, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "set_enhanced_block_setting"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 338
    return-void
.end method

.method public blacklist shouldShowEmergencyCallNotification()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 262
    invoke-direct {p0}, Landroid/provider/BlockedNumbersManager;->verifyBlockedNumbersPermission()V

    .line 264
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "should_show_emergency_call_notification"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 266
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_20

    const-string/jumbo v3, "show_emergency_call_notification"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_1d} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_1d} :catch_21

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    .line 267
    .end local v2    # "res":Landroid/os/Bundle;
    :catch_21
    move-exception v2

    .line 270
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "shouldShowEmergencyCallNotification: provider not ready."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    return v1
.end method

.method public blacklist shouldSystemBlockNumber(Ljava/lang/String;IZ)I
    .registers 13
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "numberPresentation"    # I
    .param p3, "isNumberInContacts"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 205
    invoke-direct {p0}, Landroid/provider/BlockedNumbersManager;->verifyBlockedNumbersPermission()V

    .line 207
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "caller":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 209
    .local v2, "extras":Landroid/os/Bundle;
    const-string v3, "extra_call_presentation"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    const-string v3, "extra_contact_exist"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    iget-object v3, p0, Landroid/provider/BlockedNumbersManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v5, "should_system_block_number"

    invoke-virtual {v3, v4, v5, p1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 213
    .local v3, "res":Landroid/os/Bundle;
    if-eqz v3, :cond_31

    const-string v4, "block_status"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_32

    .line 214
    :cond_31
    move v4, v0

    :goto_32
    nop

    .line 215
    .local v4, "blockResult":I
    sget-object v5, Landroid/provider/BlockedNumbersManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "shouldSystemBlockNumber: number=%s, caller=%s, result=%s"

    .line 216
    invoke-static {p1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-static {v4}, Landroid/provider/BlockedNumberContract$SystemContract;->blockStatusToString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v7, v1, v8}, [Ljava/lang/Object;

    move-result-object v7

    .line 215
    invoke-static {v5, v6, v7}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_47} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_47} :catch_48

    .line 218
    return v4

    .line 219
    .end local v1    # "caller":Ljava/lang/String;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "res":Landroid/os/Bundle;
    .end local v4    # "blockResult":I
    :catch_48
    move-exception v1

    .line 222
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "shouldSystemBlockNumber: provider not ready."

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return v0
.end method
