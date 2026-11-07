.class public Landroid/provider/VoicemailContract;
.super Ljava/lang/Object;
.source "VoicemailContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/VoicemailContract$Status;,
        Landroid/provider/VoicemailContract$Voicemails;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_FETCH_VOICEMAIL:Ljava/lang/String; = "android.intent.action.FETCH_VOICEMAIL"

.field public static final whitelist ACTION_NEW_VOICEMAIL:Ljava/lang/String; = "android.intent.action.NEW_VOICEMAIL"

.field public static final whitelist ACTION_SYNC_VOICEMAIL:Ljava/lang/String; = "android.provider.action.SYNC_VOICEMAIL"

.field public static final greylist-max-o ACTION_VOICEMAIL_SMS_RECEIVED:Ljava/lang/String; = "com.android.internal.provider.action.VOICEMAIL_SMS_RECEIVED"

.field public static final whitelist AUTHORITY:Ljava/lang/String; = "com.android.voicemail"

.field public static final whitelist EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.provider.extra.PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_SELF_CHANGE:Ljava/lang/String; = "com.android.voicemail.extra.SELF_CHANGE"

.field public static final greylist-max-o EXTRA_TARGET_PACKAGE:Ljava/lang/String; = "android.provider.extra.TARGET_PACAKGE"

.field public static final greylist-max-o EXTRA_VOICEMAIL_SMS:Ljava/lang/String; = "android.provider.extra.VOICEMAIL_SMS"

.field public static final whitelist PARAM_KEY_SOURCE_PACKAGE:Ljava/lang/String; = "source_package"

.field public static final greylist-max-o SOURCE_PACKAGE_FIELD:Ljava/lang/String; = "source_package"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method
