.class public final Landroid/provider/Telephony$CellBroadcasts;
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
    name = "CellBroadcasts"
.end annotation


# static fields
.field public static final CID:Ljava/lang/String; = "cid"

.field public static final CMAS_CATEGORY:Ljava/lang/String; = "cmas_category"

.field public static final CMAS_CERTAINTY:Ljava/lang/String; = "cmas_certainty"

.field public static final CMAS_MESSAGE_CLASS:Ljava/lang/String; = "cmas_message_class"

.field public static final CMAS_RESPONSE_TYPE:Ljava/lang/String; = "cmas_response_type"

.field public static final CMAS_SEVERITY:Ljava/lang/String; = "cmas_severity"

.field public static final CMAS_URGENCY:Ljava/lang/String; = "cmas_urgency"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DELIVERY_TIME:Ljava/lang/String; = "date"

.field public static final ETWS_WARNING_TYPE:Ljava/lang/String; = "etws_warning_type"

.field public static final GEOGRAPHICAL_SCOPE:Ljava/lang/String; = "geo_scope"

.field public static final LAC:Ljava/lang/String; = "lac"

.field public static final LANGUAGE_CODE:Ljava/lang/String; = "language"

.field public static final MESSAGE_BODY:Ljava/lang/String; = "body"

.field public static final MESSAGE_FORMAT:Ljava/lang/String; = "format"

.field public static final MESSAGE_PRIORITY:Ljava/lang/String; = "priority"

.field public static final MESSAGE_READ:Ljava/lang/String; = "read"

.field public static final PLMN:Ljava/lang/String; = "plmn"

.field public static final QUERY_COLUMNS:[Ljava/lang/String;

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final SERVICE_CATEGORY:Ljava/lang/String; = "service_category"

.field public static final V1_MESSAGE_CODE:Ljava/lang/String; = "message_code"

.field public static final V1_MESSAGE_IDENTIFIER:Ljava/lang/String; = "message_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 2725
    const-string/jumbo v0, "content://cellbroadcasts"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 2862
    const/16 v0, 0x14

    #@b
    new-array v0, v0, [Ljava/lang/String;

    #@d
    .line 2863
    const-string/jumbo v1, "_id"

    #@10
    const/4 v2, 0x0

    #@11
    aput-object v1, v0, v2

    #@13
    .line 2864
    const-string/jumbo v1, "geo_scope"

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, v0, v2

    #@19
    .line 2865
    const-string/jumbo v1, "plmn"

    #@1c
    const/4 v2, 0x2

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 2866
    const-string/jumbo v1, "lac"

    #@22
    const/4 v2, 0x3

    #@23
    aput-object v1, v0, v2

    #@25
    .line 2867
    const-string/jumbo v1, "cid"

    #@28
    const/4 v2, 0x4

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 2868
    const-string/jumbo v1, "serial_number"

    #@2e
    const/4 v2, 0x5

    #@2f
    aput-object v1, v0, v2

    #@31
    .line 2869
    const-string/jumbo v1, "service_category"

    #@34
    const/4 v2, 0x6

    #@35
    aput-object v1, v0, v2

    #@37
    .line 2870
    const-string/jumbo v1, "language"

    #@3a
    const/4 v2, 0x7

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 2871
    const-string/jumbo v1, "body"

    #@40
    const/16 v2, 0x8

    #@42
    aput-object v1, v0, v2

    #@44
    .line 2872
    const-string/jumbo v1, "date"

    #@47
    const/16 v2, 0x9

    #@49
    aput-object v1, v0, v2

    #@4b
    .line 2873
    const-string/jumbo v1, "read"

    #@4e
    const/16 v2, 0xa

    #@50
    aput-object v1, v0, v2

    #@52
    .line 2874
    const-string/jumbo v1, "format"

    #@55
    const/16 v2, 0xb

    #@57
    aput-object v1, v0, v2

    #@59
    .line 2875
    const-string/jumbo v1, "priority"

    #@5c
    const/16 v2, 0xc

    #@5e
    aput-object v1, v0, v2

    #@60
    .line 2876
    const-string/jumbo v1, "etws_warning_type"

    #@63
    const/16 v2, 0xd

    #@65
    aput-object v1, v0, v2

    #@67
    .line 2877
    const-string/jumbo v1, "cmas_message_class"

    #@6a
    const/16 v2, 0xe

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 2878
    const-string/jumbo v1, "cmas_category"

    #@71
    const/16 v2, 0xf

    #@73
    aput-object v1, v0, v2

    #@75
    .line 2879
    const-string/jumbo v1, "cmas_response_type"

    #@78
    const/16 v2, 0x10

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 2880
    const-string/jumbo v1, "cmas_severity"

    #@7f
    const/16 v2, 0x11

    #@81
    aput-object v1, v0, v2

    #@83
    .line 2881
    const-string/jumbo v1, "cmas_urgency"

    #@86
    const/16 v2, 0x12

    #@88
    aput-object v1, v0, v2

    #@8a
    .line 2882
    const-string/jumbo v1, "cmas_certainty"

    #@8d
    const/16 v2, 0x13

    #@8f
    aput-object v1, v0, v2

    #@91
    .line 2862
    sput-object v0, Landroid/provider/Telephony$CellBroadcasts;->QUERY_COLUMNS:[Ljava/lang/String;

    #@93
    .line 2714
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
