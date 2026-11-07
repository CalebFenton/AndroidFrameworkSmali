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
.field public static final blacklist AREA_CODE:Ljava/lang/String; = "Area_Code"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist DEFAULT_SORT_ORDER:Ljava/lang/String; = "Area_Code ASC"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    nop

    .line 119
    const-string v0, "content://hbpcd_lookup/nanp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HbpcdLookup$NanpAreaCode;->CONTENT_URI:Landroid/net/Uri;

    .line 118
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
