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
.field final _type:C

.field final _width:I


# direct methods
.method constructor <init>(CI)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "width"    # I

    #@0
    .prologue
    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1986
    iput-char p1, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    #@5
    .line 1987
    iput p2, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_width:I

    #@7
    .line 1985
    return-void
.end method

.method static isValid(CI)Z
    .locals 2
    .param p0, "type"    # C
    .param p1, "width"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 2000
    if-eq p1, v0, :cond_0

    #@3
    const/4 v1, 0x2

    #@4
    if-ne p1, v1, :cond_1

    #@6
    :cond_0
    :goto_0
    return v0

    #@7
    :cond_1
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method


# virtual methods
.method getType()C
    .locals 1

    #@0
    .prologue
    .line 1991
    iget-char v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_type:C

    #@2
    return v0
.end method

.method getWidth()I
    .locals 1

    #@0
    .prologue
    .line 1996
    iget v0, p0, Landroid/icu/text/TimeZoneFormat$GMTOffsetField;->_width:I

    #@2
    return v0
.end method
