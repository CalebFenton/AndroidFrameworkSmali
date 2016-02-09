.class public final Landroid/provider/Telephony$Sms$Outbox;
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
    name = "Outbox"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 672
    const-string/jumbo v0, "content://sms/outbox"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 660
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    .locals 13
    .param p0, "subId"    # I
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "date"    # Ljava/lang/Long;
    .param p6, "deliveryReport"    # Z
    .param p7, "threadId"    # J

    #@0
    .prologue
    .line 715
    sget-object v3, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    #@2
    .line 716
    const/4 v8, 0x1

    #@3
    move v1, p0

    #@4
    move-object v2, p1

    #@5
    move-object v4, p2

    #@6
    move-object/from16 v5, p3

    #@8
    move-object/from16 v6, p4

    #@a
    move-object/from16 v7, p5

    #@c
    move/from16 v9, p6

    #@e
    move-wide/from16 v10, p7

    #@10
    .line 715
    invoke-static/range {v1 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/lang/Long;
    .param p5, "deliveryReport"    # Z
    .param p6, "threadId"    # J

    #@0
    .prologue
    .line 694
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    #@3
    move-result v1

    #@4
    .line 695
    sget-object v3, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    #@6
    .line 696
    const/4 v8, 0x1

    #@7
    move-object v2, p0

    #@8
    move-object v4, p1

    #@9
    move-object v5, p2

    #@a
    move-object v6, p3

    #@b
    move-object/from16 v7, p4

    #@d
    move/from16 v9, p5

    #@f
    move-wide/from16 v10, p6

    #@11
    .line 694
    invoke-static/range {v1 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(ILandroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method
