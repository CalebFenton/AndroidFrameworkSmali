.class public Landroid/provider/BlockedNumberContract;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumberContract$SystemContract;,
        Landroid/provider/BlockedNumberContract$BlockStatus;,
        Landroid/provider/BlockedNumberContract$BlockedNumbers;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "com.android.blockednumber"

.field public static final whitelist AUTHORITY_URI:Landroid/net/Uri;

.field public static final greylist-max-o EXTRA_CALL_PRESENTATION:Ljava/lang/String; = "extra_call_presentation"

.field public static final greylist-max-o EXTRA_CONTACT_EXIST:Ljava/lang/String; = "extra_contact_exist"

.field public static final greylist-max-o EXTRA_ENHANCED_SETTING_KEY:Ljava/lang/String; = "extra_enhanced_setting_key"

.field public static final greylist-max-o EXTRA_ENHANCED_SETTING_VALUE:Ljava/lang/String; = "extra_enhanced_setting_value"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final greylist-max-o METHOD_CAN_CURRENT_USER_BLOCK_NUMBERS:Ljava/lang/String; = "can_current_user_block_numbers"

.field public static final greylist-max-o METHOD_IS_BLOCKED:Ljava/lang/String; = "is_blocked"

.field public static final greylist-max-o METHOD_UNBLOCK:Ljava/lang/String; = "unblock"

.field public static final blacklist RES_BLOCK_STATUS:Ljava/lang/String; = "block_status"

.field public static final greylist-max-o RES_CAN_BLOCK_NUMBERS:Ljava/lang/String; = "can_block"

.field public static final greylist-max-o RES_ENHANCED_SETTING_IS_ENABLED:Ljava/lang/String; = "enhanced_setting_enabled"

.field public static final greylist-max-o RES_NUMBER_IS_BLOCKED:Ljava/lang/String; = "blocked"

.field public static final greylist-max-o RES_NUM_ROWS_DELETED:Ljava/lang/String; = "num_deleted"

.field public static final greylist-max-o RES_SHOW_EMERGENCY_CALL_NOTIFICATION:Ljava/lang/String; = "show_emergency_call_notification"

.field public static final blacklist STATUS_BLOCKED_IN_LIST:I = 0x1

.field public static final blacklist STATUS_BLOCKED_NOT_IN_CONTACTS:I = 0x5

.field public static final blacklist STATUS_BLOCKED_PAYPHONE:I = 0x4

.field public static final blacklist STATUS_BLOCKED_RESTRICTED:I = 0x2

.field public static final blacklist STATUS_BLOCKED_UNAVAILABLE:I = 0x6

.field public static final blacklist STATUS_BLOCKED_UNKNOWN_NUMBER:I = 0x3

.field public static final blacklist STATUS_NOT_BLOCKED:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 157
    const-string v0, "content://com.android.blockednumber"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 159
    const-class v0, Landroid/provider/BlockedNumberContract;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static whitelist canCurrentUserBlockNumbers(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 383
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "can_current_user_block_numbers"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 385
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_19

    const-string v3, "can_block"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_16} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_16} :catch_1a

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 386
    .end local v2    # "res":Landroid/os/Bundle;
    :catch_1a
    move-exception v2

    .line 389
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "canCurrentUserBlockNumbers: provider not ready."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    return v1
.end method

.method public static whitelist isBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "is_blocked"

    invoke-virtual {v2, v3, v4, p1, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 338
    .local v2, "res":Landroid/os/Bundle;
    if-eqz v2, :cond_1b

    const-string v3, "blocked"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :cond_1b
    move v3, v1

    .line 339
    .local v3, "isBlocked":Z
    :goto_1c
    sget-object v4, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "isBlocked: phoneNumber=%s, isBlocked=%b"

    invoke-static {p1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 340
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 339
    invoke-static {v4, v5, v6}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_30} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_30} :catch_31

    .line 341
    return v3

    .line 342
    .end local v2    # "res":Landroid/os/Bundle;
    .end local v3    # "isBlocked":Z
    :catch_31
    move-exception v2

    .line 345
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "isBlocked: provider not ready."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    return v1
.end method

.method public static whitelist unblock(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 369
    sget-object v0, Landroid/provider/BlockedNumberContract;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "unblock: phoneNumber=%s"

    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "unblock"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 372
    .local v0, "res":Landroid/os/Bundle;
    const-string/jumbo v1, "num_deleted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method
