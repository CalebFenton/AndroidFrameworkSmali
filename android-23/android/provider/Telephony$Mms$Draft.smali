.class public final Landroid/provider/Telephony$Mms$Draft;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/Telephony$BaseMmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Mms;
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
    .line 2017
    const-string/jumbo v0, "content://mms/drafts"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 2004
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
