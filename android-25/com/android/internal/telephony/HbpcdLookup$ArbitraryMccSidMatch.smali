.class public Lcom/android/internal/telephony/HbpcdLookup$ArbitraryMccSidMatch;
.super Ljava/lang/Object;
.source "HbpcdLookup.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HbpcdLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArbitraryMccSidMatch"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "MCC ASC"

.field public static final MCC:Ljava/lang/String; = "MCC"

.field public static final SID:Ljava/lang/String; = "SID"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 106
    const-string/jumbo v0, "content://hbpcd_lookup/arbitrary"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 105
    sput-object v0, Lcom/android/internal/telephony/HbpcdLookup$ArbitraryMccSidMatch;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
