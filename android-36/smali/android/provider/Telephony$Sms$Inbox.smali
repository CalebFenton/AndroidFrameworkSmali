.class public final Landroid/provider/Telephony$Sms$Inbox;
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
    name = "Inbox"
.end annotation


# static fields
.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 605
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    return-void
.end method

.method public static greylist-max-r addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .registers 16
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "read"    # Z

    .line 648
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .end local p0    # "subId":I
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    .end local p2    # "address":Ljava/lang/String;
    .end local p3    # "body":Ljava/lang/String;
    .end local p4    # "subject":Ljava/lang/String;
    .end local p5    # "date":Ljava/lang/Long;
    .end local p6    # "read":Z
    .local v0, "subId":I
    .local v1, "resolver":Landroid/content/ContentResolver;
    .local v3, "address":Ljava/lang/String;
    .local v4, "body":Ljava/lang/String;
    .local v5, "subject":Ljava/lang/String;
    .local v6, "date":Ljava/lang/Long;
    .local v7, "read":Z
    invoke-static/range {v0 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static greylist addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;
    .registers 15
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "read"    # Z

    .line 628
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .end local p0    # "resolver":Landroid/content/ContentResolver;
    .end local p1    # "address":Ljava/lang/String;
    .end local p2    # "body":Ljava/lang/String;
    .end local p3    # "subject":Ljava/lang/String;
    .end local p4    # "date":Ljava/lang/Long;
    .end local p5    # "read":Z
    .local v1, "resolver":Landroid/content/ContentResolver;
    .local v3, "address":Ljava/lang/String;
    .local v4, "body":Ljava/lang/String;
    .local v5, "subject":Ljava/lang/String;
    .local v6, "date":Ljava/lang/Long;
    .local v7, "read":Z
    invoke-static/range {v0 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
