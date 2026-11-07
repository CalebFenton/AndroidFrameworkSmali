.class Landroid/icu/text/TimeZoneFormat$GMTOffsetField;
.super Ljava/lang/Object;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GMTOffsetField"
.end annotation


# instance fields
.field final greylist-max-o _type:C

.field final greylist-max-o _width:I


# direct methods
.method constructor greylist-max-o <init>(CI)V
    .registers 3
    .param p1, "type"    # C
    .param p2, "width"    # I

    .line 1918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1919
    iput-char p1, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    .line 1920
    iput p2, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_width:I

    .line 1921
    return-void
.end method

.method static greylist-max-o isValid(CI)Z
    .registers 4
    .param p0, "type"    # C
    .param p1, "width"    # I

    .line 1933
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method


# virtual methods
.method greylist-max-o getType()C
    .registers 2

    .line 1924
    iget-char v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    return v0
.end method

.method greylist-max-o getWidth()I
    .registers 2

    .line 1929
    iget v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_width:I

    return v0
.end method
