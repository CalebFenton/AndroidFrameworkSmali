.class public final Landroid/provider/Telephony$MmsSms$WordsTable;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$MmsSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WordsTable"
.end annotation


# static fields
.field public static final greylist-max-o ID:Ljava/lang/String; = "_id"

.field public static final greylist-max-o INDEXED_TEXT:Ljava/lang/String; = "index_text"

.field public static final greylist-max-o SOURCE_ROW_ID:Ljava/lang/String; = "source_id"

.field public static final blacklist SUBSCRIPTION_ID:Ljava/lang/String; = "sub_id"

.field public static final greylist-max-o TABLE_ID:Ljava/lang/String; = "table_to_use"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
