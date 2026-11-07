.class public Landroid/provider/MediaStore$PickerMediaColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickerMediaColumns"
.end annotation


# static fields
.field public static final whitelist DATA:Ljava/lang/String; = "_data"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DATE_TAKEN:Ljava/lang/String; = "datetaken"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist DISPLAY_NAME:Ljava/lang/String; = "_display_name"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist DURATION_MILLIS:Ljava/lang/String; = "duration"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist HEIGHT:Ljava/lang/String; = "height"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist MIME_TYPE:Ljava/lang/String; = "mime_type"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final whitelist ORIENTATION:Ljava/lang/String; = "orientation"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist SIZE:Ljava/lang/String; = "_size"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final whitelist WIDTH:Ljava/lang/String; = "width"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 2343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
