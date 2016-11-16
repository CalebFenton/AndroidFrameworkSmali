.class public Landroid/provider/BlockedNumberContract;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumberContract$BlockedNumbers;,
        Landroid/provider/BlockedNumberContract$SystemContract;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.blockednumber"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final METHOD_CAN_CURRENT_USER_BLOCK_NUMBERS:Ljava/lang/String; = "can_current_user_block_numbers"

.field public static final METHOD_IS_BLOCKED:Ljava/lang/String; = "is_blocked"

.field public static final METHOD_UNBLOCK:Ljava/lang/String; = "unblock"

.field public static final RES_CAN_BLOCK_NUMBERS:Ljava/lang/String; = "can_block"

.field public static final RES_NUMBER_IS_BLOCKED:Ljava/lang/String; = "blocked"

.field public static final RES_NUM_ROWS_DELETED:Ljava/lang/String; = "num_deleted"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 152
    const-string/jumbo v0, "content://com.android.blockednumber"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@9
    .line 144
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canCurrentUserBlockNumbers(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v2

    #@6
    .line 282
    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@8
    const-string/jumbo v4, "can_current_user_block_numbers"

    #@b
    .line 281
    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@e
    move-result-object v0

    #@f
    .line 283
    .local v0, "res":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@11
    const-string/jumbo v2, "can_block"

    #@14
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@17
    move-result v1

    #@18
    :cond_0
    return v1
.end method

.method public static isBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v2

    #@6
    .line 246
    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@8
    const-string/jumbo v4, "is_blocked"

    #@b
    .line 245
    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@e
    move-result-object v0

    #@f
    .line 247
    .local v0, "res":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@11
    const-string/jumbo v2, "blocked"

    #@14
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@17
    move-result v1

    #@18
    :cond_0
    return v1
.end method

.method public static unblock(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    #@0
    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v1

    #@4
    .line 270
    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    #@6
    const-string/jumbo v3, "unblock"

    #@9
    const/4 v4, 0x0

    #@a
    .line 269
    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@d
    move-result-object v0

    #@e
    .line 271
    .local v0, "res":Landroid/os/Bundle;
    const-string/jumbo v1, "num_deleted"

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@15
    move-result v1

    #@16
    return v1
.end method
