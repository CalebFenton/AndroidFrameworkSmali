.class public Lcom/android/internal/telephony/HbpcdLookup$NanpAreaCode;
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
    name = "NanpAreaCode"
.end annotation


# static fields
.field public static final AREA_CODE:Ljava/lang/String; = "Area_Code"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "Area_Code ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 119
    const-string/jumbo v0, "content://hbpcd_lookup/nanp"

    #@3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@6
    move-result-object v0

    #@7
    .line 118
    sput-object v0, Lcom/android/internal/telephony/HbpcdLookup$NanpAreaCode;->CONTENT_URI:Landroid/net/Uri;

    #@9
    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
