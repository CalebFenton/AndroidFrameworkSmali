.class public interface abstract Landroid/provider/Telephony$TextBasedSmsChangesColumns;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TextBasedSmsChangesColumns"
.end annotation


# static fields
.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist ID:Ljava/lang/String; = "_id"

.field public static final blacklist NEW_READ_STATUS:Ljava/lang/String; = "new_read_status"

.field public static final blacklist ORIG_ROW_ID:Ljava/lang/String; = "orig_rowid"

.field public static final blacklist SUB_ID:Ljava/lang/String; = "sub_id"

.field public static final blacklist TYPE:Ljava/lang/String; = "type"

.field public static final blacklist TYPE_DELETE:I = 0x1

.field public static final blacklist TYPE_UPDATE:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 297
    const-string v0, "content://sms-changes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$TextBasedSmsChangesColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
