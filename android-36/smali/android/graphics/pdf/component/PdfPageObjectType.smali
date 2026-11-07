.class public final Landroid/graphics/pdf/component/PdfPageObjectType;
.super Ljava/lang/Object;
.source "PdfPageObjectType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/pdf/component/PdfPageObjectType$Type;
    }
.end annotation


# static fields
.field public static final blacklist IMAGE:I = 0x3

.field public static final blacklist PATH:I = 0x2

.field public static final blacklist TEXT:I = 0x1

.field public static final blacklist UNKNOWN:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static blacklist isValidType(I)Z
    .registers 6
    .param p0, "type"    # I

    .line 69
    invoke-static {}, Landroid/graphics/pdf/flags/Flags;->enableEditPdfTextObjects()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_12

    .line 70
    if-eq p0, v4, :cond_10

    if-eq p0, v3, :cond_10

    if-ne p0, v2, :cond_11

    :cond_10
    move v1, v4

    :cond_11
    return v1

    .line 72
    :cond_12
    if-eq p0, v3, :cond_16

    if-ne p0, v2, :cond_17

    :cond_16
    move v1, v4

    :cond_17
    return v1
.end method
