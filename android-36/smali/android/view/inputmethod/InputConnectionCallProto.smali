.class public final Landroid/view/inputmethod/InputConnectionCallProto;
.super Ljava/lang/Object;
.source "InputConnectionCallProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputConnectionCallProto$GetExtractedText;,
        Landroid/view/inputmethod/InputConnectionCallProto$GetCursorCapsMode;,
        Landroid/view/inputmethod/InputConnectionCallProto$GetSurroundingText;,
        Landroid/view/inputmethod/InputConnectionCallProto$GetSelectedText;,
        Landroid/view/inputmethod/InputConnectionCallProto$GetTextAfterCursor;,
        Landroid/view/inputmethod/InputConnectionCallProto$GetTextBeforeCursor;
    }
.end annotation


# static fields
.field public static final blacklist GET_CURSOR_CAPS_MODE:J = 0x10b00000005L

.field public static final blacklist GET_EXTRACTED_TEXT:J = 0x10b00000006L

.field public static final blacklist GET_SELECTED_TEXT:J = 0x10b00000003L

.field public static final blacklist GET_SURROUNDING_TEXT:J = 0x10b00000004L

.field public static final blacklist GET_TEXT_AFTER_CURSOR:J = 0x10b00000002L

.field public static final blacklist GET_TEXT_BEFORE_CURSOR:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
