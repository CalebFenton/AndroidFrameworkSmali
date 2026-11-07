.class public Lcom/android/internal/telephony/HbpcdLookup$MccSidConflicts;
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
    name = "MccSidConflicts"
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist DEFAULT_SORT_ORDER:Ljava/lang/String; = "MCC ASC"

.field public static final blacklist MCC:Ljava/lang/String; = "MCC"

.field public static final blacklist SID_CONFLICT:Ljava/lang/String; = "SID_Conflict"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 79
    nop

    .line 80
    const-string v0, "content://hbpcd_lookup/conflict"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HbpcdLookup$MccSidConflicts;->CONTENT_URI:Landroid/net/Uri;

    .line 79
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
