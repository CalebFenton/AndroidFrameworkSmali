.class public final Landroid/provider/Telephony$Sms$Conversations;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Conversations"
.end annotation


# static fields
.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final whitelist MESSAGE_COUNT:Ljava/lang/String; = "msg_count"

.field public static final whitelist SNIPPET:Ljava/lang/String; = "snippet"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 853
    const-string v0, "content://sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    return-void
.end method
