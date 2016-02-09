.class public final Landroid/provider/Telephony$MmsSms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$MmsSms$PendingMessages;,
        Landroid/provider/Telephony$MmsSms$WordsTable;
    }
.end annotation


# static fields
.field public static final CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

.field public static final CONTENT_DRAFT_URI:Landroid/net/Uri;

.field public static final CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

.field public static final CONTENT_LOCKED_URI:Landroid/net/Uri;

.field public static final CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ERR_TYPE_GENERIC:I = 0x1

.field public static final ERR_TYPE_GENERIC_PERMANENT:I = 0xa

.field public static final ERR_TYPE_MMS_PROTO_PERMANENT:I = 0xc

.field public static final ERR_TYPE_MMS_PROTO_TRANSIENT:I = 0x3

.field public static final ERR_TYPE_SMS_PROTO_PERMANENT:I = 0xb

.field public static final ERR_TYPE_SMS_PROTO_TRANSIENT:I = 0x2

.field public static final ERR_TYPE_TRANSPORT_FAILURE:I = 0x4

.field public static final MMS_PROTO:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final SEARCH_URI:Landroid/net/Uri;

.field public static final SMS_PROTO:I = 0x0

.field public static final TYPE_DISCRIMINATOR_COLUMN:Ljava/lang/String; = "transport_type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2258
    const-string/jumbo v0, "content://mms-sms/"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 2264
    const-string/jumbo v0, "content://mms-sms/conversations"

    #@c
    .line 2263
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    #@12
    .line 2270
    const-string/jumbo v0, "content://mms-sms/messages/byphone"

    #@15
    .line 2269
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_FILTER_BYPHONE_URI:Landroid/net/Uri;

    #@1b
    .line 2276
    const-string/jumbo v0, "content://mms-sms/undelivered"

    #@1e
    .line 2275
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    #@24
    .line 2282
    const-string/jumbo v0, "content://mms-sms/draft"

    #@27
    .line 2281
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_DRAFT_URI:Landroid/net/Uri;

    #@2d
    .line 2288
    const-string/jumbo v0, "content://mms-sms/locked"

    #@30
    .line 2287
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@33
    move-result-object v0

    #@34
    sput-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_LOCKED_URI:Landroid/net/Uri;

    #@36
    .line 2295
    const-string/jumbo v0, "content://mms-sms/search"

    #@39
    .line 2294
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3c
    move-result-object v0

    #@3d
    sput-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    #@3f
    .line 2240
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
