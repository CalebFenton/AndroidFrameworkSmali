.class public final Landroid/provider/Telephony$Sms$Draft;
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
    name = "Draft"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 622
    const-string/jumbo v0, "content://sms/draft"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 610
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 9
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 647
    sget-object v2, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    #@2
    .line 648
    const/4 v7, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    move v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v3, p2

    #@7
    move-object v4, p3

    #@8
    move-object v5, p4

    #@9
    move-object v6, p5

    #@a
    .line 647
    invoke-static/range {v0 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;

    #@0
    .prologue
    .line 629
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    #@3
    move-result v0

    #@4
    .line 630
    sget-object v2, Landroid/provider/Telephony$Sms$Draft;->CONTENT_URI:Landroid/net/Uri;

    #@6
    const/4 v7, 0x1

    #@7
    const/4 v8, 0x0

    #@8
    move-object v1, p0

    #@9
    move-object v3, p1

    #@a
    move-object v4, p2

    #@b
    move-object v5, p3

    #@c
    move-object v6, p4

    #@d
    .line 629
    invoke-static/range {v0 .. v8}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
