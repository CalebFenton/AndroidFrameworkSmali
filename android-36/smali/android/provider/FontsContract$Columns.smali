.class public final Landroid/provider/FontsContract$Columns;
.super Ljava/lang/Object;
.source "FontsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist FILE_ID:Ljava/lang/String; = "file_id"

.field public static final whitelist ITALIC:Ljava/lang/String; = "font_italic"

.field public static final whitelist RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final whitelist RESULT_CODE_FONT_NOT_FOUND:I = 0x1

.field public static final whitelist RESULT_CODE_FONT_UNAVAILABLE:I = 0x2

.field public static final whitelist RESULT_CODE_MALFORMED_QUERY:I = 0x3

.field public static final whitelist RESULT_CODE_OK:I = 0x0

.field public static final whitelist TTC_INDEX:Ljava/lang/String; = "font_ttc_index"

.field public static final whitelist VARIATION_SETTINGS:Ljava/lang/String; = "font_variation_settings"

.field public static final whitelist WEIGHT:Ljava/lang/String; = "font_weight"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
