.class public final Landroid/provider/E2eeContactKeysManager$E2eeContactKeys;
.super Ljava/lang/Object;
.source "E2eeContactKeysManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/E2eeContactKeysManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "E2eeContactKeys"
.end annotation


# static fields
.field public static final blacklist ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final blacklist DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final blacklist DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final blacklist EMAIL_ADDRESS:Ljava/lang/String; = "address"

.field public static final blacklist GET_ALL_CONTACT_KEYS_METHOD:Ljava/lang/String; = "getAllContactKeys"

.field public static final blacklist GET_ALL_SELF_KEYS_METHOD:Ljava/lang/String; = "getAllSelfKeys"

.field public static final blacklist GET_CONTACT_KEY_METHOD:Ljava/lang/String; = "getContactKey"

.field public static final blacklist GET_OWNER_CONTACT_KEYS_METHOD:Ljava/lang/String; = "getOwnerContactKeys"

.field public static final blacklist GET_OWNER_SELF_KEYS_METHOD:Ljava/lang/String; = "getOwnerSelfKeys"

.field public static final blacklist GET_SELF_KEY_METHOD:Ljava/lang/String; = "getSelfKey"

.field public static final blacklist KEY_CONTACT_KEY:Ljava/lang/String; = "key_contact_key"

.field public static final blacklist KEY_CONTACT_KEYS:Ljava/lang/String; = "key_contact_keys"

.field public static final blacklist KEY_UPDATED_ROWS:Ljava/lang/String; = "key_updated_rows"

.field public static final blacklist KEY_VALUE:Ljava/lang/String; = "key_value"

.field public static final blacklist LOCAL_VERIFICATION_STATE:Ljava/lang/String; = "local_verification_state"

.field public static final blacklist LOOKUP_KEY:Ljava/lang/String; = "lookup"

.field public static final blacklist OWNER_PACKAGE_NAME:Ljava/lang/String; = "owner_package_name"

.field public static final blacklist PHONE_NUMBER:Ljava/lang/String; = "number"

.field public static final blacklist REMOTE_VERIFICATION_STATE:Ljava/lang/String; = "remote_verification_state"

.field public static final blacklist REMOVE_CONTACT_KEY_METHOD:Ljava/lang/String; = "removeContactKey"

.field public static final blacklist REMOVE_SELF_KEY_METHOD:Ljava/lang/String; = "removeSelfKey"

.field public static final blacklist TIME_UPDATED:Ljava/lang/String; = "time_updated"

.field public static final blacklist UPDATE_CONTACT_KEY_LOCAL_VERIFICATION_STATE_METHOD:Ljava/lang/String; = "updateContactKeyLocalVerificationState"

.field public static final blacklist UPDATE_CONTACT_KEY_REMOTE_VERIFICATION_STATE_METHOD:Ljava/lang/String; = "updateContactKeyRemoteVerificationState"

.field public static final blacklist UPDATE_OR_INSERT_CONTACT_KEY_METHOD:Ljava/lang/String; = "updateOrInsertContactKey"

.field public static final blacklist UPDATE_OR_INSERT_SELF_KEY_METHOD:Ljava/lang/String; = "updateOrInsertSelfKey"

.field public static final blacklist UPDATE_SELF_KEY_REMOTE_VERIFICATION_STATE_METHOD:Ljava/lang/String; = "updateSelfKeyRemoteVerificationState"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    return-void
.end method
